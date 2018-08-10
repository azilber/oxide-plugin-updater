# oxide-plugin-updater


# NOTICE
## This is the last update as all plugins are moving to https://umod.org/
## It's now very easy to use a bash script to download plugins.
## See example: plugins-from-list.sh

### This final update includes a patch and hacky scripts to download BOTH
### oxidemod and umod.  You must edit the bash scripts for your system.

## Introduction:

This script updates every Oxide plugin (www.oxidemod.org) of a given folder to its latest version. 

## Requirements:

* Python 2.7.
* Python module requests.

## Installation:

1. Get python 2.7.X from https://www.python.org/downloads/
2. Install requests module with python PIP (pip install requests)

## How to run:

Edit update-rustserver-plugins.sh and confirm plugins-from-list.sh is correct
```

python plugin_updater -pluginDir "YOUR/OXIDE/PLUGIN/DIR" -login "OXIDEORG-LOGIN" -password "OXIDEORG-PASSWORD"  |grep 'update them manually' -A500 |tail -n +2 |tr -d '/\-\> /' > /tmp/plugins.txt
~/plugins-from-list.sh

```

Or edit update-rustserver-plugins.sh and use that.

## Limitations:
* Only works with plugins that define ResourceId.
* For now only supports C#, lua and python plugins.
