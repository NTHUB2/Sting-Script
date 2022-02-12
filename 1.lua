-- Gui to Lua
-- Version: 3.2

-- Instances:

local PutinStarterGui = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local BackGround = Instance.new("Frame")
local Loading = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

--Properties:

PutinStarterGui.Name = "Put in StarterGui"
PutinStarterGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
PutinStarterGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Background.Name = "Background"
Background.Parent = PutinStarterGui
Background.BackgroundColor3 = Color3.fromRGB(0, 6, 93)
Background.BorderColor3 = Color3.fromRGB(0, 6, 93)
Background.Position = UDim2.new(0.405529946, 0, 0.457668722, 0)
Background.Size = UDim2.new(0.198924735, 0, 0.084662579, 0)

BackGround.Name = "BackGround"
BackGround.Parent = Background
BackGround.AnchorPoint = Vector2.new(0.5, 0.800000012)
BackGround.BackgroundColor3 = Color3.fromRGB(0, 6, 93)
BackGround.BorderColor3 = Color3.fromRGB(0, 6, 93)
BackGround.BorderSizePixel = 4
BackGround.Position = UDim2.new(0.499716729, 0, 0.641527176, 0)
BackGround.Size = UDim2.new(0.832970977, 0, 0.491025597, 0)

Loading.Name = "Loading"
Loading.Parent = BackGround
Loading.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Loading.BorderColor3 = Color3.fromRGB(0, 0, 255)
Loading.BorderSizePixel = 0
Loading.Size = UDim2.new(0.00205393694, 0, 1, 0)

TextLabel.Parent = PutinStarterGui
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 6, 93)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 6, 93)
TextLabel.Position = UDim2.new(0.452427030, 0, 0.487116516, 0)
TextLabel.Size = UDim2.new(0, 215, 0, 20)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Night Hub"
TextLabel.TextColor3 = Color3.fromRGB(0, 6, 93)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 6, 93)
TextLabel.TextStrokeTransparency = 0.700
TextLabel.TextWrapped = true

-- Scripts:

local function VSYMY_fake_script() -- Loading.LocalScript 
	local script = Instance.new('LocalScript', Loading)

	--([Scripted by CiAxe
		--([Discord: CiAxe#4286
			--([Twitter: @axe_ci
				--([Roblox Profile: CiAxe
			--([Thank you!])
	
	
	local screen = math.random(1,3)
	
	if screen == 1 then
		print '1'
		script.Parent.Parent.Parent.Parent.Enabled = true
		wait(2)
	    
		script.Parent:TweenSize(UDim2.new(.3, 1, 1), "Out", "Linear", 2, true)
		wait(2)
		script.Parent:TweenSize(UDim2.new(.5, 1, 1), "Out", "Linear", 1, true)
		wait(3)
		script.Parent:TweenSize(UDim2.new(1, 1, 1), "Out", "Linear", 1, true)
	
	
		wait(1)
		script.Parent.Parent.Parent.Parent.Enabled = false
		wait(1)
		script.Parent:TweenSize(UDim2.new(0, 0, 0), "Out", "Linear", 1, true)
	
	end
	
	if screen == 2 then
		print '2'
		script.Parent.Parent.Parent.Parent.Enabled = true
		wait(2)
	    
		script.Parent:TweenSize(UDim2.new(.1, 1, 1), "Out", "Linear", 3, true)
		wait(1)
		script.Parent:TweenSize(UDim2.new(.4, 1, 1), "Out", "Linear", 2, true)
		wait(4)
		script.Parent:TweenSize(UDim2.new(.7, 1, 1), "Out", "Linear", 3, true)
		wait(1)
		script.Parent:TweenSize(UDim2.new(1, 1, 1), "Out", "Linear", 1, true)
	
	
		wait(1)
		script.Parent.Parent.Parent.Parent.Enabled = false
		wait(1)
		script.Parent:TweenSize(UDim2.new(0, 0, 0), "Out", "Linear", 1, true)
	end
	if screen == 3 then
		print '3'
		script.Parent.Parent.Parent.Parent.Enabled = true
		wait(2)
	    
		script.Parent:TweenSize(UDim2.new(.6, 1, 1), "Out", "Linear", 2, true)
		wait(2)
		script.Parent:TweenSize(UDim2.new(.8, 1, 1), "Out", "Linear", 3, true)
		wait(3)
		script.Parent:TweenSize(UDim2.new(1, 1, 1), "Out", "Linear", 1, true)
	
	
		wait(1)
		script.Parent.Parent.Parent.Parent.Enabled = false
		wait(1)
		script.Parent:TweenSize(UDim2.new(0, 0, 0), "Out", "Linear", 1, true)
	end
	
	script.Parent.Parent.Parent.Visible = false
end
coroutine.wrap(VSYMY_fake_script)()
