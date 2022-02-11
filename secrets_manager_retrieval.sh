
# Load the field 'Password' from the secret 'test/MySecret' from an AWS Secrets Manager secret
PASSWORD="$(aws secretsmanager get-secret-value --secret-id 'SecretsManagerKey/SecretManagerValue' --query 'SecretString' --output text | jq -r '.Password')"

#echo is only presented for purposes of validating the command.
echo "The password is '$PASSWORD'"
