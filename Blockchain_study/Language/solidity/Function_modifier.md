# Function Modifier

**제어자 ( GAS의 소모를 줄임 )**

```jsx
string Hello = "hello"

// 어떠한 상태도 변화시키지 않고 보기만 함 -> view
function sayHello() public view returns (string) {

  return Hello;
}

// 앱에서 어떤 데이터도 접근하지 않을 떄 -> pure
function _multiply(uint a, uint b) private pure returns (uint) {
  return a * b;
}
```