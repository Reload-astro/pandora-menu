<br />
<div align="center">
  <h3 align="center">Cheat Menu User Interface</h3>

  <p align="center">
    A user interface that supports roblox script executor lua. 
    <br />
    <br />
    <a href="https://raw.githubusercontent.com/Reload-astro/star-menu/refs/heads/main/example.lua">View Demo</a>
  </p>

  <div align="center">
    <img src="https://github.com/Reload-astro/star-menu/blob/main/assets/preview.png?raw=true" alt="Preview" />
  </div>
</div>

## Getting Started

This will go through how to use the library in your executor should work on all.

### Prerequisites

This is how you import the library through the repository.
* Example:
  ```lua
  -- EXTRA INFO: You can modify this library its open source. The code is horrendous but have fun.

  local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Reload-astro/star-menu/refs/heads/main/source.lua'))({
      cheatname = 'Menu Library',
      gamename = 'Unknown',
      fileext = '.cfg',
      logo = '140593867166824',
      icon = '140593867166824',
      Accent = Color3.fromRGB(79, 155, 255)
  })
  ```

### Elements

* Window
  ```lua
  local Window = Library:New({Size = UDim2.new(0, 600, 0, 500)})
  ```

* Tab
  ```lua
  local Tab = Window:Page({
      Name = 'Tab',
      Icon = 'http://www.roblox.com/asset/?id=6023426921'
  })
  ```

* Section
  ```lua
  local Section = Tab:Section({
      Name = 'Section',
      Side = 'Left',
      Size = 427
  })
  ```

* Seperator
  ```lua
  Window:Seperator({Name = 'Seperator'})
  ```

* Toggle:
   ```lua
  Section:Toggle({
      Name = 'Example Toggle',
      Flag = 'example_toggle'
  })
   ```

* Keybind:
  ```lua
  Section:Keybind({
    Flag = 'example_keybind',
    Name = 'Example Keybind',
    Default = Enum.KeyCode.Q,
    Mode = 'Toggle'
  })
   ```

* Slider:
  ```lua
  Section:Slider({
    Name = 'Example Slider',
    Flag = 'example_slider',
    Default = 1,
    Minimum = 0,
    Maximum = 100,
    Decimals = 0.01,
    Ending = '%'
  })
   ```

* List/Dropdown:
  ```lua
  Section:List({
    Name = 'Example Listbox',
    Flag = 'example_listbox',
    Options = {'One', 'Two', 'Three', 'Four'},
    Default = 'One'
  })
   ```

* Colorpicker:
  ```lua
  Section:Colorpicker({
    Name = 'Example Colorpicker',
    Flag = 'example_colorpicker',
    Default = Color3.fromRGB(79, 155, 255)
  })
   ```

* Configs:
  ```lua
  Library:Configs(Section)
   ```