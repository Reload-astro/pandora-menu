local Decimals = 4
local Clock = os.clock()

local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Reload-astro/star-menu/refs/heads/main/source.lua'))({
    cheatname = 'Menu Library',
    gamename = 'Unknown',
    fileext = '.cfg',
    logo = '140593867166824',
    icon = '140593867166824',
    Accent = Color3.fromRGB(79, 155, 255)
})

local Window = Library:New({Size = UDim2.new(0, 600, 0, 500)})

Window:Seperator({Name = 'Combat'})
local Legit = Window:Page({
    Name = 'Legit',
    Icon = 'http://www.roblox.com/asset/?id=6023426921'
})

local Rage = Window:Page({
    Name = 'Rage',
    'http://www.roblox.com/asset/?id=6023426921'
})

Window:Seperator({Name = 'Visuals'})
local World = Window:Page({
    Name = 'World',
    Icon = 'http://www.roblox.com/asset/?id=6034684930'
})

local View = Window:Page({
    Name = 'View',
    Icon = 'http://www.roblox.com/asset/?id=6031075931'
})

Window:Seperator({Name = 'Player'})
local Movement = Window:Page({
    Name = 'Movement',
    Icon = 'http://www.roblox.com/asset/?id=6034754445'
})

local AntiAim = Window:Page({
    Name = 'Anti Aim',
    Icon = 'http://www.roblox.com/asset/?id=14760676189'
})

Window:Seperator({Name = 'Settings'})
local Settings = Window:Page({
    Name = 'Settings',
    Icon = 'http://www.roblox.com/asset/?id=6031280882'
})

local LegitMain = Legit:Section({
    Name = 'Main',
    Side = 'Left',
    Size = 427
})

LegitMain:Toggle({
    Name = 'Example Toggle',
    Flag = 'example_toggle'
})

LegitMain:Keybind({
    Flag = 'example_keybind',
    Name = 'Example Keybind',
    Default = Enum.KeyCode.X,
    Mode = 'Toggle'
})

LegitMain:Slider({
    Name = 'Example Slider',
    Flag = 'example_slider',
    Default = 1,
    Minimum = 0,
    Maximum = 100,
    Decimals = 0.01,
    Ending = '%'
})

LegitMain:List({
    Name = 'Example Listbox',
    Flag = 'example_listbox',
    Options = {'One', 'Two', 'Three', 'Four'},
    Default = 'One'
})

LegitMain:Colorpicker({
    Name = 'Example Colorpicker',
    Flag = 'example_colorpicker',
    Default = Color3.fromRGB(255, 0, 0)
})

Library:Configs(Settings)

local Time = (string.format("%."..tostring(Decimals).."f", os.clock() - Clock))
Library:Notification(("Loaded In "..tostring(Time)), 6)