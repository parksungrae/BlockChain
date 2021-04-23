# Basic-Coding

## Start

```jsx
pragma solidity ^0.4.19; 

// 다른 파일import 가능
import "./anotherfile.sol"

//solidity의 코드는 contract라는 이더리움 어플리케이션의 기본 구성요소로 싸여있음
contract HelloWorld {

}
```

### **연산자**

```jsx
Addition = x + y
Subtraction = x - y
Multiplication : x * y
Division : x / y
remainder : x % y

exponential operator = x ** 2  // x^2
```

### **배열**

```jsx
// 고정 길이가 2인 배열
uint[2] array_a;
// 동적(고정된 크기가 없는) 배열
uint[] array_b;
// 구조체로도 배열 생성 가능
struct Person {
	uint age;
	string name;
}

Person[] people;
```

### **가시성(visiability)**

<img src = "/Image/solidity_visiability.png">


- public(모든 방법으로 접근 가능)
- external(다른 컨트랙트, 트랜잭션을 통해서만 호출)
- internal(내부적, 상속으로만 접근 가능)
- private(자신이 있는 객체에서만 사용)

### **함수**

**선언**

```jsx
//함수 선언은 함수이름, 입력 파라미터, 가시성 파라미터, 반환 파라미터순이다 
function fun_a (uint a, string b) public returns(uint c){ 
	
}
```

**제어자 ( [Gas](https://www.notion.so/Gas-0835770d17644b76b615a0b6079136be)의 소모를 줄임 )**

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

## 매핑

java의 map, python의 dictionary와 비슷

```jsx
mapping (_KeyType => _ValueType) name
```

## 해시 함수

[what is hash](https://www.notion.so/Hash-Function-69ec2a95ccf6410a80d34ca12328f8f0)?

```jsx
//6e91ec6b618bb462a4a6ee5aa2cb0e9cf30f7a052bb467b0ba58b8748c00d2e5
keccak256("aaaab");
//b1f078126895a1424524de5321b339ab00408010b7cf0e6ed451514981e58aa9
keccak256("aaaac");
```

## 이벤트

컨트랜드 내의 액션이 실행되었음을 알려주는 함수

```jsx
// 이벤트를 선언한다
event IntegersAdded(uint x, uint y, uint result);

function add(uint _x, uint _y) public {
  uint result = _x + _y;
  // 이벤트를 실행하여 앱에게 add 함수가 실행되었음을 알린다:
  IntegersAdded(_x, _y, result);
  return result;
}
```

## Msg.sender

현재 함수를 호출한 사람 (혹은 스마트 컨트랙트)의 주소

```jsx
mapping (address => uint) favoriteNumber;

function setMyNumber(uint _myNumber) public {
  // `msg.sender`에 대해 `_myNumber`가 저장되도록 `favoriteNumber` 매핑을 업데이트한다 `
  favoriteNumber[msg.sender] = _myNumber;
  // ^ 데이터를 저장하는 구문은 배열로 데이터를 저장할 떄와 동일하다 
}

function whatIsMyNumber() public view returns (uint) {
  // sender의 주소에 저장된 값을 불러온다 
  // sender가 `setMyNumber`을 아직 호출하지 않았다면 반환값은 `0`이 될 것이다
  return favoriteNumber[msg.sender];
}
```

## require

require는 특정 조건이 참이 아닐 때 함수가 에러 메시지를 발생하고 실행을 멈추게 된다

```jsx
function sayHiToVitalik(string _name) public returns (string) {

  require(keccak256(_name) == keccak256("Vitalik"));
  return "Hi!";
}
```

## 상속

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

## Storage vs Memory

구조체나 배열에 사용

storage 

- 블록체인 상에 영구히 저장되는 변수

Memory

- 임시적으로 저장되는 변수

```jsx

```

출처 : cryptozombies