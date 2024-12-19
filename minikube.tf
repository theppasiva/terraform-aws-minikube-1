module "minikube" {
  #source = "github.com/scholzj/terraform-aws-minikube"
  source = "github.com/learninguser/terraform-aws-minikube"

  aws_region    = "us-east-1"
  cluster_name  = "roboshop-1"
  aws_instance_type = "t3.medium"
  ssh_public_key = "~/.ssh/shivapractise_new.pub"
  aws_subnet_id = "subnet-0a6ab1caf5b60301a"
  #ami_image_id = "ami-b81dbfc5"
  hosted_zone = "shivarampractise.online"
  hosted_zone_private = false

  tags = {
    Application = "Minikube"
  }

  addons = [
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/storage-class.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/heapster.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/dashboard.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/external-dns.yaml"
  ]
}