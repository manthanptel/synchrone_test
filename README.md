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
