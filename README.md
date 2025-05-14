# ese-infra
Repository for the Service-Oriented Software Engineering course

1 - executar o comando em qualquer terminal
ssh-keyscan github.com >> ~/.ssh/known_hosts

2 - na raiz do projeto criar um .env com as mesmas variaveis descritas no env-example.txt

3 - executar o comando dentro da pasta de scripts
./clone-services.sh

4 - passar o env-example para cada microsserviço instalado

5 - rodar o npm install

6 - na raiz do projeto executar 
docker-compose up --build

7 - se fizer alguma alteração rodar o comando abaixo e depois o comando 4
docker system prune -af --volumes