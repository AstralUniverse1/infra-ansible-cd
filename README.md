# Infra-Ansible-CD
## Terraform
* Provisions 2 EC2 instances + Security Group in default VPC
* Inbound: 22 (SSH) and NodePort range (30000-32767)
* Outputs: CP_IP + WORKER_IP (used for Ansible inventory)
## Ansible playbook
* Configures **control_plane** node (Kubernetes API)
* Joins **worker** node to the cluster
* Result: Deployment-ready cluster
## Helm
* Charts and deploys a simple Flask app in cluster (NodePort) 
* http://<node_public_ip>:<nodeport>
## CI/CD Workflow
* Build > tag > docker push (still to be added: trivy scan, smoke test)
* Update Helm image tag and bump version > git push to main (triggers ArgoCD)
## ArgoCD
* Application manifest
* Watches branch main and helm/bank-app-cd
* Auto-sync enabled: helm chart updates > rollout in cluster