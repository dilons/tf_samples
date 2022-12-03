# SAMPLE - Deploy Multi Region
Para provisionarmos em mais de uma região, além de declarar o nosso provider default, adicionamos um provider como um alias em nossos arquivos .tf. Por exemplo:

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

Já onde declaramos a criação de um recurso em uma região diferente da padrão, iremos adicionar uma parâmetro provider na definição deste recurso. Por exemplo:

```
# EC2 em nossa região default
resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

# EC2 em nossa outra região
resource "aws_instance" "web-west-2" {
  provider      = aws.west-2 # Aqui declaramos o alias referente ao outro provider. 
  ami           = data.aws_ami.ubuntu-west-2.id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}