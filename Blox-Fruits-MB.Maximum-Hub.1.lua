--Default Color(Look very good tbh)
getgenv().TextColorChange = Color3.fromRGB(255, 255, 255)
getgenv().GlowColorChange = Color3.fromRGB(255, 255, 255)
--Teleport Section
getgenv().CtrlTp = false
getgenv().CtrlTween = false
--Fruit Section
getgenv().GetFruits = false
-- Only Bring Fruit In Small Distance 
getgenv().BringFruit = true
--Will Stop AutoFarming If You Turn On These Two Below
getgenv().TeleportFruit = false
getgenv().NaturalFruit = false
getgenv().AutoBuyRandomFruit = false
--Loading Game
repeat wait()
until game:IsLoaded()
repeat wait()
until game.Players.LocalPlayer
repeat wait()
until game.Players.LocalPlayer.Character
local FirstSea;
local SecondSea;
local ThirdSea;
--Check PlaceId
if game.PlaceId == 2753915549 then
   FirstSea = true
elseif game.PlaceId == 4442272183 then
   SecondSea = true
elseif game.PlaceId == 7449423635 then
   ThirdSea = true
end
--Define Vars
VirtualUser = game:GetService("VirtualUser")
VIM =game:GetService("VirtualInputManager")
ReplStorage = game:GetService("ReplicatedStorage");

Players = game:GetService("Players")
--yes these below are cringe don't mind lol will make better one
spawn(function()
   while wait() do
      
      LP = game:GetService("Players").LocalPlayer
      Char = LP.Character
      HumanoidRootPart = Char:FindFirstChild("HumanoidRootPart")
      Humanoid = Char:FindFirstChild("Humanoid")
      PlrLevel = LP.Data.Level.Value
      MyFragment = LP.Data.Fragments.Value
      placeId = game.PlaceId
      MyBeli = LP.Data.Beli.Value
      MyDevilFruit = LP.Data.DevilFruit.Value
   end
end)
local QuestCFrame;
LP = game:GetService("Players").LocalPlayer
Char = LP.Character
HumanoidRootPart = Char:FindFirstChild("HumanoidRootPart")
Humanoid = Char:FindFirstChild("Humanoid")
filename = "IslandSetting.lua";
http = game:GetService('HttpService') 
req =  http_request or request or HttpPost or syn.request -- get request
Mouse = LP:GetMouse()
CanTween = true
MaxLevelSea = 0
Weapon = ""
PLrWeapons = {}
FruitTable = {} 
SpecialMob = "JustAranDOmString"
PlayerTable = {}
HighestLvToFarm =  0
ServerPlayers = 6
TableBoss = {}
BossesTable ={}
--Useless actually 
ListMelee = {
   "Combat",
   "Black Leg";
   "Electro";
   "Fishman Karate";
   "Dragon Claw";
   "Superhuman";
   "DeathStep";
   "SharkmanKarate";
   "Electric Claw";
   "Dragon Tailon";
}

--Require
ClickMod = require(LP.PlayerScripts.CombatFramework)
CamMod = require(game.ReplicatedStorage.Util.CameraShaker)

--Anti AFK V1
LP.Idled:connect(function()
   VirtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   VirtualUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
--Anti AFK V2
if not getgenv().AFKDISABLED then
   for i,v in pairs(getconnections(LP.Idled)) do
      v:Disable()
      getgenv().AFKDISABLED = true
   end
end
--Define getgenv
getgenv().FlySpeed = 2
getgenv().FLYING = false
getgenv().AutoSuperHuman = false
Fly = false
--Define getgenv Setting
getgenv().SilentAimMob = false
getgenv().SilentAimPlr = false
getgenv().AutoSaber = false
getgenv().AFDistance = 500
getgenv().AF2Distance = 500 
getgenv().HealthMastery = 25
--Default Setting
getgenv().AutoFarmQuest = true
getgenv().AutoFarmBring = true
getgenv().AutoSetSpawn = false
getgenv().AutoFarmSafeMode = false
getgenv().AutoFarmHealthSafeMode = 30
getgenv().FastAttack = true

getgenv().SkillZ = true
getgenv().SkillZHold = 0
getgenv().SkillX = true
getgenv().SkillXHold = 0
getgenv().SkillC = true
getgenv().SkillCHold = 0
getgenv().SkillV = true
getgenv().SkillVHold = 0
getgenv().SkillF = true
getgenv().SkillFHold = 0

getgenv().SkillZGun = true
getgenv().SkillXGun = true


getgenv().RecommendedSpeed = true
getgenv().TweenSpeedAutoFarm = 200
getgenv().TweenSpeedQuest = 350
getgenv().TweenSpeedTeleportPlace = 350
getgenv().TweenSpeedAutoChest = 350
getgenv().NearNextIsland = false
getgenv().AutoBuso = true
getgenv().AutoObservation = false
--Default Setting
getgenv().Setting = {
   getgenv().AutoFarmQuest;
   getgenv().AutoFarmBring;
   getgenv().AutoSetSpawn;
   getgenv().AutoFarmSafeMode ;
   getgenv().AutoFarmHealthSafeMode ;
   getgenv().FastAttack;
   getgenv().SkillZ ;
   getgenv().SkillZHold ;
   getgenv().SkillX ;
   getgenv().SkillXHold;
   getgenv().SkillC ;
   getgenv().SkillCHold ;
   getgenv().SkillV ;
   getgenv().SkillVHold ;
   getgenv().SkillF ;
   getgenv().SkillFHold ;
   getgenv().SkillZGun ;
   getgenv().SkillXGun ;
   getgenv().RecommendedSpeed;
   getgenv().TweenSpeedAutoFarm ;
   getgenv().TweenSpeedQuest;
   getgenv().TweenSpeedTeleportPlace;
   getgenv().TweenSpeedAutoChest;
   getgenv().AutoBuso;
   getgenv().AutoObservation;
}
--Define Functions
function SeatsFunction()
   
   for i,v in pairs(game:GetService("Workspace").Boats:GetDescendants()) do
      if v:IsA("Seat") then
         v.Disabled = not v.Disabled
      end
   end

   if ThirdSea then
      game:GetService("Workspace").Game.P1.Disabled = not game:GetService("Workspace").Game.P1.Disabled
      game:GetService("Workspace").Game.P2.Disabled = not game:GetService("Workspace").Game.P2.Disabled
      game:GetService("Workspace").Map.Turtle.TradeTable.P1.Disabled = not game:GetService("Workspace").Map.Turtle.TradeTable.P1.Disabled
      game:GetService("Workspace").Map.Turtle.TradeTable.P2.Disabled = not game:GetService("Workspace").Map.Turtle.TradeTable.P2.Disabled

      for i,v in pairs(game:GetService("Workspace").Map.Turtle:GetDescendants()) do
         if v:IsA("Seat") then
            v.Disabled = not v.Disabled
         end
      end
   end
   if SecondSea then
      game:GetService("Workspace").Game.P1.Disabled = not game:GetService("Workspace").Game.P1.Disabled
      game:GetService("Workspace").Game.P2.Disabled = not game:GetService("Workspace").Game.P2.Disabled
      game:GetService("Workspace").Map.Dressrosa.TradeTable.P1.Disabled = not game:GetService("Workspace").Map.Dressrosa.TradeTable.P1.Disabled
      game:GetService("Workspace").Map.Dressrosa.TradeTable.P2.Disabled = not game:GetService("Workspace").Map.Dressrosa.TradeTable.P2.Disabled
      for i,v in pairs(game:GetService("Workspace").Map.Dressrosa.Tavern:GetDescendants()) do
         if v:IsA("Seat") then
            v.Disabled = not v.Disabled
         end
      end

   end
end

function NOFLY()
	getgenv().FLYING = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end

function Alive()
   if LP and Char then
      if Humanoid and HumanoidRootPart then
         if Humanoid.Health > 0 then
            return true
         end 
      end
   end
   return false
end
function EnterCode(Code)
   game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Code)
end

function Click()
   pcall(function()
      if Alive() then
         if not getgenv().Clicked then
            getgenv().Clicked = true
            VirtualUser:CaptureController()
            VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
            --ClickMod.activeController:attack()
            getgenv().Clicked = false
         end
      end
   end)
end
function Equip(Tool)
   pcall(function()
      local ToolEquip = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) or game.Players.LocalPlayer.Character:FindFirstChild(Tool)
      if Humanoid then
         Humanoid:EquipTool(ToolEquip)
      end
   end)
end

--For Auto Chest
function FindNearest(chests)
   local lowestdist = math.huge -- infinity
   local chest = nil
   for i,v in pairs(chests) do
       if v then
           local distance = (v.Position - HumanoidRootPart.Position).magnitude
           if distance < lowestdist then
            lowestdist = distance
               chest = v
           end
       end
   end
   return chest
end
--NoClip
function NoclipLoop()
   if NoClip == true and speaker.Character ~= nil and not DisabledNoClip then
      for _, child in pairs(Char:GetDescendants()) do
         if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
            child.CanCollide = false
         end
      end
   end
end
--Check Float
function CheckFloat1()
   if not HumanoidRootPart:FindFirstChild("VelocityBody") then
      TweenFloat()
   end
end
function CheckFloat2()
   if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
      if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityBody") then
         RemoveFloat()
      end
   end
end
--Do Tween
function DoTween(dist, Speed)
   local range = (HumanoidRootPart.Position - dist.Position).magnitude
   if getgenv().RecommendedSpeed then
      if range <= 300 then
         NewSpeed = 1000
      elseif range <= 500 and range > 300 then
         NewSpeed = 350
      else
         NewSpeed = 275
      end
   end
   if getgenv().RecommendedSpeed then
      RealSpeed = NewSpeed
   else
      RealSpeed = Speed
   end
   local info = TweenInfo.new((HumanoidRootPart.Position - dist.Position).magnitude / RealSpeed,Enum.EasingStyle.Linear)

   local tween =  game:service"TweenService":Create(HumanoidRootPart, info, {CFrame = dist})
   if CanTween and Alive() then
      tween:Play()
      Tweening = true
      CheckFloat1()
      SeatsFunction()
      game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
         if tween then
            tween:Cancel()
         end
      end)

      tween.Completed:wait()
      Tweening = false
      CheckFloat2()
      SeatsFunction()
   else
      tween:Cancel()
   end
  
end

function FastAttack()
   pcall(function()
      if getgenv().FastAttack then
         if Alive() then
            ClickMod.activeController.attacking = false 
            ClickMod.activeController.active = false
            ClickMod.activeController.timeToNextAttack = 0
            ClickMod.activeController.increment = 4
         end
     end
   end)
end
getgenv().HitBox  = true
function HitBoxPlr()
   pcall(function()
      if getgenv().HitBox then
         if ClickMod.activeController.hitboxMagnitude ~= 60 then
            ClickMod.activeController.hitboxMagnitude = 60 
         end
      end
   end)
end
--Simulation
function Simulation()
   if setsimulationradius then
      sethiddenproperty(LP, "SimulationRadius", 10000)
   end
   if setsimulationradius then
      sethiddenproperty(LP, "MaxSimulationRadius", math.huge)
   end
   if setsimulationradius then
      sethiddenproperty(LP, "SimulationRadius", math.huge)
   end
end
--KillAura
function KillAuraF()
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
      if v.Parent and v:FindFirstChild("LowerTorso") and v:FindFirstChild("Head") and v:FindFirstChild("UpperTorso") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
         Simulation()
         pcall(function()
            if (v.HumanoidRootPart.Position - HumanoidRootPart.Position).magnitude < 1000 then
              v:FindFirstChild("LowerTorso"):Destroy()
              v:FindFirstChild("UpperTorso"):Destroy()
              v:FindFirstChild("Head"):Destroy()
              v:breakJoints()
              v.Humanoid.Health = 0
              v.Humanoid.Health =  v.Humanoid.MaxHealth
              v.Humanoid.Health = 0
            end
         end)
      end
   end   
end
Players = game:GetService("Players")
speaker = Players.LocalPlayer
COREGUI = game:GetService("CoreGui")
function round(num, numDecimalPlaces)--round number look cool
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end
--Ok I know i'm dumb i can't manage many esps at one function it will cost me time to understand iy esp sorry
function ESPF(object,text,color)
   if object and not object.Handle:FindFirstChild("Esp") and getgenv().FruitESP then
      local ColorText;
      ColorText = Color3.new(255, 0, 0)
      local BillboardGui = Instance.new("BillboardGui")
      local TextLabel = Instance.new("TextLabel")
      BillboardGui.Adornee = object.Handle
      BillboardGui.Name = "Esp"
      BillboardGui.Parent = object.Handle
      BillboardGui.Size = UDim2.new(0, 100, 0, 150)
      BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
      BillboardGui.AlwaysOnTop = true
      TextLabel.Parent = BillboardGui
      TextLabel.BackgroundTransparency = 1
      TextLabel.Position = UDim2.new(0, 0, 0, -50)
      TextLabel.Size = UDim2.new(0, 100, 0, 100)
      TextLabel.Font = Enum.Font.SourceSansSemibold
      TextLabel.TextSize = 20
      TextLabel.TextColor3 = ColorText
      TextLabel.TextStrokeTransparency = 0
      TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
      TextLabel.Text = 'Name: '..object.Name
      TextLabel.ZIndex = 10
      local function espLoop()
         pcall(function()
            if not getgenv().FruitESP then
               BillboardGui:Destroy()
               espLoopFunc:Disconnect()
            else
               local pos = math.floor((getRoot(Players.LocalPlayer.Character).Position - object.Handle.Position).magnitude)
               TextLabel.Text = object.Name..' | Dist: '..pos
            end
         end)
      end
      espLoopFunc = game:GetService("RunService").RenderStepped:Connect(espLoop)
      
   end
end
function ESPI(object,text,color)
   if object and not object.Handle:FindFirstChild("Esp") and getgenv().FruitESP then
      local ColorText;
      ColorText = Color3.new(255, 0, 0)
      local BillboardGui = Instance.new("BillboardGui")
      local TextLabel = Instance.new("TextLabel")
      BillboardGui.Adornee = object.Handle
      BillboardGui.Name = "Esp"
      BillboardGui.Parent = object.Handle
      BillboardGui.Size = UDim2.new(0, 100, 0, 150)
      BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
      BillboardGui.AlwaysOnTop = true
      TextLabel.Parent = BillboardGui
      TextLabel.BackgroundTransparency = 1
      TextLabel.Position = UDim2.new(0, 0, 0, -50)
      TextLabel.Size = UDim2.new(0, 100, 0, 100)
      TextLabel.Font = Enum.Font.SourceSansSemibold
      TextLabel.TextSize = 20
      TextLabel.TextColor3 = ColorText
      TextLabel.TextStrokeTransparency = 0
      TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
      TextLabel.Text = 'Name: '..object.Name
      TextLabel.ZIndex = 10
      local function espLoop()
         if object then
            if not getgenv().FruitESP then
               BillboardGui:Destroy()
               espLoopFunc:Disconnect()
            else
               local pos = math.floor((getRoot(Players.LocalPlayer.Character).Position - object.Handle.Position).magnitude)
               TextLabel.Text = object.Name..' | Dist: '..pos
            end
         end
      end
      espLoopFunc = game:GetService("RunService").RenderStepped:Connect(espLoop)
      
   end
