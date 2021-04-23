## BlockChain Structure

![https://miro.medium.com/max/875/1*0M_FNSM70fKc2LEspDgXpg.png](https://miro.medium.com/max/875/1*0M_FNSM70fKc2LEspDgXpg.png)


- ## Hearder
    - **Hash of the block**

        블록의 **해시값**이 담긴 곳

        [**what is Hash?**](https://www.notion.so/Hash-Function-69ec2a95ccf6410a80d34ca12328f8f0)

         **Size** : 32bytes,  64hex

    - **version**

        해당 블록의 **버전**입니다. 현재 이 블록 헤더를 만든 비트코인 프로그램의 버전 정보

        **Size** : 4bytes,  8hex

    - **Previous block Hash**

        묶여있는 블록들에서 앞 블록의 **주소값**

        **Size** : 32bytes,  64hex

    - **Height**

        **블록의 높이, 블록의 number**라고도 불림

        **Size** : 4bytes,  8hex

    - **Merkle Root**

        '머클 루트'는 블록의 바디 부분에 저장된 
        **트랜잭션(거래 정보) 들의 해시 트리의 가장 상위 해시**

        **Size** : 32bytes,  64hex

    - **Nonce**

        블록을 만드는 과정에서 **해시 값을 구할 때 필요한 재료** 역할을 수행

        **Size** : 4bytes,  8hex

    - **Timestamp**

        대략적인 **생성된 시간**을 의미

        **Size** : 4bytes,  8hex

        what is timestamp?

    - **Bits**, **target**

        **난이도,** 해시 **목표 값**을 의미하는 지표

        **Size** : 4bytes,  8hex

- ## Body
    - **거래 카운트**

        거래의 총 수

    - **Transaction**

        데이터베이스의 상태를 변환시키는 하나의 논리적 기능을 수행하기 위한 **작업의 단위** 또는 한꺼번에 모두 수행되어야 할 **일련의 연산들을 의미**

### Genesis Block


- A genesis block is the first block of a block chain.


    - Header

        Height : 소프트웨어에서 배열 등은 0부터 시작해 첫 블록의 Num은 0이다.

    - Body



        Transaction : 50개의 비트코인을 채굴함.