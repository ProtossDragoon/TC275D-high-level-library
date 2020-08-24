# iLLD-env
Custom High Level TC275 Library implemented with iLLD


https://openvslam.readthedocs.io/en/master/simple_tutorial.html


## env

- vsCode
- win10
- [TC275d](https://kr.rs-online.com/web/c/semiconductors/semiconductor-development-kits/processor-microcontroller-development-kits/)

<br>

## Basic setting




<br>

## init with


<br>

## Study Source

- Aurix Tutorial, 창원대학교 : https://aurixtutorial.readthedocs.io/ko/latest/index.html
- Arduino Opentutorials, UART : https://opentutorials.org/module/2106/12247

<br>

## Study Group

- [notion](https://www.notion.so/AUrix-Tutorial-56859ecd2dc548ec9b9df59432dfbb76)

<br>

## Custom Library

- [notion - JHL prefix page](https://www.notion.so/AUrix-Tutorial-56859ecd2dc548ec9b9df59432dfbb76)

<br>

## Insight

- https://wiserloner.tistory.com/569

<br>

- 마이크로컨트롤러는 OS 도 없는데 바이너리 코드와 하드웨어만 가지고 작업하는 일이다 보니, C 를 제대로 써보는 계기가 되기도 한다.
- 평소 그냥 넘어갈 수 있었던 부분도 정확히 짚고 넘어갈 필요가 있었다.

<br>

### static vs global

- static keyword 를 붙이면, "전역변수와 똑같이 스택 영역에 위치" 하게 된다.
- 단지 파일 내에서만 접근할 수 있도록 접근만 제어할 뿐 전역 공간에 상주하게 되는 것이다.
- 이러한 맥락을 가지고 아래를 이해할 수 있다.
- static variable : extern 을 붙이면, "파일 안에서만 사용할 수 있는 전역변수" 가 된다고 생각할 수 있다.
- static function : 자동으로 extern 이 붙으면서 별다른 선언 없이 파일 외부에서도 접근할 수 있는 정적 함수도 마찬가지로 파일 안으로 접근이 제한된다.

<br>

- https://boycoding.tistory.com/211

<br>

### void pointer 

- void 포인터? void 변수를 선언할 수 없는데 어떻게 void 형으로 포인터를 만든단 말인가? 처음에는 이해가 잘 가지 않았다.
- 제네릭 포인터(generic pointer)라고도 불리는 void pointer는 모든 데이터 자료형을 가리킬 수 있는 특별한 타입의 포인터다. void 포인터는 void 키워드를 사용하여 일반 포인터처럼 선언한다.
- 그러나 void 포인터는 어떤 데이터 자료형의 객체를 가리키는 알지 못하기 때문에 직접 역참조할 수 없다. 그러므로 역참조를 하기 전에 먼저 void 포인터를 다른 포인터 유형으로 명시적 형 변환 해야 한다.
- 일부 컴파일러에서는 동적으로 할당 된 메모리를 가리키는 void 포인터를 삭제할 수 있지만 정의되지 않은 동작이 발생할 수 있다.
- 포인터 산술은 포인터가 어떤 크기의 객체를 가리키는지 알아야 하므로 포인터를 적절하게 증감할 수 없는 void 포인터에서는 포인터 연산을 수행할 수 없다.

<br>

### 기타

- wait 안된다고 찡찡대지 말고 STM 을 사용하거나 initTime() 을 사용하자.
