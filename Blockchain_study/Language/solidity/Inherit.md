# Inherit

public, internal, external 들을 호출 할 수 있음

```jsx
contract Doge {
  function catchphrase() public returns (string) {
    return "So Wow CryptoDoge";
  }
}

//BabyDoge는 상속받은 catchphrase 함수를 사용 가능
contract BabyDoge is Doge { //is 로 상속 a,b,c등 다중 상속 가능
  function anotherCatchphrase() public returns (string) {
    return "Such Moon BabyDoge";
  }
}
```