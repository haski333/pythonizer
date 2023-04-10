# Pythonizer
Pythonizer is a roblox module that can offset table indexes

## **Creating a pythonized table**
```lua
local Pythonize = require(script.Pythonizer) -- Gets the pythonizing function using require

local MyStrings = {"John", "Alexandra", "David"} -- A simple table with some strings of names

MyStrings = Pythonize(MyStrings) -- Pythonizes the table (offsets the index by -1)

print(MyStrings[0]) -- John
print(MyStrings[2]) -- David

```

## **Notes**
```lua
local Foods = Pythonize({"Hamburger", "Salad", "Salmon"})

--Printing a pythonized table will return a nil table
--Example:
print(Foods) -- {}

--To print a pythonized table you will need to call the table
--Example:
print(Foods()) -- {"Hamburger", "Salad", "Salmon"} 
```

