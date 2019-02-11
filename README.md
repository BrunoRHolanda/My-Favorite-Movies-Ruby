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
<code>$ cd</code>
<code>$ git clone https://github.com/rbenv/rbenv.git ~/.rbenv</code>
<code>$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc</code>
<code>$ echo 'eval "$(rbenv init -)"' >> ~/.bashrc</code>
<code>$ exec $SHELL</code>

<code>$ git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build</code>
<code>$ echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc</code>
<code>$ exec $SHELL</code>

<code>$ rbenv install 2.6.1</code>
<code>$ rbenv global 2.6.1</code>
<code>$ ruby -v</code>

<code>$ gem install bundler -v 1.17.2</code>

<code>$ git config --global color.ui true</code>
<code>$ git config --global user.name "Bruno R. Holanda"</code>
<code>$ git config --global user.email "brunorodriguesholanda@gmail.com"</code>

<code>$ curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -</code>
<code>$ sudo apt-get install -y nodejs</code>
<code>$ gem install rails -v 5.2.2</code>
<code>$ rbenv rehash</code>
<code>$ rails -v</code>

##### Instalando postgres 9.5

<code>$ sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list"</code>
<code>$ wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -</code>
<code>$ sudo apt-get update -y</code>
<code>$ sudo apt-get install postgresql-common -y</code>
<code>$ sudo apt-get install postgresql-9.5 libpq-dev -y</code>

##### Configurando postgres

<code>$ sudo -u postgres psql template1</code>
<code>\# ALTER USER postgres with encrypted password '1234';</code>
<code>\# \q</code>

##### entretrar nessa pasta e alterar a seguinte linha

<code>$ sudo vim /etc/postgresql/9.5/main/pg_hba.conf</code>

<code>change local      all     postgres     peer</code>

##### para

<code>change local      all     postgres     md5</code>

##### continuando

<code>$ sudo /etc/init.d/postgresql restart</code>
<code>$ createuser -U postgres -d -e -E -l -P -r -s vagrant</code>
<code>$ password 1234 all steps</code>

##### entretrar nessa pasta e alterar a seguinte linha

<code>$ sudo vim /etc/postgresql/9.5/main/pg_hba.conf</code>

<code>change local      all     all      peer</code>

##### para

<code>change local      all     all      md5</code>

#### ir para a pasta do projeto

<code>$ cd /vagrant/MyFavoriteMovies</code>
<code>$ bundle install</code>
<code>$ rake db:create && rake db:migrate</code>
<code>$ rails server</code>
