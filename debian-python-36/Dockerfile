FROM microsoft/dotnet:2.1-sdk
WORKDIR /project

ENV LAMBDASHARP=/tools/LambdaSharpTool

#################
# update sources
#################
RUN echo "deb http://ftp.de.debian.org/debian testing main" >> /etc/apt/sources.list

##########
# python
##########
RUN apt-get update && \
    apt-get install python3 python3-distutils -y

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 50

######
# pip
######
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python get-pip.py

##########
# aws cli
##########
RUN pip install awscli

###############
# lambdasharp
###############
RUN mkdir /tools && \
    cd /tools && \
    git clone https://github.com/LambdaSharp/LambdaSharpTool.git && \
    echo "dotnet run -p $LAMBDASHARP/src/MindTouch.LambdaSharp.Tool/MindTouch.LambdaSharp.Tool.csproj --" > /usr/bin/lash && \
    chmod +x /usr/bin/lash
RUN lash info

