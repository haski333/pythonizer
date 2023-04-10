# Pythonizer
### Pythonizer is a small and easy to use roblox module that can offset table indexes

## **Creating a pythonized table**
```lua
local Pythonize = require(...) -- Gets the pythonizing function using require

local MyStrings = {"John", "Alexandra", "David"} -- A simple table with some strings of names

MyStrings = Pythonize(MyStrings) -- Pythonizes the table (offsets the index by -1)

print(MyStrings[0]) -- John
print(MyStrings[2]) -- David

```

# **Notes**
### Getting a pythonized table content will return **_nil_**
## Example
```lua
local Foods = Pythonize({"Hamburger", "Salad", "Salmon"})
print(Foods) -- {}
```

### To fix this we are gonna need to call the table like a **_function_**
## Example
```lua
local Foods = Pythonize({"Hamburger", "Salad", "Salmon"})
print(Foods()) -- {"Hamburger", "Salad", "Salmon"}
```


