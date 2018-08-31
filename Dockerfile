FROM amazonlinux:2018.03
WORKDIR /project

ENV LAMBDASHARP=/tools/LambdaSharpTool
ENV DOTNET_FILENAME=dotnet-sdk-2.1.401-linux-x64.tar.gz
ENV DOTNET_URL=https://download.microsoft.com/download/E/8/A/E8AF2EE0-5DDA-4420-A395-D1A50EEFD83E/$DOTNET_FILENAME

##########
# utils
##########
RUN yum install wget git -y

###############
# Dotnet
###############
RUN wget $DOTNET_URL
RUN mkdir -p /usr/share/dotnet && \
    tar zxf $DOTNET_FILENAME -C /usr/share/dotnet && \
    ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet && \
    dotnet --version && \
    rm $DOTNET_FILENAME

###############
# lambdasharp
###############
RUN mkdir /tools && \
    cd /tools && \
    git clone https://github.com/LambdaSharp/LambdaSharpTool.git && \
    echo "dotnet run -p $LAMBDASHARP/src/MindTouch.LambdaSharp.Tool/MindTouch.LambdaSharp.Tool.csproj --" > /usr/bin/lash && \
    chmod +x /usr/bin/lash && \
    lash info