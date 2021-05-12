# Ethereum Code Execution

<img src = "/Image/EtherCode.png">


## Solidity Code

- 솔리디티라는 객체지향 언어로 컨트랙트를 구축합니다.
- 이 솔리디티는 고급언어(High Level) 언어이므로 기계(EVM)가 읽을 수 없습니다.

                                                                        
## Compile

- 솔리디티를 Bytescode 즉 기계어로 바꿔주는 과정입니다

### Bytecode

<img src = "/Image/ByteCode.png">


 16진수들로 이루어진 값이고 이 Low-Level언어를 통해 EVM이 동작할 수 있게 합니다.

[Ethereum EVM Opcodes and gas consumption](https://fullstacks.org/materials/ethereumbook/18_appdx-evm-opcodes-gas.html)

bytecode list

                                                                    
## EVM

EVM(Ethereum Virtual Machine)

- 들어온 bytecode를 실행시켜 컨트랙트를 구현합니다.
- EVM을 돌려 컨트랙트의 함수를 실행함으로 Gas 수수료가 발생합니다.