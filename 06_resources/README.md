Steps for implementation: 
1. Deploy a VPX and subnet
2. Deploy an internet gateway and associate it with vPC
3. setup Route table with route to IG
4. Deploy and EC2 instance inside the created subnet
5. Associate a public ip and a security group that allows public ingress
6. Change the EC2 instance to use a publicly available NGINX AMI
7. Destroy everything