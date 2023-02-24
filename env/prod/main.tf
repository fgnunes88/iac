#ESTE ARQUIVO APONTA PARA O ARQUIVO variables.tf em /iac/infra

module "aws-prod" {
    source = "../../infra"
    instancia = "t2.micro"
    regiao_aws = "us-west-2"
    chave = "iac-tf"
}
output "ip-prod" {
    value = module.aws-prod.Public_IP

}