end
function ESPO(object,text,color)
   if not object:FindFirstChild("Esp") then
      if getgenv().ChestESP or getgenv().FlowersESP then
         local ColorText;
         if object.Name == "Chest1" then
            ColorText = Color3.new(0, 50, 0)
         elseif object.Name == "Chest2" then
            ColorText = Color3.new(255, 198, 0)
         elseif object.Name == "Chest3" then
            ColorText = Color3.new(0, 0, 255)
         elseif object.Name == "Flower1" then
            ColorText = Color3.new(0, 0, 255)
         elseif object.Name == "Flower2" then
            ColorText = Color3.new(255, 0, 0)
         end
         local BillboardGui = Instance.new("BillboardGui")
         local TextLabel = Instance.new("TextLabel")
         BillboardGui.Adornee = object
         BillboardGui.Name = "Esp"
         BillboardGui.Parent = object
         BillboardGui.Size = UDim2.new(0, 100, 0, 150)
         BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
         BillboardGui.AlwaysOnTop = true
         TextLabel.Parent = BillboardGui
         TextLabel.BackgroundTransparency = 1
         TextLabel.Position = UDim2.new(0, 0, 0, -50)
         TextLabel.Size = UDim2.new(0, 100, 0, 100)
         TextLabel.Font = Enum.Font.SourceSansSemibold
         TextLabel.TextSize = 20
         TextLabel.TextColor3 = ColorText
         TextLabel.TextStrokeTransparency = 0
         TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
         TextLabel.Text = 'Name: '..object.Name
         TextLabel.ZIndex = 10
         local function espLoop()
            if object then
               if getgenv().ChestESP or  getgenv().FlowersESP then
                  local pos = math.floor((getRoot(Players.LocalPlayer.Character).Position - object.Position).magnitude)
                  TextLabel.Text = object.Name..' | Dist: '..pos
               else
                  espLoopFunc:Disconnect()
                  
               end
            end
         end
         espLoopFunc = game:GetService("RunService").RenderStepped:Connect(espLoop)
      end
   end
end
Players.PlayerRemoving:Connect(function(player)
	if ESPenabled or CHMSenabled or COREGUI:FindFirstChild(player.Name..'_LC') then
		for i,v in pairs(COREGUI:GetChildren()) do
			if v.Name == player.Name..'_ESP' or v.Name == player.Name..'_LC' or v.Name == player.Name..'_CHMS' then
				v:Destroy()
			end
		end
	end
end)
function ESPMob(object)
   if not object.Head:FindFirstChild("Esp") and getgenv().MobESP then
      local ColorText;
      ColorText = Color3.new(1, 1, 1)
      local BillboardGui = Instance.new("BillboardGui")
      local TextLabel = Instance.new("TextLabel")
      BillboardGui.Adornee = object.Head
      BillboardGui.Name = "Esp"
      BillboardGui.Parent = object.Head
      BillboardGui.Size = UDim2.new(0, 100, 0, 150)
      BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
      BillboardGui.AlwaysOnTop = true
      TextLabel.Parent = BillboardGui
      TextLabel.BackgroundTransparency = 1
      TextLabel.Position = UDim2.new(0, 0, 0, -50)
      TextLabel.Size = UDim2.new(0, 100, 0, 100)
      TextLabel.Font = Enum.Font.SourceSansSemibold
      TextLabel.TextSize = 20
      TextLabel.TextColor3 = ColorText
      TextLabel.TextStrokeTransparency = 0
      TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
      TextLabel.Text = 'Name: '..object.Name
      TextLabel.ZIndex = 10
      local function espLoop()
         if object then
            if not getgenv().MobESP  then
               espLoopFunc:Disconnect()
            else
               local pos = math.floor((getRoot(Players.LocalPlayer.Character).Position - object.HumanoidRootPart.Position).magnitude)
               TextLabel.Text = object.Name..' | Hp: '..round(object:FindFirstChildOfClass('Humanoid').Health, 1)..' | Dist: '..pos
            end
         end
      end
      espLoopFunc = game:GetService("RunService").RenderStepped:Connect(espLoop)
      
   end
end
function ESP(plr)
	task.spawn(function()
		for i,v in pairs(COREGUI:GetChildren()) do
			if v.Name == plr.Name..'_ESP' then
				v:Destroy()
			end
		end
		wait()
		if plr.Character and plr.Name ~= Players.LocalPlayer.Name and not COREGUI:FindFirstChild(plr.Name..'_ESP') then
			local ESPholder = Instance.new("Folder")
			ESPholder.Name = plr.Name..'_ESP'
			ESPholder.Parent = COREGUI
			repeat wait(1) until plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
			for b,n in pairs (plr.Character:GetChildren()) do
				if (n:IsA("BasePart") and n.Name ~= "HumanoidRootPart") then
					local a = Instance.new("BoxHandleAdornment")
					a.Name = plr.Name
					a.Parent = ESPholder
					a.Adornee = n
					a.AlwaysOnTop = true
					a.ZIndex = 10
					a.Size = n.Size
					a.Transparency = 0.3
					a.Color = plr.TeamColor
				end
			end
			if plr.Character and plr.Character:FindFirstChild('Head') then
				local BillboardGui = Instance.new("BillboardGui")
				local TextLabel = Instance.new("TextLabel")
				BillboardGui.Adornee = plr.Character.Head
				BillboardGui.Name = plr.Name
				BillboardGui.Parent = ESPholder
				BillboardGui.Size = UDim2.new(0, 100, 0, 150)
				BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
				BillboardGui.AlwaysOnTop = true
				TextLabel.Parent = BillboardGui
				TextLabel.BackgroundTransparency = 1
				TextLabel.Position = UDim2.new(0, 0, 0, -50)
				TextLabel.Size = UDim2.new(0, 100, 0, 100)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.TextSize = 20
				TextLabel.TextColor3 = Color3.new(1, 1, 1)
				TextLabel.TextStrokeTransparency = 0
				TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
				TextLabel.Text = 'Name: '..plr.Name
				TextLabel.ZIndex = 10
				local espLoopFunc
				local teamChange
				local addedFunc
            local lvchange
				addedFunc = plr.CharacterAdded:Connect(function()
					if ESPenabled then
                  print("Esped Added")
						espLoopFunc:Disconnect()
						teamChange:Disconnect()
                  lvchange:Disconnect()
						ESPholder:Destroy()
						repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
						ESP(plr)
						addedFunc:Disconnect()
					else
                  lvchange:Disconnect()
						teamChange:Disconnect()
						addedFunc:Disconnect()
					end
				end)
				teamChange = plr:GetPropertyChangedSignal("TeamColor"):Connect(function()
					if ESPenabled then
						espLoopFunc:Disconnect()
						addedFunc:Disconnect()
                  lvchange:Disconnect()
						ESPholder:Destroy()
						repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
						ESP(plr)
						teamChange:Disconnect()
					else
						teamChange:Disconnect()
					end
				end)
            lvchange = plr.Data.Level.Changed:Connect(function()
               if ESPenabled then
						espLoopFunc:Disconnect()
						addedFunc:Disconnect()
                  teamChange:Disconnect()
						ESPholder:Destroy()
						repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
						ESP(plr)
                  lvchange:Disconnect()
					else
						lvchange:Disconnect()
					end
            end)
				local function espLoop()
					if COREGUI:FindFirstChild(plr.Name..'_ESP') then
						if plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid") and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
							local pos = math.floor((getRoot(Players.LocalPlayer.Character).Position - getRoot(plr.Character).Position).magnitude)
							TextLabel.Text = plr.Name..' | Hp: '..round(plr.Character:FindFirstChildOfClass('Humanoid').Health, 1)..' | Dist: '..pos..' | Lv: '..plr.Data.Level.Value
						end
					else
						teamChange:Disconnect()
						addedFunc:Disconnect()
						espLoopFunc:Disconnect()
                  lvchange:Disconnect()
					end
				end
				espLoopFunc = game:GetService("RunService").RenderStepped:Connect(espLoop)
			end
		end
	end)
end


function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end
function sFLY(vfly)
   QEfly = true
  repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and getRoot(game.Players.LocalPlayer.Character) and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
  repeat wait() until Mouse
  if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

  local T = getRoot(game.Players.LocalPlayer.Character)
  local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
  local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
  local SPEED = 50

  local function FLY()
     getgenv().FLYING = true
     local BG = Instance.new('BodyGyro')
     local BV = Instance.new('BodyVelocity')
     BG.P = 9e4
     BG.Parent = T
     BV.Parent = T
     BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
     BG.cframe = T.CFrame
     BV.velocity = Vector3.new(0, 0, 0)
     BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
     task.spawn(function()
        repeat wait()
           if not vfly and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
              game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
           end
           if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
              SPEED = 50
           elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
              SPEED = 0
           end
           if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
              BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
              lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
           elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
              BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
           else
              BV.velocity = Vector3.new(0, 0, 0)
           end
           BG.cframe = workspace.CurrentCamera.CoordinateFrame
        until not getgenv().FLYING
        CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
        lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
        SPEED = 0
        BG:Destroy()
        BV:Destroy()
        if game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
           game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
        end
     end)
  end
  flyKeyDown = Mouse.KeyDown:Connect(function(KEY)
     if KEY:lower() == 'w' then
        CONTROL.F = (vfly and vehicleflyspeed or getgenv().FlySpeed)
     elseif KEY:lower() == 's' then
        CONTROL.B = - (vfly and vehicleflyspeed or getgenv().FlySpeed)
     elseif KEY:lower() == 'a' then
        CONTROL.L = - (vfly and vehicleflyspeed or getgenv().FlySpeed)
     elseif KEY:lower() == 'd' then 
        CONTROL.R = (vfly and vehicleflyspeed or getgenv().FlySpeed)
     elseif QEfly and KEY:lower() == 'e' then
        CONTROL.Q = (vfly and vehicleflyspeed or getgenv().FlySpeed)*2
     elseif QEfly and KEY:lower() == 'q' then
        CONTROL.E = -(vfly and vehicleflyspeed or getgenv().FlySpeed)*2
     end
     pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
  end)
  flyKeyUp = Mouse.KeyUp:Connect(function(KEY)
     if KEY:lower() == 'w' then
        CONTROL.F = 0
     elseif KEY:lower() == 's' then
        CONTROL.B = 0
     elseif KEY:lower() == 'a' then
        CONTROL.L = 0
     elseif KEY:lower() == 'd' then
        CONTROL.R = 0
     elseif KEY:lower() == 'e' then
        CONTROL.Q = 0
     elseif KEY:lower() == 'q' then
        CONTROL.E = 0
     end
  end)
  FLY()
end
local function refreshPlayers()
  table.clear(PlayerTable)
  for i,v in pairs(game.Players:GetChildren()) do
      if not table.find(PlayerTable, v.Name) then
          table.insert(PlayerTable, v.Name)
     
      end
  end
end
local function refreshBosses()
   table.clear(BossesTable)
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
      if string.find(v.Name, "Boss") then
         table.insert(BossesTable, v.Name)
      end
   end
 end

