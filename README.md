This is simple flask pet project with buildspec, appspec and requirements.txt for AWS CodePipeline. CodePipeline uses this repository as source, CodeBuild and CodeDeploy with EC2 instance.

![Untitled Diagram drawio](https://github.com/dachishekriladze/AWS_Flask/assets/133920660/071e646e-ce17-47f2-afbf-34320430d117)

Configuration of stages are basic, using V1, not using any s3 or cloudwatch logs.

![image](https://github.com/dachishekriladze/AWS_Flask/assets/133920660/20bf76fe-bb53-4724-9869-13c0f586850c)

Pipeline works perfectly, triggers within every push in repository and starts build and deploy for example this is what we see if there is no task under some index

![image](https://github.com/dachishekriladze/AWS_Flask/assets/133920660/4e754324-3a2d-4488-95be-b26605c3186e)

but if we change something in code and push it automatically builds and deploys for example I will correct mistake in comment which appears when there is no index 

![image](https://github.com/dachishekriladze/AWS_Flask/assets/133920660/af381edd-7d6e-410d-83b6-f144a37f7ebb)

