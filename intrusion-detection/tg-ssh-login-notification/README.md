# Notify on SSH logins

Based on the Telegram notification script from MikeWent (github.com/MikeWent/notify-send-telegram).

## Requirements
- `python3`
- `pip3`
- python module `requests`
- package `geoiplookip`
- Telegram Bot Token `TG_TOKEN`
- Telegram Chat ID `RECIPIENT_ID`


## Setup
Change the `TG_TOKEN` and `RECIPIENT_ID` to your corresponding values.

Make sure `notify-login.sh` is executable.

Add the following line to `/etc/pam.d/sshd`:
```
session   optional  pam_exec.so type=open_session seteuid <PATH>
```
where `<PATH>` is the path to your `notify-login.sh` script.
