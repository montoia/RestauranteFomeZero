# README

# Etapas de criação #

### Criação da aplicação
- rails new RestauranteFomeZero -d postgresql

### Config Banco
- Inserção dos dados do postgres no arquivo database

### Criação do Banco
rake db:create

### Status das migrate
rake db:migrate:status

### Geração das tabelas do banco
rails generate scafflod restaurant nome:string endereco:string telefone:string
# 
rails generate scaffold plates descricao:string preco:decimal tempopreparo:time
# 
rails generate scaffold ingredients descricao:text

### Publicação das migrate
rake db:migrate

### Voltar migrante versão especifica
rake db:migrate:down VERSION=20180917013704

### Voltar para a ultima migrante
rake db:rollback


# Aplicação
Guia https://guides.rubyonrails.org

## Model
### Campos obrigatórios 
Inserção no model a chamada "validates_presence_of :nome" com o respectivo atributo



### GIT ###
git status
git add .
git commit -m "C0 - add Mensagem"
git remote add origin https://github.com/montoia/restaurantefomezero.git
git push -u origin master
git remote remove origin












