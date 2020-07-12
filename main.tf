module "app_node" {  
  source= "git::https://github.com/allanfvc/infra-modulo-app-node.git"  
  
  project_name= "app"  
  db_name= "pg_db"  
  db_user= "pg_user"  
  db_password= "stupid_pass"  # No mundo real, deve estar externalizado  
  
  db_instance_type= "t2.micro"  
  
  app_instance_type= "t2.micro"  
  app_src_dir = "diretorio_src_app" #dir com o fonte da aplicação
}
output "endereco_app" { 
  value = module.app_node.public_dns
}