function TPSpecificPlace()
   if SecondSea then
      if HighestLvToFarm == 1250 or HighestLvToFarm == 1275 or HighestLvToFarm == 1300 or HighestLvToFarm == 1325 then
         if (HumanoidRootPart.Position - Vector3.new(923.21252441406, 125.05710601807, 32852.83203125)).magnitude > 3000 then
            local args = {
               [1] = "requestEntrance",
               [2] = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
      end
   elseif FirstSea then
      if HighestLvToFarm == 375 or HighestLvToFarm == 400 then
         if (HumanoidRootPart.Position - Vector3.new(61163.8515625, 11.6796875, 1819.7841796875)).magnitude > 3000 then

            local args = {
               [1] = "requestEntrance",
               [2] = Vector3.new(61163.8515625, 11.6796875, 1819.7841796875)
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
      end
   end
end
function BringMob()
   if getgenv().AutoFarmBring and DoMagnet then
      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
         if v.Parent and v:FindFirstChild("HumanoidRootPart") ~= nil and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0  and not Tweening  then
            if v.Parent and Alive() and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and not Tweening and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).magnitude <=  350 and not Tweening then 
               if v.Name == NameMob or (string.find(v.Name,CurrentMobName) and string.find(v.Name,HighestLvToFarm) ) or string.find(v.Name,SpecialMob) and not string.find(v.name,"Boss") then
                  Simulation()
                  HitBoxPlr()
                  v.HumanoidRootPart.Transparency = 1
                  v.HumanoidRootPart.CanCollide = false
                  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                  v.Humanoid.PlatformStand = true
                  if BringCFrame~= nil and BringPos ~= nil  and  (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                     Simulation()
                     v.HumanoidRootPart.CFrame = BringCFrame
                     v.HumanoidRootPart.Position = BringPos
                  end
               end
            end
         end
      end
   end
end
function BringMobBone()
   if getgenv().AutoFarmBring and DoMagnet then
       if ThirdSea then
           for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
               if v.Parent and v:FindFirstChild("HumanoidRootPart") ~= nil and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0  and not Tweening then
                   if  v.Parent and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and game.Players.LocalPlayer.Character and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and not Tweening and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=  2500 then -- and string.find(v.Name,HighestLvToFarm) and not BringBone  
                       Simulation()
                       --Spawn(function()
                         --if getgenv().AutoFarmBone then
                             --for i2,v2 in pairs(v:GetChildren()) do
                                --if v2:IsA("BasePart") or v2.ClassName == "MeshPart" or v2.Name == "Head" and getgenv().AutoFarmBone then
                                   --v2.Transparency = 0.9
                               -- elseif v2.ClassName == "Accessory"  and getgenv().AutoFarmBone then
                                   --v2.Handle.Transparency = 0.9
                               -- end
                            -- end
                          --end
                      --end)
                       --v.Humanoid.Sit = true
                       --if v.Parent ~= nil  then
                          --for _, child in pairs(v:GetDescendants()) do
                             --if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
                                --child.CanCollide = false
                             --end
                          --end
                       --end
                       --v.Humanoid.PlatformStand = true
                       v.Humanoid.WalkSpeed = 1
                       v.HumanoidRootPart.Transparency = 1
                       --v.HumanoidRootPart.CanCollide = false
                       --v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                       if BringCFrame~= nil and BringPos ~= nil  and  (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                          Simulation()
                          v.HumanoidRootPart.CFrame = BringCFrame
                          v.HumanoidRootPart.Position = BringPos
                       else 
                         -- BringCFrame = v.HumanoidRootPart.CFrame
                         -- BringPos = v.HumanoidRootPart.Position
                       end
                   end
               end
           end
       end
   end
end
function BringMobEctoplasm()
  if getgenv().AutoFarmBring and DoMagnet then
      if SecondSea then
          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
              if v.Parent and v:FindFirstChild("HumanoidRootPart") ~= nil and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0  and not Tweening then
                  if  v.Parent and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and game.Players.LocalPlayer.Character and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and not Tweening and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=  2500 then -- and string.find(v.Name,HighestLvToFarm) and not BringBone  
                      Simulation()
                      --Spawn(function()
                        --if getgenv().AutoFarmBone then
                            --for i2,v2 in pairs(v:GetChildren()) do
                               --if v2:IsA("BasePart") or v2.ClassName == "MeshPart" or v2.Name == "Head" and getgenv().AutoFarmBone then
                                  --v2.Transparency = 0.9
                              -- elseif v2.ClassName == "Accessory"  and getgenv().AutoFarmBone then
                                  --v2.Handle.Transparency = 0.9
                              -- end
                           -- end
                         --end
                     --end)
                      --v.Humanoid.Sit = true
                      --if v.Parent ~= nil  then
                         --for _, child in pairs(v:GetDescendants()) do
                            --if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
                               --child.CanCollide = false
                            --end
                         --end
                      --end
                      --v.Humanoid.PlatformStand = true
                      v.Humanoid.WalkSpeed = 1
                      v.HumanoidRootPart.Transparency = 1
                      --v.HumanoidRootPart.CanCollide = false
                      --v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                      if BringCFrame~= nil and BringPos ~= nil  and  (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                         Simulation()
                         v.HumanoidRootPart.CFrame = BringCFrame
                         v.HumanoidRootPart.Position = BringPos
                      else 
                        -- BringCFrame = v.HumanoidRootPart.CFrame
                        -- BringPos = v.HumanoidRootPart.Position
                      end
                  end
              end
          end
      end
  end
end
function CheckQuestBoss()
   if FirstSea then
      if getgenv().ChosenBoss == "Saber Expert [Lv. 200] [Boss]" then
         BossName = "Saber Expert [Lv. 200] [Boss]"
         QuestNameBoss = nil
      elseif getgenv().ChosenBoss == "The Gorilla King [Lv. 25] [Boss]" then
         BossName = "The Gorilla King [Lv. 25] [Boss]"
         QuestNameBoss = "JungleQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732)
      elseif getgenv().ChosenBoss == "Bobby [Lv. 55] [Boss]" then
         BossName = "Bobby [Lv. 55] [Boss]"
         QuestNameBoss = "BuggyQuest1"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211)
      elseif getgenv().ChosenBoss == "Yeti [Lv. 110] [Boss]" then
         BossName = "Yeti [Lv. 110] [Boss]"
         QuestNameBoss = "SnowQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825)
      elseif getgenv().ChosenBoss == "Mob Leader [Lv. 120] [Boss]" then
         BossName = "Mob Leader [Lv. 120] [Boss]"
         QuestNameBoss = nil
      elseif getgenv().ChosenBoss == "Vice Admiral [Lv. 130] [Boss]" then
         BossName = "Vice Admiral [Lv. 130] [Boss]"
         QuestNameBoss = "MarineQuest2"
         LvQuestBoss = 2
         QuestCFrameBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293)
      elseif getgenv().ChosenBoss == "Warden [Lv. 175] [Boss]" then
         BossName = "Warden [Lv. 175] [Boss]"
         QuestNameBoss = "ImpelQuest"
         LvQuestBoss = 1
         QuestCFrameBoss = CFrame.new(4851.35059, 5.68744135, 743.251282)
      elseif getgenv().ChosenBoss == "Chief Warden [Lv. 200] [Boss]" then
         BossName = "Chief Warden [Lv. 200] [Boss]"
         QuestNameBoss = "ImpelQuest"
         LvQuestBoss = 2
         QuestCFrameBoss = CFrame.new(4851.35059, 5.68744135, 743.251282)
      elseif getgenv().ChosenBoss == "Flamingo [Lv. 225] [Boss]" then
         BossName = "Flamingo [Lv. 225] [Boss]"
         QuestNameBoss = "ImpelQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(4851.35059, 5.68744135, 743.251282)
      elseif getgenv().ChosenBoss == "Magma Admiral [Lv. 350] [Boss]" then
         BossName = "Magma Admiral [Lv. 350] [Boss]"
         QuestNameBoss = "MagmaQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699)
      elseif getgenv().ChosenBoss == "Fishman Lord [Lv. 425] [Boss]" then
         BossName = "Fishman Lord [Lv. 425] [Boss]"
         QuestNameBoss = "FishmanQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018)
      elseif getgenv().ChosenBoss == "Wysper [Lv. 500] [Boss]" then
         BossName = "Wysper [Lv. 500] [Boss]"
         QuestNameBoss = "SkyExp1Quest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954)
      elseif getgenv().ChosenBoss == "Thunder God [Lv. 575] [Boss]" then
         BossName = "Thunder God [Lv. 575] [Boss]"
         QuestNameBoss = "SkyExp2Quest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706)
      elseif getgenv().ChosenBoss == "Cyborg [Lv. 675] [Boss]" then
         BossName = "Cyborg [Lv. 675] [Boss]"
         QuestNameBoss = "FountainQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166)
      end
   elseif SecondSea then
      if getgenv().ChosenBoss == "Diamond [Lv. 750] [Boss]" then
         BossName = "Diamond [Lv. 750] [Boss]"
         QuestNameBoss = "Area1Quest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589)
      elseif getgenv().ChosenBoss == "Jeremy [Lv. 850] [Boss]" then
         BossName = "Jeremy [Lv. 850] [Boss]"
         QuestNameBoss = "Area2Quest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(632.698608, 73.1055908, 918.666321)
      elseif getgenv().ChosenBoss == "Fajita [Lv. 925] [Boss]" then
         BossName = "Fajita [Lv. 925] [Boss]"
         QuestNameBoss = "MarineQuest3"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523)
      elseif getgenv().ChosenBoss == "Don Swan [Lv. 1000] [Boss]" then
         BossName = "Don Swan [Lv. 1000] [Boss]"
         QuestNameBoss = nil
      elseif getgenv().ChosenBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
         BossName = "Smoke Admiral [Lv. 1150] [Boss]"
         QuestNameBoss = "IceSideQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373)
      elseif getgenv().ChosenBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
         BossName = "Cursed Captain [Lv. 1325] [Raid Boss]"
      elseif getgenv().ChosenBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
         BossName = "Awakened Ice Admiral [Lv. 1400] [Boss]"
         QuestNameBoss = "FrostQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908)
      elseif getgenv().ChosenBoss == "Tide Keeper [Lv. 1475] [Boss]" then
         BossName = "Tide Keeper [Lv. 1475] [Boss]"
         QuestNameBoss = "ForgottenQuest"             
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324)
      end
      
   elseif ThirdSea then
      if getgenv().ChosenBoss == "Stone [Lv. 1550] [Boss]" then
         BossName = "Stone [Lv. 1550] [Boss]"
         QuestNameBoss = "PiratePortQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-288.003815, 43.7675667, 5573.12012)
      elseif getgenv().ChosenBoss == "Island Empress [Lv. 1675] [Boss]" then
         BossName = "Island Empress [Lv. 1675] [Boss]"
         QuestNameBoss = "AmazonQuest2"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(5444.14355, 601.603821, 751.306763)
      elseif getgenv().ChosenBoss == "Kilo Admiral [Lv. 1750] [Boss]" then
         BossName = "Kilo Admiral [Lv. 1750] [Boss]"
         QuestNameBoss = "MarineTreeIsland"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(2223.3645, 28.7049141, -6719.18408)
      elseif getgenv().ChosenBoss == "Captain Elephant [Lv. 1875] [Boss]" then
         BossName = "Captain Elephant [Lv. 1875] [Boss]"
         QuestNameBoss = "DeepForestIsland"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-13231.1602, 333.744446, -7624.40723)
      elseif getgenv().ChosenBoss == "Cake Queen [Lv. 2175] [Boss]" then
         BossName = "Cake Queen [Lv. 2175] [Boss]"
         QuestNameBoss = "IceCreamIslandQuest"
         LvQuestBoss = 3
         QuestCFrameBoss = CFrame.new(-821.71612548828, 65.819519042969, -10965.169921875)
      end
	end 
end

function refreshWeapon1()

  table.clear(PLrWeapons)
  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
     if not table.find(PLrWeapons, v.name) then
        if v:IsA("Tool") then
           table.insert(PLrWeapons ,v.Name)
        end
     end
 end

  for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
     if not table.find(PLrWeapons, v.name) then
        if v:IsA("Tool") then
           table.insert(PLrWeapons ,v.Name)
        end
     end
  end

end
function CheckQuestMob()
   local PlrLevel = game.Players.localPlayer.Data.Level.Value
   if FirstSea then
      if HighestLvToFarm == 0 then
         CurrentQuestMob = "BanditQuest1"
         NameMob = "Bandit [Lv. 5]"
         CurrentMobName = "Bandit"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
         SpawnPoint = "Default"
         SpawnCFrame = CFrame.new(977.038269, 16.5166149, 1420.94336, 0.97796452, 0, -0.208771184, -0, 1, -0, 0.208771184, 0, 0.97796452)
      elseif HighestLvToFarm == 10 then
         SpawnPoint = "Jungle"
         SpawnCFrame = CFrame.new(-1332.1394, 11.8529119, 492.35907, -0.774900496, -1.23768311e-08, 0.632082939, 1.77851245e-08, 1, 4.13846735e-08, -0.632082939, 4.33106848e-08, -0.774900496)
         CurrentQuestMob = "JungleQuest"
         NameMob = "Monkey [Lv. 14]"
         CurrentMobName = "Monkey"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
      elseif HighestLvToFarm == 15 then
         SpawnCFrame = CFrame.new(-1332.1394, 11.8529119, 492.35907, -0.774900496, -1.23768311e-08, 0.632082939, 1.77851245e-08, 1, 4.13846735e-08, -0.632082939, 4.33106848e-08, -0.774900496)
         SpawnPoint = "Jungle"
         CurrentQuestMob = "JungleQuest"
         NameMob = "Gorilla [Lv. 20]"
         CurrentMobName = "Gorilla"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
      elseif HighestLvToFarm == 30 then
         SpawnCFrame = CFrame.new(-1186.37769, 4.75154591, 3810.49243, 0.508615494, 0, -0.860993803, -0, 1, -0, 0.860993803, 0, 0.508615494)
         SpawnPoint = "Pirate"
         CurrentQuestMob = "BuggyQuest1"
         NameMob = "Pirate [Lv. 35]"
         CurrentMobName = "Pirate"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
      elseif HighestLvToFarm == 40 then
         SpawnCFrame = CFrame.new(-1186.37769, 4.75154591, 3810.49243, 0.508615494, 0, -0.860993803, -0, 1, -0, 0.860993803, 0, 0.508615494)
         SpawnPoint = "Pirate"
         CurrentQuestMob = "BuggyQuest1"
         NameMob = "Brute [Lv. 45]"
         CurrentMobName = "Brute"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
      elseif HighestLvToFarm == 60 then
         SpawnPoint = "Desert"
         SpawnCFrame = CFrame.new(917.85199, 3.37914562, 4114.66895, 0.203889921, -7.29310585e-08, 0.978993833, -8.66312355e-09, 1, 7.63001538e-08, -0.978993833, -2.40379769e-08, 0.203889921)
         CurrentQuestMob = "DesertQuest"
         NameMob = "Desert Bandit [Lv. 60]"
         CurrentMobName = "Desert Bandit"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
      elseif HighestLvToFarm == 75 then
         SpawnPoint = "Desert"
         SpawnCFrame = CFrame.new(917.85199, 3.37914562, 4114.66895, 0.203889921, -7.29310585e-08, 0.978993833, -8.66312355e-09, 1, 7.63001538e-08, -0.978993833, -2.40379769e-08, 0.203889921)
         CurrentQuestMob = "DesertQuest"
         NameMob = "Desert Officer [Lv. 70]"
         CurrentMobName = "Desert Officer"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
      elseif HighestLvToFarm == 90 then
         SpawnPoint = "Ice"
         SpawnCFrame = CFrame.new(1107.42444, 7.3035593, -1164.79614, 0.548184574, -8.23326758e-08, 0.836357415, 4.65359591e-08, 1, 6.79403129e-08, -0.836357415, 1.67686287e-09, 0.548184574)
         CurrentQuestMob = "SnowQuest"
         NameMob = "Snow Bandit [Lv. 90]"
         CurrentMobName = "Snow Bandit"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
      elseif HighestLvToFarm == 100 then
         SpawnPoint = "Ice"
         SpawnCFrame = CFrame.new(1107.42444, 7.3035593, -1164.79614, 0.548184574, -8.23326758e-08, 0.836357415, 4.65359591e-08, 1, 6.79403129e-08, -0.836357415, 1.67686287e-09, 0.548184574)
         CurrentQuestMob = "SnowQuest"
         NameMob = "Snowman [Lv. 100]"
         CurrentMobName = "Snowman"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
      elseif HighestLvToFarm == 120 then
         SpawnPoint = "MarineBase"
         SpawnCFrame = CFrame.new(-4922.20264, 41.2520523, 4424.44434, -0.488673091, -2.20081375e-08, 0.872467041, 1.13403127e-08, 1, 3.15769455e-08, -0.872467041, 2.53248498e-08, -0.488673091)
         CurrentQuestMob = "MarineQuest2"
         NameMob = "Chief Petty Officer [Lv. 120]"
         CurrentMobName = "Chief Petty Officer"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
      elseif HighestLvToFarm == 150 then
         SpawnPoint = "Sky"
         SpawnCFrame = CFrame.new(-4916.79346, 717.671265, -2637.03589, 0.808458745, 2.83643207e-08, 0.588552833, -4.5316173e-09, 1, -4.19685264e-08, -0.588552833, 3.12627257e-08, 0.808458745)
         CurrentQuestMob = "SkyQuest"
         NameMob = "Sky Bandit [Lv. 150]"
         CurrentMobName = "Sky Bandit"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
      elseif HighestLvToFarm == 175 then
         SpawnPoint = "Sky"
         SpawnCFrame = CFrame.new(-4916.79346, 717.671265, -2637.03589, 0.808458745, 2.83643207e-08, 0.588552833, -4.5316173e-09, 1, -4.19685264e-08, -0.588552833, 3.12627257e-08, 0.808458745)
         CurrentQuestMob = "SkyQuest"
         NameMob = "Dark Master [Lv. 175]"
         CurrentMobName = "Dark Master"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
      elseif HighestLvToFarm == 225 then
         SpawnPoint = "Colosseum"
         NameMob = "Toga Warrior [Lv. 225]"
         CurrentMobName = "Toga Warrior" 
         SpawnCFrame = CFrame.new(-1393.48926, 7.28934002, -2842.57324, -0.998255789, 6.55446408e-09, 0.0590373725, 6.72640565e-09, 1, 2.7136855e-09, -0.0590373725, 3.10606163e-09, -0.998255789)
         CurrentQuestMob = "ColosseumQuest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
      elseif HighestLvToFarm == 275 then
         SpawnPoint = "Colosseum"
         NameMob = "Gladiator [Lv. 275]"
         CurrentMobName = "Gladiator"
         SpawnCFrame = CFrame.new(-1393.48926, 7.28934002, -2842.57324, -0.998255789, 6.55446408e-09, 0.0590373725, 6.72640565e-09, 1, 2.7136855e-09, -0.0590373725, 3.10606163e-09, -0.998255789)
         CurrentQuestMob = "ColosseumQuest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
      elseif HighestLvToFarm == 300  then
         SpawnPoint = "Magma"
         SpawnCFrame = CFrame.new(-5226.26416, 8.59022045, 8472.14844, 0.506667018, 0, -0.862141788, -0, 1, -0, 0.862141907, 0, 0.506666958)
         CurrentQuestMob = "MagmaQuest"
         NameMob = "Military Soldier [Lv. 300]"
         CurrentMobName = "Military Soldier"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
      elseif HighestLvToFarm == 300 then
         CurrentQuestMob = "MagmaQuest"
         SpawnCFrame = CFrame.new(-5226.26416, 8.59022045, 8472.14844, 0.506667018, 0, -0.862141788, -0, 1, -0, 0.862141907, 0, 0.506666958)
         CurrentQuestMob = "MagmaQuest"
         CurrentMobName = "Military Spy"
         NameMob = "Military Spy [Lv. 330]"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
      elseif HighestLvToFarm == 375 then
         CurrentQuestMob = "FishmanQuest"
         NameMob = "Fishman Warrior [Lv. 375]"
         CurrentMobName = "Fishman Warrior"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
      elseif HighestLvToFarm == 400 then
         CurrentQuestMob = "FishmanQuest"
         NameMob = "Fishman Commando [Lv. 400]"
         CurrentMobName = "Fishman Commando"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
      elseif HighestLvToFarm == 450 then
         SpawnPoint = "Sky"
         NameMob = "God's Guard [Lv. 450]"
         CurrentMobName = "God's Guard"
         SpawnCFrame = CFrame.new(-4916.79346, 717.671265, -2637.03589, 0.808458745, 2.83643207e-08, 0.588552833, -4.5316173e-09, 1, -4.19685264e-08, -0.588552833, 3.12627257e-08, 0.808458745)
         CurrentQuestMob = "SkyExp1Quest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
      elseif HighestLvToFarm == 475  then
         SpawnPoint = "Sky2"
         SpawnCFrame = CFrame.new(-7873.7959, 5545.49316, -335.85321, -0.8423931, 4.59006095e-08, -0.53886348, 3.20399991e-08, 1, 3.50930023e-08, 0.53886348, 1.22969173e-08, -0.8423931)
         CurrentQuestMob = "SkyExp1Quest"
         NameMob = "Shanda [Lv. 475]"
         CurrentMobName = "Shanda"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
      elseif HighestLvToFarm == 525  then
         SpawnPoint = "Sky2"
         SpawnCFrame = CFrame.new(-7873.7959, 5545.49316, -335.85321, -0.8423931, 4.59006095e-08, -0.53886348, 3.20399991e-08, 1, 3.50930023e-08, 0.53886348, 1.22969173e-08, -0.8423931)
         CurrentQuestMob = "SkyExp2Quest"
         NameMob = "Royal Squad [Lv. 525]"
         CurrentMobName = "Royal Squad"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
      elseif HighestLvToFarm == 550  then
         SpawnPoint = "Sky2"
         SpawnCFrame = CFrame.new(-7873.7959, 5545.49316, -335.85321, -0.8423931, 4.59006095e-08, -0.53886348, 3.20399991e-08, 1, 3.50930023e-08, 0.53886348, 1.22969173e-08, -0.8423931)
         CurrentQuestMob = "SkyExp2Quest"
         CurrentMobName = "Royal Soldier"
         NameMob = "Royal Soldier [Lv. 550]"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
      elseif HighestLvToFarm == 625  then
         SpawnPoint = "Fountain"
         SpawnCFrame = CFrame.new(5187.77197, 38.5011406, 4141.60791, 0.779290736, 0, 0.626662672, -0, 1.00000012, -0, -0.626662731, 0, 0.779290617)
         CurrentQuestMob = "FountainQuest"
         NameMob = "Galley Pirate [Lv. 625]"
         CurrentMobName = "Galley Pirate"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
      elseif HighestLvToFarm == 650 then
         SpawnPoint = "Fountain"
         SpawnCFrame = CFrame.new(5187.77197, 38.5011406, 4141.60791, 0.779290736, 0, 0.626662672, -0, 1.00000012, -0, -0.626662731, 0, 0.779290617)
         CurrentQuestMob = "FountainQuest"
         NameMob = "Galley Captain [Lv. 650]"
         CurrentMobName = "Galley Captain"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
      end
   end
