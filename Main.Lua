-- LocalScript

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- LINK TO COPY
local codedServerLink = "https://www.robiox.com.py/games/76558904092080/The-Forge-BETA?privateServerLinkCode=136714832263838345374554483173"

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "CodedServerGUI"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Loading screen
local loadingFrame = Instance.new("Frame")
loadingFrame.Size = UDim2.new(1, 0, 1, 0)
loadingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
loadingFrame.Parent = gui

local loadingText = Instance.new("TextLabel")
loadingText.Size = UDim2.new(1, 0, 0.2, 0)
loadingText.Position = UDim2.new(0, 0, 0.4, 0)
loadingText.BackgroundTransparency = 1
loadingText.Text = "Loading Script..."
loadingText.TextColor3 = Color3.new(1, 1, 1)
loadingText.TextScaled = true
loadingText.Font = Enum.Font.GothamBold
loadingText.Parent = loadingFrame

-- 10 second load
task.wait(10)
loadingFrame:Destroy()

-- Main frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.6, 0, 0.6, 0)
frame.Position = UDim2.new(0.2, 0, 0.2, 0)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Parent = gui

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -20, 0.15, 0)
title.Position = UDim2.new(0, 10, 0, 10)
title.BackgroundTransparency = 1
title.Text = "USE CODED SERVER FOR THIS SCRIPT"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.Parent = frame

-- Instructions
local info = Instance.new("TextLabel")
info.Size = UDim2.new(1, -20, 0.45, 0)
info.Position = UDim2.new(0, 10, 0.18, 0)
info.BackgroundTransparency = 1
info.TextWrapped = true
info.TextYAlignment = Enum.TextYAlignment.Top
info.Text =
	"To get the coded server read below\n\n" ..
	"1. Click Get Coded Server\n" ..
	"2. Put coded server into chrome\n" ..
	"3. Click play\n" ..
	"4. Enjoy your script🔥"
info.TextColor3 = Color3.fromRGB(200, 200, 200)
info.TextScaled = true
info.Font = Enum.Font.Gotham
info.Parent = frame

-- Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0.6, 0, 0.15, 0)
button.Position = UDim2.new(0.2, 0, 0.7, 0)
button.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
button.Text = "Get Coded Server"
button.TextColor3 = Color3.new(1, 1, 1)
button.TextScaled = true
button.Font = Enum.Font.GothamBold
button.BorderSizePixel = 0
button.Parent = frame

-- Clipboard copy (key-system style)
button.MouseButton1Click:Connect(function()
	button.Text = "Generating..."
	task.wait(1.5)

	local success = pcall(function()
		setclipboard(codedServerLink)
	end)

	if success then
		button.Text = "Link Copied!"
		button.BackgroundColor3 = Color3.fromRGB(0, 140, 0)
	else
		button.Text = "Clipboard Not Supported"
		button.BackgroundColor3 = Color3.fromRGB(140, 0, 0)
	end
end)
