#!/bin/bash
echo "Realizando build das imagens..."
docker build -t yujifer/projeto-php:1.0 backend/.
docker build -t yujifer/projeto-mysql:1.0 database/.

echo "Realizando push das imagens..."
docker push yujifer/projeto-php:1.0
docker push yujifer/projeto-mysql:1.0

echo "Aplicando volumes no cluster..."
kubectl apply -f ./volumes.yml

echo "Aplicando services no cluster..."
kubectl apply -f ./services.yml

echo "Aplicando deployments no cluster..."
kubectl apply -f ./mysql-deployment.yml
kubectl apply -f ./php-deployment.yml
