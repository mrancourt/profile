# Usage
Simply run init.sh

### App config

### iTerm2

Iterm 2 stores it's config under `~/Library/Preferences/com.googlecode.iterm2.pl‌​ist `

To restore configs, simply do the following

```bash
cp com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.pl‌​ist 
```


### Spectacle

Spectacle stores it's config under `~/Library/Application\ Support/Spectacle/Shortcuts.json`

To restore configs, simply do the following

```bash
# make sure Spectacle folder exists
mkdir -p ~/Library/Application\ Support/Spectacle
# copy settings
cp Shortcuts.json ~/Library/Application\ Support/Spectacle/Shortcuts.json
```