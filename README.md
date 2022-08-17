<h1 align="center">One For All</h1>

# Sobre

Aplicação que utiliza uma tabela na terceira forma normal e acesse informações desta tabela através de `queries`.
<br />
- SQL
- Docker
- Formas normais

# O que foi desenvolvido 

Aplicação recebia tabela sem estar normalizada, implementação da tabela na terceira forma normal.
<br />
Utilização de queries SQL para acessar informações desta tabela.

# Features

- [x] Criação do banco de dados.
- [x] Exibe 3 colunas renomeando elas.
    Sendo elas:
<br />
     - Exibir a quantidade total de canções.
<br />
     - Exibir a quantidade total de artistas.
<br />
     - Exibir a quantidade de álbuns
<br />
- [x] QUERY que deverá ter apenas três colunas.
<br />
    Sendo elas: 
<br />
     - Exibir o nome da pessoa usuária.
     - Exibir a quantidade de músicas ouvida pela pessoa com base no seu histórico de reprodução.
     - Exibir a soma dos minutos ouvidos pela pessoa usuária com base no seu histórico de reprodução.
<br />
- [x] Mostrar as pessoas usuárias que estavam ativas no ano de 2021 se baseando na data mais recente no histórico de reprodução.
- [x] Quais são as duas músicas mais tocadas no momento.
- [x] Informações sobre o faturamento da empresa.
- [x] Todos os álbuns produzidos por cada pessoa artista, com a quantidade de seguidores que ela possui.
- [x] Relação dos álbuns produzidos por um artista específico.
- [x] Quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária específica.
- [x] Nome e a quantidade de vezes que cada canção foi tocada por pessoas usuárias do plano gratuito ou pessoal.
- [x] Altera o nome de algumas músicas e as ordene em ordem alfabética.

# Rodando em Docker
<strong>É necessário que você tenha em sua máquina instalado `node` e `docker`</strong>

>Rode o serviço `node` com o comando:

```bash
docker-compose up -d
``` 

- Esse serviço irá inicializar um container chamado one_for_all e outro chamado one_for_all_db.
- A partir daqui você pode rodar o container via CLI ou abri-lo no VS Code.

>Use o comando:

```bash
docker exec -it one_for_all bash
```

- Ele te dará acesso ao terminal interativo do container criado pelo compose, que está rodando em segundo plano.

>Instale as dependências com:

```bash
npm install
```

# Rodando localmente

>Instale as dependências com:

```bash
npm install
```
