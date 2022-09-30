<#---------------------------------------------------------------------------------------------------
SCRIPT NAME:  GET SINGLE SECRET FROM AWS SECRETS MANAGER

---------------------------------------------------------------------------------------------------#>


$sm_value = "Name of your secret"

$aws_secret = Get-SECSecretValue -SecretId $sm_value

$mysecret = $aws_secret.SecretString

$newsecuresecret = ConvertTo-SecureString -String $mysecret -AsPlainText -Force


<#
Example AWS Policy
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "secretsmanager:GetResourcePolicy",
                "secretsmanager:GetSecretValue",
                "secretsmanager:DescribeSecret",
                "secretsmanager:ListSecretVersionIds"
            ],
            "Resource": [
                "arn:aws:secretsmanager:us-east-1:111122223333:secret:Name of your secret"
            ]
        },
        {
            "Effect": "Allow",
            "Action": "secretsmanager:ListSecrets",
            "Resource": "*"
        }
    ]
}

#>
