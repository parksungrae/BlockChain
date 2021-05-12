# require

require는 특정 조건이 참이 아닐 때 함수가 에러 메시지를 발생하고 실행을 멈추게 된다

```jsx
function sayHiToVitalik(string _name) public returns (string) {

  require(keccak256(_name) == keccak256("Vitalik"));
  return "Hi!";
}
```