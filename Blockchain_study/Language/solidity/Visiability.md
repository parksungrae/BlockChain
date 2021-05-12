# visiability



[Solidity-공부-Visibility-가시성](https://noooop.tistory.com/entry/Solidity-%EA%B3%B5%EB%B6%80-Visibility-%EA%B0%80%EC%8B%9C%EC%84%B1)
- public(모든 방법으로 접근 가능)

    ```jsx
    contract con_a {
    	uint public a;
    	function func() public {
    		this.a();// 상태변수가 public이면 getter자동호출	
    	}
    }

    contract con_b {
    	function func() public {
    		a A = new A();
    		A.a();		
    	}
    }
    ```

- external(다른 컨트랙트, 트랜잭션을 통해서만 호출)

    ```jsx
    contract con_a {
    	function func1() external{
    		x=10;
    	}
    	
    	function func2() public{
    		func1(); // Error : 같은 컨트랙트는 this를 사용해 접근해야 함
    		this.func1();
    	}
    }

    contract con_b is con_a {
    	function func() public {
    		this.func1();	
    	}
    }
    ```

- internal(내부적, 상속으로만 접근 가능)

    ```jsx
    contract con_a {
    	uint internal x;
    }

    contract con_b is con_a {
    	x = 10;
    }

    contract con_c {
    	function func() public {
    		con_a A = new con_a();
    		A.x = 10; // Error : internal 상태변수 접근 불가
    	}
    }
    ```

- private(자신이 있는 객체에서만 사용)

    ```jsx
    contract con_a {
    	uint private x;
    }

    contract con_b is con_a {
    	x = 10; // Error : x는 con_a에서만 사용 가능
    }
    ```