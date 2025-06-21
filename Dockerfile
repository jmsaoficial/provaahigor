# Usar imagem base do .NET SDK
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /app

# Copiar arquivos e restaurar dependências
COPY . . 
RUN dotnet restore

# Build
RUN dotnet publish -c Release -o out

# Runtime image
FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS runtime
WORKDIR /app
COPY --from=build /app/out .

# Expõe a porta 5000 (Render usa isso)
ENV ASPNETCORE_URLS=http://+:5000
EXPOSE 5000

# Comando para iniciar a aplicação (substitua abaixo)
ENTRYPOINT ["dotnet", "prova higorr.dll"]
