#!/usr/bin/awk -f
BEGIN {
  # It only works on KDE (uses lookandfeeltool)
  if (ENVIRON["XDG_CURRENT_DESKTOP"] == "KDE") {
    x = strftime("%H") + strftime("%M")/60 + strftime("%S")/3600;
    system("echo >&2 time: " x);
    if (7<=x && x<=21) {
      print("Setting theme to BreezeLight");
      system("lookandfeeltool -a org.kde.breeze.desktop");
    } else {
      print("Setting theme to BreezeDark");
      system("lookandfeeltool -a org.kde.breezedark.desktop");
    }
    exit(0);
  }
}
