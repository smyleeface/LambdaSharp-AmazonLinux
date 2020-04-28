LambdaSharpTool Container
-------------------------

[LambdaSharpTool](https://github.com/LambdaSharp/LambdaSharpTool) installed on AmazonLinux (amazonlinux:2) and Debian (mcr.microsoft.com/dotnet/core/sdk:3.1).

* .NETCore SDK 3.1.201

Tags
----

* `latest` [(Dockerfile)](https://github.com/smyleeface/LambdaSharpRunner/blob/master/Dockerfile)
* `amazonlinux` [(Dockerfile-amazonlinux)](https://github.com/smyleeface/LambdaSharpRunner/blob/master/Dockerfile-amazonlinux)
* `amazonlinux-python-36` [(Dockerfile-amazonlinux-python-36)](https://github.com/smyleeface/LambdaSharpRunner/blob/master/Dockerfile-amazonlinux-python-36)

Run Commands
------------

Run from your project root

* `latest`

    ```bash
    docker run -it --rm --name lambdasharprunner -v $PWD:/project -v $HOME/.aws:/root/.aws lambdasharprunner:latest lash deploy
    ```

* `amazonlinux`

    ```bash
    docker run -it --rm --name lambdasharprunner -v $PWD:/project -v $HOME/.aws:/root/.aws smyleeface/lambdasharprunner:amazonlinux lash deploy
    ```

* `amazonlinux-python-36`

    ```bash
    docker run -it --rm --name lambdasharprunner -v $PWD:/project -v $HOME/.aws:/root/.aws smyleeface/lambdasharprunner:amazonlinux-python-36 lash deploy
    ```
    
Build Commands
------------

Run from this repository root. Optional flag `-e LAMBDASHARP_VERSION=0.5.0.2` or `-e LAMBDASHARP_VERSION=master` for version/branch respectively.

* `latest`

    ```bash
    docker build -t lambdasharprunner -f Dockerfile .
    ```

* `amazonlinux`

    ```bash
    docker build -t lambdasharprunner:amazonlinux -f Dockerfile-amazonlinux .
    ```

* `amazonlinux-python-36`

    ```bash
    docker build -t lambdasharprunner:amazonlinux-python-36 -f Dockerfile-amazonlinux-python-36 .
    ```

Notes
-----

These images are almost 2G in size. I'm open to suggestions/comments/snarky remarks/pull requests on how to make this image smaller. :smile:
