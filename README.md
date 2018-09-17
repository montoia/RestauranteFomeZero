# README

### Etapas de criação ###

# criação da aplicação
- rails new RestauranteFomeZero -d postgresql

#Config Banco
- Inserção dos dados do postgres no arquivo database

# Criação do Banco
rake db:create

# Status das migrate
rake db:migrate:status

# Geração das tabelas do banco
rails generate scafflod restaurant nome:string endereco:string telefone:string
rails generate scaffold plates descricao:string preco:decimal tempopreparo:time
rails generate scaffold ingredients descricao:text

# Publicação das migrate
rake db:migrate

# Voltar migrante versão especifica
rake db:migrate:down VERSION=20180917013704

# Voltar para a ultima migrante
rake db:rollback