end
function CheckManually()
   CheckLv()
   if FirstSea then
      if HighestLvToFarm == 0 then
         FarmingPlace1 = CFrame.new(1001.7659301758, 16.328723907471, 1594.1104736328)
         FarmingPlace2 = nil
         CurrentQuestMob = "BanditQuest1"
         NameMob = "Bandit [Lv. 5]"
         CurrentMobName = "Bandit"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
         SpawnPoint = "Default"
         SpawnCFrame = CFrame.new(977.038269, 16.5166149, 1420.94336, 0.97796452, 0, -0.208771184, -0, 1, -0, 0.208771184, 0, 0.97796452)
      elseif HighestLvToFarm == 10 then
         FarmingPlace1 = CFrame.new(-1385.0048828125, 22.852113723755, 62.525402069092)
         FarmingPlace2 = CFrame.new(-1683.5257568359, 15.852045059204, 176.0375213623)
         SpawnPoint = "Jungle"
         SpawnCFrame = CFrame.new(-1332.1394, 11.8529119, 492.35907, -0.774900496, -1.23768311e-08, 0.632082939, 1.77851245e-08, 1, 4.13846735e-08, -0.632082939, 4.33106848e-08, -0.774900496)
         CurrentQuestMob = "JungleQuest"
         NameMob = "Monkey [Lv. 14]"
         CurrentMobName = "Monkey"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
      elseif HighestLvToFarm == 15 then
         FarmingPlace1 = CFrame.new(-1258.6610107422, 6.2793760299683, -494.70080566406)
         FarmingPlace2 = nil
         SpawnCFrame = CFrame.new(-1332.1394, 11.8529119, 492.35907, -0.774900496, -1.23768311e-08, 0.632082939, 1.77851245e-08, 1, 4.13846735e-08, -0.632082939, 4.33106848e-08, -0.774900496)
         SpawnPoint = "Jungle"
         CurrentQuestMob = "JungleQuest"
         NameMob = "Gorilla [Lv. 20]"
         CurrentMobName = "Gorilla"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
      elseif HighestLvToFarm == 30 then
         FarmingPlace1 = CFrame.new(-1100.0310058594, 13.752056121826, 3963.2993164062)
         FarmingPlace2 = nil    
         SpawnCFrame = CFrame.new(-1186.37769, 4.75154591, 3810.49243, 0.508615494, 0, -0.860993803, -0, 1, -0, 0.860993803, 0, 0.508615494)
         SpawnPoint = "Pirate"
         CurrentQuestMob = "BuggyQuest1"
         NameMob = "Pirate [Lv. 35]"
         CurrentMobName = "Pirate"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
      elseif HighestLvToFarm == 40 then
         FarmingPlace1 = CFrame.new(-1144.1635742188, 14.809885025024, 4293.6352539062)
         FarmingPlace2 = nil   
         
         SpawnCFrame = CFrame.new(-1186.37769, 4.75154591, 3810.49243, 0.508615494, 0, -0.860993803, -0, 1, -0, 0.860993803, 0, 0.508615494)
         SpawnPoint = "Pirate"
         CurrentQuestMob = "BuggyQuest1"
         NameMob = "Brute [Lv. 45]"
         CurrentMobName = "Brute"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
      elseif HighestLvToFarm == 60 then
         FarmingPlace1 = CFrame.new(926.37927246094, 6.448634147644, 4464.7836914062)
         FarmingPlace2 = nil 
         SpawnPoint = "Desert"
         SpawnCFrame = CFrame.new(917.85199, 3.37914562, 4114.66895, 0.203889921, -7.29310585e-08, 0.978993833, -8.66312355e-09, 1, 7.63001538e-08, -0.978993833, -2.40379769e-08, 0.203889921)
         CurrentQuestMob = "DesertQuest"
         NameMob = "Desert Bandit [Lv. 60]"
         CurrentMobName = "Desert Bandit"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
      elseif HighestLvToFarm == 75 then
         FarmingPlace1 = CFrame.new(1609.8444824219, 1.6109663248062, 4373.2622070312)
         FarmingPlace2 = nil 
         
         SpawnPoint = "Desert"
         SpawnCFrame = CFrame.new(917.85199, 3.37914562, 4114.66895, 0.203889921, -7.29310585e-08, 0.978993833, -8.66312355e-09, 1, 7.63001538e-08, -0.978993833, -2.40379769e-08, 0.203889921)
         CurrentQuestMob = "DesertQuest"
         NameMob = "Desert Officer [Lv. 70]"
         CurrentMobName = "Desert Officer"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
      elseif HighestLvToFarm == 90 then
         FarmingPlace1 = CFrame.new(1372.1066894531, 87.272773742676, -1362.8063964844)
         FarmingPlace2 = nil 
         
         SpawnPoint = "Ice"
         SpawnCFrame = CFrame.new(1107.42444, 7.3035593, -1164.79614, 0.548184574, -8.23326758e-08, 0.836357415, 4.65359591e-08, 1, 6.79403129e-08, -0.836357415, 1.67686287e-09, 0.548184574)
         CurrentQuestMob = "SnowQuest"
         NameMob = "Snow Bandit [Lv. 90]"
         CurrentMobName = "Snow Bandit"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
      elseif HighestLvToFarm == 100 then
         FarmingPlace1 = CFrame.new(1143.6586914062, 105.93144226074, -1491.5599365234)
         FarmingPlace2 = nil 
         SpawnPoint = "Ice"
         SpawnCFrame = CFrame.new(1107.42444, 7.3035593, -1164.79614, 0.548184574, -8.23326758e-08, 0.836357415, 4.65359591e-08, 1, 6.79403129e-08, -0.836357415, 1.67686287e-09, 0.548184574)
         CurrentQuestMob = "SnowQuest"
         NameMob = "Snowman [Lv. 100]"
         CurrentMobName = "Snowman"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
      elseif HighestLvToFarm == 120 then
         FarmingPlace1 = CFrame.new(-4688.341796875, 20.652044296265, 4465.873046875)
         FarmingPlace2 = CFrame.new(-4927.7001953125, 20.652044296265, 4022.1950683594) 
         
         SpawnPoint = "MarineBase"
         SpawnCFrame = CFrame.new(-4922.20264, 41.2520523, 4424.44434, -0.488673091, -2.20081375e-08, 0.872467041, 1.13403127e-08, 1, 3.15769455e-08, -0.872467041, 2.53248498e-08, -0.488673091)
         CurrentQuestMob = "MarineQuest2"
         NameMob = "Chief Petty Officer [Lv. 120]"
         CurrentMobName = "Chief Petty Officer"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
      elseif HighestLvToFarm == 150 then
         FarmingPlace1 = CFrame.new(-4978.8686523438, 278.06661987305, -2842.9523925781)
         FarmingPlace2 = nil
        
         SpawnPoint = "Sky"
         SpawnCFrame = CFrame.new(-4916.79346, 717.671265, -2637.03589, 0.808458745, 2.83643207e-08, 0.588552833, -4.5316173e-09, 1, -4.19685264e-08, -0.588552833, 3.12627257e-08, 0.808458745)
         CurrentQuestMob = "SkyQuest"
         NameMob = "Sky Bandit [Lv. 150]"
         CurrentMobName = "Sky Bandit"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
      elseif HighestLvToFarm == 175 then
         
         FarmingPlace1 = CFrame.new(-5265.0981445312, 388.65194702148, -2258.8056640625)
         FarmingPlace2 = nil
         SpawnPoint = "Sky"
         SpawnCFrame = CFrame.new(-4916.79346, 717.671265, -2637.03589, 0.808458745, 2.83643207e-08, 0.588552833, -4.5316173e-09, 1, -4.19685264e-08, -0.588552833, 3.12627257e-08, 0.808458745)
         CurrentQuestMob = "SkyQuest"
         NameMob = "Dark Master [Lv. 175]"
         CurrentMobName = "Dark Master"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
      elseif HighestLvToFarm == 225 then
         
         FarmingPlace1 = CFrame.new(-1877.6928710938, 7.289083480835, -2791.259765625)
         FarmingPlace2 = nil
         SpawnPoint = "Colosseum"
         NameMob = "Toga Warrior [Lv. 225]"
         CurrentMobName = "Toga Warrior" 
         SpawnCFrame = CFrame.new(-1393.48926, 7.28934002, -2842.57324, -0.998255789, 6.55446408e-09, 0.0590373725, 6.72640565e-09, 1, 2.7136855e-09, -0.0590373725, 3.10606163e-09, -0.998255789)
         CurrentQuestMob = "ColosseumQuest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
      elseif HighestLvToFarm == 275 then
         FarmingPlace1 = CFrame.new(-1379.4381103516, 7.3893489837646, -3330.962890625)
         FarmingPlace2 = nil
         
         SpawnPoint = "Colosseum"
         NameMob = "Gladiator [Lv. 275]"
         CurrentMobName = "Gladiator"
         SpawnCFrame = CFrame.new(-1393.48926, 7.28934002, -2842.57324, -0.998255789, 6.55446408e-09, 0.0590373725, 6.72640565e-09, 1, 2.7136855e-09, -0.0590373725, 3.10606163e-09, -0.998255789)
         CurrentQuestMob = "ColosseumQuest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
      elseif HighestLvToFarm == 300  then
         FarmingPlace1 = CFrame.new(-5412.349609375, 11.045272827148, 8457.0732421875)
         FarmingPlace2 = nil
         
         SpawnPoint = "Magma"
         SpawnCFrame = CFrame.new(-5226.26416, 8.59022045, 8472.14844, 0.506667018, 0, -0.862141788, -0, 1, -0, 0.862141907, 0, 0.506666958)
         CurrentQuestMob = "MagmaQuest"
         NameMob = "Military Soldier [Lv. 300]"
         CurrentMobName = "Military Soldier"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
      elseif HighestLvToFarm == 330 then
         FarmingPlace1 = CFrame.new(-5857.876953125, 77.230644226074, 8810.365234375)
         FarmingPlace2 = nil
         
         CurrentQuestMob = "MagmaQuest"
         SpawnCFrame = CFrame.new(-5226.26416, 8.59022045, 8472.14844, 0.506667018, 0, -0.862141788, -0, 1, -0, 0.862141907, 0, 0.506666958)
         CurrentQuestMob = "MagmaQuest"
         CurrentMobName = "Military Spy"
         NameMob = "Military Spy [Lv. 330]"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
      elseif HighestLvToFarm == 375 then
         FarmingPlace1 = CFrame.new(60891.60546875, 18.482830047607, 1508.4505615234)
         FarmingPlace2 = nil
         
         CurrentQuestMob = "FishmanQuest"
         NameMob = "Fishman Warrior [Lv. 375]"
         CurrentMobName = "Fishman Warrior"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
      elseif HighestLvToFarm == 400 then
         FarmingPlace1 = CFrame.new(61894.52734375, 18.482830047607, 1467.8453369141)
         FarmingPlace2 = nil
         
         CurrentQuestMob = "FishmanQuest"
         NameMob = "Fishman Commando [Lv. 400]"
         CurrentMobName = "Fishman Commando"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
      elseif HighestLvToFarm == 450 then
         FarmingPlace1 = CFrame.new(-4725.4951171875, 844.27697753906, -1963.5858154297)
         FarmingPlace2 = nil
         
         SpawnPoint = "Sky"
         NameMob = "God's Guard [Lv. 450]"
         CurrentMobName = "God's Guard"
         SpawnCFrame = CFrame.new(-4916.79346, 717.671265, -2637.03589, 0.808458745, 2.83643207e-08, 0.588552833, -4.5316173e-09, 1, -4.19685264e-08, -0.588552833, 3.12627257e-08, 0.808458745)
         CurrentQuestMob = "SkyExp1Quest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
      elseif HighestLvToFarm == 475  then
         FarmingPlace1 = CFrame.new(-7671.0346679688, 5545.4916992188, -485.45092773438)
         FarmingPlace2 = nil
         SpawnPoint = "Sky2"
         SpawnCFrame = CFrame.new(-7873.7959, 5545.49316, -335.85321, -0.8423931, 4.59006095e-08, -0.53886348, 3.20399991e-08, 1, 3.50930023e-08, 0.53886348, 1.22969173e-08, -0.8423931)
         CurrentQuestMob = "SkyExp1Quest"
         NameMob = "Shanda [Lv. 475]"
         CurrentMobName = "Shanda"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
      elseif HighestLvToFarm == 525  then
         FarmingPlace1 = CFrame.new(-7650.568359375, 5606.876953125, -1470.9382324219)
         FarmingPlace2 = nil
         
         SpawnPoint = "Sky2"
         SpawnCFrame = CFrame.new(-7873.7959, 5545.49316, -335.85321, -0.8423931, 4.59006095e-08, -0.53886348, 3.20399991e-08, 1, 3.50930023e-08, 0.53886348, 1.22969173e-08, -0.8423931)
         CurrentQuestMob = "SkyExp2Quest"
         NameMob = "Royal Squad [Lv. 525]"
         CurrentMobName = "Royal Squad"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
      elseif HighestLvToFarm == 550  then
         FarmingPlace1 = CFrame.new(-7801.580078125, 5606.876953125, -1772.6484375)
         FarmingPlace2 = nil
         SpawnPoint = "Sky2"
         SpawnCFrame = CFrame.new(-7873.7959, 5545.49316, -335.85321, -0.8423931, 4.59006095e-08, -0.53886348, 3.20399991e-08, 1, 3.50930023e-08, 0.53886348, 1.22969173e-08, -0.8423931)
         CurrentQuestMob = "SkyExp2Quest"
         CurrentMobName = "Royal Soldier"
         NameMob = "Royal Soldier [Lv. 550]"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
      elseif HighestLvToFarm == 625  then
         FarmingPlace1 = CFrame.new(5624.2045898438, 53.757335662842, 4026.2885742188)
         FarmingPlace2 = nil
         
         SpawnPoint = "Fountain"
         SpawnCFrame = CFrame.new(5187.77197, 38.5011406, 4141.60791, 0.779290736, 0, 0.626662672, -0, 1.00000012, -0, -0.626662731, 0, 0.779290617)
         CurrentQuestMob = "FountainQuest"
         NameMob = "Galley Pirate [Lv. 625]"
         CurrentMobName = "Galley Pirate"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
      elseif HighestLvToFarm == 650 then
         FarmingPlace1 = CFrame.new(5686.9287109375, 38.501140594482, 4927.6762695312)
         FarmingPlace2 = nil
         
         SpawnPoint = "Fountain"
         SpawnCFrame = CFrame.new(5187.77197, 38.5011406, 4141.60791, 0.779290736, 0, 0.626662672, -0, 1.00000012, -0, -0.626662731, 0, 0.779290617)
         CurrentQuestMob = "FountainQuest"
         NameMob = "Galley Captain [Lv. 650]"
         CurrentMobName = "Galley Captain"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
      end
   elseif SecondSea then
      if HighestLvToFarm == 700  then
         FarmingPlace1 = CFrame.new(357.98040771484, 39.139602661133, 2321.3010253906)
         FarmingPlace2 = CFrame.new(-695.80236816406, 39.139797210693, 2369.3337402344)
         CurrentMobName = "Raider"
         NameMob = "Raider [Lv. 700]"
         SpawnCFrame = CFrame.new(-32.1582031, 29.2783928, 2766.5874, 0.999908745, 4.07748502e-08, 0.013477576, -4.06100966e-08, 1, -1.24986625e-08, -0.013477576, 1.19501982e-08, 0.999908745)
         SpawnPoint = "Default"
         CurrentQuestMob = "Area1Quest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
      elseif HighestLvToFarm == 725 then
         FarmingPlace1 = CFrame.new(-956.09149169922, 72.457725524902, 1674.9362792969)
         FarmingPlace2 = CFrame.new(-1088.17578125, 73.561851501465, 1164.9073486328)
         NameMob = "Mercenary [Lv. 725]"
         SpawnCFrame = CFrame.new(-32.1582031, 29.2783928, 2766.5874, 0.999908745, 4.07748502e-08, 0.013477576, -4.06100966e-08, 1, -1.24986625e-08, -0.013477576, 1.19501982e-08, 0.999908745)
         SpawnPoint = "Default"
         CurrentMobName = "Mercenary"
         CurrentQuestMob = "Area1Quest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
      elseif HighestLvToFarm == 775 then
         FarmingPlace1 = CFrame.new(976.88073730469, 72.959701538086, 1274.0031738281)
         FarmingPlace2 = nil
         NameMob = "Swan Pirate [Lv. 775]"
         CurrentMobName = "Swan Pirate"
         SpawnCFrame = CFrame.new(-389.968658, 72.9961472, 1148.09241, 0.973822653, -2.55817412e-09, -0.227309078, 5.14786969e-09, 1, 1.07999991e-08, 0.227309078, -1.16874412e-08, 0.973822653)
         SpawnPoint = "DressTown"
         CurrentQuestMob = "Area2Quest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
      elseif HighestLvToFarm == 800 then 
         FarmingPlace1 = CFrame.new(646.02661132812, 72.959762573242, 38.089466094971)
         FarmingPlace2 = CFrame.new(-88.327613830566, 149.43238830566, -337.46002197266)
         NameMob = "Factory Staff [Lv. 800]"
         SpawnCFrame = CFrame.new(-389.968658, 72.9961472, 1148.09241, 0.973822653, -2.55817412e-09, -0.227309078, 5.14786969e-09, 1, 1.07999991e-08, 0.227309078, -1.16874412e-08, 0.973822653)
         SpawnPoint = "DressTown"
         CurrentMobName = "Factory Staff"
         CurrentQuestMob = "Area2Quest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
      elseif HighestLvToFarm == 875 then
         FarmingPlace1 = CFrame.new(-2782.4750976562, 72.966125488281, -3049.7006835938)
         FarmingPlace2 = CFrame.new(-3113.5051269531, 72.976486206055, -2774.3439941406)
         NameMob = "Marine Lieutenant [Lv. 875]"
         SpawnPoint = "Greenb"
         CurrentMobName = "Marine Lieutenant"
         SpawnCFrame = CFrame.new(-2220.05884, 72.967804, -2709.98462, 0.751716256, 2.54505395e-08, -0.659486711, -3.65784025e-08, 1, -3.10247139e-09, 0.659486711, 2.64551492e-08, 0.751716256)
         CurrentQuestMob = "MarineQuest3"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
      elseif HighestLvToFarm == 900 then
         FarmingPlace1 = CFrame.new(-1880.9975585938, 72.966125488281, -3336.0285644531)
         FarmingPlace2 = nil
         NameMob = "Marine Captain [Lv. 900]"
         SpawnPoint = "Greenb"
         CurrentMobName = "Marine Captain"
         SpawnCFrame = CFrame.new(-2220.05884, 72.967804, -2709.98462, 0.751716256, 2.54505395e-08, -0.659486711, -3.65784025e-08, 1, -3.10247139e-09, 0.659486711, 2.64551492e-08, 0.751716256)
         CurrentQuestMob = "MarineQuest3"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
      elseif HighestLvToFarm == 950 then 
         FarmingPlace1 = CFrame.new(-5700.8315429688, 126.03198242188, -794.72845458984)
         FarmingPlace2 = nil
         NameMob = "Zombie [Lv. 950]"
         SpawnPoint = "Graveyard"
         CurrentQuestMob = "ZombieQuest"
         CurrentMobName = "Zombie"
         SpawnCFrame = CFrame.new(-5386.68799, 8.97076797, -713.903381, -0.681161046, -0, -0.732133687, -0, 1.00000012, -0, 0.732133627, 0, -0.681161106)
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
      elseif HighestLvToFarm == 975 then 
         FarmingPlace1 = CFrame.new(-6028.4775390625, 6.4027123451233, -1300.9273681641)
         FarmingPlace2 = nil
         NameMob = "Vampire [Lv. 975]"
         SpawnPoint = "Graveyard"
         SpawnCFrame = CFrame.new(-5386.68799, 8.97076797, -713.903381, -0.681161046, -0, -0.732133687, -0, 1.00000012, -0, 0.732133627, 0, -0.681161106)
         CurrentQuestMob = "ZombieQuest"
         CurrentQuestLevelMob = 2
         CurrentMobName = "Vampire"
         QuestCFrame = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
      elseif HighestLvToFarm == 1000 then 
         FarmingPlace1 = CFrame.new(523.66925048828, 401.42193603516, -5285.51953125)
         FarmingPlace2 = CFrame.new(648.88629150391, 401.42193603516, -5611.3999023438)
         NameMob = "Snow Trooper [Lv. 1000]"
         CurrentMobName = "Snow Trooper"
         SpawnPoint = "Snowy"
         SpawnCFrame = CFrame.new(394.089142, 401.423676, -5313.98486, 0.858188987, 0, -0.513334036, -0, 1.00000012, -0, 0.513334095, 0, 0.858188868)
         CurrentQuestMob = "SnowMountainQuest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
      elseif HighestLvToFarm == 1050 then 
         FarmingPlace1 = CFrame.new(1180.0009765625, 429.421875, -5180.546875)
         FarmingPlace2 = nil
         NameMob = "Winter Warrior [Lv. 1050]"
         CurrentMobName = "Winter Warrior"
         SpawnCFrame = CFrame.new(394.089142, 401.423676, -5313.98486, 0.858188987, 0, -0.513334036, -0, 1.00000012, -0, 0.513334095, 0, 0.858188868)
         SpawnPoint = "Snowy"
         CurrentQuestMob = "SnowMountainQuest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
      elseif HighestLvToFarm == 1100 then
         FarmingPlace1 = CFrame.new(-5726.38671875, 15.951767921448, -4501.3442382812)
         FarmingPlace2 = nil
         NameMob = "Lab Subordinate [Lv. 1100]"
         SpawnCFrame = CFrame.new(-5852.72803, 18.316433, -5030.0752, -0.0697377697, -1.76218595e-08, 0.997565329, -4.9068543e-08, 1, 1.42345851e-08, -0.997565329, -4.79563909e-08, -0.0697377697)
         SpawnPoint = "CircleIslandIce"
         CurrentMobName = "Lab Subordinate"
         CurrentQuestMob = "IceSideQuest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
      elseif HighestLvToFarm == 1125  then
         FarmingPlace1 = CFrame.new(-6318.6450195312, 15.951767921448, -5801.6118164062)
         FarmingPlace2 = nil
         NameMob = "Horned Warrior [Lv. 1125]"
         SpawnCFrame = CFrame.new(-5852.72803, 18.316433, -5030.0752, -0.0697377697, -1.76218595e-08, 0.997565329, -4.9068543e-08, 1, 1.42345851e-08, -0.997565329, -4.79563909e-08, -0.0697377697)
         SpawnPoint = "CircleIslandIce"
         CurrentMobName = "Horned Warrior"
         CurrentQuestMob = "IceSideQuest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
      elseif HighestLvToFarm == 1175  then
         FarmingPlace1 = CFrame.new(-5536.0307617188, 39.595935821533, -5916.029296875)
         FarmingPlace2 = CFrame.new(-5179.6293945312, 26.696611404419, -6228.3901367188)
         NameMob = "Magma Ninja [Lv. 1175]"
         SpawnCFrame = CFrame.new(-5852.72803, 18.316433, -5030.0752, -0.0697377697, -1.76218595e-08, 0.997565329, -4.9068543e-08, 1, 1.42345851e-08, -0.997565329, -4.79563909e-08, -0.0697377697)
         SpawnPoint = "CircleIslandIce"
         CurrentMobName = "Magma Ninja"
         CurrentQuestMob = "FireSideQuest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
      elseif HighestLvToFarm == 1200  then 
         FarmingPlace1 = CFrame.new(-5244.7021484375, 27.503534317017, -4641.6875)
         FarmingPlace2 = nil
         NameMob = "Lava Pirate [Lv. 1200]"
         SpawnCFrame = CFrame.new(-5852.72803, 18.316433, -5030.0752, -0.0697377697, -1.76218595e-08, 0.997565329, -4.9068543e-08, 1, 1.42345851e-08, -0.997565329, -4.79563909e-08, -0.0697377697)
         SpawnPoint = "CircleIslandIce"
         CurrentMobName = "Lava Pirate"
         CurrentQuestMob = "FireSideQuest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
      elseif HighestLvToFarm == 1250  then
         FarmingPlace1 = CFrame.new(560.00573730469, 132.66296386719, 32905.1640625)
         FarmingPlace2 = CFrame.new(1280.4876708984, 125.05711364746, 33053.1953125)
         NameMob = "Ship Deckhand [Lv. 1250]"
         
         CurrentQuestMob = "ShipQuest1"
         CurrentQuestLevelMob = 1
         CurrentMobName = "Ship Deckhand"
         QuestCFrame = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
      elseif HighestLvToFarm == 1275 then
         FarmingPlace1 = CFrame.new(898.05749511719, 44.057006835938, 32934.77734375)
         FarmingPlace2 = nil
         NameMob = "Ship Engineer [Lv. 1275]"
         CurrentQuestMob = "ShipQuest1"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
      elseif HighestLvToFarm == 1300 then 
         FarmingPlace1 = CFrame.new(902.88983154297, 129.55599975586, 33442.7109375)
         FarmingPlace2 = nil
         NameMob = "Ship Steward [Lv. 1300]"
         CurrentQuestMob = "ShipQuest2"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
      elseif HighestLvToFarm == 1325 then 
         FarmingPlace1 = CFrame.new(1185.25390625, 181.14912414551, 33298.6953125)
         FarmingPlace2 = CFrame.new(633.19226074219, 181.1491394043, 33304.4140625)
         NameMob = "Ship Officer [Lv. 1325]"
         CurrentQuestMob = "ShipQuest2"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
      elseif HighestLvToFarm == 1350 then
         FarmingPlace1 = CFrame.new(6024.3940429688, 28.367185592651, -6247.3994140625)
         FarmingPlace2 = nil
         NameMob = "Arctic Warrior [Lv. 1350]"
         
         SpawnCFrame = CFrame.new(5573.96826, 28.1925011, -6111.41455, 0.63015002, 2.24445866e-08, -0.776473403, 1.18417554e-09, 1, 2.98668255e-08, 0.776473403, -1.97400603e-08, 0.63015002)
         SpawnPoint = "IceCastle"
         CurrentMobName = "Arctic Warrior"
         CurrentQuestMob = "FrostQuest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
      elseif HighestLvToFarm == 1375 then 
         FarmingPlace1 = CFrame.new(5507.1884765625, 28.120534896851, -6849.9008789062)
         FarmingPlace2 = nil
         NameMob = "Snow Lurker [Lv. 1375]"
         SpawnCFrame = CFrame.new(5573.96826, 28.1925011, -6111.41455, 0.63015002, 2.24445866e-08, -0.776473403, 1.18417554e-09, 1, 2.98668255e-08, 0.776473403, -1.97400603e-08, 0.63015002)
         SpawnPoint = "IceCastle"
         CurrentMobName = "Snow Lurker"
         CurrentQuestMob = "FrostQuest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
      elseif HighestLvToFarm == 1425 then
         FarmingPlace1 = CFrame.new(-3402.0686035156, 26.352342605591, -9770.3125)
         FarmingPlace2 = CFrame.new(-2497.3869628906, 26.967893600464, -9835.23828125)
         NameMob = "Sea Soldier [Lv. 1425]"
         SpawnCFrame = CFrame.new(-3066.82715, 236.847992, -10159.6846, -0.0472635701, 9.39435338e-08, 0.998882413, -1.03863584e-08, 1, -9.45400771e-08, -0.998882413, -1.4843053e-08, -0.0472635701)
         SpawnPoint = "ForgottenIsland"
         CurrentMobName = "Sea Soldier"
         CurrentQuestMob = "ForgottenQuest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
      elseif HighestLvToFarm >= 1450 then 
         FarmingPlace1 = CFrame.new(-3350.1958007812, 238.84613037109, -10557.44921875)
         FarmingPlace2 = nil
         NameMob = "Water Fighter [Lv. 1450]"
         
         CurrentMobName = "Water Fighter"
         SpawnPoint = "ForgottenIsland"
         SpawnCFrame = CFrame.new(-3066.82715, 236.847992, -10159.6846, -0.0472635701, 9.39435338e-08, 0.998882413, -1.03863584e-08, 1, -9.45400771e-08, -0.998882413, -1.4843053e-08, -0.0472635701)
         CurrentQuestMob = "ForgottenQuest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
      end
   elseif ThirdSea then
      if HighestLvToFarm == 1500 then
         CurrentMobName = "Pirate Millionaire"
         CurrentQuestMob = "PiratePortQuest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-288.95349121094, 43.789222717285, 5578.7622070313)
      elseif HighestLvToFarm == 1525 then
         CurrentMobName = "Pistol Billionaire"

         CurrentQuestMob = "PiratePortQuest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-288.95349121094, 43.789222717285, 5578.7622070313)

      elseif HighestLvToFarm == 1575 then
         CurrentMobName = "Dragon Crew Warrior"
         SpawnPoint = "Hydra3"
         SpawnCFrame = CFrame.new(4727.12988, 51.453064, -1401.72839, -0.0406560153, -8.94791299e-08, -0.999172926, -1.4819995e-08, 1, -8.89501877e-08, 0.999172926, 1.11913803e-08, -0.0406560153)
         CurrentQuestMob = "AmazonQuest"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(5833.5776367188, 51.575191497803, -1102.7550048828)
      elseif HighestLvToFarm == 1600  then
         SpawnPoint = "Hydra3"
         CurrentMobName = "Dragon Crew Archer"

         SpawnCFrame = CFrame.new(4727.12988, 51.453064, -1401.72839, -0.0406560153, -8.94791299e-08, -0.999172926, -1.4819995e-08, 1, -8.89501877e-08, 0.999172926, 1.11913803e-08, -0.0406560153)
         CurrentQuestMob = "AmazonQuest"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(5833.5776367188, 51.575191497803, -1102.7550048828)
      elseif HighestLvToFarm == 1625  then
         SpawnPoint = "Hydra1"
         CurrentMobName = "Female Islander"

         SpawnCFrame = CFrame.new(5264.06396, 602.526245, 353.749878, 0.279151142, -7.57343912e-08, 0.960247159, -6.40085602e-08, 1, 9.74774537e-08, -0.960247159, -8.86749874e-08, 0.279151142)
         CurrentQuestMob = "AmazonQuest2"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(5447.388671875, 601.74407958984, 751.86462402344)

      elseif HighestLvToFarm == 1650  then
         
         SpawnPoint = "Hydra1"
         CurrentMobName = "Giant Islander"
         SpawnCFrame = CFrame.new(5264.06396, 602.526245, 353.749878, 0.279151142, -7.57343912e-08, 0.960247159, -6.40085602e-08, 1, 9.74774537e-08, -0.960247159, -8.86749874e-08, 0.279151142)
         CurrentQuestMob = "AmazonQuest2"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(5447.388671875, 601.74407958984, 751.86462402344)

      elseif HighestLvToFarm == 1700  then
         CurrentMobName = "Marine Commodore"

         SpawnPoint = "GreatTree"
         SpawnCFrame = CFrame.new(2260.66162, 25.852705, -6416.6084, -0.626811504, 1.25838984e-08, -0.77917093, 6.058122e-09, 1, 1.1276855e-08, 0.77917093, 2.34815012e-09, -0.626811504)
         CurrentQuestMob = "MarineTreeIsland"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(2179.2548828125, 28.701448440552, -6739.7299804688)

      elseif HighestLvToFarm == 1725 then
         SpawnPoint = "GreatTree"
         CurrentMobName = "Marine Rear Admiral"

         SpawnCFrame = CFrame.new(2260.66162, 25.852705, -6416.6084, -0.626811504, 1.25838984e-08, -0.77917093, 6.058122e-09, 1, 1.1276855e-08, 0.77917093, 2.34815012e-09, -0.626811504)
         CurrentQuestMob = "MarineTreeIsland"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(2179.2548828125, 28.701448440552, -6739.7299804688)
         
      elseif HighestLvToFarm == 1775  then
         SpawnPoint = "BigMansion"
         CurrentMobName = "Fishman Raider"

         SpawnCFrame = CFrame.new(-12550.4844, 337.168365, -7425.26855, -0.999161005, -4.15654711e-09, 0.0409527794, -5.47581491e-09, 1, -3.21021858e-08, -0.0409527794, -3.22995035e-08, -0.999161005)
         CurrentQuestMob = "DeepForestIsland3"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-10580.998046875, 331.75863647461, -8758.193359375)
      elseif HighestLvToFarm == 1800 then
         SpawnPoint = "BigMansion"
         CurrentMobName = "Fishman Captain"

         SpawnCFrame = CFrame.new(-12550.4844, 337.168365, -7425.26855, -0.999161005, -4.15654711e-09, 0.0409527794, -5.47581491e-09, 1, -3.21021858e-08, -0.0409527794, -3.22995035e-08, -0.999161005)
         CurrentQuestMob = "DeepForestIsland3"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-10580.998046875, 331.75863647461, -8758.193359375)

      elseif HighestLvToFarm == 1825 then
         SpawnPoint = "BigMansion"
         CurrentMobName = "Forest Pirate"
         SpawnCFrame = CFrame.new(-12550.4844, 337.168365, -7425.26855, -0.999161005, -4.15654711e-09, 0.0409527794, -5.47581491e-09, 1, -3.21021858e-08, -0.0409527794, -3.22995035e-08, -0.999161005)
         CurrentQuestMob = "DeepForestIsland"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-13231.467773438, 332.37414550781, -7626.6860351563)

      elseif HighestLvToFarm == 1850 then
         SpawnPoint = "BigMansion"
         CurrentMobName = "Mythological Pirate"
         SpawnCFrame = CFrame.new(-12550.4844, 337.168365, -7425.26855, -0.999161005, -4.15654711e-09, 0.0409527794, -5.47581491e-09, 1, -3.21021858e-08, -0.0409527794, -3.22995035e-08, -0.999161005)
         CurrentQuestMob = "DeepForestIsland"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-13231.467773438, 332.37414550781, -7626.6860351563)
      elseif HighestLvToFarm == 1900 then
         SpawnCFrame = (CFrame.new(-11374.4658, 331.723297, -10390.6523, 0.0812454298, -6.60837287e-08, 0.996694148, -2.83417223e-09, 1, 6.65339499e-08, -0.996694148, -8.23038171e-09, 0.0812454298))
         SpawnPoint = "PineappleTown"
         CurrentMobName = "Jungle Pirate"
         CurrentQuestMob = "DeepForestIsland2"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-12683.189453125, 390.85668945313, -9902.15625)

      elseif HighestLvToFarm == 1925  then
         SpawnCFrame = (CFrame.new(-11374.4658, 331.723297, -10390.6523, 0.0812454298, -6.60837287e-08, 0.996694148, -2.83417223e-09, 1, 6.65339499e-08, -0.996694148, -8.23038171e-09, 0.0812454298))
         SpawnPoint = "PineappleTown"
         CurrentQuestMob = "DeepForestIsland2"
         CurrentQuestLevelMob = 2
         CurrentMobName = "Musketeer Pirate"
         QuestCFrame = CFrame.new(-12683.189453125, 390.85668945313, -9902.15625)
      elseif HighestLvToFarm == 1975 then
         SpawnCFrame = (CFrame.new(-9540.20898, 142.104858, 5537.26318, -0.0597328693, -5.60282345e-08, 0.998214364, -3.90994126e-09, 1, 5.5894489e-08, -0.998214364, -5.6422117e-10, -0.0597328693))
         SpawnPoint = "HauntedCastle"
         CurrentQuestMob = "HauntedQuest1"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-9490.2793, 142.104858, 5565.8501)
         CurrentMobName = "Reborn Skeleton"
      elseif HighestLvToFarm == 2000  then
         SpawnCFrame = (CFrame.new(-9540.20898, 142.104858, 5537.26318, -0.0597328693, -5.60282345e-08, 0.998214364, -3.90994126e-09, 1, 5.5894489e-08, -0.998214364, -5.6422117e-10, -0.0597328693))
         SpawnPoint = "HauntedCastle"
         CurrentQuestMob = "HauntedQuest1"
         CurrentMobName = "Living Zombie"
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-9490.2793, 142.104858, 5565.8501)

      elseif HighestLvToFarm == 2025  then
         SpawnPoint = "HauntedCastle"
         SpawnCFrame = (CFrame.new(-9540.20898, 142.104858, 5537.26318, -0.0597328693, -5.60282345e-08, 0.998214364, -3.90994126e-09, 1, 5.5894489e-08, -0.998214364, -5.6422117e-10, -0.0597328693))
         CurrentQuestMob = "HauntedQuest2"
         CurrentMobName = "Demonic Soul"
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-9506.95313, 172.104858, 6074.63086)

      elseif HighestLvToFarm == 2050 then
         SpawnPoint = "HauntedCastle"
         SpawnCFrame = (CFrame.new(-9540.20898, 142.104858, 5537.26318))
         CurrentQuestLevelMob = 2
         CurrentMobName = "Posessed Mummy"
         CurrentQuestMob = "HauntedQuest2"
         QuestCFrame = CFrame.new(-9506.95313, 172.104858, 6074.63086)
      elseif HighestLvToFarm == 2075 then
         CurrentMobName = "Peanut Scout"
         SpawnCFrame = CFrame.new(-2074.8999023438, 38.104068756104, -10210.83203125)
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-2100.9709472656, 38.103244781494, -10188.044921875)
         CurrentQuestMob = "NutsIslandQuest"
         SpawnPoint = "Peanut"
      elseif HighestLvToFarm == 2100 then
         CurrentMobName = "Peanut President"
         SpawnCFrame = CFrame.new(-2074.8999023438, 38.104068756104, -10210.83203125)
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-2100.9709472656, 38.103244781494, -10188.044921875)
         CurrentQuestMob = "NutsIslandQuest"
         SpawnPoint = "Peanut"
      elseif HighestLvToFarm == 2125 then
         CurrentMobName = "Ice Cream Chef"
         SpawnCFrame = CFrame.new(-910.46862792969, 58.945728302002, -10889.098632812)
         CurrentQuestLevelMob = 1
         QuestCFrame = CFrame.new(-822.65881347656, 65.819519042969, -10964.3671875)
         CurrentQuestMob = "IceCreamIslandQuest"
         SpawnPoint = "IceCream"
      elseif HighestLvToFarm >= 2150 then
         CurrentMobName = "Ice Cream Commander"
         SpawnCFrame = CFrame.new(-910.46862792969, 58.945728302002, -10889.098632812)
         CurrentQuestLevelMob = 2
         QuestCFrame = CFrame.new(-822.65881347656, 65.819519042969, -10964.3671875)
         CurrentQuestMob = "IceCreamIslandQuest"
         SpawnPoint = "IceCream"
      end
   end
end
function CancelQuest()
   if LP.PlayerGui.Main.Quest.Visible == true then
      firesignal(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Abandon.MouseButton1Click)
   end
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/BloxFruit/main/Functions.lua"))()

--Do Functions
local mt = getrawmetatable(game)
local oldindex = mt.__index
setreadonly(mt, false)
mt.__index = newcclosure(function(t, k)
   if t:IsA("Mouse") and (k == "Hit") then
     if getgenv().SilentAimPlr then 
        if plr ~= nil and plr ~= "" then
           if plr and plr:FindFirstChild("HumanoidRootPart") and plr:FindFirstChild("Humanoid") and plr:FindFirstChild("Humanoid").Health > 0 and getgenv().SilentAimPlr then
              return (k == "Hit" and plr.HumanoidRootPart.CFrame or plr.HumanoidRootPart)
           end
        end
     end
   end
   return oldindex(t, k)
end)
setreadonly(mt, true)
local mt = getrawmetatable(game)
local oldindex = mt.__index
setreadonly(mt, false)
mt.__index = newcclosure(function(t, k)
    if t:IsA("Mouse") and (k == "Hit" ) then
      if getgenv().SilentAimMob then 
         if MobSilent ~= nil and MobSilent ~= "" then
            if MobSilent and MobSilent:FindFirstChild("HumanoidRootPart") and MobSilent:FindFirstChild("Humanoid") and MobSilent:FindFirstChild("Humanoid").Health > 0 then
               return (k == "Hit" and MobSilent.HumanoidRootPart.CFrame or MobSilent.HumanoidRootPart)
            end
         end
      end
    end
    return oldindex(t, k)
end)
setreadonly(mt, true)

