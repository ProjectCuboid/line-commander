Config File At: `~./config/line-commander/table.json`

# Installation
```bash
chmod +x line-cmd install.sh
makepkg -si
```
# Navigation
Component Nav:
  - [+] for *UP*
  - [-] for *DOWN*
  - [0] for **TOGGLE**
  - [9] for **ACCEPT**

# Config Filw
## Structure Overview
```json
{
  "commands": {
    "command_key": {
      "name": "Friendly Name",
      "description": "What this command does",
      "type": "Switch",
      "components": {
        "Component Name": {
          "switches": {
            "Switch Name": {
              "read_path": "/sys/.../somefile",    // optional, auto-detect state
              "bindings": {
                "0": "command when OFF",
                "1": "command when ON"
              }
            }
          }
        }
      }
    }
  }
}
```

### Example: Keyboard LEDs

```json
{
  "commands": {
    "keyboard_lights": {
      "name": "Keyboard Lights",
      "description": "Toggle keyboard indicator LEDs",
      "type": "Switch",
      "components": {
        "LED Controls": {
          "switches": {
            "CapsLock LED": {
              "read_path": "/sys/class/leds/input3::capslock/brightness",
              "bindings": {
                "0": "echo 0 | sudo tee /sys/class/leds/input3::capslock/brightness",
                "1": "echo 1 | sudo tee /sys/class/leds/input3::capslock/brightness"
              }
            }
          }
        }
      }
    }
  }
}
```

## Tips

"read_path" is optional — if present, line-cmd auto-reads current state.

"bindings" defines commands executed when switch is ON ("1") or OFF ("0").

Add multiple switches under one component to group related toggles.

Add multiple components under one command if needed.

Make sure all commands are safe to run with your user permissions.
