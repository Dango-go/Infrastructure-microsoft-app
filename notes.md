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


gitops-repo
/ (root)
├── clusters/                   <-- Дефініції твоїх кластерів (Multi-cluster)
│   ├── prod-us-east-1/         <-- Кластер 1
│   └── prod-eu-central-1/      <-- Кластер 2 (Multi-region)
├── base/                       <-- "Золотий стандарт" налаштувань
│   ├── monitoring/             <-- (Prometheus, Grafana, Loki, Tempo, OTel)
│   ├── security/               <-- (Vault, Kyverno, Falco, External Secrets)
│   ├── scaling/                <-- (Karpenter, KEDA, Cluster Autoscaler)
│   └── service-mesh/           <-- (Istio, Jaeger)
└── applications/               <-- Тут твої 8 мікросервісів
    ├── helm-charts/            <-- Власні чарти для твоїх аплікух
    └── values/                 <-- Специфічні конфіги (Dev/Prod)


❌ Helm

❌ Terraform

❌ AWS

❌ EKS

❌ ArgoCD

❌ GitHub Actions

❌ Prometheus

❌ Grafana

❌ Loki

❌ Tempo

❌ OpenTelemetry

❌ Jaeger

❌ Vault

❌ External Secrets

❌ Karpenter

❌ Kyverno

❌ Falco

❌ KEDA

❌ Chaos Mesh

❌ Velero

❌ Multi-cluster

❌ Disaster Recovery


Terraform
AWS
EKS
Karpenter
Istio
ArgoCD
GitOps
Prometheus
Grafana
Loki
Tempo
OpenTelemetry
Trivy
Kyverno
Falco
Vault
External Secrets Operator
KEDA
Cluster Autoscaler
Crossplane
Multi-region
Multi-cluster
Disaster Recovery
Chaos Mesh
k6
LitmusChaos
Service Mesh
FinOps
Cost Monitoring