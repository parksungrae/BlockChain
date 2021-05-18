# 제어자(Modifier)

함수에게 특정 조건이나 제한을 걸어주며 여러 코드의 중복을 줄여주는 역할을 함

```jsx
contract Modifier_1 {
    modifier a_should_be_five {
        require(a==5);
				//a_should_be_five modifier를 포함한 함수 실행 시 require문 다음 코드를 실행한다.
				//_;는 함수의 코드를 실행하는 것을 의미
        _;
    }
    
    uint a=5;

    //modifier는 함수제어자 view or pure 뒤 returns 앞에 위치한다.
    function  check() public view a_should_be_five returns(string memory) {
        return "a is five";
    }
    
    function changeA() public {
        a=4;
    }
}

// check 실행 시 a=5기에 a is five 실행,
//changeA를 실행하고 check을하면 modifier의 require문에서 에러 발생 

```

```jsx
//modifier가 있는 check 함수만을 다시 정의해보면 

    //modifier는 함수제어자 view or pure 뒤 returns 앞에 위치한다.
    function  check() public view a_should_be_five returns(string memory) {
				
				require(a==5);
        //_; == return "a is five";
        return "a is five";
    }
    
```

결론적으로 여러 함수에 들어갈 코드를 modifier로 설정할 시 <br>많은 코드의 **중복을 제거**할 수 있음을 의미