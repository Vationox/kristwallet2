
-- KristWallet 2

local down = "https://raw.githubusercontent.com/Vationox/kristwallet2/master/"
local required = {
    ".kw/settings.lua"
}

if not fs.exists("/.kw") then
    fs.makeDir("/.kw")
    print("Creating directory")
end

for a, b in pairs(required) do
    local handle = http.get(down..b)
    local cont = handle.readAll()
    handle.close()
    
    local file = fs.open("/"..b, "w")
    file.write(cont)
    file.close()
end
