# common variables 
  Env = "Dev"

#  variables for vpc
# when arranging this all public subnet should come first
subnet_configurations-public = [{
    name   = "public_subnet1"
    cidr   =  "10.0.2.0/24"
    az     =  "us-west-2a"
    assign-public-ip = true
    public_subnet = true
    
  },{
    name   = "public_subnet2"
    cidr   =  "10.0.10.0/24"
    az     =  "us-west-2b"
    assign-public-ip = true
    public_subnet = true
    
  }]

  subnet_configurations-private = [{
    name   = "private_subnet1"
    cidr   =  "10.0.20.0/24"
    az     =  "us-west-2a"
    assign-public-ip = false
    public_subnet = false
    
  },
  {
    name   = "private_subnet2"
    cidr   =  "10.0.30.0/24"
    az     =  "us-west-2b"
    assign-public-ip = false
    public_subnet = false
    
  }
  ,{
    name   = "private_subnet23"
    cidr   =  "10.0.40.0/24"
    az     =  "us-west-2b"
    assign-public-ip = false
    public_subnet = false
    
  }]
  # this showa the number of public subnet
  my_vpc_name = "myvpc-1"
  gateway_name = "myvpc1_gateway_name"
  route_table_name = "myvpc1_routetable"
  route_table_name_private ="myvpc1_routetable_private"
#   make this false if we dont need nat gateway but for testing sake make false because it creates an elastic ip which cost money so try making it false if we dont need it 
  createnatgateway = true

  # variables for eks 
ekscluster-role-name = "ekscluster-role"
myekscluster-nodegroup-role-name = "myekscluster-nodegroup-role"
cluster-name = "my-cluster1"
node_group_name= "my-nodegroup1"
arn_iamuser_access_to_cluster = "arn:aws:iam::920372995171:user/lexi1"
