local Char = game.Players.LocalPlayer.Character
local PlayerName = Char.Name
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
   Name = "Eye's Handy Dandy Console V1.0.1",
   LoadingTitle = "Loading this shithole",
   LoadingSubtitle = "by The Eye Of Smile",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "i am inside your walls", -- Create a custom folder for your hub/game
      FileName = "cock"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Eye's Handy Dandy Console V1.0.1",
      Subtitle = "Key System",
      Note = "Hint: How Many Genders are there?",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "2"
   }
})
Rayfield:Notify({
   Title = "Loaded!",
   Content = "'i like killing niggers with a chainsaw' -"..PlayerName,
   Duration = 9,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "i didn't say that!!!!",
         Callback = function()
         Rayfield:Notify({
   Title = "Loaded!",
   Content = "You did! "..PlayerName,
   Duration = 9,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "okay fine ;(",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})
      end
   },
},
})
local Tab = Window:CreateTab("Utility", 4483362458)
local Button = Tab:CreateButton({
   Name = "Become The Grim Reaper",
   Callback = function()
   Rayfield:Notify({
   Title = "Loaded!",
   Content = "Press 2 to Kill any sans you fight",
   Duration = 9,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay Cool can i use it now?",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})
   game:GetService("UserInputService").InputBegan:Connect(function(key, typing) 
 if typing then return end 
local button = Enum.KeyCode.Two
if key.KeyCode == button then
for _, child in ipairs(game.Workspace:GetDescendants()) do
if child.Name == "Stuff" then
for _, child2 in ipairs(child:GetDescendants()) do
if child2.Name == "Head" then
child2:Destroy()
end
end
end
end
end
end)
print("i am alive")
   end,
})
local Tab2Lab = Tab:CreateLabel("Works 90% of the time depends on the game")
local Button = Tab:CreateButton({
   Name = "Become Immortal (For The Most Part)",
   Callback = function()
   local BlockedRemotes = {
    "Damage",
}
local Events = {
    Fire = true, 
    Invoke = true, 
    FireServer = true, 
    InvokeServer = true,
}
local gameMeta = getrawmetatable(game)
local psuedoEnv = {
    ["__index"] = gameMeta.__index,
    ["__namecall"] = gameMeta.__namecall;
}
setreadonly(gameMeta, false)
gameMeta.__index, gameMeta.__namecall = newcclosure(function(self, index, ...)
    if Events[index] then
        for i,v in pairs(BlockedRemotes) do
            if v == self.Name and not checkcaller() then return nil end
        end
    end
    return psuedoEnv.__index(self, index, ...)
end)
setreadonly(gameMeta, true)
print("test test is this working?")
   end,
})
local Tab2Lab = Tab:CreateLabel("if there's no skins or the skins ban/kick you this is useless")
local Button = Tab:CreateButton({
   Name = "Give Every Weapon",
   Callback = function()
   for _,v in pairs(game.Players.LocalPlayer.Weapons:GetDescendants()) do
if v:IsA("BoolValue") and v.Value == false then
v.Value = true
  end
end
   end,
})
local Tab2Lab = Tab:CreateLabel("Not Important stuff. :Yay:")
local Slider = Tab:CreateSlider({
   Name = "Walkspeed",
   Range = {0, 200},
   Increment = 10,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "walk", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   Char.Humanoid.WalkSpeed = Value 
   if not Char.Humanoid then
	   return
   end
  end,
})	
local Button = Tab:CreateButton({
   Name = "Rejoin",
   Callback = function()
   	local Players = game:GetService("Players")
	if #Players:GetPlayers() <= 1 then
		Players.LocalPlayer:Kick("\nRejoining...")
		wait()
		game:GetService('TeleportService'):Teleport(game.PlaceId, Players.LocalPlayer)
	else
		game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, Players.LocalPlayer)
	end
   end,
})