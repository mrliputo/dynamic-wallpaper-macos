### How to use:
* Open [dynamicwallpaper.sh](https://github.com/normansyarif/dynamic-wallpaper-macos/blob/master/dynamicwallpaper.sh), edit the value of **wallpaperDir** variable to where you put the [mikuwp](https://github.com/normansyarif/dynamic-wallpaper-macos/tree/master/mikuwp) directory
* Copy [dynamicwallpaper.sh](https://github.com/normansyarif/dynamic-wallpaper-macos/blob/master/dynamicwallpaper.sh) to **/usr/bin**
* Copy [io.github.normansyarif.dynamicwallpaper.plist](https://github.com/normansyarif/dynamic-wallpaper-macos/blob/master/io.github.normansyarif.dynamicwallpaper.plist) to **~/Library/LaunchAgents**
* Run this command:
```shell
$ launchctl load -w ~/Library/LaunchAgents/io.github.normansyarif.dynamicwallpaper.plist
```
* Restart your computer
