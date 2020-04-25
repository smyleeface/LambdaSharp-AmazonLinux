FROM mcr.microsoft.com/dotnet/core/sdk:3.1
WORKDIR /project

ARG LAMBDASHARP_VERSION=0.7.0.15
ENV PATH="/opt/tool:${PATH}"

###############
# lambdasharp
###############
RUN mkdir /opt/tool && \
    dotnet tool install --tool-path /opt/tool LambdaSharp.Tool --version ${LAMBDASHARP_VERSION} && \
    lash
