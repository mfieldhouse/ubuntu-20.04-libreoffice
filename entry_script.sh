#!/bin/sh
if [ -z "${AWS_LAMBDA_RUNTIME_API}" ]; then
  exec /usr/local/bin/aws-lambda-rie /usr/bin/ruby -m aws_lambda_ric $@
else
  exec /usr/bin/ruby -m aws_lambda_ric $@
fi
