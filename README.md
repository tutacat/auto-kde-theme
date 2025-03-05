# auto-kde-theme
Automatically changes the theme on KDE using user-running systemd timer.
Written in awk using shell to change theme.

### Installation
#### System-wide
* Symlink all the files to the `/etc/systemd/user` directory so they are publically accessible.
* You may optionally use the `systemctl link` command to link them for you.
* Then you may want to run `systemctl daemon-reload` or restart the system to be able to use them.

#### Per-user
* Symlink all the files to `~/.config/systemd/user/`
* You must restart your user session or run `systemctl daemon-reload --user` to be load the unit or enable the timer.

#### Configuration
* You will have to enable the timer unit if you want it to work all the time.
* Start the timer with `systemctl start auto-kde-theme.timer`
* You will have to `systemctl enable auto-kde-theme.timer` if you want it to work all the time.
