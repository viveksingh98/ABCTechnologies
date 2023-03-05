# Table of Contents
[Industry Grade Project 1: (ABC Technologies)	1](#_Toc128963020)

[Prerequisites	1](#_Toc128963021)

[Repository URL	1](#_Toc128963022)

[Task 1](#_Toc128963023)

[Task 2](#_Toc128963024)

[Task 3](#_Toc128963025)

[Task 4](#_Toc128963026)

[Task 5](#_Toc128963027)



# Industry Grade Project 1: (ABC Technologies)
**Student Name**: Vivek Singh

**E-Mail**: viveksingh98@gmail.com

**Github Repository**: <https://github.com/viveksingh98/ABCTechnologies.git> 


# Prerequisites
1. Global tool configuration is done
1. All the necessary Jenkins plugins are installed
1. Master-Slave node configuration is in place
1. All the necessary software like Git, Jenkins, Maven, Tomcat, Docker, Kubernetes, JDK, Ansible, Eclipse, Prometheus and Grafana are installed properly.

**Screenshots:**






# Repository URL

https://github.com/viveksingh98/ABCTechnologies.git

# Task 1

**Task Description:**
Clone the project from the GitHub link shared in resources to your local machine. Build the code using Maven commands.

**Solution:**

1. Open a terminal or command prompt on the local machine.
1. Navigate to the directory where I downloaded the project from edureka using the cd command.
1. Check that you have Maven installed on the machine by running the command mvn -version. If Maven is not installed, I can download it from the official website: <https://maven.apache.org/download.cgi>
1. Run the command mvn clean install. This will compile the code, run any tests, and create a target directory containing the built artifacts.
1. If the build is successful, I will see a message indicating that the build was successful, and the location of the built artifacts. If there were any errors, I will see error messages in the terminal.
1. Next, navigate to the directory of the cloned repository on the local machine using the cd command.
1. Initialize a new Git repository using the command git init.
1. Add the files to the Git repository using the command git add . to add all files in the directory to the repository. Alternatively, I can specify specific files to add.
1. Commit the changes using the command git commit -m "Initial commit".
1. Add the remote repository URL using the command git remote add origin https://github.com/viveksingh98/ABCTechnologies.
1. Push the changes to the remote repository using the command git push -u origin master. This will push the changes to the master branch of the remote repository.



Commands –
mvn clean install

git remote add origin https://github.com/viveksingh98/ABCTechnologies.git

git push -u origin master

# Task 2

**Task Description:**
Set up the Git repository and push the source code. Then, log in to Jenkins. 

1. Create a build pipeline containing a job for each 

• One for compiling source code 

• Second for testing source code

• Third for packing the code

1. ` `Execute the CI/CD pipeline to execute the jobs created in step 1 
1. Set up a master-slave node to distribute the tasks in the pipeline.

**Solution:**

1. Set up the Git repository and push the source code:
- Use the existing repository on github which was used in Task 1
- Clone the repository to your local machine using the git clone command.
- Add the source code to the local repository and commit the changes using the git add and git commit commands.
- Push the changes to the remote repository on GitHub using the git push command.
1. Log in to Jenkins:
- Open your web browser and navigate to the Jenkins URL.
- Log in to Jenkins with your credentials.
1. Create a build pipeline containing a job for each:
- Install the required plugins for building, testing and packaging the Java code. Some commonly used plugins are:
- Maven Integration Plugin - for building and packaging the Java code using Maven.
- JUnit Plugin - for running JUnit tests.
- Publish Over SSH Plugin - for copying the built artifacts to a remote server.
- Create a new Freestyle project in Jenkins and configure it to build the Java code using Maven. You can use the following steps:
- In the General section of the job configuration, specify the GitHub repository URL in the Project URL field.
- In the Source Code Management section, select Git and specify the Git repository URL, credentials (if required) and branch to build.
- In the Build section, add a new Invoke top-level Maven targets build step and specify the Maven goals to execute, such as clean install.
- Create a new Freestyle project in Jenkins and configure it to run JUnit tests. You can use the following steps:
- In the General section of the job configuration, specify the same GitHub repository URL as the previous job.
- In the Build section, add a new Invoke top-level Maven targets build step and specify the Maven goal to execute, such as test.
- In the Post-build Actions section, add a new Publish JUnit test result report post-build action and specify the location of the JUnit test reports.
- Create a new Freestyle project in Jenkins and configure it to package the Java code. You can use the following steps:
- In the General section of the job configuration, specify the same GitHub repository URL as the previous jobs.
- In the Build section, add a new Invoke top-level Maven targets build step and specify the Maven goal to execute, such as package.
- In the Post-build Actions section, add a new Archive the artifacts post-build action and specify the location of the built artifacts, such as target/\*.jar.
1. Execute the CI/CD pipeline to execute the jobs created in step 1:
- Create a new pipeline job in Jenkins.
- In the pipeline configuration, add the three jobs created in step 3 as stages of the pipeline.
- Configure the pipeline to trigger each stage when the previous stage is successful.
1. Set up a master-slave node to distribute the tasks in the pipeline:
- Install and configure the SSH Slaves plugin in Jenkins.
- Set up a new slave node in Jenkins and configure it to connect to a remote server using SSH.
- Configure the pipeline to distribute the jobs across the master and slave nodes, based on their capabilities and availability.

Screenshots:

























**Pipeline Execution Video:**

<https://youtu.be/fQ30LBg29qw>

# Task 3

**Task Description:**
Write a Docker file. Create an Image and container on the Docker host. Integrate docker host with Jenkins. Create CI/CD job on Jenkins to build and deploy on a container. 

1. Enhance the package job created in step 1 of task 2 to create a docker image. 
1. In the Docker image, add code to move the war file to the Tomcat server and build the image

**Solution:**

1. Create a Dockerfile in the root directory of your project with the following content:

From tomcat:9.0-alpine 

ADD ./\*.war /usr/local/tomcat/webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]

1. Commit the Dockerfile to the Git repository.
1. Install Docker on the Jenkins machine and ensure that the Jenkins user has sufficient permissions to execute Docker commands.
1. Install the Docker plugin on Jenkins by navigating to "Manage Jenkins" -> "Manage Plugins" -> "Available" -> "Docker plugin" and install.
1. Configure Docker in Jenkins by navigating to "Manage Jenkins" -> "Configure System" -> "Docker" section. Add Docker installation and give a name.
1. Create a new freestyle job in Jenkins and configure it as follows:
- Under "Source Code Management", select your Git repository and enter your Git credentials.
- Under "Build Triggers", select "Build when a change is pushed to GitLab" option.
- Under "Build", select "Execute shell" and enter the following command:

cp ../AbcTechnologiesPackage/target/ABCtechnologies-1.0.war .

sudo docker build -t dockerfile .

1. Save and run the job to build a Docker image.
1. Once the Docker image is built, I can use it to create a container using the following command:

sudo docker run -p 8081:8081 -d dockerfile

1. I can access the running container by navigating to http://<docker-host>:8081/. (I have set port 8081 because on port 8080 Jenkins is running)
1. I have now successfully integrated Docker with Jenkins and created a CI/CD pipeline to build and deploy a Docker container.

**Screenshots:**














# Task 4

**Task Description:**
Integrate the Docker host with Ansible. Write an Ansible playbook to create an image and create a continuer. Integrate Ansible with Jenkins. Deploy Ansible-playbook. CI/CD job to build code on ansible and deploy it on docker container 

1. Deploy Artifacts on Kubernetes 
1. Write pod, service, and deployment manifest file 
1. Integrate Kubernetes with Ansible 
1. Ansible playbook to create deployment and service

**Solution:**

1. Using the "edureka" user on the master node, I added a playbook to create and push a Docker image to Docker Hub.


1. I used the "Package" job as the upstream to configure this job.
1. The "/opt/ansible" directory was used to move the "\*.war" package.




1. A Dockerfile was created to build an image with the "\*.war" package and run it on a Tomcat container.


1. An Ansible playbook was added to create and push the Docker image to Docker Hub.


1. In the Jenkins job, I executed the Ansible playbook only after the "Package" job had been completed successfully.


1. Output:






1. Using Ansible, I created a Docker image with the "\*.war" package and pushed it to Docker Hub.
1. I also created Kubernetes service and deployment manifest files in the "/opt/k8s" directory.





1. An Ansible playbook was created to deploy Kubernetes resources.




1. A Jenkins job was created to automate the execution of the playbooks to achieve continuous deployment using the "ABC\_Technologies\_Ansible\_job\_to\_push\_image\_onto\_dockerhub" job as the upstream.
1. I executed the Ansible playbook to deploy on the K8s cluster only if the upstream job was stable.

1. The output of the execution was observed and verified.











# Task 5

**Task Description:**
Using Prometheus, monitor the resources like CPU utilization: Total Usage, Usage per core, usage breakdown, memory, and network on the instance by providing the endpoints on the local host. Install the node exporter and add the URL to the target in Prometheus. Using this data, log in to Grafana and create a dashboard to show the metrics.

**Solution:**

1. Need to install node exporter for linux from prometheus web page.


1. Rename the extracted tar file to node\_exporter-files.

1. Run the node\_exporter script.
1. Add the node\_exporter target to the prometheus.yaml file.

1. Create Grafana dashboard.
1. Add the source as Prometheus.
1. Output:








