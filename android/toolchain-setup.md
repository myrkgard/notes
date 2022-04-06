# Android Toolchain Setup (for Ubuntu Linux)

## Install Requirements

```
sudo apt install bash curl file git unzip xz-utils zip
```

## Install Chrome

Only needed for target "web". Download and install ```.deb``` from ```https://www.google.com/chrome/```.

## Install Flutter

```
sudo snap install flutter --classic
flutter sdk-path
flutter doctor
```

## Install Android Studio and SDK

Download ```android-studio-ide-x.x-linux.tar.gz``` to /home/obiwan/

Decompress archive in /home/obiwan/

Execute ```~/android-studio/bin/studio.sh```, follow standard installation.

```
flutter doctor
flutter doctor --android-licenses

```

In Android Studio: Configure > Plugins. Install plugins "Flutter" and "Dart".

# Android Toolchain Setup (for Manjaro Linux)

The following steps are based on [Linux install - Flutter](https://flutter.dev/docs/get-started/install/linux).

## Install Requirements

```
sudo pacman -S unzip gcc clang cmake ninja pkg-config qemu qemu-arch-extra libvirt
```

## Install Flutter

Download archive ```flutter_linux_x.x.x-stable.tar.xz``` to /home/obiwan/

Decompress archive in /home/obiwan/

In ```~/.bashrc```, add to PATH:

```
export PATH="$PATH:/home/obiwan/flutter/bin"
```

Log out of current session and log in again.

Verify that ```flutter``` and ```dart``` are available: ```which flutter dart```


## Install Android Studio and SDK

Download stable archive ```android-studio-ide-x.x-linux.tar.gz``` to /home/obiwan/

Decompress archive in /home/obiwan/

Execute ```~/android-studio/bin/studio.sh```, follow non-custom installation.

Log out of current session and log in again.

Execute Android Studio. Configure > SDK Manager. Install SDK Platforms 8.1, 9.0, 10.0, 11.0.
In "SDK TOOLS", install "Android SDK Command-line Tools (latest)". 

Configure > Plugins. Install plugins "Flutter" and "Dart".

Create new flutter project, with

* Flutter SDK path: /home/obiwan/flutter
* Project location: /home/obiwan/Projects/

Run project in simulator.

Run project on android device.

Close Android Studio.

Run ```flutter doctor --android-licenses``` to review and accept licenses.

Add entry for Android Studio to application menu.
