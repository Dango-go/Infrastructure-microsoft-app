basket-api:v1 +
webhook-api:v1 
ordering-api:v1 +
order-processor-api:v1 +
payment-processor-api:v1 +
identity-api:v1
catalog-api:v1  +
web-app:v1 +



# ------------------------------------------

Basket.API (Кошик)

Catalog.API (Товари/каталог)

Identity.API (Авторизація та користувачі)

Ordering.API (Замовлення)

Webhooks.API (Обробка вебхуків)

OrderProcessor (Фоновий сервіс обробки замовлень)

PaymentProcessor (Сервіс оплати)

WebApp - фронт

eShop.AppHost - local

HybridApp / WebhookClient - additional clients



Команда для створення файлу .dll і створення докер образу на базі цього файла: 
# dotnet publish /t:PublishContainer -c Release -p:ContainerImageName=payment-Processor-api -p:ContainerImageTag=v1