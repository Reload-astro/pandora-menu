local Decimals = 4
local Clock = os.clock()

local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Reload-astro/star-menu/refs/heads/main/source.lua'))({
    cheatname = 'Menu Library',
    gamename = 'Unknown',
    fileext = '.cfg',
    Accent = Color3.fromRGB(172, 84, 255)
})

local Window = Library:Window()

local Legit = Window:Page({
    Name = 'Legit'
})

local Rage = Window:Page({
    Name = 'Rage'
})

local World = Window:Page({
    Name = 'World'
})

local View = Window:Page({
    Name = 'View'
})

local Movement = Window:Page({
    Name = 'Movement'
})

local AntiAim = Window:Page({
    Name = 'Anti Aim'
})

local Settings = Window:Page({
    Name = 'Settings'
})

local ExampleSection = Legit:Section({
    Name = 'Example Section',
    LeftTitle = 'Left',
    RightTitle = 'Right'
})

ExampleSection:Toggle({
    Name = 'Example Toggle',
    Flag = 'example_toggle'
})

ExampleSection:Keybind({
    Flag = 'example_keybind',
    Name = 'Example Keybind',
    Default = Enum.KeyCode.X,
    Mode = 'Toggle'
})

ExampleSection:Slider({
    Name = 'Example Slider',
    Flag = 'example_slider',
    Default = 1,
    Minimum = 0,
    Maximum = 100,
    Decimals = 0.01,
    Ending = '%'
})

ExampleSection:List({
    Name = 'Example Listbox',
    Flag = 'example_listbox',
    Options = {'One', 'Two', 'Three', 'Four'},
    Default = 'One'
})

ExampleSection:Colorpicker({
    Name = 'Example Colorpicker',
    Flag = 'example_colorpicker',
    Default = Color3.fromRGB(255, 0, 0)
})

Library:Configs(Settings)

local Time = (string.format("%."..tostring(Decimals).."f", os.clock() - Clock))
Library:Notification(("Loaded In "..tostring(Time)), 6)