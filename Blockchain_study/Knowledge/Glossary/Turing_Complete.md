# Turing-Complete

어떤 프로그래밍 언어나 추상 기계가 **튜링 기계와 동일한 계산 능력을 가진다**는 의미인데, <br>이것은 튜링 기계로 풀 수 있는 문제,<br> 즉 **계산적인 문제를 그 프로그래밍 언어나 추상 기계로 풀 수 있다는 의미**를 가르키고 있습니다.

----

## Turing-Machine

> 계산하는 기계의 일반적인 개념을 설명하기 위한 **가상의 기계**이며 오토마타의 일종,<br> 튜링은 이 개념을 automatic에서 따온 a-machine이라고 불렀는데<br> 튜링 사후에 창시자의 이름을 따 **튜링 머신**이라고 부르게 되었다.

 

- 튜링 기계(Turing machine)는 긴 테이프에 쓰여있는 <br>**여러 가지 기호들을 일정한 규칙에 따라 바꾸는 가상의 기계**이다.
<br><br>
## Turing-complete language

***무한한 저장공간이 있다 가정했을 때
모든 수학 문제를 풀 수 있는 알고리즘을 만들어낼 수 있는 컴퓨터언어***

1. 프로세스를 충분히 분할할 수 있을만큼 **작은단위**를 사용할 수 있어야 한다.
2. **조건설정**(if), **반복명령어**(for, while)가 가능해야함

    → 문제를 풀 때까지 **영원히 멈추지 않는** 알고리즘설계 가능
<br><br>
## in Bitcoin

if문 만을 지원하는 **script**언어를 사용하기에 **튜링 불완전**(Turing incomplete)하다.

## in Ethereum

비트코인과 다르게 **튜링 완전언어(Solidity 등)를 사용**하기에 튜링 완전성을 확보했다고 할 수도 있겠지만 <br>그에 따르는 단점들을 보완하기 위해(Ddos 공격) **Gas**를 도입하였고, <br>**Gas Limit**이 존재하여 문제를 풀기까지 영원히 멈추지 않는 알고리즘 설계가 불가능하다 볼 수 있기에<br> **튜링 준 완전**(quasi-Turing-complete)하다고 할 수 있겠다. 

source : [https://brunch.co.kr/@ashhan/10](https://brunch.co.kr/@ashhan/10)