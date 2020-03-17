docker build -t 155663/multi-client:latest -t 155663/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t 155663/multi-server:latest  -t 155663/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t 155663/multi-worker:latest  -t 155663/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push 155663/mutli-client:latest
docker push 155663/mutli-server:latest
docker push 155663/mutli-worker:latest

docker push 155663/mutli-client:$SHA
docker push 155663/mutli-server:$SHA
docker push 155663/mutli-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server = 155663/multi-server:$SHA
kubectl set image deployments/client-deployment client = 155663/multi-client:$SHA
kubectl set image deployments/worker-deployment worker = 155663/multi-worker:$SHA
