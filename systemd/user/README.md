## User systemd scripts
To install copy to user systemd directory like this:
```
cp *.service ~/.config/systemd/user/
```

Then start/enable the services with the user flag:
```
systemctl enable --user <name>.service
```
