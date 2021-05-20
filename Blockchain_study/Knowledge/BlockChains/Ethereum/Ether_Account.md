# Accouunt

## Component

1. **Nonce**
    - EOA : 보내진 TX의 수
    - CA : 생성된 Contract 수

2. **Balance**

    Account가 소유하고있는 Wei의 양

3. **StorageRoot**

    머클 패트리시아 트리(account의 요소들로 만들어진 hash trie) 의 루트 노드의 해시값 

4. Codehash

    SmartContract의 bytecode를 나타낸 Hash

<img src="/Image/Eth_account.png">


[https://miro.medium.com/max/875/0*YNi04bYbGiwIxQyx](https://miro.medium.com/max/875/0*YNi04bYbGiwIxQyx)

- **EoA (External Owned Account)**

    개인키로 생성된 계정으로 인증등을 담당하며 개인키를 통한 서명을 하는 계정

- **CA (Contract Account)**

    스마트 컨트랙트의 역할을 하는 계정으로 컨트랙트의 배포된 
    코드를 포함하며 EOA에 의해 제어됨