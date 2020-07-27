# iLLD-env
iLLD env for vs Code / HYU RACE trial repo


https://openvslam.readthedocs.io/en/master/simple_tutorial.html


## env

- vsCode
- win10
- TC275d


## Basic setting






## init with




## Study Source

- Aurix Tutorial, 창원대학교 : https://aurixtutorial.readthedocs.io/ko/latest/index.html
- Arduino Opentutorials, UART : https://opentutorials.org/module/2106/12247



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