CamMod:Stop()
LoadSetting()

--Extra Functions

local args = {[1] = "GetFruits"}
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))) do
   for i2,v2 in pairs(v) do
      if i2 == "Name" then
         table.insert(FruitTable, v2)
      end
   end
end
spawn(function()
   getgenv().Executed = true
   wait(9)
   getgenv().Executed = false
end)
spawn(function()
   while game:GetService("RunService").RenderStepped:wait() do
      pcall(function()
         for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            wait()
            if v:FindFirstChild("Humanoid") ~= nil  and v:FindFirstChild("HumanoidRootPart") ~= nil and v:IsA("Model") then
               v.Parent = game:GetService("Workspace").Enemies
            end
         end
         for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
            wait()
            if v:FindFirstChild("Humanoid") ~= nil  and v:FindFirstChild("HumanoidRootPart") ~= nil and v:IsA("Model") then
               v.Parent = game:GetService("Workspace").Enemies
            end
         end
      end)
   end
end)
spawn(function()
   while game:GetService("RunService").RenderStepped:wait() do
      if getgenv().AutoBuyEnhancement then
         if MyFragment >= 1500 then
            local args = {[1] = "ColorsDealer",[2] = "1"}
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) ~= nil and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) ~= "" then
               local args = {[1] = "ColorsDealer",[2] = "2"}
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
         end 
      end
   end
