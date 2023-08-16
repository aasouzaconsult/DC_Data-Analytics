# Passo a Passo: Configurando e Executando sua Aplicação Flask

## 1. Crie o banco de dados e tabela (SQL.sql)

Primeiro, certifique-se de ter um banco de dados PostgreSQL configurado e crie a tabela `tabela_crud`. Você pode fazer isso executando os comandos SQL necessários abaixo:

```sql
-- Criando o banco de dados no PostgreSQL
create database db_teste;

-- Criando uma tabela
create table tabela_crud (
    id serial,
	name varchar(100),
	email varchar(100)
);

-- Consultando a tabela
select * from tabela_crud;
```

## 2. Abra o Prompt de Comando na pasta "app python"

Navegue para a pasta onde seus arquivos estão localizados (provavelmente `C:\Python\app python`). Abra o Prompt de Comando nessa pasta.

## 3. Execute o servidor Flask

Digite o seguinte comando no Prompt de Comando para iniciar o servidor Flask:

```bash
python app.py
```

Após executar o comando, você verá algumas mensagens no terminal, como:

```
 * Serving Flask app 'app'
 * Debug mode: on
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on http://127.0.0.1:5000
Press CTRL+C to quit
 * Restarting with stat
 * Debugger is active!
 * Debugger PIN: 140-957-477
```

## 4. Acesse a aplicação no navegador

Abra o navegador da web e insira o seguinte endereço na barra de endereços:

```
http://127.0.0.1:5000
```

ou

```
http://localhost:5000
```

Isso o levará à página inicial da sua aplicação **Flask**.

![](https://blogdozouza.files.wordpress.com/2023/08/tela.png)

A partir daí, você pode interagir com a aplicação, adicionar registros, editar e excluir informações na tabela `tabela_crud` do banco de dados PostgreSQL.

Lembre-se de que o servidor Flask deve estar em execução para acessar a aplicação corretamente. Certifique-se de manter o terminal aberto enquanto interage com a aplicação no navegador.

Espero que esse guia passo a passo seja útil para você configurar e executar sua aplicação Flask com sucesso!