# Add Launcher Icon to App

Uses package [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons).

Create 1024x1024 pixel PNG, with transparent background and icon art foreground.

Place PNG file in ```assets/```.

In ```pubspec.yaml```, add:

```
dev_dependencies:
  flutter_launcher_icons: ^0.8.1

flutter_icons:
  android: true
  ios: true
  image_path: assets/launcher_icon.png
  adaptive_icon_background: "#fff"
```

To bake the actual icons, run:

```
flutter pub get
flutter pub run flutter_launcher_icons:main
```
