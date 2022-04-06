# Creating a Flutter App

## From Template to Minimal App

```
cd projects
flutter create dongs
```

Manually clean up `pubspec.yaml` by removing the automatically created comments. Set the `description` field to "The DongsApp.". Delete the default test file under `test/`.

Rewrite `lib/main.dart` :

```dart
import 'package:flutter/material.dart';
import 'package:dongs/app.dart';

void main() {
  runApp(const App());
}
```

Create `lib/app.dart` :

```dart
import 'package:flutter/material.dart';
import 'package:dongs/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dongs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
```

Create `lib/home.dart` :

```dart
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}
```

## Changing the Package Name

Application ID is `com.example.dongs` by default. We'll change it to `net.ethicalapps.dongs`, using the [change_app_package_name](https://pub.dev/packages/change_app_package_name) package.

Add Change App Package Name to your pubspec.yaml in dev_dependencies: section:

```yaml
dev_dependencies:
  change_app_package_name: ^1.0.0
```

```
flutter pub get
flutter pub run change_app_package_name:main net.ethicalapps.dongs
```

## Adding Launcher Icon

We'll use the [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons) package.

Create folder `assets/icon/` . For old Android we need a legacy icon. Not sure
about the size, 1000 x 1000 seems to work. It can have a transparent background or
not. Here, we'll use this icon for IOS, too. On IOS, transparency is not supported.
For modern Android, we want to use an so called adaptive icon. We make it **1000 x 1000 pixels with a transparent background**. The actual image content must have a very big padding, so the actual content shall only be about **50%** of the image hight. The foreground image is shown zoomed in in the launcher. Some launchers show round icons others show square icons. Test your icon with multiple launchers and different padding!

Modify `pubspec.yaml` .

```yaml
dev_dependencies:
  flutter_launcher_icons: "^0.9.2"

flutter_icons:
  android: "launcher_icon"
  ios: true
  remove_alpha_ios: true
  image_path: "assets/icon/android_legacy.png"
  adaptive_icon_background: "#ffffff"
  adaptive_icon_foreground: "assets/icon/android_adaptive_foreground.png"
```

Run the package:

```
flutter pub get
flutter pub run flutter_launcher_icons:main
```

## Setting the Launcher App Name

By default, the name of the app shown in with the launcher etc is taken from
`pubspec.yaml`'s field `name` (here: "dongs"). Using the [flutter_app_name](https://pub.dev/packages/flutter_app_name) package, we'll set the launcher name to "DongsApp".

Modify `pubspec.yaml` .

```yaml
dev_dependencies:
  flutter_app_name: ^0.1.0

flutter_app_name:
  name: "DongsApp"
```

Run the package:

```
flutter pub get
flutter pub run flutter_app_name
```

## Adding Primary Splash Screen

We'll use the [flutter_native_splash](https://pub.dev/packages/flutter_native_splash) package. It has a view options, we'll create a splash screen with a background image and a foreground image. The background image gets stretched to fit the screen. The foreground image gets centered on the background with its size and aspect ratio preserved.

Create folder `assets/splash/`. There, copy your background image `background.png` and foreground image `foreground.png`. The foreground image can have a transparent background.

Modify `pubspec.yaml` .

```yaml
dev_dependencies:
  flutter_native_splash: ^1.3.1

flutter_native_splash:
  background_image: assets/splash/background.png
  image: assets/splash/foreground.png
  android12: true
```

There might legacy code in the default `android/app/src/main/AndroidManifest.xml`. Check if it contains the following lines and if so, delete them:

```xml
            <!-- Displays an Android View that continues showing the launch screen
                 Drawable until Flutter paints its first frame, then this splash
                 screen fades out. A splash screen is useful to avoid any visual
                 gap between the end of Android's launch screen and the painting of
                 Flutter's first frame. -->
            <meta-data
              android:name="io.flutter.embedding.android.SplashScreenDrawable"
              android:resource="@drawable/launch_background"
              />
```

Run the package:

```
flutter pub get
flutter pub run flutter_native_splash:create
```
