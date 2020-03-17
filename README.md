# multi-k8s

- add secret 'pgpassword':
   kubectl create secret generic pgpassword --from-literal  PGPASSWORD=<Your-PASSWORD>
- set up an k8s-ingress by following the steps in:
  https://kubernetes.github.io/ingress-nginx/
  or just install with helm on your cloud provider:
  helm repo add stable https://kubernetes-charts.storage.googleapis.com/
  helm install my-nginx stable/nginx-ingress --set rbac.create=true 