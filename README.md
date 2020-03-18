
# multi-k8s

 1. add secret 'pgpassword':

	    kubectl create secret generic pgpassword --from-literal  PGPASSWORD= [Your-PASSWORD]

 2. set up an k8s-ingress
 follow the steps according to: [https://kubernetes.github.io/ingress-nginx/](ingress-ngnix)
  or just install with helm on your cloud provider:

        helm repo add stable https://kubernetes-charts.storage.googleapis.com/
        helm install my-nginx stable/nginx-ingress --set rbac.create=true 
