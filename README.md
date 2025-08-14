<img width="1920" height="1080" alt="cinetopia" src="https://github.com/user-attachments/assets/7f0de920-8fd7-4bda-ba00-44ff42191072" />

# 🎬 Cinetopia - App Flutter de Filmes

![Flutter](https://img.shields.io/badge/Flutter-3.5+-blue?logo=flutter&logoColor=white)
![MVVM](https://img.shields.io/badge/MVVM-Architecture-lightgrey)
![SOLID](https://img.shields.io/badge/SOLID-Principles-orange)
![API](https://img.shields.io/badge/API-The%20Movie%20DB-red)
![BottomNavigationBar](https://img.shields.io/badge/BottomNavigationBar-Navigation-blue)
![CustomScrollView](https://img.shields.io/badge/CustomScrollView-Scrolling-lightblue)
![License](https://img.shields.io/badge/license-MIT-lightgrey)

> Projeto Flutter de estudo feito na Alura, utilizando o padrão MVVM para escalabilidade, componentes reutilizáveis e navegação fluida.

O **Cinetopia** é um projeto Flutter de estudo feito na Alura, utilizando o padrão **MVVM (Model-View-ViewModel)**. O foco foi aprender uma arquitetura que permite ao app ser escalável, com componentes reutilizáveis e navegação fluida.

## 🌟 Destaques do Projeto

- ✅ Aplicado o padrão **MVVM** para separar lógica e interface
- ✅ Usado no projeto os **princípios SOLID**.
- ✅ **Componentes reutilizáveis**, como botões genéricos
- ✅ Widget **InkWell** para interação com feedback visual
- ✅ Navegação com **BottomNavigationBar**
- ✅ Rolagem com **CustomScrollView**
- ✅ Consumo de API - The Movie Db - https://www.themoviedb.org

## 📁 Estrutura do projeto

```plaintext
lib/
├── helpers/              # Constantes, utilitários
├── models/               # Modelos da aplicação
├── services/             # Comunicação HTTP, APIs
├── ui/
│   ├── components/       # Widgets reutilizáveis (como botões)
│   ├── screens/          # Telas da aplicação
│   └── viewmodels/       # Lógica de negócio (MVVM)
assets/
├── logo.png
├── movie.png
├── popular.png
├── splash.png
├── upcoming.png
├── no_image.png
```

## 🚀 Como rodar o projeto

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/seu-usuario/cinetopia.git
   cd cinetopia
   ```

2. **Instale as dependências:**
   ```bash
   flutter pub get
   ```

3. **Execute o app:**
   ```bash
   flutter run
   ```

> Certifique-se de que um dispositivo ou emulador esteja conectado.

## 🛠️ Requisitos

- Flutter SDK >= 3.7.2
- Editor como VS Code ou Android Studio
- Emulador Android/iOS ou dispositivo físico

Atualizado em 29 de julho de 2025.
