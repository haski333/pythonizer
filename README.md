# Pythonizer
### Pythonizer is a roblox module that can offset table indexes

## **Creating a pythonized table**
```lua
local Pythonize = require(...) -- Gets the pythonizing function using require

local MyStrings = {"John", "Alexandra", "David"} -- A simple table with some strings of names

MyStrings = Pythonize(MyStrings) -- Pythonizes the table (offsets the index by -1)

print(MyStrings[0]) -- John
print(MyStrings[2]) -- David

```

# **Notes**
### Printing a pythonized table will return a **_nil table_**
## Example
```lua
local Foods = Pythonize({"Hamburger", "Salad", "Salmon"})
print(Foods) -- {}
```

### **To fix this we are gonna need to call the table like a function**
## Example
```lua
local Foods = Pythonize({"Hamburger", "Salad", "Salmon"})
print(Foods()) -- {"Hamburger", "Salad", "Salmon"}
```


