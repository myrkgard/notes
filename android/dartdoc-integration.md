# Dartdoc Integration

## Enable dartdoc

In project folder (?): 
```
flutter pub global activate dartdoc
flutter pub global activate dhttpd
```

To ```~/.bashrc```, append: ```export PATH="$PATH":"$HOME/flutter/.pub-cache/bin"```

## Build Project API documentation

In project folder, run: ```dartdoc```

## Run webserver

```dhttpd --path doc/api```

Navigate to ```http://localhost:8080```
