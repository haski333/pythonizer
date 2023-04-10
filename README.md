# Pythonizer
Pythonizer is a roblox module that can offset table indexes

##**Example**
```lua
local Pythonize = require(script.Pythonizer) -- Gets the pythonizing function using require

local MyStrings = {"John", "Alexandra", "David"} -- A simple table with some strings of names

MyStrings = Pythonize(MyStrings)
--[[
   Pythonizing the table (offsets the index by -1)
   Example:
   print(MyStrings[0]) -- Prints "John"
   print(MyStrings[2]) -- Prints "David"

]]

--print(MyStrings[0])
--print(MyStrings())

local Foods = Pythonize({"Hamburger", "Salad", "Salmon"})
```
