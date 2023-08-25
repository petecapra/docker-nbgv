FROM mcr.microsoft.com/dotnet/sdk:6.0

ENV NBGV_VERSION 3.4.244

RUN dotnet tool install --global nbgv --version $NBGV_VERSION     

ENV PATH="/root/.dotnet/tools:${PATH}"    

ENTRYPOINT ["nbgv"]

