# SAMPLE - Deploy Multi Region
Para provisionarmos em mais de uma região, além de declarar o nosso provider default, adicionamos um provider como um _alias_ em nossos arquivos .tf. Por exemplo:

```
# Default Region 
provider "aws" {
  region = "us-east-1"
}

# Multi Region
provider "aws" {
  alias  = "west-2"
  region = "us-west-2"
}
```

Já para realizar a criação de uma EC2 em us-east-2, adicionamos o parâmetro _provider_ em nosso recurso.

```
# EC2 em  outra região
resource "aws_instance" "web-west-2" {
  provider      = aws.west-2 # Aqui declaramos o alias referente ao outro provider. 
  ami           = data.aws_ami.ubuntu-west-2.id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}