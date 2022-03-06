local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Name Here [ By Maximum Hub ]", 5013109572)

local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

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
