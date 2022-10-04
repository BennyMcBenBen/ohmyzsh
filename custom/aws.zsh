aws-creds() {
  ROLE=$(jq -r ".\"${1}\"" $HOME/.aws/roles.json)
  SESSION_NAME="${1-mrg}"
  CREDS=$(aws --profile default sts assume-role --role-arn $ROLE --role-session-name "$SESSION_NAME")
  AWS_ACCESS_KEY_ID=$(echo $CREDS | jq -r .Credentials.AccessKeyId)
  AWS_SECRET_ACCESS_KEY=$(echo $CREDS | jq -r .Credentials.SecretAccessKey)
  AWS_SESSION_TOKEN=$(echo $CREDS | jq -r .Credentials.SessionToken)

  export AWS_ACCESS_KEY_ID="$AWS_ACCESS_KEY_ID" AWS_SECRET_ACCESS_KEY="$AWS_SECRET_ACCESS_KEY" AWS_SESSION_TOKEN="$AWS_SESSION_TOKEN" AWS_PROFILE="$ROLE"
}

aws-unset() {
  unset AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN AWS_PROFILE
}
