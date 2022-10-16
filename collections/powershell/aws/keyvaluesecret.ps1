<#---------------------------------------------------------------------------------------------------
SCRIPT NAME:  RETRIVES A SECRET FROM SECRETS MANAGER THAT HAS A KEY AND VALUE

---------------------------------------------------------------------------------------------------#>


$sm_value = "Name of your secret"

$aws_secret = Get-SECSecretValue -SecretId $sm_value #this gets the entire json string with the secret name and value

$mysecret = $aws_secret.SecretString | ConvertFrom-Json

$myretrievedsecret = $mysecret.secretname #see json response below, adjust the array value, secretname should be replaced with your secrets name

$newsecret = ConvertTo-SecureString -String $myretrievedsecret -AsPlainText -Force



<#
    EXAMPLE JSON RESPONSE FROM Get-SECSecretValue
    {"secretname":"secretvalue"} #Standard secrets manage response when you call it.



    Example AWS Policy that needs to be in place for your script to retrive secret.
    Assign policy to IAM Role and attach it to a person, ec2, database, or container
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
