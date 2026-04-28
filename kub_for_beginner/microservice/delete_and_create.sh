kubectl get deployment | grep -vi ready | awk -F ' ' '{print $1}' | xargs kubectl delete deployment
kubectl get service | grep -vi 'external-ip' | awk -F ' ' '{print $1}' | xargs kubectl delete service

# kubectl apply -f ./temp/kube_deployment_redis.yaml
# kubectl apply -f ./temp/kube_service_redis.yaml

# kubectl apply -f ./temp/kube_deployment_postgres.yaml
# kubectl apply -f ./temp/kube_service_postgres.yaml

# kubectl apply -f ./temp/kube_deployment_vote_app.yaml
# kubectl apply -f ./temp/kube_service_vote.yaml

# kubectl apply -f ./temp/kube_deployment_result_app.yaml
# kubectl apply -f ./temp/kube_service_result.yaml

# kubectl apply -f ./temp/kube_deployment_worker.yaml

kubectl apply -f kube_deployment_redis.yaml
kubectl apply -f kube_service_redis.yaml

kubectl apply -f kube_deployment_postgres.yaml
kubectl apply -f kube_service_postgres.yaml

kubectl apply -f kube_deployment_vote_app.yaml
kubectl apply -f kube_service_vote.yaml

kubectl apply -f kube_deployment_result_app.yaml
kubectl apply -f kube_service_result.yaml

kubectl apply -f kube_deployment_worker.yaml