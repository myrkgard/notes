# Firebase Integration

The following steps are based on [Add Firebase to your Flutter app](https://firebase.google.com).

## Create a Firebase project in [Firebase console](https://firebase.google.com)

## Register your app with Firebase

##  Firebase Android config file

Download app specific ```google-services.json``` from Firebase console and install copy it to
```~/Projects/mockup/android/app/google-services.json```

## App-level build.gradle

In ```~/Projects/mockup/android/app/build.gradle``` add the following line:

```
apply plugin: 'com.google.gms.google-services'  // Google Services plugin
```

... and change ```minSdkVersion``` to ```23```:

```
android {
    // ...
    defaultConfig {
        // ...
        minSdkVersion 27 // Oreo 8.1
    }
}
```

## Project-level build.gradle

In ```~/Projects/mockup/android/build.gradle```:

```
buildscript {

    repositories {
      // Check that you have the following line (if not, add it):
      google()  // Google's Maven repository
    }

    // ...

    dependencies {
      // ...

      // Add the following line:
      classpath 'com.google.gms:google-services:4.3.4'  // Google Services plugin
    }
}

allprojects {
    // ...

    repositories {
      // Check that you have following line (if not, add it):
      google()  // Google's Maven repository
      // ...
    }
}
```

## Project-level settings

Append the following to ```~/Projects/mockup/android/settings.gradle```:

```
def flutterProjectRoot = rootProject.projectDir.parentFile.toPath()

def plugins = new Properties()
def pluginsFile = new File(flutterProjectRoot.toFile(), '.flutter-plugins')
if (pluginsFile.exists()) {
    pluginsFile.withReader('UTF-8') { reader -> plugins.load(reader) }
}

plugins.each { name, path ->
    def pluginDirectory = flutterProjectRoot.resolve(path).resolve('android').toFile()
    include ":$name"
    project(":$name").projectDir = pluginDirectory
}
```

## Flutter dependencies

To ```~/Projects/mockup/pubspec.yaml``` add the following dependencies :

Plugin	Version


```
dependencies:
  firebase_core: ^0.5.3
  firebase_auth: ^0.18.4
  cloud_firestore: ^0.14.4
  # cloud_functions: ^0.7.2
  # firebase_crashlytics: ^0.2.4
  # firebase_storage: ^5.2.0
  # firebase_messaging: ^8.0.0-dev.10
```

## Run pub get, upgrade, and restart application
