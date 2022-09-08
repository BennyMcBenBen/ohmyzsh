# maven
alias mci="mvn clean install"
alias mst="mvn clean install -DskipTests"

# myrepos https://myrepos.branchable.com/
alias mr="mr -j 5"

# sbt
alias sbtcleanforrealz="rm -rf target/ project/target project/project/target"

# macos
alias fixgithubssh="ssh-add --apple-use-keychain ~/.ssh/id_rsa"

# localstack
alias awslocal="AWS_ACCESS_KEY_ID=test AWS_SECRET_ACCESS_KEY=test AWS_DEFAULT_REGION=${DEFAULT_REGION:-$AWS_DEFAULT_REGION} aws --endpoint-url=http://${LOCALSTACK_HOST:-localhost}:4566"
