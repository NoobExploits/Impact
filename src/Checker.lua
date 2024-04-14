local devices = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NoobExploits/starry/master/src/device.lua", true))()

local placeid = game.PlaceId

local function isMobile()
    if (devices) == "Windows" or (string.find(devices, "Krampus")) then
        return "PC"
    else
        return "Mobile"
    end
end

if (placeid) == 155615604 or (placeid) == 662417684 then
    if (placeid) == 155615604 then
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NoobExploits/Impact/main/games/Prison%20Life/" .. isMobile() ..".lua", true))()
    else
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NoobExploits/Impact/main/games/Lucky%20Block%20BG/PC.lua", true))()
    end
end
