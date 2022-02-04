# ubuntu-20.04-libreoffice
Includes:
 - Ubuntu 20.04
 - Libreoffice 7.3
 - Ruby 2.7
 - AWS Lambda Runtime Interface Client
 - [AWS Lambda Runtime Interface Emulator](https://docs.aws.amazon.com/lambda/latest/dg/images-test.html)
 - A shell script acting as the entrypoint. It runs the runtime interface emulator if the AWS_LAMBDA_RUNTIME_API environment variable is not present.


To build the image, download the Dockerfile, cd to its directory and run:
`docker build -t libreoffice .`