end)
spawn(function()   
   while game:GetService("RunService").RenderStepped:wait() do
      if getgenv().AutoBuyLegendarySword then
         if MyBeli>= 2000000 then
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Manager","2") == "Hey, I just saw him! He told me he would be in the area for 5 minutes. Good luck!" then
               local args = {[1] = "LegendarySwordDealer",[2] = "2"}
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
         end
      end
   end
end)
spawn(function()
   while getgenv().AutoSuperHuman and wait() do
      local BlackLeg = game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg")
      if not BlackLeg then
         local args = {
            [1] = "BuyBlackLeg"
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
      wait(1)
      if BlackLeg then
         if BlackLeg.Level.Value <= 299 then
            Weapon = BlackLeg
            repeat wait() until BlackLeg.Level.Value >= 300 or not getgenv().AutoSuperHuman
         end
      end

      local Electro = game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro")
      if not Electro then
         local args = {
            [1] = "BuyElectro"
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
      wait(1)
      if Electro then
         if Electro.Level.Value <= 299 then
            Weapon = Electro
            repeat wait() until Electro.Level.Value >= 300 or not getgenv().AutoSuperHuman
         end
      end

      local FishmanKarate = game.Players.LocalPlayer.Backpack:FindFirstChild("FishmanKarate") or game.Players.LocalPlayer.Character:FindFirstChild("FishmanKarate")
      if not FishmanKarate then
         local args = {
            [1] = "BuyFishmanKarate"
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
      wait(1)
      if FishmanKarate then
         if FishmanKarate.Level.Value <= 299 then
            Weapon = FishmanKarate
            repeat wait() until FishmanKarate.Level.Value >= 300 or not getgenv().AutoSuperHuman
         end
      end

      local DragonClaw = game.Players.LocalPlayer.Backpack:FindFirstChild("DragonClaw") or game.Players.LocalPlayer.Character:FindFirstChild("DragonClaw")
      if not DragonClaw then
         local args = {
            [1] = "BlackbeardReward",
            [2] = "DragonClaw",
            [3] = "1"
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         local args = {
            [1] = "BlackbeardReward",
            [2] = "DragonClaw",
            [3] = "2"
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
      end
      wait(1)
      if DragonClaw then
         if DragonClaw.Level.Value <= 299 then
            Weapon = v
            repeat wait() until DragonClaw.Level.Value >= 300 or not getgenv().AutoSuperHuman
         end
      end

      local args = {
         [1] = "BuySuperhuman"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      Superhuman = game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman")
      if Superhuman then
         Weapon = Superhuman
         return getgenv().AutoSuperHuman == false and lib:Notify("Auto SuperHuman","Done Auto SuperHuman")
      end
   end
end)
for i,v in pairs(LP.Backpack:GetChildren()) do  
   if v:IsA("Tool") then
       table.insert(PLrWeapons ,v.Name)
   end
end

for i,v in pairs(Char:GetChildren()) do  
  if v:IsA("Tool") then
     table.insert(PLrWeapons ,v.Name)
  end
end

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
   if string.find(v.Name, "Boss") then
      table.insert(BossesTable, v.Name)
   end
end

for i,v in pairs(game.Players:GetChildren()) do  
  table.insert(PlayerTable ,v.Name)
end

if SecondSea then
  MaxLevelSea = 1450
elseif ThirdSea then
  MaxLevelSea = 2150
elseif FirstSea then
   MaxLevelSea = 675
end
spawn(function()
   while getgenv().AutoBuso do
      wait()
      if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
         local args = {
            [1] = "Buso"
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
   end
end)
spawn(function()
   while wait() do
      if getgenv().ObservationFarm and game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScreenGui") ~= nil then
         VirtualUser:CaptureController()
         VirtualUser:SetKeyDown('0x65')
         wait(2)
         VirtualUser:SetKeyUp('0x65')
         if FirstSea then
            if game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
               if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                  DoTween(game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame,getgenv().TweenSpeedAutoFarm)
                  repeat wait()
                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                  until getgenv().Observation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
               else
                  DoTween(game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame,getgenv().TweenSpeedAutoFarm)
                  CheckFloat1()
                  repeat wait()
                     if not  game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                        CheckFloat1()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(30,30,0)
   
                        VirtualUser:CaptureController()
                        VirtualUser:SetKeyDown('0x65')
                        VirtualUser:SetKeyUp('0x65')
                     end
                  until getgenv().Observation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                  CheckFloat2()
               end
            else DoTween(CFrame.new(5533.29785, 88.1079102, 4852.3916,getgenv().TweenSpeedAutoFarm))
            end
         elseif SecondSea then
            if game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") then
               if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                  DoTween(game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]").HumanoidRootPart.CFrame,getgenv().TweenSpeedAutoFarm)
                  repeat wait()
                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                  until getgenv().Observation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
               else
                  DoTween(game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]").HumanoidRootPart.CFrame,getgenv().TweenSpeedAutoFarm)
                  CheckFloat1()
                  repeat wait()
                     if not  game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                        CheckFloat1()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]").HumanoidRootPart.CFrame * CFrame.new(30,30,0)
   
                        VirtualUser:CaptureController()
                        VirtualUser:SetKeyDown('0x65')
                        VirtualUser:SetKeyUp('0x65')
                     end
                  until getgenv().Observation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                  CheckFloat2()
               end
            else
               DoTween(CFrame.new(5496.42236, 28.8430767, -6766.56787),getgenv().TweenSpeedAutoFarm)
            end
         elseif ThirdSea then
            if game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]") then
               if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                  DoTween(game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.CFrame,getgenv().TweenSpeedAutoFarm)
                  repeat wait()
                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                  until getgenv().Observation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
               else
                  DoTween(game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.CFrame,getgenv().TweenSpeedAutoFarm)
                  CheckFloat1()
                  repeat wait()
                     if not  game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                        CheckFloat1()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.CFrame * CFrame.new(30,30,0)
   
                        VirtualUser:CaptureController()
                        VirtualUser:SetKeyDown('0x65')
                        VirtualUser:SetKeyUp('0x65')
                     end
                  until getgenv().Observation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                  CheckFloat2()
               end
            else DoTween(CFrame.new(5533.29785, 88.1079102, 4852.3916,getgenv().TweenSpeedAutoFarm))
            end
         end
      end
   end

end)

--Get Boss
for i,v in pairs(require(game:GetService("ReplicatedStorage").Quests)) do
   local PlrLevel = game.Players.localPlayer.Data.Level.Value

   if typeof(v) == "table" then
       for i2,v2 in pairs(v) do
           IsBoss = false
           for i3,v3 in pairs(v2) do
               
               if i3 == "Task" then    
                   for i4,v4 in pairs(v3) do
                       if v4 == 1 then
                          IsBoss = true
                       end
                   end
               end
               if IsBoss then
                   if i3 == "Name" then    
                       if not table.find(TableBoss, v3) then
                           table.insert(TableBoss, v3)
                       end
                   end
                   if i3 == "LevelReq" then  
                   end
               end
           end
       end
   end
end
--Ui
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Maximum Hub | Blox Fruits", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

local MainPage = venyx:addPage("Main Menu", 1073830992)
local AutoFarm = MainPage:addSection("Farm")

AutoFarm:addButton("Low Server",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/Island_Game/main/UniversalLowServerHop.lua"))()
end)
 


AutoFarm:addToggle("Auto Farm",getgenv().AutoFarm2,function(boolen)
   getgenv().AutoFarm2  = boolen
   --Check Quest
      CheckManually()

   --Equip
   spawn(function()
      while getgenv().AutoFarm2 and wait() do
         
         if Char:FindFirstChild(Weapon) then
            Click()
         else
            Equip(Weapon)
         end
      end
   end)
   if getgenv().AutoFarm2 and getgenv().AutoFarmQuest then 
      CancelQuest()
   end

   if getgenv().AutoFarm2 then
      CheckFloat1()
   else 
      DisabledNoClip = false
      CheckFloat2()
   end

   while getgenv().AutoFarm2 and wait() do
     --pcall(function()
         local SmallestDistance = math.huge
         if Alive() then
            TPSpecificPlace()
            Simulation()
            FastAttack()
            CheckFloat1()
            --Set Spawn
            if getgenv().AutoSetSpawn and getgenv().AutoFarm2 and Alive() then
               if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and getgenv().AutoFarm and game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value ~= SpawnPoint and CanTween then
                  DoTween(SpawnCFrame,getgenv().TweenSpeedTeleportPlace)
                  local args = {
                     [1] = "SetSpawnPoint"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  wait(0.1)
               end
            end
            DoTween(QuestCFrame,getgenv().TweenSpeedQuest)
            wait(0.1)
            if getgenv().AutoFarmQuest then
               if Alive() and getgenv().AutoFarm2 and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,CurrentMobName)) then
                  if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position- Vector3.new(QuestCFrame)).magnitude < 50 then
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", CurrentQuestMob, CurrentQuestLevelMob)
                     wait(0.5)
                  elseif getgenv().AutoFarmQuest and getgenv().AutoFarm2 then 
                     DoTween(QuestCFrame,getgenv().TweenSpeedQuest)
                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", CurrentQuestMob, CurrentQuestLevelMob)
                     wait(0.5)
                  end
               end
            end
            if FarmingPlace2 == nil then
               repeat wait() 
                  if getgenv().AutoFarm2 and Alive()  then
                     if game.Workspace.Enemies:FindFirstChild(NameMob) then
                     else
                        repeat wait() until
                        game.Workspace.Enemies:FindFirstChild(NameMob) or not getgenv().AutoFarm2
                     end
                     if getgenv().AutoFarm2 then
                        if getgenv().AutoFarmQuest then
                           if Alive() and getgenv().AutoFarm2 and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,CurrentMobName)) then
                              if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position- Vector3.new(QuestCFrame)).magnitude < 50 then
                                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", CurrentQuestMob, CurrentQuestLevelMob)
                                 wait(0.5)
                              elseif getgenv().AutoFarmQuest and getgenv().AutoFarm2 then 
                                 DoTween(QuestCFrame,getgenv().TweenSpeedQuest)
                                 CheckFloat1()
                                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", CurrentQuestMob, CurrentQuestLevelMob)
                                 wait(0.5)
                              end
                           end
                        end
                        if getgenv().AutoFarm2 and Alive() then
                           TPSpecificPlace()
                           CheckFloat1()
                           Simulation()
                           FastAttack()
                           HitBoxPlr()
                           CheckManually()
                           DisabledNoClip = true
                           DoTween(FarmingPlace1*CFrame.new(0,20,0))
                           CheckFloat1()
                           DisabledNoClip = false
                           for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if not Tweening and not string.find(v.Name,"Boss") and getgenv().AutoFarm2 and v.Name == NameMob then
                                 if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v.Parent and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position-FarmingPlace1.Position).magnitude <= 450 then
                                    v.HumanoidRootPart.CFrame = FarmingPlace1
                                    v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                                 end
                              end
                           end
                        end
                     end
                  end
               until not Alive() or not getgenv().AutoFarm2 
               CheckManually()
               DisabledNoClip = false
            else
               repeat wait() 
                  if getgenv().AutoFarm2 then
                     if game.Workspace.Enemies:FindFirstChild(NameMob) then
                     else
                        repeat wait() until
                        game.Workspace.Enemies:FindFirstChild(NameMob) or not getgenv().AutoFarm2
                     end
                     if getgenv().AutoFarm2 then
                        if getgenv().AutoFarmQuest then
                           if Alive() and getgenv().AutoFarm2 and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,CurrentMobName)) then
                              if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position- Vector3.new(QuestCFrame)).magnitude < 50 then
                                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", CurrentQuestMob, CurrentQuestLevelMob)
                                 wait(0.5)
                              elseif getgenv().AutoFarmQuest and getgenv().AutoFarm2 then 
                                 DoTween(QuestCFrame,getgenv().TweenSpeedQuest)
                                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", CurrentQuestMob, CurrentQuestLevelMob)
                                 wait(0.5)
                              end
                           end
                        end
                        if getgenv().AutoFarm2 and Alive()  then
                           TPSpecificPlace()
                           CheckFloat1()
                           Simulation()
                           FastAttack()
                           HitBoxPlr()
                           DisabledNoClip = true
                           DoTween(FarmingPlace1*CFrame.new(0,20,0))
                           DisabledNoClip = false

                           repeat wait()
                              if getgenv().AutoFarm2 then
                                 CheckFloat1()
                                 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if not Tweening and not string.find(v.Name,"Boss") and getgenv().AutoFarm2 and v.Name == NameMob then
                                       if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v.Parent and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position-FarmingPlace1.Position).magnitude <= 450 then
                                          v.HumanoidRootPart.CFrame = FarmingPlace1
                                          v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                                          MobFarming = v
                                       end
                                    end
                                 end
                              end
                           until not MobFarming or not MobFarming.Humanoid or MobFarming.Humanoid.Health <= 0 or not getgenv().AutoFarm2

                           DisabledNoClip = true
                           DoTween(FarmingPlace2*CFrame.new(0,20,0))
                           DisabledNoClip = false
                           CheckFloat1()
                           for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if not Tweening and not string.find(v.Name,"Boss") and getgenv().AutoFarm2 and v.Name == NameMob then
                                 if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v.Parent and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position-FarmingPlace2.Position).magnitude <= 350 then
                                    v.HumanoidRootPart.CFrame = FarmingPlace2
                                    MobFarming = v
                                 end
                              end
                           end
                           repeat wait()
                              if getgenv().AutoFarm2 then
                                 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if not Tweening and not string.find(v.Name,"Boss") and getgenv().AutoFarm2 and v.Name == NameMob then
                                       if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v.Parent and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position-FarmingPlace2.Position).magnitude <= 350 then
                                          v.HumanoidRootPart.CFrame = FarmingPlace2
                                          v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                                          MobFarming = v
                                       end
                                    end
                                 end
                              end
                           until not MobFarming or not MobFarming.Humanoid or MobFarming.Humanoid.Health <= 0 or not getgenv().AutoFarm2
                        end
                     end
                  end
               until not Alive() or not getgenv().AutoFarm2
            end
               
                  

         else wait(5)
         end
      --end)
   end
   CheckFloat2()
   wait(1)
   CheckFloat2()
end)

local AutoWeapon = MainPage:addSection("Farm Setting")

local WeaponDropdown = AutoWeapon:addDropdown("Select Weapon",PLrWeapons,function(Value)
   Weapon = Value
end)

AutoWeapon:addButton("Refresh Weapon",function()
   AutoWeapon:updateDropdown(WeaponDropdown,"Refresh Weapon",refreshWeapon1(),function()
   end)
end)















local CodeSection = MainPage:addSection("Code")

CodeSection:addButton("Redeem All Codes",function() 
    EnterCode("FUDD10")
    EnterCode("fudd10_v2")
    EnterCode("BIGNEWS")
    EnterCode("THEGREATACE")
    EnterCode("SUB2NOOBMASTER123")
    EnterCode("Sub2Daigrock")
    EnterCode("Axiore")
    EnterCode("TantaiGaming")
    EnterCode("STRAWHATMAINE")
    EnterCode("Sub2OfficialNoobie")
    EnterCode("UPD16")
    EnterCode("SUB2GAMERROBOT_EXP1")
    EnterCode("3BVISITS")
end)

CodeSection:addDropdown("Redeem Reset Stats Code",{"SUB2GAMERROBOT_RESET1";"Sub2UncleKizaru";},function(Value) 
    EnterCode(Value)
end)

