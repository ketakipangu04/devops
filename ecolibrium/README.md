# Infrastructure Coding Test

### Goal: Create a web server and write a script to check whether the server is up

### Task details and performed steps

### Part 1: Creating EC2 instances using AWS console

- Sign in to AWS account
-  Go to Services
-  Click on EC2 service
-  I have chosen “US East (N. Virginia) us-east-1” region
-  Click on instances
- Click on Launch instances.
- I have selected “ubuntu server 20.04 LTS (HVM) SSD volume type of 64 bit”
- Instance type selected is “”t2 micro”
- I have created 2 instances
  	- ecolibrium-energy
	- eco-monitor
- I have used default VPN
- I have created one subnet
- I have added required storage - 8 gb RAM
- I have added Tags with the name ecolobrium-energy and eco-monitor
- I have created security group with the name “nginx-sg”
	- Port 22- SSH
	- Port 80 - HTTP
- I have launched 2 server instances
	- ecolibrium-energy: 3.83.33.186
	- eco-monitor: 34.226.154.116

### Part 2: Hosting static website

- Install nginx server on ecolibrium-energy
	- `sudo apt install nginx`
- Sample website from github using `git clone https://github.com/cloudacademy/static-website-example.git`
- To serve website using nginx, make changes to `/etc/nginx/sites-enabled/default` file. Replace `root /var/www/html` with `root /home/ubuntu/static-website-example`
- Verify whether the website is hosted or not by hitting the IP from browser. http://3.83.33.186

### Part 3: Check whether server is up or not

- Status of ecolibrium-energy server is checked from eco-monitor serevr. Following steps are performed to set up checking.
- The script `checker.sh` is a shell script that will check whether server is running or not using SSH.
	- Check whether nginx is running or not using `sudo service nginx status`
	- Start the server if it is down.
- Same file is added as a cronjob which will execute every five minutes and print logs to `/home/ubuntu/checker_logs.log`
