FROM mcr.microsoft.com/dotnet/core/sdk:3.1
WORKDIR /project

ARG LAMBDASHARP_VERSION
ENV DOTNET_NOLOGO=1
ENV PATH="/opt/tools:${PATH}"

###############
# lambdasharp
###############
RUN mkdir /opt/tool
RUN if [ -z "${LAMBDASHARP_VERSION}" ] ; then \
dotnet tool install LambdaSharp.Tool --tool-path /opt/tools/ \
; else \
dotnet tool install LambdaSharp.Tool --tool-path /opt/tools/ --version ${LAMBDASHARP_VERSION} \
; fi \
; lash
