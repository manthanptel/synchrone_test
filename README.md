## Multiple Choice Questions 



1. Your company uses Kubernetes for container orchestration and recently adopted Ansible for configuration management. The team faces an issue where the application's environment variables must be updated frequently. Which approach would be the most efficient way to manage these environment variables using Ansible? 

- [ ]  Use Ansible to create Kubernetes ConfigMaps and mount them as environment variables inside the containers
- [ ]  Use Ansible inventory files to store environment variables and run an Ansible playbook every time an update is required
- [ ]  Use Ansible to modify the Dockerfile and rebuild the container image each time an environment variable needs to be updated
- [ ]  Use Ansible to update environment variables directly in the Kubernetes deployment YAML files
_________________

2. How can an organization apply a single command for Terraform and Ansible changes? The organization uses Terraform to manage infrastructure and Ansible configures software on provisioned instances. Ensure that Terraform changes are applied before Ansible changes.

- [ ] Use Terraform local-exec provisioner to call an Ansible playbook after applying Terraform changes
- [ ] Use Ansible's Terraform module to call Terraform from an Ansible playbook
- [ ] Use Terraform Ansible provisioner to call Ansible from a Terraform script
- [ ] Use a custom script that runs 'terraform apply' and 'ansible-playbook' in sequence

_________________

3. Without causing downtime, how should a company automate rolling updates while migrating its applications to a Kubernetes cluster using Ansible for application configuration?

- [ ] Use Kubernetes rolling updates with readiness and liveness probes to ensure zero downtime during the update process
- [ ] Use Ansible to update the application configuration and restart the affected pods
- [ ] Use Terraform to create new Kubernetes deployments with the updated application configuration and manually switch traffic between the old and new deployments
- [ ] Use Kubernetes to create new pods with the updated application configuration and manually delete the old pods
_________________

4. Terraform is used by your company to manage its infrastructure on a cloud provider. They also use Kubernetes to orchestrate container deployments and Ansible for configuration management. The organization is transitioning from a monolithic application to microservices. Which strategy would be most effective for managing the deployment and scaling of the microservices?

- [ ] Use Terraform for provisioning infrastructure, Kubernetes for managing microservices deployment and scaling, and Ansible for configuration management
- [ ] Use Ansible for provisioning infrastructure, managing microservices deployment, and configuration management
- [ ] Use Kubernetes for provisioning infrastructure and managing microservices deployment, and Ansible for configuration management
- [ ] Use Terraform for provisioning infrastructure and managing microservices deployment, and Ansible for configuration management

_________________

5. Find the combination of tools that a company should use to deploy a new service with automated canary deployments. The organization uses Terraform, Ansible, and Kubernetes for infrastructure provisioning, configuration management, and container orchestration.

- [ ] Terraform for provisioning infrastructure, Kubernetes for container orchestration and canary deployment, and Ansible for configuration management
- [ ] Terraform for provisioning infrastructure, Ansible for canary deployment, and Kubernetes for container orchestration
- [ ] Kubernetes for provisioning infrastructure, Terraform for canary deployment, and Ansible for container orchestration
- [ ] Ansible for provisioning infrastructure, Kubernetes for canary deployment, and Terraform for container orchestration
_________________

6. A team is working on a project that uses Terraform to manage infrastructure, Kubernetes for container orchestration, and Ansible for configuration management. During the development phase, a change is made to Terraform configuration files. Which command should be run first to validate the changes and ensure that the infrastructure will be updated correctly?

- [ ] terraform validate
- [ ] ansible-playbook --syntax-check
- [ ] terraform apply
- [ ] kubectl apply -f
_________________

7. A company is using Terraform to manage infrastructure for their Kubernetes-based application. They want to create a robust backup and recovery strategy for their Terraform state files. Which option is the most recommended approach to achieve this goal?

- [ ] Store the Terraform state files on a local disk and use a cron job to back them up regularly
- [ ] Use a distributed version control system like Git to store and manage the Terraform state files
- [ ] Use remote state storage with backend locking and versioning, and create regular backups
- [ ] Store the Terraform state files in a shared network folder and use a backup tool to create regular backups
_________________

8. With the intent to use Terraform for Infrastructure as Code (laC) management, Ansible for configuration management, and Kubernetes for container orchestration, a company is migrating its infrastructure to a cloud provider. The company plans to deploy a web application consisting of a frontend, backend, and database. Which combination of tools is the most appropriate for each component of the application?

- [ ] Terraform for frontend, Ansible for backend, Kubernetes for database
- [ ] Terraform for infrastructure provisioning, Ansible for configuration management, Kubernetes for container orchestration
- [ ] Kubernetes for frontend, Terraform for backend, Ansible for database
- [ ] Ansible for frontend, Kubernetes for backend, Terraform for database
_________________

9. While implementing a CI/CD pipeline for their Kubernetes-based application, a development team decides to use Terraform to provision the infrastructure and Ansible to deploy the application. Which practice should the organization follow to maximize the benefits of both tools?

- [ ] Provision infrastructure using Terraform to ensure the infrastructure is ready before deploying the application with Ansible
- [ ] Deploy the application using Ansible to ensure the application is ready before provisioning the infrastructure with Terraform
- [ ] Deploy the application and provision the infrastructure simultaneously using both Ansible and Terraform
- [ ] No specific order is required as long as both Ansible and Terraform are used in the pipeline
_________________

10. An organization is deploying a multi-tier application on a Kubernetes cluster. They want to use Ansible to automate the configuration and deployment of the application components, including the web servers, application servers, and database servers. They also want to use Terraform to manage the underlying infrastructure. Which practice should the organization follow to maximize the benefits of both tools?

