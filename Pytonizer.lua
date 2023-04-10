local holder = {}
local append = table.insert
local unpack = table.unpack

function get_held_table(pythonized)
	for _, holder_table in holder do
		if holder_table.orig == pythonized then
			return holder_table["held"]
		end
	end
	return nil
end
local _pythonizer_meta = {
	__index = function(self, index)
		return get_held_table(self)[index + 1]
	end,
	__newindex = function(self, index, value)
		get_held_table(self)[index + 1] = value
		return nil
	end,
	__call = function(self)
		return get_held_table(self)
	end,
}
function duplicate_table(table)
	local target = {}
	for k, v in pairs(table) do
		target[k] = v
	end
	return target
end

local Pythonizer = function(table)
	local new_table = duplicate_table(table)
	table = {}
	append(holder, {["orig"] = table, ["held"] = {unpack(new_table)}})
	return setmetatable(table, _pythonizer_meta)
end

return Pythonizer