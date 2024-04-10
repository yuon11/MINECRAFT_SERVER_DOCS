# MINECRAFT_SERVER_DOCS

## Overview
The purpose of this repository is to codify, parameterize, and improve the deployment process for my personal Minecraft Java Edition server. The long term goal is to parameterize this to include the setup of different minecraft versions, mods, and server configs. 

## Architecture Diagram
![alt text](img\MinecraftServerArch.drawio.png)

1. A developer creates the terraform to provision and configure the necessary infrastructure and services for a minecraft server. Min recommended EC2 instance is t2.small 8gb for 2-3 concurrent users.

2. After parameterizing and configuring specifications for minecraft, and aws services, a developer should save the changes to the main branch of the github repo.
**FUTURE STATE** is to create a Github Action that will trigger a provision or update when a push occurs to main.

3. After pushing most updated version of code, Terraform files can be run from local environment to begin Terraform provision on AWS. *This step assumes that you have already configured Terraform and AWS programmatic access*

4. Once terraform apply step is complete, and checks are made to ensure configurations were accutately deployed, users can begin connecting to the Minecraft server using a compatible version of the Minecraft launcher for the server intance they would like to connect to.


## Configuration Details
While the process to download and execute a minecraft server are well documented by mojang, the AWS blog poset here gives step by step details on how to setup and configure the necessary infrastructure: https://aws.amazon.com/blogs/gametech/setting-up-a-minecraft-java-server-on-amazon-ec2/