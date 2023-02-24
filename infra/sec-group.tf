
resource "aws_security_group" "acesso_geral"{
    name = "acesso_geral"
    description = "grupo do Dev"
   #REGRAS DE ENTRADA
    ingress{
        #configuração de entrada IPV4 - Liberando tudo 
        cidr_blocks = ["0.0.0.0/0"]
        #configuração de entrada IPV6 - Liberando tudo
        ipv6_cidr_blocks = ["::/0"]
        #configuração de portas - inicio do Range
        from_port = 0
        #configuração de portas - final do Range
        to_port = 0
        #configuraçao de protocolos - (-1 libera todos os protocolos)
        protocol = "-1" 
    }
       #REGRAS DE SAÍDA 
    egress{
        #configuração de saída IPV4 - Liberando tudo 
        cidr_blocks = ["0.0.0.0/0"]
        #configuração de saída IPV6 - Liberando tudo
        ipv6_cidr_blocks = ["::/0"]
        #configuração de portas - inicio do Range
        from_port = 0
        #configuração de portas - final do Range
        to_port = 0
        #configuraçao de protocolos - (-1 libera todos os protocolos)
        protocol = "-1"
    }
    tags = {
        name = "acesso_geral"
    }

}