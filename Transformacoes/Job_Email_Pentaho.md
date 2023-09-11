[Download](https://www.hitachivantara.com/en-us/products/pentaho-platform/data-integration-analytics/pentaho-community-edition.html) | [Dicas](https://www.youtube.com/watch?v=NMxI4j7g4Ps&list=PLo04OWzokNVCD5LdnGGg8ssjGmIYbTyCG)

## Aqui a nossa transformação:
![](https://blogdozouza.files.wordpress.com/2023/09/picture1.png)
 
## Criando o Job (Start > Transformation > Success):
![](https://blogdozouza.files.wordpress.com/2023/09/picture2.png)

![](https://blogdozouza.files.wordpress.com/2023/09/picture3.png)
 

## E como faço para agendar? Criar 2 bat´s!

**executa_job_joins.bat**

```bat
@echo off

TITLE ExecutaJob
SET currentdir=%~dp0
SET kitchen=C:\pdi-ce-9.4.0.0-343\data-integration\Kitchen.bat
SET logfile="%currentdir%log.txt"

echo. >> %logfile%
echo. >> %logfile%
"%kitchen%" /file:"C:\temp\etl\Job\Job_Joins.kjb" /level:Basic >> %logfile%
```

**criar um deste para cada job que deseja executar*


**Agendamento.bat**
```bat
@echo off

call "C:\temp\etl\Job\executa_job_joins.bat"
```

**este pode ser só 1, chamando vários jobs por horário por exemplo...*

**este é o que usaremos no agendador de tarefas do windows*

## Abra o Agendador de Tarefas do Windows
### Crie uma tarefa
![](https://blogdozouza.files.wordpress.com/2023/09/picture4.png)

### Disparadores (Informe o horário e configurações)
![](https://blogdozouza.files.wordpress.com/2023/09/picture5.png)

### Ação (informe uma ação - o bat que será executado)
![](https://blogdozouza.files.wordpress.com/2023/09/picture6.png)

### Tarefa criada
![](https://blogdozouza.files.wordpress.com/2023/09/picture7.png)

### Tarefa executada
![](https://blogdozouza.files.wordpress.com/2023/09/picture8.png)

## Vídeo de como criar um e-mail de alerta
[Enviando e-mail pelo Pentaho](https://youtu.be/_dlbiDyiM-k?si=a-MdL2QF8eFBQM_X)

## Bons Estudos!