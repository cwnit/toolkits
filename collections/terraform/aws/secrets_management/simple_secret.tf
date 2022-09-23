
/*
Creates Random Secret into Secrets Manager.  
*/

resource "random_password" "password" {
    length              = 16
    special             = true
    numeric             = true
    upper               = true
    lower               = true
    override_special    = "_%@"
}


resource "aws_secretsmanager_secret" "new_secret" {
    name                = var.secret_name
    description         = var.secret_description


    tags = {
        Name            = "Your tag"

    }
  
}

resource "aws_secretsmanager_secret_version" "new_secret" {
  secret_id     = aws_secretsmanager_secret.new_secret.id
  secret_string = random_password.password.result
}