module "myvpc1" {
  source = "./Modules/Vpc"
  subnet_configurations-public = var.subnet_configurations-public
  subnet_configurations-private = var.subnet_configurations-private
  Env = var.Env
  my_vpc_name = var.my_vpc_name
  gateway_name = var.gateway_name
  route_table_name = var.route_table_name  
  route_table_name_private =var.route_table_name_private
  createnatgateway = var.createnatgateway
}



module "my-cluster1" {
source = "./Modules/Eks"
ekscluster-role-name = var.ekscluster-role-name
myekscluster-nodegroup-role-name = var.myekscluster-nodegroup-role-name
Env = var.Env
subnet_ids = module.myvpc1.private_subnet_ids
cluster-name = var.cluster-name
node_group_name= var.node_group_name
arn_iamuser_access_to_cluster = var.arn_iamuser_access_to_cluster 
}
