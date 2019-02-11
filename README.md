# My Favorite Movies API

## Instalação

### Passo 1

1. baixe e intale o virtual box
2. baixe e instale o vagrant

### Passo 2 execute o seguintes comandos no terminal apontando para a pasta do projeto

vagrant up - aguarde
vagrant ssh

#### Na máquina virtual execute

##### Instalando ruby e rails
>$ cd
>$ git clone https://github.com/rbenv/rbenv.git ~/.rbenv
>$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
>$ echo 'eval "$(rbenv init -)"' >> ~/.bashrc
>$ exec $SHELL

>$ git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
>$ echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
>$ exec $SHELL

>$ rbenv install 2.6.1
>$ rbenv global 2.6.1
>$ ruby -v

>$ gem install bundler -v 1.17.2

>$ git config --global color.ui true
>$ git config --global user.name "Bruno R. Holanda"
>$ git config --global user.email "brunorodriguesholanda@gmail.com"

>$ curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
>$ sudo apt-get install -y nodejs
>$ gem install rails -v 5.2.2
>$ rbenv rehash
>$ rails -v

##### Instalando postgres 9.5

>$ sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
>$ wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
>$ sudo apt-get update -y
>$ sudo apt-get install postgresql-common -y
>$ sudo apt-get install postgresql-9.5 libpq-dev -y

##### Configurando postgres

>$ sudo -u postgres psql template1
>\# ALTER USER postgres with encrypted password '1234';
>\# \q

##### entretrar nessa pasta e alterar a seguinte linha

>$ sudo vim /etc/postgresql/9.5/main/pg_hba.conf

>change local      all     postgres     peer

##### para

>change local      all     postgres     md5

##### continuando

>$ sudo /etc/init.d/postgresql restart
>$ createuser -U postgres -d -e -E -l -P -r -s vagrant
>$ password 1234 all steps

##### entretrar nessa pasta e alterar a seguinte linha

>$ sudo vim /etc/postgresql/9.5/main/pg_hba.conf

>change local      all     all      peer

##### para

>change local      all     all      md5

#### ir para a pasta do projeto

>$ cd /vagrant/MyFavoriteMovies
>$ bundle install
>$ rake db:create && rake db:migrate
>$ rails server
