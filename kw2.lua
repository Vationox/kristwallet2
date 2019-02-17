
-- KristWallet 2

local down = "https://raw.githubusercontent.com/Vationox/kristwallet2/master/"
local required = {
    ".kw/settings.lua"
}

if not fs.exists("/.kw") then
    print("Creating directory")
    fs.makeDir("/.kw")
end

for a, b in pairs(required) do
    print("Downloading "..b)    
    local handle = http.get(down..b)
    local cont = handle.readAll()
    handle.close()
    
    print("Saving "..b)
    local file = fs.open("/"..b, "w")
    file.write(cont)
    file.close()
end

local settings = require("/.kw/settings.lua")
print(settings.node)
