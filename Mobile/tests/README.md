# Automação Mobile com Robot Framework
 
## Instalar
 
- Primeiramente instale python na sua máquina
 URL:https://www.python.org/
 
rode o comando dentro do projeto: pip3 install -r requirements.txt para instalar as dependências

- Instale o Java JDK
 URL:https://www.oracle.com/java/technologies/javase-jdk8-downloads.html

- Instale o Android Studio and SDK
 URL:https://developer.android.com/studio

- Instale o Appium Server
 URL:http://appium.io/downloads.html
 
## Executar Testes
- Dentro da pasta raiz no terminal, rode o comando a seguir: robot -d ./results -i tag tests para a execução de algum cenário.
- -d ./results | para guardar o resultado dentro da pasta results
- -i seed | para rodar todos os testes que tem essa suposta tag
- tag | estão orientadas no bdd, uma por cenário
- tests | diretório onde se encontram os testes
 