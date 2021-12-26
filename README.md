# tui
to tui
1: go to https://github.com/josepinto1974/tui/tree/main/delivering
2: change to your region: change this local:  regiao
3: create a new s3 in bucket and replace terraformtfstatejp for our own
4: in tui/tree/main/delivering do terraform init 
5: after  do terraform apply

RemarK the main.tf file in tui/tree/main/delivering have all call to other terrafom modules to create network ( modulo called redes) and Ec2

REmark: in this example we have a vpc with a IGW and a public subnet with a NAT and a EC2 with Eia ( elastic ip) , we have also a private subnet,  forbidden to get calls from outside. But we can do a yum update because we have a NAT to route outgoing traffic.

7: to check mysql conectiion 
