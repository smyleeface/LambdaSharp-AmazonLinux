LambdaSharp on AmazonLinux
--------------------------

[LambdaSharpTool](https://github.com/LambdaSharp/LambdaSharpTool) installed on AmazonLinux.

* dotnet SDK 2.1.401
* Python 3.6
* pip 9.0.3
* AWS CLI

From your project root run:

```bash
docker run -it --rm --name lambdasharprunner -v $PWD:/project -v $HOME/.aws:/root/.aws lambdasharprunner:debian-python-36 /bin/bash lash deploy
```

To build:
```bash
docker build -t lambdasharprunner:debian-python-36 .
```