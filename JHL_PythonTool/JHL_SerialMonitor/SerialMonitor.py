#!/usr/bin/env python
from threading import Thread
import serial
import time
import collections
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import struct
import pandas as pd


# python official docs int() : https://docs.python.org/ko/3/library/functions.html#int
# convert hex to dec : https://brownbears.tistory.com/467
# byte array and encoding : https://dojang.io/mod/page/view.php?id=2462
# byte padding : https://supercoding.tistory.com/37
# python official docs struct : https://python.flowdas.com/library/struct.html
# stack overflow struct byte error : https://stackoverflow.com/questions/60376438/struct-error-unpack-requires-a-buffer-of-4-bytes
# github issue serial monitor eccess denied error : https://github.com/platformio/platformio-vscode-ide/issues/263
# python threading : http://pythonstudy.xyz/python/article/24-%EC%93%B0%EB%A0%88%EB%93%9C-Thread



class serialPlot:
    def __init__(self, serialPort = '/dev/ttyUSB0', serialBaud = 38400, plotLength = 100, dataNumBytes = 1):
        self.port = serialPort
        self.baud = serialBaud
        self.plotMaxLength = plotLength
        self.dataNumBytes = dataNumBytes
        self.rawData = bytearray(dataNumBytes)
        self.data = collections.deque([0] * plotLength, maxlen=plotLength)
        self.isRun = True
        self.isReceiving = False
        self.thread = None
        self.plotTimer = 0
        self.previousTimer = 0
        # self.csvData = []

        print('Trying to connect to: ' + str(serialPort) + ' at ' + str(serialBaud) + ' BAUD.')
        try:
            self.serialConnection = serial.Serial(serialPort, serialBaud)
            print('Connected to ' + str(serialPort) + ' at ' + str(serialBaud) + ' BAUD.')
            
        except:
            # Teraterm 등 다른 serial monitor 과 연결되어 있으면 안됩니다!!
            # 즉 1:1 통신만 가능하다는 것.
            print("Failed to connect with " + str(serialPort) + ' at ' + str(serialBaud) + ' BAUD.')

    def readSerialStart(self):
        print('function readSerialStart running')
        if self.thread == None:
            self.thread = Thread(target=self.backgroundThread)
            self.thread.start()
            
            # Block till we start receiving values
            while self.isReceiving != True:
                time.sleep(0.1)

    def getSerialData(self, frame, lines, lineValueText, lineLabel, timeText):
        print('function getSerialData running')
        currentTimer = time.perf_counter()
        self.plotTimer = int((currentTimer - self.previousTimer) * 1000)     # the first reading will be erroneous
        self.previousTimer = currentTimer
        timeText.set_text('Plot Interval = ' + str(self.plotTimer) + 'ms')
        
        # 나는 지금 1 byte integer 을 해석하려고 하니 복잡하게 느껴지는 것인데..
        # 우선 char 로 받아서 1byte 로 받음.
        value,  = struct.unpack('c', self.rawData)    # use 'h' for a 2 byte integer
        # decode 한 후, 숫자부분만 떼어옴.
        str_value = str(value)[-3:-1]
        # 그런데 이때, 떼어낸 숫자부분은 16진수임.
        int_value = int('0x'+str_value, 16)
    
        # 결론
        print(self.rawData, type(self.rawData), 
              '--> unpacked value -->', value, type(value), 
              '---> decode data -->', int_value, type(int_value))

        self.data.append(int_value)    # we get the latest data point and append it to our array
        lines.set_data(range(self.plotMaxLength), self.data)
        lineValueText.set_text('[' + lineLabel + '] = ' + str(int_value))
        # self.csvData.append(self.data[-1])

    def backgroundThread(self):    # retrieve data
        print('function backgroundThread running')
        time.sleep(1.0)  # give some buffer time for retrieving data
        self.serialConnection.reset_input_buffer()
        while (self.isRun):
            self.serialConnection.readinto(self.rawData)
            self.isReceiving = True
            print(self.rawData)
        print('function backgroundThread end')

    def close(self):
        self.isRun = False
        self.thread.join()
        self.serialConnection.close()
        print('Disconnected...')
        # df = pd.DataFrame(self.csvData)
        # df.to_csv('/home/rikisenia/Desktop/data.csv')


def main():
    print('running main')
    
    portName = 'COM13'     # for windows users
    baudRate = 115200
    maxPlotLength = 100
    dataNumBytes = 1        # number of bytes of 1 data point
    s = serialPlot(portName, baudRate, maxPlotLength, dataNumBytes)   # initializes all required variables

    s.readSerialStart()                                               # starts background thread

    print('main(), ready to draw plot')
    # plotting starts below
    pltInterval = 50    # Period at which the plot animation updates [ms]
    xmin = 0
    xmax = maxPlotLength
    ymin = -(2**3)
    ymax = 2**3
    fig = plt.figure()
    ax = plt.axes(xlim=(xmin, xmax), ylim=(float(ymin - (ymax - ymin) / 10), float(ymax + (ymax - ymin) / 10)))
    ax.set_title('Arduino Analog Read')
    ax.set_xlabel("time")
    ax.set_ylabel("AnalogRead Value")
    lineLabel = 'Potentiometer Value'
    timeText = ax.text(0.50, 0.95, '', transform=ax.transAxes)
    lines = ax.plot([], [], label=lineLabel)[0]
    lineValueText = ax.text(0.50, 0.90, '', transform=ax.transAxes)
    
    # 여기서 s.getSerialData function 을 계속 호출하면서 그리는 원리.
    anim = animation.FuncAnimation(fig, s.getSerialData, fargs=(lines, lineValueText, lineLabel, timeText), interval=pltInterval)    # fargs has to be a tuple

    plt.legend(loc="upper left")
    plt.show()

    s.close()


if __name__ == '__main__':
    main()