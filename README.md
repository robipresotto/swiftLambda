# swiftLambda
This project simplify the brilliant ```swift-aws-lambda-runtime``` implementation.

### Requirements
- Docker
- AWS CLI

### Getting Started
Go to the project root and run:
```shell
./run.sh
```

### Testing
```shell
curl  --header "Content-Type: application/json" \
      --request POST \
      --data '{"name": "anonymous"}' \
      https://url/endpoint
```
