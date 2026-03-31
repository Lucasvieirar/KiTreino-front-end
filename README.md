# 💪 KiTreino

O **KiTreino** é um aplicativo de treino que permite aos usuários criarem seus próprios cards de treino, acompanharem sua evolução e manterem uma rotina organizada de exercícios.

## 📱 Funcionalidades

- 🏋️ Criação de treinos personalizados (cards de treino)
- 📊 Visualização do progresso e evolução
- 📅 Organização da rotina de treinos
- 🔐 Autenticação segura com JWT
- 👤 Gerenciamento de usuário

## 🚀 Tecnologias Utilizadas

### 🔧 Backend
- Java
- Spring Boot
- Spring Security
- JWT (JSON Web Token)

### 🎨 Frontend
- Flutter

## 🏗️ Arquitetura

O projeto segue uma arquitetura cliente-servidor:

- O **backend** fornece uma API REST para gerenciamento de usuários, treinos e autenticação.
- O **frontend** consome essa API e fornece uma interface intuitiva e responsiva para o usuário.

## 🔐 Segurança

A autenticação é baseada em **JWT**, garantindo:

- Sessões stateless
- Proteção de rotas
- Segurança no acesso aos dados do usuário

