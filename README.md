# iLLD-env
Custom High Level TC275 Library Implemented by iLLD (infineon Low Level Driver)

<br>

## env

- vsCode
- Windows10
- [TC275d](https://kr.rs-online.com/web/c/semiconductors/semiconductor-development-kits/processor-microcontroller-development-kits/)

<br>

## Basic setting




<br>

## Custom Library

- [notion - JHL prefix page](https://www.notion.so/AUrix-Tutorial-56859ecd2dc548ec9b9df59432dfbb76)

<br>

# MicroController Study

- 자작자동차 동아리 RACE (Hanyang University)
- [Study Group : notion page](https://www.notion.so/AUrix-Tutorial-56859ecd2dc548ec9b9df59432dfbb76)

<br>

## Study Reference

- [Aurix Tutorial, 창원대학교](https://aurixtutorial.readthedocs.io/ko/latest/index.html)
- [Arduino Opentutorials, UART](https://opentutorials.org/module/2106/12247)
- [readthedocs simple_tutorial](https://openvslam.readthedocs.io/en/master/simple_tutorial.html)

<br>

- 마이크로컨트롤러는 OS 도 없는데 바이너리 코드와 하드웨어만 가지고 작업하는 일이다 보니, C 를 제대로 써보는 계기가 되기도 한다.
- 평소 그냥 넘어갈 수 있었던 부분도 정확히 짚고 넘어갈 필요가 있었다.
- https://wiserloner.tistory.com/569

<br>
- [의구심 해소 : Macro & Assembly in-line function](https://www.notion.so/3-Asclin-Hello-World-0334ec01f1c549239452c17c8f6f585e#7a2b7d5e576c45909d7d079efe108a83) 내용 발췌 : 어차피 extern 은 linker 가 담당하고, extern 은 파일에 몇 개가 선언되어 있든 상관없기 때문에 위 코드에서 선택지 1과 2는 완전히 동치이다. 선택지 1로 전개했던 과정을 똑같이 거쳐 보면, 결국 선택지 2는 void asclin0RxISR() 가 두 번 등장할 뿐, 다른 점이 없다는 것을 알 수 있다. 
- [의구심 해소 : Void Pointer](https://www.notion.so/4-Asclin-My-Own-Terminal-35e0e4c269c44242a75cde39902d630b#cc597e54630d4347ae68051c717fb70e) 내용 발췌 : 제네릭 포인터(generic pointer)라고도 불리는 void pointer는 모든 데이터 자료형을 가리킬 수 있는 특별한 타입의 포인터다.
- [의구심 해소 : C datatype unsigned](https://www.notion.so/5-VADC-Multi-channel-voltmeter-e1c015e982684e4794fab1f41ac20694#bfeaeb450e1646e180285389da78dbf6) 내용 발췌 : 저런 형태는 void 포인터와 같이, 어떤 형태이든 그냥 그 값을 숫자 자체로 해석해서 담아버릴 수 있다는 장점이 있다.
- [의구심 해소 : ASCII Code 와 Serial 통신](https://www.notion.so/6-VADC-My-Own-Cheap-Oscilloscope-f28737c0172946ecb200f930bbec4596#0cbcfcf0d80946ada1cdbe534b67a308) 내용 발췌 :  rawData 는 줄줄이 들어오는 bytearray 타입이다. 이 rawData 에는 크기가 없다. 그냥 내가 몇 바이트씩 끊어 해석하는지에 따라, 그 의미가 달라질 뿐이다.
- [의구심 해소 : Read/Write Problem (컴퓨터구조)](https://www.notion.so/7-GTM-Chronos-Ruler-0f593d510375497eb6038de2ed455c51#f58c77ed38884f5a90c8f546b60f77d6) 내용 발췌 :  하지만 이것은 기기의 register 에 직접 접근해서 값만 바꾸어 주는 것이기 때문에 C언어 차원에서 register 에 쓰기 작업 실행을 마쳤는지, 해당 쓰기 작업이 유효한지 등 확인이 불가능할 수 있음.
