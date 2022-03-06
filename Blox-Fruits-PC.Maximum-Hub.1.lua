local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Maximum Hub", 5013109572)

local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),
TextColor = Color3.fromRGB(255, 255, 255)
}

local page = venyx:addPage("Main Menu", 1073830992)
local Farm = page:addSection("Farm")
local Function = page:addSection("Function")
local Confix = page:addSection("Confix")

Farm:addToggle("Auto Farm", nil, function(value)
    print("Not Working")
end)
















































Function:addToggle("Fast Attack", nil, function(value)
    local Fast = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
    local CameraShaker = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
    _G.Name = value
    game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.Name then
    Fast.activeController.hitboxMagnitude = 120
    Fast.activeController.timeToNextAttack = 0.5
    CameraShaker.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
    end
    end)
    end)
end)


Confix:addToggle("Auto Buso", nil, function(value)

_G.AutoBuso = value
while _G.AutoBuso do wait()
   if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
      local args = {
         [1] = "Buso"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   end
end

end)

Confix:addToggle("Auto Observation", nil, function(value)

_G.AutoObservation = value
   while _G.AutoObservation do
      wait()
      if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
      else wait(1)
         VirtualUser:CaptureController()
         VirtualUser:SetKeyDown('0x65')
         wait(2)
         VirtualUser:SetKeyUp('0x65')
      end
   end

end)


















































local i = venyx:addPage("Misc", 23481010)
local P = i:addSection("Menu")
local O = i:addSection("Auto")












local H = venyx:addPage("Player", 7992557358)
local B = H:addSection("Menu")
local A = H:addSection("Teleport Player")

B:addToggle("Set", nil,function(value)
    _G.Set = value
end)

B:addSlider("Jump", 50, 50, 200, function(value)
    if _G.Set then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end
end)













































local page = venyx:addPage("Teleport", 7626871475)
local Word = page:addSection("World")















local Island = page:addSection("Island")
Island:addToggle("Start Pirate", nil, function(a)
_G.TP = a
   while _G.TP do wait(.1)
   function TP(P1,P2)
       local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
       if Distance < 300 then
           Speed = 10000
       elseif Distance >= 301 then
           Speed = 220
       end
       game:GetService("TweenService"):Create(
           game.Players.LocalPlayer.Character.HumanoidRootPart,
           TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
           {CFrame = P2}
       ):Play()
       Clip = true
       wait(Distance/Speed)
       Clip = true
   end
   
   TP(Vector3.new(1159.875244140625, 16.52933120727539, 1346.32080078125), CFrame.new(1159.875244140625, 16.52933120727539, 1346.32080078125))
end
end)
Island:addToggle("Start Marine", nil, function(a)      
_G.TP = a
   while _G.TP do wait(.1)
   function TP(P1,P2)
       local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
       if Distance < 300 then
           Speed = 10000
       elseif Distance >= 301 then
           Speed = 220
       end
       game:GetService("TweenService"):Create(
           game.Players.LocalPlayer.Character.HumanoidRootPart,
           TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
           {CFrame = P2}
       ):Play()
       Clip = true
       wait(Distance/Speed)
       Clip = true
   end
   
   TP(Vector3.new(-2596.236328125, 6.888829708099365, 2073.01220703125), CFrame.new(-2596.236328125, 6.888829708099365, 2073.01220703125))
end
end)
Island:addToggle("Middle Town", nil, function(a)      
_G.TP = a
   while _G.TP do wait(.1)
   function TP(P1,P2)
       local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
       if Distance < 300 then
           Speed = 10000
       elseif Distance >= 301 then
           Speed = 220
       end
       game:GetService("TweenService"):Create(
           game.Players.LocalPlayer.Character.HumanoidRootPart,
           TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
           {CFrame = P2}
       ):Play()
       Clip = true
       wait(Distance/Speed)
       Clip = true
   end
   
   TP(Vector3.new(-582.9413452148438, 7.852877616882324, 1713.937255859375), CFrame.new(-582.9413452148438, 7.852877616882324, 1713.937255859375))
end
end)
Island:addToggle("Jungle", nil, function(a)      
_G.TP = a
   while _G.TP do wait(.1)
   function TP(P1,P2)
       local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
       if Distance < 300 then
           Speed = 10000
       elseif Distance >= 301 then
           Speed = 220
       end
       game:GetService("TweenService"):Create(
           game.Players.LocalPlayer.Character.HumanoidRootPart,
           TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
           {CFrame = P2}
       ):Play()
       Clip = true
       wait(Distance/Speed)
       Clip = true
   end
   
   TP(Vector3.new(-1186.300537109375, 11.853157043457031, 235.00930786132812), CFrame.new(-1186.300537109375, 11.853157043457031, 235.00930786132812))
end
end)
Island:addToggle("Pirate Village", nil, function(a)
_G.TP = a
   while _G.TP do wait(.1)
   function TP(P1,P2)
       local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
       if Distance < 300 then
           Speed = 10000
       elseif Distance >= 301 then
           Speed = 220
       end
       game:GetService("TweenService"):Create(
           game.Players.LocalPlayer.Character.HumanoidRootPart,
           TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
           {CFrame = P2}
       ):Play()
       Clip = true
       wait(Distance/Speed)
       Clip = true
   end
   
   TP(Vector3.new(-1120.1485595703125, 4.752061367034912, 3855.317626953125), CFrame.new(-1120.1485595703125, 4.752061367034912, 3855.317626953125))
end
end)
Island:addToggle("Desrt", nil, function(a)
_G.TP = a
   while _G.TP do wait(.1)
   function TP(P1,P2)
       local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
       if Distance < 300 then
           Speed = 10000
       elseif Distance >= 301 then
           Speed = 220
       end
       game:GetService("TweenService"):Create(
           game.Players.LocalPlayer.Character.HumanoidRootPart,
           TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
           {CFrame = P2}
       ):Play()
       Clip = true
       wait(Distance/Speed)
       Clip = true
   end
   
   TP(Vector3.new(1042.15185546875, 6.438474178314209, 4303.4296875), CFrame.new(1042.15185546875, 6.438474178314209, 4303.4296875))
end
end)
Island:addToggle("Ice", nil, function(a)
_G.TP = a
   while _G.TP do wait(.1)
   function TP(P1,P2)
       local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
       if Distance < 300 then
           Speed = 10000
       elseif Distance >= 301 then
           Speed = 220
       end
       game:GetService("TweenService"):Create(
           game.Players.LocalPlayer.Character.HumanoidRootPart,
           TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
           {CFrame = P2}
       ):Play()
       Clip = true
       wait(Distance/Speed)
       Clip = true
   end
   
   TP(Vector3.new(1217.4100341796875, 26.97392463684082, -1220.14990234375), CFrame.new(1217.4100341796875, 26.97392463684082, -1220.14990234375))
end
end)
Island:addToggle("MarineBase", nil, function(a)
_G.TP = a
   while _G.TP do wait(.1)
   function TP(P1,P2)
       local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
       if Distance < 300 then
           Speed = 10000
       elseif Distance >= 301 then
           Speed = 220
       end
       game:GetService("TweenService"):Create(
           game.Players.LocalPlayer.Character.HumanoidRootPart,
           TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
           {CFrame = P2}
       ):Play()
       Clip = true
       wait(Distance/Speed)
       Clip = true
   end
   
   TP(Vector3.new(-4723.140625, 20.65204429626465, 3964.162109375), CFrame.new(-4723.140625, 20.65204429626465, 3964.162109375))
end
end)
Island:addToggle("Skys", nil, function(a)
_G.TP = a
   while _G.TP do wait(.1)
   function TP(P1,P2)
       local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
       if Distance < 300 then
           Speed = 10000
       elseif Distance >= 301 then
           Speed = 220
       end
       game:GetService("TweenService"):Create(
           game.Players.LocalPlayer.Character.HumanoidRootPart,
           TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
           {CFrame = P2}
       ):Play()
       Clip = true
       wait(Distance/Speed)
       Clip = true
   end
   
   TP(Vector3.new(-4857.23583984375, 717.66259765625, -2706.272705078125), CFrame.new(-4857.23583984375, 717.66259765625, -2706.272705078125))
end
end)
Island:addToggle("Colosseim", nil, function(a)
_G.TP = a
   while _G.TP do wait(.1)
   function TP(P1,P2)
       local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
       if Distance < 300 then
           Speed = 10000
       elseif Distance >= 301 then
           Speed = 220
       end
       game:GetService("TweenService"):Create(
           game.Players.LocalPlayer.Character.HumanoidRootPart,
           TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
           {CFrame = P2}
       ):Play()
       Clip = true
       wait(Distance/Speed)
       Clip = true
   end
   
   TP(Vector3.new(-1428.354736328125, 7.389348983764648, -3014.373046875), CFrame.new(-1428.354736328125, 7.389348983764648, -3014.373046875))
end
end)
Island:addToggle("Prison", nil, function(a)
_G.TP = a
   while _G.TP do wait(.1)
   function TP(P1,P2)
       local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
       if Distance < 300 then
           Speed = 10000
       elseif Distance >= 301 then
           Speed = 220
       end
       game:GetService("TweenService"):Create(
           game.Players.LocalPlayer.Character.HumanoidRootPart,
           TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
           {CFrame = P2}
       ):Play()
       Clip = true
       wait(Distance/Speed)
       Clip = true
   end
   
   TP(Vector3.new(4873.64697265625, 5.651948928833008, 735.3447875976562), CFrame.new(4873.64697265625, 5.651948928833008, 735.3447875976562))
end
end)
Island:addToggle("Magma", nil, function(a)
_G.TP = a
   while _G.TP do wait(.1)
   function TP(P1,P2)
       local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
       if Distance < 300 then
           Speed = 10000
       elseif Distance >= 301 then
           Speed = 220
       end
       game:GetService("TweenService"):Create(
           game.Players.LocalPlayer.Character.HumanoidRootPart,
           TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
           {CFrame = P2}
       ):Play()
       Clip = true
       wait(Distance/Speed)
       Clip = true
   end
   
   TP(Vector3.new(-1120.1485595703125, 4.752061367034912, 3855.317626953125), CFrame.new(-1120.1485595703125, 4.752061367034912, 3855.317626953125))
end
end)
Island:addToggle("Underwater City", nil, function(a)
_G.TP = a
   while _G.TP do wait(.1)
   function TP(P1,P2)
       local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
       if Distance < 300 then
           Speed = 10000
       elseif Distance >= 301 then
           Speed = 220
       end
       game:GetService("TweenService"):Create(
           game.Players.LocalPlayer.Character.HumanoidRootPart,
           TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
           {CFrame = P2}
       ):Play()
       Clip = true
       wait(Distance/Speed)
       Clip = true
   end
   
   TP(Vector3.new(3905.572998046875, 11.780130386352539, -1941.3931884765625), CFrame.new(3905.572998046875, 11.780130386352539, -1941.3931884765625))
end
end)
Island:addToggle("Fontain City", nil, function(a)
_G.TP = a
   while _G.TP do wait(.1)
   function TP(P1,P2)
       local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
       if Distance < 300 then
           Speed = 10000
       elseif Distance >= 301 then
           Speed = 220
       end
       game:GetService("TweenService"):Create(
           game.Players.LocalPlayer.Character.HumanoidRootPart,
           TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
           {CFrame = P2}
       ):Play()
       Clip = true
       wait(Distance/Speed)
       Clip = true
   end
   
   TP(Vector3.new(5158.6318359375, 4.501299858093262, 4028.94677734375), CFrame.new(5158.6318359375, 4.501299858093262, 4028.94677734375))
end
end)



local J = venyx:addPage("Shop", 9006897360)
local J1 = J:addSection("Menu")

J1:addToggle("Auto Random Fruit", nil, function(value)
_G.Random = value
while _G.Random do wait(.5)

local args = {
    [1] = "Cousin",
    [2] = "Buy"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end
end)



local E = venyx:addPage("Raid - Vision", 7407483146)
local E1 = E:addSection("Vision")
local E2 = E:addSection("Raid")







local E1 = venyx:addPage("Stats", 5917153832)
local E11 = E1:addSection("Menu")
E11:addToggle("Melee", nil, function(value)
_G.Melee = value
while _G.Melee do wait()

local args = {
    [1] = "AddPoint",
    [2] = "Melee",
    [3] = 1
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end
end)
E11:addToggle("Defense", nil, function(value)
_G.Defense = value
while _G.Defense do wait()

local args = {
    [1] = "AddPoint",
    [2] = "Defense",
    [3] = 1
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end
end)
E11:addToggle("Sword", nil, function(value)
_G.Sword = value
while _G.Sword do wait()

local args = {
    [1] = "AddPoint",
    [2] = "Sword",
    [3] = 1
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end
end)
E11:addToggle("Gun", nil, function(value)
_G.Gun = value
while _G.Gun do wait()

local args = {
    [1] = "AddPoint",
    [2] = "Gun",
    [3] = 1
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end
end)
E11:addToggle("Blox Fruit", nil, function(value)
_G.Blox_Fruit = value
while _G.Blox_Fruit do wait()

local args = {
    [1] = "AddPoint",
    [2] = "Demon Fruit",
    [3] = 1
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end
end)





















































































































local theme = venyx:addPage("Setting GUI", 6942070576)
local colors = theme:addSection("Setting")

colors:addKeybind("Toggle Keybind", Enum.KeyCode.RightControl, function()
venyx:toggle()
end, function()
end)

local colors = theme:addSection("Colors")
for theme, color in pairs(themes) do
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end

venyx:SelectPage(venyx.pages[1], true)