- [ ] Use Terraform for infrastructure provisioning and Ansible for configuration management and deploying application components on the Kubernetes cluster
- [ ] Use Terraform to manage Kubernetes resources and Ansible for infrastructure provisioning
- [ ] Use Ansible to manage Kubernetes resources and Terraform for infrastructure provisioning
- [ ] Use Ansible for both infrastructure provisioning and configuration management, and Terraform for managing Kubernetes resources

_________________



## Task 1 For TerraForm Scripting 



You and your team are working on a project in AWS. At the very beginning, you just created resources by clicking in the Developer Console, but as your project grew, you found it problematic to remember all the steps needed every time. You decided to start from scratch and use an automation tool so that you can easily create multiple environments, or recreate them if something bad happens.
You and your team have decided to go with Terraform. The first elements that need to be created are the S3 bucket and the SQS queue. These elements are connected together because the queue should be notified when someone uploads any file to S3.
You have prepared the requirements and now you're ready to implement them in Terraform.


#### Objectives

* There should be an S3 bucket referenced in Terraform as ```bucket``` and named ```upload-bucket``` . The ACL should be ```private```. 
* There should be an SQS queue referenced in Terraform as ```queue``` and named ```upload-queue``` .
* The above queue should have a delay specified as 60 seconds, a max message size of 8kB, should discard messages after 48 hours and should wait for up to 15 seconds for messages to be received.
* There should be an IAM policy document created as Terraform ```data``` , referenced as ```iam_notif_policy_doc``` , which should describe the policy that will be used by the bucket notification hook to post messages to the queue, or you can use EOF expression in policy and omit this step.
* The above document should contain one statement with id equal to ```1``` . 
* The above statement should work only for the ```upload-bucket``` should be tested by checking if the source ```ARN``` matches. 
* The above statement should work only on ```upload-queue``` and it should allow messages to be sent to it.
*  The above statement should use the ```AWS``` type of principal with identifiers set to ```*``` .
* The above document should be used to create the ```upload-queue``` policy referenced in Terraform as ```notif_policy``` . You may as well use inline policy implementing the same thing instead of using policy document. 
* Finally, bucket notification should be enabled (referenced in Terraform as ```bucket_notif``` ) to send a message to ```upload-queue``` object is created in upload-bucket.
* All references to other resources should be specified as Terraform identifiers, not as text.

#### Hints
* Please remember that 1kB is 1024 bytes.
* Don't change the AWS provider version.
* Variables definition are forbidden as they won't be provided to the command, but you may use locals.
* ```terraform init``` is already executed in the environment
* The code cannot contain any syntax errors or warnings (e.g. regarding deprecations).
* The actual errors will be shown as a test results. The "compilation successful" message is irrelevant for this task.


#### Versions
* AWS Provider version is 3.30.0
* Terraform 0.14.7


_________________



## Task 2 For Bash Scripting 


You are working on a site and need to perform Apache access log analysis.
The IT team needs statistics on requests per day and requests per IP.
* Bash version 5.0 is installed, and your script will run on Debian Linux Your task
Create a Bash script to parse and analyze the Apache access log file. The path to the log file is passed as the first parameter to the script (the initial solution stores the log file path in the LOG_FILE variable). This means that if your script is stored in solution.sh, it can be called a bash solution.sh /var/log/access.log, and should analyze this specific log file.
You need to output two statistics, limited to the top 10 results and sorted numerically by quantity from highest to lowest value without leading blanks and that lines with greater key
values appear earlier in the output instead of later.
Your script should output both results one after the other, and each row must have QUANTITY FIELD format, with either space or tabulator as a separator.
The Apache log has the following example content:# synchrone_test




```

172.19.0.104
[25/Jul/2019:22:32:02 +0000] "GET /index HTTP/1.1" 200 14034 (compatible; SemrushBot/6~bl;|| "Mozilla/5.0 +http://www.semrush.com/bot.html)" "172.19.0.4"

172.19.0.104 - - [26/Jul/2019:22:31:32 +0000] "GET/site HTTP/1.1" 200 36565 "https://command-not- found.com/curl" "Mozilla/5.0+(compatible; UptimeRobot/2.0; http://www.uptime robot.com/)" "172.19.0.3"

172.19.0.105 - — [26/Jul/2019:22:30:10 +0000] "GET /credits HTTP/1.1" 200 31067|| "Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)" "172.19.0.2"

172.19.0.106 — - [27/Jul/2019:22:30:10 +0000] "GET /index HTTP/1.1" 200 31067 || "Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)" "172.19.0.2"

172.19.0.104 - - [28/Jul/2019:22:35:10 +0000] "GET || "Mozilla/5.0/index HTTP/1.1" 200 31067 (compatible; YandexBot/3.0; +http://yandex.com/bots)" "172.19.0.2"

```


The first statistic is requests per day.
The day value is located in brackets in every log entry and must be extracted to have only a date value without a time: for example
16/Feb/2020. The correct output for this statistic using the above example log is:

```
2 26/Jul/2019
1 25/Jul/2019
1 27/Jul/2019
1 28/Jul/2019
```

The second statistic is requested per IP.
The IP value is located at the very beginning of each log entry and must be extracted. The correct output for this statistic using the above example log is:

```
3 172.19.0.104
1 172.19.0.105
1 172.19.0.106
```

Ensure your Bash script contains robust code, as it is checked with a static code analyzer.
