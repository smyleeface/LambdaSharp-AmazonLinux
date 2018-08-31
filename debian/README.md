LambdaSharp on Debian (microsoft/dotnet)
----------------------------------------

[LambdaSharpTool](https://github.com/LambdaSharp/LambdaSharpTool) installed on AmazonLinux.

* dotnet SDK 2.1.401

From your project root run:

```bash
docker run -it --rm --name lambdasharprunner -v $PWD:/project -v $HOME/.aws:/root/.aws lambdasharprunner:debian /bin/bash lash deploy
```

To build:
```bash
docker build -t lambdasharprunner:debian .
```