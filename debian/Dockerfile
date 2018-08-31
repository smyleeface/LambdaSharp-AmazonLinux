FROM microsoft/dotnet:2.1-sdk
WORKDIR /project

ENV LAMBDASHARP=/tools/LambdaSharpTool

###############
# lambdasharp
###############
RUN mkdir /tools && \
    cd /tools && \
    git clone https://github.com/LambdaSharp/LambdaSharpTool.git && \
    echo "dotnet run -p $LAMBDASHARP/src/MindTouch.LambdaSharp.Tool/MindTouch.LambdaSharp.Tool.csproj --" > /usr/bin/lash && \
    chmod +x /usr/bin/lash
RUN lash info