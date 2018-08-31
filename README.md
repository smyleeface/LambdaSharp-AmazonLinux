LambdaSharp on AmazonLinux
--------------------------

[LambdaSharpTool](https://github.com/LambdaSharp/LambdaSharpTool) installed on AmazonLinux.

* dotnet SDK 2.1.401

From your project root run:

```bash
docker run -it --rm --name lambdasharp-amazonlinux -v $PWD:/project -v $HOME/.aws:/root/.aws lambdasharp-amazonlinux:latest /bin/bash lash deploy
```

To build:
```bash
docker build -t lambdasharp-amazonlinux .
```


Tags
----

* [latest (Dockerfile)](Dockerfile)
* [python-36 (python-36/Dockerfile)](python-36/Dockerfile)
* [python-27 (python-27/Dockerfile)](python-27/Dockerfile)