local E1 = venyx:addPage("Stats", 5917153832)
local E11 = E1:addSection("Menu")
E11:addToggle("Melee", true, function(value)
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
E11:addToggle("Defense", true, function(value)
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

local page = venyx:addPage("Teleport", 7626871475)
local TeleportSection2 = page:addSection("Island")
if SecondSea then
   

	TeleportSection2:addButton("First Spot", function()
		DoTween(CFrame.new(-11.845784187317, 29.276727676392, 2768.9770507812),getgenv().TweenSpeedTeleportPlace)
	end)
	TeleportSection2:addButton("Cafe", function()
		DoTween(CFrame.new(-384.03524780273, 73.020072937012, 353.2282409668),getgenv().TweenSpeedTeleportPlace)
	end)
	TeleportSection2:addButton("Swan Mansion", function()
		DoTween(CFrame.new(-390.096313, 331.886475, 673.464966),getgenv().TweenSpeedTeleportPlace)
	end)
	TeleportSection2:addButton("Swan Room", function()
		DoTween(CFrame.new(2302.19019, 15.1778421, 663.811035),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Factory", function()
		DoTween(CFrame.new(430.42569, 210.019623, -432.504791),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Colosseum", function()
		DoTween(CFrame.new(-1836.58191, 44.5890656, 1360.30652),getgenv().TweenSpeedTeleportPlace)
	end)
   
	TeleportSection2:addButton("Dark Arena", function()
		DoTween(game.Workspace["_WorldOrigin"].Locations["Dark Arena"].CFrame,getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Green bit", function()
		DoTween(CFrame.new(-2304.93359375, 72.966117858887, -2782.6965332031),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Graveyard Island", function()
		DoTween(CFrame.new(-5377.3295898438, 8.9691047668457, -708.45489501953),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Snow Mountain", function()
		DoTween(CFrame.new(554.47235107422, 401.42199707031, -5364.732421875),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Hot And Cold Island", function()
		DoTween(CFrame.new(-5944.7875976562, 15.951756477356, -5114.8725585938),getgenv().TweenSpeedTeleportPlace)
	end)


   TeleportSection2:addButton("Cursed Ship Gate", function()
		DoTween(CFrame.new(-6509.4169921875, 83.187019348145, -137.396774291998),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Cursed Ship", function()
		DoTween(CFrame.new(902.059143, 124.752518, 33071.8125),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Cursed Ship(Insta TP)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(923.21252441406, 125.05710601807, 32852.83203125)

	end)
	TeleportSection2:addButton("Ice Castle", function()
		DoTween(CFrame.new(5662.44140625, 28.191165924072, -5982.9755859375),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Forgotten Island", function()
		DoTween(CFrame.new(-3043.31543, 238.881271, -10191.5791),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Usoap Island", function()
		DoTween(CFrame.new(4778.2431640625, 8.2086620330811, 2871.4936523438),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Minisky Island", function()
		DoTween(CFrame.new(-260.358917, 49325.7031, -35259.3008),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Indra Island", function()
		DoTween(CFrame.new(-27007.9363, 9.033, 466.6544),getgenv().TweenSpeedTeleportPlace)
	end)

elseif FirstSea then

	TeleportSection2:addButton("Pirate Start Island", function()
		DoTween(CFrame.new(781.37255859375, 5.7767753601074, 1437.2399902344),getgenv().TweenSpeedTeleportPlace)
	end)
	TeleportSection2:addButton("Marine Start Island", function()
		DoTween(CFrame.new(-2606.2143554688, 6.7695031166077, 2043.04553222667),getgenv().TweenSpeedTeleportPlace)
	end)
	TeleportSection2:addButton("Middle Town", function()
		DoTween(CFrame.new(-655.824158, 7.88708115, 1436.67908),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Jungle", function()
		DoTween(CFrame.new(-1334.1259765625, 11.852984428406, 502.03717041016),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Shank's Room", function()
		DoTween(CFrame.new(-1455.4440917969, 29.851997375488, -37.440139770508),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Pirate Village", function()
		DoTween(CFrame.new(-1187.3435058594, 4.7515587806702, 3809.2456054688),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Desert", function()
		DoTween(CFrame.new(1094.14587, 6.47350502, 4192.88721),getgenv().TweenSpeedTeleportPlace)
	end)
	TeleportSection2:addButton("Frozen Village", function()
		DoTween(CFrame.new(1112.4229736328, 7.3036189079285, -1159.3383789062),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Marine Fortress", function()
		DoTween(CFrame.new(-4817.0161132812, 20.651899337769, 4368.0639648438),getgenv().TweenSpeedTeleportPlace)
	end)

   TeleportSection2:addButton("Mob Leader Place", function()
		DoTween(CFrame.new(-2839.7548828125, 7.3262448310852, 5319.9428710938),getgenv().TweenSpeedTeleportPlace)
	end)
   
	TeleportSection2:addButton("Prison", function()
		DoTween(CFrame.new(4874.8125, 5.6519904136658, 735.57012939453),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Colosseum", function()
		DoTween(CFrame.new(-1423.5014648438, 7.2882599830627, -2798.2961425781),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Skylands", function()
		DoTween(CFrame.new(-4970.21875, 717.707275, -2622.35449),getgenv().TweenSpeedTeleportPlace)
	end)
	TeleportSection2:addButton("SkyArea1", function()
		DoTween(CFrame.new(-4731.9462890625, 845.27691650391, -1933.5628662109),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("SkyArea2", function()
		DoTween(CFrame.new(-7884.7309570312, 5545.509765625, -383.34613037109),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Sky Secret Temple", function()
		DoTween(CFrame.new(-8018.662109375, 5609.9936523438, -1979.3544921875),getgenv().TweenSpeedTeleportPlace)
	end)
   

	TeleportSection2:addButton("Magma Village", function()
		DoTween(CFrame.new(-5231.75879, 8.61593437, 8467.87695),getgenv().TweenSpeedTeleportPlace)
	end)
   
   TeleportSection2:addButton("UnderWater City Gate", function()
		DoTween(CFrame.new(3853.0385742188, 5.3731479644775, -1919.4447021484),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("UnderWater City", function()
		DoTween(CFrame.new(61092.36328125, 18.471633911133, 1711.1674804688),getgenv().TweenSpeedTeleportPlace)
	end)

	TeleportSection2:addButton("Fountain City", function()
		DoTween(CFrame.new(5053.0297851562, 1.5012743473053, 4054.8439941406),getgenv().TweenSpeedTeleportPlace)
	end)

elseif ThirdSea then

   TeleportSection2:addButton("Port Town", function()
      DoTween(CFrame.new(-447.46743774414, 6.7299399375916, 5306.3686523438),getgenv().TweenSpeedTeleportPlace)
	end)

   TeleportSection2:addButton("Hydra Island", function()
      DoTween(CFrame.new(5278.9213867188, 602.04351806641, 360.77795410156),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Secret Temple", function()
      DoTween(CFrame.new(5231.6831054688, 7.3780846595764, 1102.6005859375),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Great Tree", function()
      DoTween(CFrame.new(2253.0600585938, 24.144220352173, -6405.6694335938),getgenv().TweenSpeedTeleportPlace)
	end)


   TeleportSection2:addButton("Castle on the sea", function()
		DoTween(CFrame.new(-5026.3584, 323.515503, -2996.28442),getgenv().TweenSpeedTeleportPlace)
	end)

   TeleportSection2:addButton("Pineapple Town", function()
      DoTween(CFrame.new(-11363.5166, 362.381439, -10327.9727),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Mansion", function()
      DoTween(CFrame.new(-12555.1846, 507.168274, -7480.31543),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Mansion(Insta TP)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Turtle.TradeTable.P1.CFrame
   end)
   TeleportSection2:addButton("Floating Turtle", function()
		DoTween(CFrame.new(-12001.6152, 1707.39319, -8789.03711),getgenv().TweenSpeedTeleportPlace)
	end)
   
   TeleportSection2:addButton("Beautiful Pirate Gate", function()
		DoTween(CFrame.new(-11990.901367188, 331.80770874023, -8845.5888671875),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Beautiful Pirate Domain", function()
		DoTween(CFrame.new(5310.80957, 160.446838, 129.390533),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Friendly Arena", function()
		DoTween(CFrame.new(5220.28955, 72.8193436, -1500.86304),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Haunted Castle", function()
		DoTween(CFrame.new(-9530.61035, 200.860657, 5763.13477),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Soul Reaper Raid Room", function()
		DoTween(CFrame.new(-9522.0957, 315.89975, 6751.88818),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Peanut Island", function()
		DoTween(CFrame.new(-2087.0561523438, 11.722011566162, -10002.080078125),getgenv().TweenSpeedTeleportPlace)
	end)
   TeleportSection2:addButton("Ice Cream Island", function()
		DoTween(CFrame.new(-851.74633789062, 65.819496154785, -10932.150390625),getgenv().TweenSpeedTeleportPlace)
	end)
   

end
local TeleportSection3 = page:addSection("Npc")
if FirstSea then

   TeleportSection3:addButton("Usoap", function()
      DoTween(CFrame.new(-8036.05859375, 5756.033203125, -1934.3215332031),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Remove Fruit", function()
      DoTween(CFrame.new(5665.552734375, 64.651931762695, 868.56658935547),getgenv().TweenSpeedTeleportPlace)
   end)

   TeleportSection3:addButton("Second Sea Teleporter", function()
      DoTween(CFrame.new(-1165.7058105469, 7.6522002220154, 1728.2351074219),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Magic ELf(Candy For Boosts)", function()
      DoTween(CFrame.new(-657.54931640625, 7.8522391319275, 1573.9333496094),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Santa Claws(Candy For Items)", function()
      DoTween(CFrame.new(-704.76385498047, 7.8522439002991, 1553.6007080078),getgenv().TweenSpeedTeleportPlace)
   end)
elseif SecondSea then
   TeleportSection3:addButton("First Sea Teleporter", function()
      DoTween(CFrame.new(103.8427734375, 19.276727676392, 2834.9719238281),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Third Sea Teleporter", function()
      DoTween(CFrame.new(-1945.6728515625, 9.2648057937622, -2590.9370117188),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Fruit Inventory", function()
      DoTween(CFrame.new(-302.04800415039, 73.020126342773, 308.03646850586),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addDropdown("Inventory NPC",{"Inventory(Cafe)","Inventory(FirstSpot)"},function(Value)
      if Value == "Inventory(Cafe)" then
      DoTween(CFrame.new(-300.54641723633, 73.020111083984, 296.77435302734),getgenv().TweenSpeedTeleportPlace)
      elseif Value == "Inventory(FirstSpot)" then
         DoTween(CFrame.new(119.93355560303, 19.276727676392, 2854.0834960938),getgenv().TweenSpeedTeleportPlace)
      end
   end)
   TeleportSection3:addButton("Reset Stats NPC", function()
      DoTween(CFrame.new(-1888.8653564453, 88.357986450195, -1911.0194091797),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Race Reroll NPC", function()
      DoTween(CFrame.new(-312.74591064453, 73.020111083984, 358.31781005859),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Magic ELf(Candy For Boosts)", function()
      DoTween(CFrame.new(-458.58517456055, 73.060104370117, 260.00039672852),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Greedy Elf(Candy For Fragments)", function()
      DoTween(CFrame.new(-336.14483642578, 72.959754943848, 389.41271972656),getgenv().TweenSpeedTeleportPlace)
   end)
   
   TeleportSection3:addButton("Manager", function()
      DoTween(CFrame.new(-388.47613525391, 73.030082702637, 332.55465698242),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Marine Recruiter", function()
      DoTween(CFrame.new(-1349.1331787109, 72.959510803223, -1046.486328125),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Pirate Recruiter", function()
      DoTween(CFrame.new(-427.56546020508, 72.959693908691, 1447.662109375),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Mysterious Man", function()
      DoTween(CFrame.new(2570.8295898438, 1622.2680664062, -3745.8859863281),getgenv().TweenSpeedTeleportPlace)
   end)

elseif ThirdSea then
   TeleportSection3:addButton("Fruit Inventory", function()
      DoTween(CFrame.new(-12528.346679688, 336.91436767578, -7447.4794921875),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addDropdown("Inventory NPC",{"Inventory(Mansion)","Inventory(PortTown)"},function(Value)
      if Value == "Inventory(Mansion)" then
         DoTween(CFrame.new(-12571.06640625, 336.91436767578, -7444.5751953125),getgenv().TweenSpeedTeleportPlace)
      elseif Value == "Inventory(PortTown)" then
         DoTween(CFrame.new(-218.041015625, 6.7299399375916, 5327.6635742188),getgenv().TweenSpeedTeleportPlace)
      end
   end)
   TeleportSection3:addButton("Reset Stats NPC", function()
      DoTween(CFrame.new(-5143.0615234375, 315.41546630859, -3162.0434570312),getgenv().TweenSpeedTeleportPlace)
   end)
   
   TeleportSection3:addButton("Race Reroll NPC", function()
      DoTween(CFrame.new(-12494.5234375, 336.91436767578, -7563.8916015625),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Santa Claws(Candy For Items)", function()
      DoTween(CFrame.new(-12515.71875, 332.37814331055, -7598.1450195312),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Greedy Elf(Candy For Fragments)", function()
      DoTween(CFrame.new(-12515.71875, 332.37814331055, -7598.1450195312),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Bone Trading NPC", function()
      DoTween(CFrame.new(-8724.8076171875, 142.32157897949, 6247.6552734375),getgenv().TweenSpeedTeleportPlace)
   end)
   
   TeleportSection3:addButton("Hungry Man", function()
      DoTween(CFrame.new(-10918.0078125, 624.17694091797, -10267.389648438),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Elite Hunter", function()
      DoTween(CFrame.new(-5418.3354492188, 313.71548461914, -2825.7775878906),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Player Hunter", function()
      DoTween(CFrame.new(-5558.6201171875, 313.73687744141, -2839.9396972656),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Previous Hero", function()
      DoTween(CFrame.new(-10369.604492188, 331.65417480469, -10129.833984375),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Marine Recruiter", function()
      DoTween(CFrame.new(-12802.607421875, 332.37814331055, -7696.994140625),getgenv().TweenSpeedTeleportPlace)
   end)
   TeleportSection3:addButton("Pirate Recruiter", function()
      DoTween(CFrame.new(-12259.263671875, 332.37814331055, -7396.05859375),getgenv().TweenSpeedTeleportPlace)
   end) 
   
end


AutoWeapon:addToggle("Fast Attack", nil, function(value)
    local Fast = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
    local CameraShaker = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
    _G.Name = value
    game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.Name then
    Fast.activeController.hitboxMagnitude = 90
    Fast.activeController.timeToNextAttack = 0
    CameraShaker.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
    end
    end)
    end)
end)


AutoWeapon:addToggle("Auto Buso", nil, function(value)

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

AutoWeapon:addToggle("Auto Observation", nil, function(value)

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


AutoFarm:addToggle("Auto New World",getgenv().AutoSecondSea,function(boolen)
    getgenv().AutoSecondSea = boolen
    while getgenv().AutoSecondSea do
       local PlrLevel = game.Players.localPlayer.Data.Level.Value
       wait()
       if PlrLevel >= 700 then
          getgenv().AutoFarm = false
          getgenv().AutoFarmGunMastery = false
          getgenv().AutoFarmFruitMastery = false

          wait(0.5)

          SecondSeaProgress()
          if not UsedKey then
             DoTween(CFrame.new(4850.42383, 5.65139151, 718.804382, 0.195783511, 9.26219599e-08, -0.980647147, -7.3901596e-08, 1, 7.96955817e-08, 0.980647147, 5.68683127e-08, 0.195783511),getgenv().TweenSpeedTeleportPlace)
             local args = {
                [1] = "DressrosaQuestProgress",
                [2] = "Detective"
             }
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
             
             wait(0.5)
          
             Equip("Key")
             DoTween(CFrame.new(1347.7124, 37.3751602, -1325.6488),getgenv().TweenSpeedTeleportPlace)
          end
          if not KilledIceBoss and UsedKey then
             
             wait(0.5)

             if game.Workspace.Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                local IceAdmiral = game.Workspace.Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]")
                DoTween(IceAdmiral.HumanoidRootPart.CFrame*CFrame.new(0, 20, 10),getgenv().TweenSpeedAutoFarm)

                repeat wait(0.1)
                   if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) == nil then
                      Equip(Weapon)
                   end

                   spawn(function()
                      Click()
                   end)
                   pcall(function()
                      HitBoxPlr()
                      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = IceAdmiral.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
                      IceAdmiral.HumanoidRootPart.Transparency = 0.5
                      IceAdmiral.HumanoidRootPart.BrickColor = BrickColor.new("White")
                      IceAdmiral.HumanoidRootPart.CanCollide = false
                   end)
                until  not IceAdmiral.Parent or IceAdmiral.Humanoid.Health <= 0 or getgenv().AutoSecondSea == false
             end
          end

          if KilledIceBoss and UsedKey and TalkedDetective then

             DoTween(CFrame.new(-1165.95776, 7.65220022, 1728.58057, 0.473572224, 2.10676721e-09, -0.880755007, 6.13469986e-09, 1, 5.6905618e-09, 0.880755007, -8.09805911e-09, 0.473572224),getgenv().TweenSpeedTeleportPlace)
             wait(0.5)
             if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1165.95776, 7.65220022, 1728.58057)).magnitude <30 then
                local args = {
                   [1] = "TravelDressrosa"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
             end
          end
       end
    end
end)



























local theme = venyx:addPage("Setting", 6942070576)
local colors = theme:addSection("Setting GUI")

colors:addButton("Delete Ui",function()
   local ui = game:GetService("CoreGui"):FindFirstChild("Maximum Hub | Blox Fruits")
   if ui then
      ui:Destroy()
   end
end)
