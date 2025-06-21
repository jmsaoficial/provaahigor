# Prova CRUD Clientes Supermercado

Este projeto é um sistema web para cadastro e gerenciamento de clientes de supermercado, desenvolvido em ASP.NET Core MVC.

## Funcionalidades
- Autenticação de usuário (com senha criptografada)
- Cadastro, edição, listagem e exclusão de clientes
- Persistência dos dados em arquivos JSON
- Upload de imagem (foto ou logo do cliente)
- Exportação do cadastro do cliente em JSON
- Lista fixa de cidades

## Como rodar
1. Certifique-se de ter o .NET 6 ou superior instalado.
2. Execute `dotnet run` na pasta do projeto.
3. Acesse `http://localhost:5000` no navegador.

## Estrutura
- Models: Modelos de domínio (Cliente, Usuario)
- Controllers: Lógica de negócio e rotas
- Views: Páginas Razor
- Data: Persistência em JSON

## Observações
- O sistema não permite clientes com Código Fiscal ou Inscrição Estadual duplicados.
- O usuário só pode editar o próprio cadastro.
- Não é permitido cadastrar cidades novas.
