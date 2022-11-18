
/*
Creates Random Secret into Secrets Manager.  
*/

resource "random_password" "password" {
    length = 16
    special = true
    numeric = true
    upper   = true
    lower   = true
    override_special = "_%@"
}

resource "aws_secretsmanager_secret" "new_secret" {
    name = var.secret_name
    description = var.secret_description

    tags = {
        Name            = "Your tag name"
        DateCreated     = local.formaldate
        LastModified    = local.formaldate

    }
  
}

resource "aws_secretsmanager_secret_version" "new_secret" {

    secret_id           = aws_secretsmanager_secret.ec2_idt_admin.id
    secret_string       = jsonencode(
    {
        "Current": local.securestring,  // value 1
        "Previous": "sampleP@55w0rd",             // value 2
        "Your Name": "your value"       // value 3 can be added seperated by comma and so on
    })


}