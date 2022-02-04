local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game:GetService("CoreGui")

Frame.Name = "Frame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(-0.254758418, 0, -0.37299037, 0)
Frame.Size = UDim2.new(0, 0, 0, 0)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(57, 57, 57)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.419472903, 0, 0.443729907, 0)
TextLabel.Size = UDim2.new(0, 219, 0, 70)
TextLabel.Font = Enum.Font.SpecialElite
TextLabel.Text = "Night Hub"
TextLabel.TextColor3 = Color3.fromRGB(100, 0, 255)
TextLabel.TextSize = 100.000
TextLabel.TextStrokeTransparency = 0.000
wait(4)
game.CoreGui:FindFirstChild("ScreenGui"):Destroy()
