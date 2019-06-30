# English Version

This is an API created for the Karavel's challenge. 

The purpose of this API is to manage a agro trade business, where you can create, update and destroy products, species, qualities and exportion standards.

To make it easier, you can use an API development environment (like Postman) and follow the steps below. Don't forget to run your rails server.

# Portuguese Version


Essa é uma API criada para o desafio da Karavel.

O objetivo dessa API é gerenciar negócios em agro trade, onde você consegue criar, atualizar e deletar produtos, espécies, qualidades e padrões de exportação.

Para facilitar, você pode usar um software de ambiente de desenvolvimento de API (por exemplo: Postman) e seguir os passos abaixo. Não se esqueça de ligar o seu rails server.

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
http://localhost:3000/api/v1/products/id

JSON Body
{ "species": {"name": "Wax bean" } }
```

### DELETE

```
Request URL
http://localhost:3000/api/v1/products/id
```

## Quality

You can create qualities to manage the basic qualities your grains need, such as humidity, proteins, impurities and folic acid.

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

## Export Standards

Export Standard is a join table to join Species + Quality and a value. This way you can set what is the export standard for each specie. I.E: White Rice needs a umidity value of less than 4%.

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
http://localhost:3000/api/v1/exportation_standards/1
```


