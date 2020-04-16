# Automação Web com Robot Framework
 
## Instalar
 
- Primeiramente instale python na sua máquina.
 URL:https://www.python.org/
 
rode o comando dentro do projeto: pip3 install -r requirements.txt para instalar as dependências
 
## Executar Testes
- Dentro da pasta raiz no terminal, rode o comando a seguir: robot -d ./results -i cadastro_sucesso -v ENV_NAME:homolog tests para a execução do cenário de cadastro e login.
- -d ./results | para guardar o resultado dentro da pasta results
- -i seed | para rodar todos os testes que tem essa tag
- -v ENV_NAME:homolog | para rodar os testes no ambiente de homologação
- tests | diretório onde se encontram os testes
 