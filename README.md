## Instalando o Ruby

1. Baixar instalador

```
$ https://rubyinstaller.org/downloads/
```
Obs.: Baixar sempre a versão com DevKit e a mais estável.

2. Não alterar nada no instalador e seguir as instruções.


## Instalando NodeJS

1. Baixar instalador 
```
$ https://nodejs.org/en/
```
Obs.: Dê a preferência para a versão LTS.


2. Não alterar nada no instalador e seguir as instruções.


## Instalação Chromedriver

1. Baixar o Chromedriver de acordo com a sua versão do Chrome.

```
$ https://chromedriver.chromium.org/downloads
```

2. Extrair o .zip e adicionar o arquivo .exe no diretório "C:\Windows" ou qualquer outra que esteja no PATH.


## Passos para rodar projeto

1. Clonar o repositório

```
$ git clone git@github.com:lwagenska/desafio-viahub.git
```

2. Instalando os pacotes

Acesse a pasta raiz do projeto no seu prompt de comando ou o que desejar e execute o comando:
```
$ gem install bundler
```

Para instalar as gems:
```
$ bundle install
```

Depois de todas as dependências instaladas, pode executar os testes via linha de comando:
```
$ cucumber
```

Caso queira executar via tags, basta fazer da seguinte forma:
```
$ cucumber -t @add_products
```