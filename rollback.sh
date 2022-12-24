#!/bin/bash
echo "Removendo deployments..."
kubectl delete deploy mysql-deployment php-deployment

echo "Removendo services..."
kubectl delete svc projeto-mysql-clusterip projeto-php-lb

echo "Removendo volumes..."
kubectl delete pvc pvc-local
kubectl delete pv pv-local

echo "Removendo imagens..."
docker rmi -f yujifer/projeto-php:1.0 yujifer/projeto-mysql:1.0