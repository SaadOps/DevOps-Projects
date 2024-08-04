
![image](https://github.com/user-attachments/assets/7e43e854-e200-40a2-8683-adf6aecfa1c0)


### About the Architercture 

This example demonstrates how to create a VPC that you can use for servers in a
production environment.
To improve resiliency, you deploy the servers in two Availability Zones, by using
an Auto Scaling group and an Application Load Balancer. For additional security,
you deploy the servers in private subnets. The servers receive requests through
the load balancer. The servers can connect to the internet by using a NAT
gateway. To improve resiliency, you deploy the NAT gateway in both Availability
Zones.

### Overview

The VPC has public subnets and private subnets in two Availability Zones.
Each public subnet contains a NAT gateway and a load balancer node.
The servers run in the private subnets, are launched and terminated by using an
Auto Scaling group, and receive traffic from the load balancer.
The servers can connect to the internet by using the NAT gateway.

https://docs.aws.amazon.com/vpc/latest/userguide/vpc-example-private-subnets-nat.html
