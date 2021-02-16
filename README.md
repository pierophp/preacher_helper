# Preacher Helper

O projeto usa Flutter.

# Mac

## Open Simulator

```
open -a Simulator
```

## OpenXCode

```
open ios/Runner.xcworkspace
```

## Release for iOS

Faça o build da aplicação:

```
flutter build ios --obfuscate --split-debug-info=build/app/outputs/symbols
```

No XCode vá em "Product" -> "Archive". (Na próxima versáo do Flutter 1.24, ele fará isso pela linha de comando).

Depois que gerar o "Archive" vá em "Window" -> "Organizer".
Escolha o "Archive" e acesse "Distribute App".
App Store Connect -> Upload -> Automatically manage signing.

## Release for Android

## Gerando a chave

```
cd "C:\Program Files\Android\Android Studio\jre\bin"
keytool.exe -genkey -v -keystore c:\Users\pierog_beyoung\dev\key.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias key
```

Copiar o arquivo android/key.properties.template para android/key.properties.
Configurar o caminho do arquivo .jks e a senha.

### Testes

```
flutter build appbundle
```

### Produção:

```
flutter build appbundle --obfuscate --split-debug-info=build/app/outputs/symbols
```

# Atualizando o ícone do App

```
flutter pub run flutter_launcher_icons:main
```

# Web

Open Chrome without security to avoid CORS problem:

```
cd "C:\Program Files\Google\Chrome\Application"
chrome.exe --user-data-dir="C:/Chrome dev session" --disable-web-security
```
