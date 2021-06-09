# BlogProgrammer

## Instalação

Configurações requeridas:
- [Docker](https://www.docker.com/)

Configurando localmente a aplicação:
```bash
$ git clone https://github.com/jonathanmicaell/blogprogrammer.git
$ cd blogprogrammer
$ docker-compose up -d
```

Rode todos os comandos para iniciar corretamente a aplicação:
```bash
$ cd blogprogrammer
$ docker-compose exec npm npm install
$ docker-compose exec php php /var/www/html/artisan key:generate
$ docker-compose exec php php /var/www/html/artisan horizon:install
$ docker-compose exec php php /var/www/html/artisan telescope:install
$ docker-compose exec php php /var/www/html/artisan storage:link
$ docker-compose exec php php /var/www/html/artisan migrate
$ docker-compose exec php php /var/www/html/artisan migrate --seed
```

Usuario feito o seed :
```yml
email: teste@teste.com
password: teste
```

## Contribuição

Não hesite em contribuir para o projecto, adaptando ou acrescentando funcionalidades ! Relatórios de bugs ou pedidos de puxar são bem-vindos.

## Licença

Este projecto é lançado no âmbito do [MIT](http://opensource.org/licenses/MIT) licença.
