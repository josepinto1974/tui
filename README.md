# tui
to tui
1: go to https://github.com/josepinto1974/tui/tree/main/delivering
2: change to your region: change this local:  regiao
3: create a new s3 in bucket and replace terraformtfstatejp for our own
4: in tui/tree/main/delivering do terraform init 
5: after  do terraform apply

RemarK the main.tf file in tui/tree/main/delivering have all call to other terrafom modules to create network ( modulo called redes) and Ec2

REmark: in this example we have a vpc with a IGW and a public subnet with a NAT and a EC2 with Eia ( elastic ip) , we have also a private subnet,  forbidden to get calls from outside. But we can do a yum update because we have a NAT to route outgoing traffic.


about BD:

I have installed a mysql to ubuntu 18.04 test db connection could be checked , running the shell scrip below  this scrip only open a mysql session.
mysql it is listen in the default port: 3306

Run ./loginmysqlremote.sh

Despite  requesting by you  a BD in an EC2 in my opinion the best approach will be to use an RDS product.

The simplest web page is running in a docker container, with nginex and a volume mounted on it, the docker compose is in the root dir

REmatr 2: to login inside the private EC2 you cando in the root dir:

ssh -i "cocusjp.pem" ubuntu@172.16.2.189 because the pem file is already there.

