## Exercício 2

[![Maintainability](https://api.codeclimate.com/v1/badges/202c5ce8e6fb78c0fa17/maintainability)](https://codeclimate.com/github/pecavalheiro/longest-char-sequence/maintainability)

### Descrição
Dada uma palavra, escreva um algoritmo que retorne a sequência de caracteres que mais aparecem em sequência.

Ex.: "Pressaaao", deve retornar "aaa".

#### Suposições
- O algoritmo pode receber qualquer caracter como input.
- O algoritmo recebe apenas 1 (uma) string por vez.
- Strings vazias devem retornar string vazia (não disparar erro).
- Strings contendo espaço(s) tem apenas a primeira palavra considerada.
- No caso da string possuir mais de uma sequencia com a mesma quantidade de caracteres, é retornado a primeira encontrada.
- O algorítmo é case sensitive.

#### Descrição da solução
Foi usado uma expressão regular para agrupar caracteres iguais, facilitando um posterior ordenamento e descoberta do maior.

#### Dependências
* [Ruby 2.4.0](https://www.ruby-lang.org)
* [Bundler](http://bundler.io/)

#### Instruções de uso
A classe responsável pelo algoritmo está em `lib/string_parser.rb`. Para executá-la via bash, basta executar o seguinte comando:

```bash
> ruby longest_sequence.rb <string>
```

O resultado será impresso logo abaixo.

#### Testes

A biblioteca [RSpec](http://rspec.info/) é usada para testes
unitários, sendo que todos os testes se encontram dentro de `/spec`. Para
instalar todas as dependências e rodar os testes, execute os seguintes comandos:

```
bundle
rspec
```

