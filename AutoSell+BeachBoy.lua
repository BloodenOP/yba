loadstring(game:HttpGet("https://raw.githubusercontent.com/zakater5/LuaRepo/main/YBA/v3.lua"))() 

function equip(toolName)
    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(toolName)
    if tool then
        tool.Parent = game.Players.LocalPlayer.Character
    end
end

local args = {
    [1] = "EndDialogue",
    [2] = {
        ["NPC"] = "Merchant",
        ["Option"] = "Option2",
        ["Dialogue"] = "Dialogue5"
    }
}
while wait() do

equip("Stone Mask")
equip("Caesar's Headband")
equip("Diamond")
equip("Gold Coin")
--equip("Rokakaka")
equip("Rib Cage of The Saint's Corpse")
equip("Mysterious Arrow")
equip("Steel Ball")
equip("Zeppelin's Headband")
equip("Ancient Scroll")
equip("Quinton's Glove")
equip("Dio's Diary")
equip("Pure Rokakaka")
game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
end
