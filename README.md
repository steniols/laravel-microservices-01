# Companies API 

A companies API with all CRUD operations, using microservices and RabbitMQ.

## Requirements

* Docker(v20.10.6)
* Docker Compose(v1.24.0)
* Port 8000 open
* [Microservice 02](https://github.com/steniols/laravel-microservices-02) running
* A [Mailtrap](https://mailtrap.io/) inbox

## Install

Create a `.env` file:

```bash
cp .env.sample .env
```

Docker containers:
```bash
docker-compose up -d
```

Access docker service:
```bash
docker-compose exec micro_01 bash
```

Install composer dependencies:
```bash
composer install
```

Run migrations:
```bash
php artisan migrate
```

## Using Mailtrap:

Update the `.env` file with your Mailtrap inbox configs, if you don't want to use these service, 
use your own email configs.

## Using CloudAMQP:

By default the project setup is configured to use Redis for queue management, but you can use RabbitMQ if you prefer, do these steps:

1) Create an instance of RabbitMQ in [CloudAMQP](https://cloudamqp.com)
2) Update QUEUE_CONNECTION variable in `.env` to 'rabbitmq'
3) Update other RABBITMQ variables in `.env` according with your new instance

Update the `.env` file with your CloudAMQP instance configs, if you don't want to use these service, do these steps:

## HTTP requests

List all companies:
```bash
curl --request GET \
  --url http://localhost:8000/companies \
  --header 'accept: application/json'
```

Get company by id:
```bash
curl --request GET \
  --url http://localhost:8000/companies/COMPANY_ID \
  --header 'accept: application/json'
```

Create company:
```bash
curl --request POST \
  --url http://localhost:8000/companies \
  --header 'Content-Type: multipart/form-data' \
  --header 'accept: application/json' \
  --form 'name=Company name test' \
  --form whatsapp=99999999999 \
  --form telefone=1144443333 \
  --form email=companytest@gmail.com \
  --form category_id=1
```

Update company:
```bash
curl --request POST \
  --url http://localhost:8000/companies/COMPANY_ID \
  --header 'Content-Type: multipart/form-data' \
  --header 'accept: application/json' \
  --form 'name=Company new name' \
  --form whatsapp=99999999991 \
  --form telefone=1155556666 \
  --form email=companynewemail@gmail.com \
  --form category_id=1 \
  --form _method=PUT
```

Delete company:
```bash
curl --request DELETE \
  --url http://localhost:8000/companies/COMPANY_ID \
  --header 'Content-Type: application/json' \
  --header 'accept: application/json'
```

List all categories:
```bash
curl --request GET \
  --url http://localhost:8000/categories \
  --header 'accept: application/json'
```

Get category by id:
```bash
curl --request GET \
  --url http://localhost:8000/categories/CATEGORY_ID \
  --header 'accept: application/json'
```

Create category:
```bash
curl --request POST \
  --url http://localhost:8000/categories \
  --header 'Content-Type: application/json' \
  --header 'accept: application/json' \
  --data '{
	"title": "Category 01",
	"description": "Category description example"
}'
```

Update category:
```bash
curl --request PUT \
  --url http://localhost:8000/categories/CATEGORY_ID \
  --header 'Content-Type: application/json' \
  --header 'accept: application/json' \
  --data '{
	"title": "Category 01 new name",
	"description": "Category new description"
}'
```

Delete category:
```bash
curl --request DELETE \
  --url http://localhost:8000/categories/CATEGORY_ID \
  --header 'Content-Type: application/json' \
  --header 'accept: application/json'
```
