# Proxy Toggler Script

A simple script to toggle Windows proxy **ON/OFF** from Git Bash without needing to open Windows Settings each time.

---

## 🚀 Features
- Toggle system proxy directly via registry
- Works from Git Bash
- No need to restart Explorer or open Settings manually
- Lightweight and fast

---

## ⚡ Usage

### 1. Clone or Download
Clone this repository (or just copy the script file) to your machine.

```bash
git clone https://github.com/kalim-Asim/proxy-toggler-script.git
```
#### You can just run toggle.sh, it will run

#### But to make it work across any path, do the next steps --

### 2. Move Script to a Permanent Location
```bash
mkdir -p ~/scripts
mv toggle.sh ~/scripts/
chmod +x ~/scripts/toggle.sh
```

### 3. Add Script Folder to $PATH
```bash
nano ~/.bashrc
export PATH=$PATH:$HOME/scripts          # add this line to the end
                                         # SAVE AND EXIT(ctrl+o, Enter, ctrl+x)
source ~/.bashrc                         # reloads
```

### 4. Run script
```bash
toggle.sh
```
