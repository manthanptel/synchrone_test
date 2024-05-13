

1.
Your company uses Kubernetes for container orchestration and recently adopted Ansible for configuration management. The team faces an issue where the application's environment variables must be updated frequently. Which approach would be the most efficient way to manage these environment variables using Ansible?


A: Use Ansible to create Kubernetes ConfigMaps and mount them as environment variables inside the containers
B: Use Ansible inventory files to store environment variables and run an Ansible playbook every time an update is required
C: Use Ansible to modify the Dockerfile and rebuild the container image each time an environment variable needs to be updated
D: Use Ansible to update environment variables directly in the Kubernetes deployment YAML files


2.
How can an organization apply a single command for Terraform and Ansible changes? The organization uses Terraform to manage infrastructure and Ansible configures software on provisioned instances. Ensure that Terraform changes are applied before Ansible changes.


A: Use Terraform local-exec provisioner to call an Ansible playbook after applying Terraform changes
B: Use Ansible's Terraform module to call Terraform from an Ansible playbook
C: Use Terraform Ansible provisioner to call Ansible from a Terraform script
D: Use a custom script that runs 'terraform apply' and 'ansible-playbook' in sequence





3.
Without causing downtime, how should a company automate rolling updates while migrating its applications to a Kubernetes cluster using Ansible for application configuration?
A: Use Kubernetes rolling updates with readiness and liveness probes to ensure zero downtime during the update process
B: Use Ansible to update the application configuration and restart the affected pods
C: Use Terraform to create new Kubernetes deployments with the updated application configuration and manually switch traffic between the old and new deployments
D: Use Kubernetes to create new pods with the updated application configuration and manually delete the old pods


4.
Terraform is used by your company to manage its infrastructure on a cloud provider. They also use Kubernetes to orchestrate container deployments and Ansible for configuration management. The organization is transitioning from a monolithic application to microservices. Which strategy would be most effective for managing the deployment and scaling of the microservices?


A: Use Terraform for provisioning infrastructure, Kubernetes for managing microservices deployment and scaling, and Ansible for configuration management
B: Use Ansible for provisioning infrastructure, managing microservices deployment, and configuration management
C: Use Kubernetes for provisioning infrastructure and managing microservices deployment, and Ansible for configuration management
D: Use Terraform for provisioning infrastructure and managing microservices deployment, and Ansible for configuration management





5.
Find the combination of tools that a company should use to deploy a new service with automated canary deployments. The organization uses Terraform, Ansible, and Kubernetes for infrastructure provisioning, configuration management, and container orchestration.


A: Terraform for provisioning infrastructure, Kubernetes for container orchestration and canary deployment, and Ansible for configuration management
B: Terraform for provisioning infrastructure, Ansible for canary deployment, and Kubernetes for container orchestration
C: Kubernetes for provisioning infrastructure, Terraform for canary deployment, and Ansible for container orchestration
D: Ansible for provisioning infrastructure, Kubernetes for canary deployment, and Terraform for container orchestration


6.
A team is working on a project that uses Terraform to manage infrastructure, Kubernetes for container orchestration, and Ansible for configuration management. During the development phase, a change is made to Terraform configuration files. Which command should be run first to validate the changes and ensure that the infrastructure will be updated correctly?


A: terraform validate
B: ansible-playbook --syntax-check
C: terraform apply
D: kubectl apply -f





7.
A company is using Terraform to manage infrastructure for their Kubernetes-based application. They want to create a robust backup and recovery strategy for their Terraform state files. Which option is the most recommended approach to achieve this goal?


A: Store the Terraform state files on a local disk and use a cron job to back them up regularly
B: Use a distributed version control system like Git to store and manage the Terraform state files
C: Use remote state storage with backend locking and versioning, and create regular backups
D: Store the Terraform state files in a shared network folder and use a backup tool to create regular backups





8.
With the intent to use Terraform for Infrastructure as Code (laC) management, Ansible for configuration management, and Kubernetes for container orchestration, a company is migrating its infrastructure to a cloud provider. The company plans to deploy a web application consisting of a frontend, backend, and database. Which combination of tools is the most appropriate for each component of the application?

A: Terraform for frontend, Ansible for backend, Kubernetes for database
B: Terraform for infrastructure provisioning, Ansible for configuration management, Kubernetes for container orchestration
C: Kubernetes for frontend, Terraform for backend, Ansible for database
D: Ansible for frontend, Kubernetes for backend, Terraform for database


9. While implementing a CI/CD pipeline for their Kubernetes-based application, a development team decides to use Terraform to provision the infrastructure and Ansible to deploy the application. Which practice should the organization follow to maximize the benefits of both tools?


A: Provision infrastructure using Terraform to ensure the infrastructure is ready before deploying the application with Ansible
B: Deploy the application using Ansible to ensure the application is ready before provisioning the infrastructure with Terraform
C: Deploy the application and provision the infrastructure simultaneously using both Ansible and Terraform
D: No specific order is required as long as both Ansible and Terraform are used in the pipeline





10. An organization is deploying a multi-tier application on a Kubernetes cluster. They want to use Ansible to automate the configuration and deployment of the application components, including the web servers, application servers, and database servers. They also want to use Terraform to manage the underlying infrastructure. Which practice should the organization follow to maximize the benefits of both tools?


A: Use Terraform for infrastructure provisioning and Ansible for configuration management and deploying application components on the Kubernetes cluster
B: Use Terraform to manage Kubernetes resources and Ansible for infrastructure provisioning
C: Use Ansible to manage Kubernetes resources and Terraform for infrastructure provisioning
OD: Use Ansible for both infrastructure provisioning and configuration management, and Terraform for managing Kubernetes resources
