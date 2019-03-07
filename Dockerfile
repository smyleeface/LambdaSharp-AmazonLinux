FROM mcr.microsoft.com/dotnet/core/sdk:2.2

ARG LAMBDASHARP_VERSION=0.5.0.2
ENV PATH="/root/.dotnet/tools:${PATH}"

###############
# lambdasharp
###############
RUN dotnet tool install -g LambdaSharp.Tool --version ${LAMBDASHARP_VERSION} && \
    lash --help

WORKDIR /project