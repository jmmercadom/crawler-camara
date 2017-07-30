# crawler-camara

Crawler que descarga dados de remunerações da camara de deputados.

# Como utilizar?

O crawler esta escrito utilizando Docker, precisa primeiramente constroir a imagem.

**Constroir imagem docker**

`docker build . -t quebra-quebra/crawler-camara:latest`

**Utilização**

Para utilizar precisar prover 3 volumens (pastas) onde os dados serão extraidos. Dados em geral, html e csvs.

`docker run -v $(pwd)/dados:/dados -v $(pwd)/html:/html -v $(pwd)/csv:/csv quebra-quebra/camara-crawler:latest`

Quando rodar o comando sem parametros ele mostrara um mensagem com os possiveis disponiveis

# Guia rapida para descarregar informações em CSV

Se voce quer começar a descarregar informações, por exemplo quer ter exportados as remunerações de todos os 
deputados em CSV para o periodo Janeiro 2017 o comando seria o seguinte:

`docker run -e CAMARA_DEBUG=1 -v $(pwd)/dados:/dados -v $(pwd)/html:/html -v $(pwd)/csv:/csv quebra-quebra/camara-crawler:latest extrair remuneracoes_csv 2017 01`

Isso descarregara todos os dados da camara necessarios (lista de deputados, legislaturas) na pasta  `./dados `. 
Os documentos html com a informação das remunerações estarão armazendas na pasta `./html`. E finalmente os dados CSV estarão
armazendos na pasta `./csv`. A variavel de ambiente `CAMARA_DEBUG` esta sendo ativada para ter mais visibilidade dos logs que serão escritos durante a execução.

# Interessado só nos dados?

Se estiviver interessado so nos dados a gente ja tem os dados CSV no repositorio https://github.com/jmmercadom/dados-camara.
