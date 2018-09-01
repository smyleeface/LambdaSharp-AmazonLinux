LambdaSharpTool Container
-------------------------

[LambdaSharpTool](https://github.com/LambdaSharp/LambdaSharpTool) installed on AmazonLinux (amazonlinux:2018.03) and Debian (microsoft/dotnet:2.1-sdk).

* dotnet SDK 2.1.401

Tags
----

* `amazonlinux`, `latest` [(Dockerfile-amazonlinux)](https://github.com/smyleeface/LambdaSharpRunner/blob/master/Dockerfile-amazonlinux)
* `amazonlinux-python-36` [(Dockerfile-amazonlinux-python-36)](https://github.com/smyleeface/LambdaSharpRunner/blob/master/Dockerfile-amazonlinux-python-36)
* `amazonlinux-python-27` [(Dockerfile-amazonlinux-python-27)](https://github.com/smyleeface/LambdaSharpRunner/blob/master/Dockerfile-amazonlinux-python-27)
* `debian`[(Dockerfile-debian)](https://github.com/smyleeface/LambdaSharpRunner/blob/master/Dockerfile-debian)
* `debian-python-36` [(Dockerfile-debian-python-36)](https://github.com/smyleeface/LambdaSharpRunner/blob/master/Dockerfile-debian-python-36)

Run Commands
------------

Run from your project root

* `latest`

    ```bash
    docker run -it --rm --name lambdasharprunner -v $PWD:/project -v $HOME/.aws:/root/.aws smyleeface/lambdasharprunner:latest /bin/bash lash deploy
    ```

* `amazonlinux`

    ```bash
    docker run -it --rm --name lambdasharprunner -v $PWD:/project -v $HOME/.aws:/root/.aws smyleeface/lambdasharprunner:amazonlinux /bin/bash lash deploy
    ```

* `amazonlinux-python-36`

    ```bash
    docker run -it --rm --name lambdasharprunner -v $PWD:/project -v $HOME/.aws:/root/.aws smyleeface/lambdasharprunner:amazonlinux-python-36 /bin/bash lash deploy
    ```
* `amazonlinux-python-27`

    ```bash
    docker run -it --rm --name lambdasharprunner -v $PWD:/project -v $HOME/.aws:/root/.aws smyleeface/lambdasharprunner:amazonlinux-python-27 /bin/bash lash deploy
    ```
* `debian`

    ```bash
    docker run -it --rm --name lambdasharprunner -v $PWD:/project -v $HOME/.aws:/root/.aws smyleeface/lambdasharprunner:debian /bin/bash lash deploy
    ```
* `debian-python-36`

    ```bash
    docker run -it --rm --name lambdasharprunner -v $PWD:/project -v $HOME/.aws:/root/.aws smyleeface/lambdasharprunner:debian-python-36 /bin/bash lash deploy
    ```
    
Build Commands
------------

Run from this repository root

* `latest`

    ```bash
    docker build -t lambdasharprunner -f Dockerfile-amazonlinux .
    ```

* `amazonlinux`

    ```bash
    docker build -t lambdasharprunner:amazonlinux -f Dockerfile-amazonlinux .
    ```

* `amazonlinux-python-36`

    ```bash
    docker build -t lambdasharprunner:amazonlinux-python-36 -f Dockerfile-amazonlinux-python-36 .
    ```
* `amazonlinux-python-27`

    ```bash
    docker build -t lambdasharprunner:amazonlinux-python-27 -f Dockerfile-amazonlinux-python-27 .
    ```
* `debian`

    ```bash
    docker build -t lambdasharprunner:debian -f Dockerfile-debian .
    ```
* `debian-python-36`

    ```bash
    docker build -t lambdasharprunner:debian-python-36 -f Dockerfile-debian-python-36 .
    ```

Notes
-----

These images are almost 2G in size. I'm open to suggestions/comments/snarky remarks/pull requests on how to make this image smaller. :smile: