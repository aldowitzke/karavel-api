# English Version

This is an API created for the Karavel's challenge. 

The purpose of this API is to manage a agro trade business, where you can list, create, update and destroy products, species, qualities and exportion standards.

To make it easier, you can use an API development environment (i.e [Postman](https://www.getpostman.com/)) and follow the steps below.

# Portuguese Version


Essa é uma API criada para o desafio da Karavel.

O objetivo dessa API é gerenciar negócios em agro trade, onde você consegue listar, criar, atualizar e deletar produtos, espécies, qualidades e padrões de exportação.

Para facilitar, você pode usar um software de ambiente de desenvolvimento de API (por exemplo: [Postman](https://www.getpostman.com/)) e seguir os passos abaixo.

# Getting Ready

Run the following commands inside your projects directory:

```
1) Let's clone the repository:
git clone https://github.com/aldowitzke/karavel-api.git
# You will be asked for your credentials to move forward with the cloning.

2) Now let's setup:
bundle install
rails db:setup

3) Let's run the server
rails server

4) To run the tests:
rake
```

# Começando

Rode os seguintes comandos dentro do seu diretório de projetos:

```
1) Vamos clonar o repositório:
git clone https://github.com/aldowitzke/karavel-api.git
# Será pedido suas credenciais para continuar com o clone.

2) Vamos configurar:
bundle install
rails db:setup

3) Vamos iniciar o servidor:
rails server

4) Para rodar os testes:
rake
```

## Products

### Create/POST

```
Request URL
http://localhost:3000/api/v1/products

JSON Body
{ "product": { "name": "Beans", "species_attributes": { "name": "Navy Bean" } } }
```

### Index/GET

```
Request URL
http://localhost:3000/api/v1/products
```

### Update/PATCH

```
Request URL
http://localhost:3000/api/v1/products/id

JSON Body
{ "product": { "name": "Rice", "species_attributes": { "name": "White Rice" } } }
```

### DELETE
```
Request URL
http://localhost:3000/api/v1/products/id
```

## Species

### Create/POST
```
Request URL
http://localhost:3000/api/v1/species

JSON Body
{ "species": {"name": "Navy Bean"} }
```

### Index/GET

```
Request URL
http://localhost:3000/api/v1/species
```

### Edit/PATCH

```
Request URL
http://localhost:3000/api/v1/species/id

JSON Body
{ "species": {"name": "Wax bean" } }
```

### DELETE

```
Request URL
http://localhost:3000/api/v1/species/id
```

## Quality

You can create qualities to manage the basic qualities your grains need, such as humidity, proteins, impurities and folic acid.

Você pode criar qualidades para gerenciar as qualidades básicas que seus grãos precisam, como umidade, proteínas, impurezas e ácido fólico. 

### Create/POST

```
Request URL
http://localhost:3000/api/v1/qualities

Body JSON
{ "quality": { "name": "Proteins" } }
```

### Index/GET

```
Request URL
http://localhost:3000/api/v1/qualities
```

### Update/PATCH

```
Request URL
http://localhost:3000/api/v1/qualities/id

Body JSON
{ "quality": { "name": "Umidity" } }
```

### Delete

```
Request URL
http://localhost:3000/api/v1/qualities/id
```

## Export Standards

Export Standard is a join table to join Species + Quality and a value. This way you can set what is the export standard for each species. i.e: White Rice needs a humidity value of less than 4%.

Export Standard (padrão de exportação) é uma join table para juntar espécies + qualidade e um valor. Dessa maneira, você consegue estabelecer padrões de exportação para cada uma de suas espécies. Por exemplo: Arroz branco necessita de valor de umidade menor que 4%.

### Create/POST

```
Request URL
http://localhost:3000/api/v1/exportation_standards

Body JSON
{"exportation_standard": { "species_id": 1, "quality_id": 1, "value": 0.000005 } }
```

### Index/GET

```
Request URL
http://localhost:3000/api/v1/exportation_standards
```

### Update/PATCH

```
Request URL
http://localhost:3000/api/v1/exportation_standards/id

Body JSON
{"exportation_standard": { "species_id": 1, "quality_id": 1, "value": 0.002 } }
```

### Delete

```
Request URL
http://localhost:3000/api/v1/exportation_standards/id
```


