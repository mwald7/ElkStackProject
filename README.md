# ElkStackProject
Project 1 Files
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.



These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

  https://github.com/mwald7/ElkStackProject/blob/main/Ansible/install-elk.yml
  https://github.com/mwald7/ElkStackProject/blob/main/Ansible/filebeat-config.yml
  https://github.com/mwald7/ElkStackProject/blob/main/Ansible/filebeat-playbook.yml
  https://github.com/mwald7/ElkStackProject/blob/main/Ansible/metricbeat-config.yml
  https://github.com/mwald7/ElkStackProject/blob/main/Ansible/metricbeat-playbook.yml
  https://github.com/mwald7/ElkStackProject/blob/main/Ansible/pentest.yml

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly efficient, in addition to restricting access to the network.
- Load Balancers protect accessibility to the network. They mitigate Ddos Attacks by redirecting traffic to an open server.
- The advantage of a jump box is an added layer of security for the web servers. Access to the vulnerable web servers are controlled by the Jumpbox.


Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system metrics.
- Filebeat watches for changes in log data.
- Metricbeat records system metrics and statistics.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function         | IP Address | Operating System |
|----------|------------------|------------|------------------|
| Jump Box | Gateway          | 10.0.0.4   | Linux            |
| Web-1    | Web Server       | 10.0.0.7   | Linux            |
| Web-2    | Web Server       | 10.0.0.8   | Linux            |
| ELK      | Monitoring Server| 10.2.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 172.58.82.89

Machines within the network can only be accessed by Jumpbox.
- I allowed my personal machine accesss to my ELK VM; IP address: 172.58.82.89


A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 172.58.82.89         |
| Web-1    | No                  | 10.0.0.4             |
| Web-2    | No                  | 10.0.0.4             |
| ELK      | Yes                 | 172.58.82.89         |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- The main advantage of automating configuration with Ansible is the ability to deploy to multiple machines with one playbook.

The playbook implements the following tasks:
- Install docker.io
- Install Python-pip
- Install docker container
- Launch docker container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.


### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1: 10.0.0.7
- Web-2: 10.0.0.8


We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat monitors log files changes.
- Metricbeat montiors system metrics and statistics.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the https://github.com/mwald7/ElkStackProject/blob/main/Ansible/install-elk.yml file to /etc/ansible.
- Update the hosts file to include the IP of the machines on which you want to install elk.
- Run the playbook, and navigate to the VM to check that the installation worked as expected.


- .yml files are playbook files and they are copied onto a container with Ansible.
- To make ansible run on a specific machine, update the hosts file with your IP. The hosts file also lets you specify on which server to install filebeat.
- 40.78.137.206:5601/app/kibana or <PublicIP>:5601/app/kibana

