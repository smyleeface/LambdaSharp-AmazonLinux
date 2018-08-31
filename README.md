LambdaSharp on AmazonLinux
--------------------------

[LambdaSharpTool](https://github.com/LambdaSharp/LambdaSharpTool) installed on AmazonLinux.

* dotnet SDK 2.1.401

From your project root run:

```bash
docker run -it --rm --name lambdasharprunner -v $PWD:/project -v $HOME/.aws:/root/.aws lambdasharprunner:latest /bin/bash lash deploy
```

To build:
```bash
docker build -t lambdasharprunner .
```


Tags
----

* [amazonlinux, latest (Dockerfile)](amazonlinux/Dockerfile)
* [amazonlinux-python-36 (python-36/Dockerfile)](python-36/Dockerfile)
* [amazonlinux-python-27 (python-27/Dockerfile)](python-27/Dockerfile)
* [debian (debian/Dockerfile)](debian/Dockerfile)
* [debian-python-36 (debian-python-36/Dockerfile)](debian-python-36/Dockerfile)