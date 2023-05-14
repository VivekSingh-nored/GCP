Deploying a Private GKE cluster with NAT

Things to change - Project in , GCS Bucket name in provider.tf

Terraform Apply to create resorurces.

Once cluster is created, use gcloud container clusters get-credentials <Cluster name> --region to fetch cluster credentials.
After this you can use kubectl.

kubectl create -f App/ to create all resources.
kubectl delete -f App/ to delete all resources.

kubectl apply -f <filename> to create individual resources.

Once all testing is done, use terraform destroy to delete all resources
or terraform destroy -target=resource_type.resource_name to destroy particular resources.


--------