local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Blox Fruits Helper",
   LoadingTitle = "da",
   LoadingSubtitle = "by Blooden",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "BFH Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key | BFH",
      Subtitle = "Key System",
      Note = "Key In Discord Server",
      FileName = "BHHubKey1", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"1"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local CombatTab = Window:CreateTab("Combat", nil) -- Title, Image
local CombatSection = CombatTab:CreateSection("Movment")

Rayfield:Notify({
   Title = "You executed the script",
   Content = "Very cool gui",
   Duration = 5,
   Image = nil,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})
local Toggle = CombatTab:CreateToggle({
   Name = "Infinite Jump",
   CurrentValue = false,
   Callback = function()
       --Toggles the infinite jump between on or off on every script run
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
   --Ensures this only runs once to save resources
    CurrentValue = true
   

   --The actual infinite jump
   local plr = game:GetService('Players').LocalPlayer
   local m = plr:GetMouse()
   m.KeyDown:connect(function(k)
      if _G.infinjump then
         if k:byte() == 32 then
         humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
         humanoid:ChangeState('Jumping')
         wait()
         humanoid:ChangeState('Seated')
         end
      end
   end)
end
   end,
})

local Toggle = CombatTab:CreateToggle({
   Name = "WalkSpeed",
   CurrentValue = false,
   Callback = function()
   _G.enabledS = not _G.enabledS
   end
})
local Slider = CombatTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {16, 300},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws", 
   Callback = function(Value)
    while game:GetService("RunService").RenderStepped:wait() do
    if _G.enabledS then
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
    end
    end
end
})

local Toggle = CombatTab:CreateToggle({
   Name = "JumpPower",
   CurrentValue = false,
   Callback = function()
   _G.enabledJ = not _G.enabledJ
   end
})
local Slider = CombatTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {50, 250},
   Increment = 1,
   Suffix = "Power",
   CurrentValue = 50,
   Flag = "jumpsliderws", 
   Callback = function(Value)
    while game:GetService("RunService").RenderStepped:wait() do
    if _G.enabledJ then
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
    elseif not _G.enabledJ then
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
    end
end
})

local MiscTab = Window:CreateTab("Misc", nil)
local MiscSection = MiscTab:CreateSection("Team")
local Button1 = MiscTab:CreateButton({
   Name = "Join to Pirate",
   Callback = function()
        local args = {
    [1] = "SetTeam",
    [2] = "Pirates"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
   end,
})

local Button2 = MiscTab:CreateButton({
   Name = "Join to Marines",
   Callback = function()
        local args = {
    [1] = "SetTeam",
    [2] = "Marines"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
   end,
})

local Keybind1 = MiscTab:CreateKeybind({
   Name = "Running",
   CurrentKeybind = "nil",
   HoldToInteract = false,
   Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Keybind)
game.StarterGui:SetCore("SendNotification", {Title="Blox Fruits"; Text="Bro you Runner!"; Duration=5;})
local args = {
    [1] = "requestEntrance",
    [2] = Vector3.new(2284.912109375, 15.537666320800781, 905.5136108398438)
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
   end,
})
