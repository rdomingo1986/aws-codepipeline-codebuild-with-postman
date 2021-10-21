#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

aws s3 mb s3://aws-codepipeline-codebuild-with-postman

aws cloudformation create-stack --stack-name petstore-api-pipeline --template-body file://./petstore-api-pipeline.yaml --parameters ParameterKey=BucketRoot,ParameterValue=aws-codepipeline-codebuild-with-postman ParameterKey=GitHubBranch,ParameterValue=master ParameterKey=GitHubRepositoryName,ParameterValue=aws-codepipeline-codebuild-with-postman ParameterKey=GitHubToken,ParameterValue=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 ParameterKey=GitHubUser,ParameterValue=rdomingo1986 --capabilities CAPABILITY_NAMED_IAM

aws s3 cp PetStoreAPI.postman_collection.json s3://aws-codepipeline-codebuild-with-postman/postman-env-files/PetStoreAPI.postman_collection.json

aws s3 cp PetStoreAPIEnvironment.postman_environment.json s3://aws-codepipeline-codebuild-with-postman/postman-env-files/PetStoreAPIEnvironment.postman_environment.json

