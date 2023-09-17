local renderstep = game:GetService'RunService'.RenderStepped

local sec = nil
local FPS = {}
local sec = tick()

local mintuigit = Instance.new("ScreenGui")
local Performance = Instance.new("Frame")
local PerfParent = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Parent = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Label = Instance.new("TextLabel")
local PerfLabel = Instance.new("TextLabel")
local fps = Instance.new("TextLabel")
local fpscountlabel = Instance.new("TextLabel")
local ping = Instance.new("TextLabel")
local pingcountlabel = Instance.new("TextLabel")
local cpu = Instance.new("TextLabel")
local cpucountlabel = Instance.new("TextLabel")
local gpu = Instance.new("TextLabel")
local gpucountlabel = Instance.new("TextLabel")
local DropShadowHolder = Instance.new("Frame")
local DropShadow = Instance.new("ImageLabel")
local UIListLayout_2 = Instance.new("UIListLayout")

--Properties:

mintuigit.Name = "mintui.git"
mintuigit.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
mintuigit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
mintuigit.DisplayOrder = 1

Performance.Name = "Performance"
Performance.Parent = mintuigit
Performance.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Performance.BackgroundTransparency = 1.000
Performance.BorderColor3 = Color3.fromRGB(0, 0, 0)
Performance.BorderSizePixel = 0
Performance.Position = UDim2.new(0, 5, 0, 0)
Performance.Size = UDim2.new(0, 160, 1, 0)

PerfParent.Name = "PerfParent"
PerfParent.Parent = Performance
PerfParent.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
PerfParent.BorderColor3 = Color3.fromRGB(0, 0, 0)
PerfParent.BorderSizePixel = 0
PerfParent.Position = UDim2.new(0, 0, 0.377373427, 0)
PerfParent.Size = UDim2.new(0, 160, 0, 152)

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = PerfParent

Parent.Name = "Parent"
Parent.Parent = PerfParent
Parent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Parent.BackgroundTransparency = 1.000
Parent.BorderColor3 = Color3.fromRGB(0, 0, 0)
Parent.BorderSizePixel = 0
Parent.Position = UDim2.new(0, 0, -4.01547084e-07, 0)
Parent.Size = UDim2.new(0, 160, 0, 152)

UIListLayout.Parent = Parent
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Label.Name = "Label"
Label.Parent = Parent
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
Label.BorderSizePixel = 0
Label.LayoutOrder = -1
Label.Position = UDim2.new(0.0625, 0, 0, 0)
Label.Size = UDim2.new(0, 150, 0, 30)
Label.ZIndex = 0
Label.Font = Enum.Font.GothamBold
Label.Text = "mint.ui"
Label.TextColor3 = Color3.fromRGB(102, 187, 136)
Label.TextSize = 16.000
Label.TextXAlignment = Enum.TextXAlignment.Left

PerfLabel.Name = "PerfLabel"
PerfLabel.Parent = Label
PerfLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PerfLabel.BackgroundTransparency = 1.000
PerfLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
PerfLabel.BorderSizePixel = 0
PerfLabel.Size = UDim2.new(0, 150, 0, 30)
PerfLabel.ZIndex = 0
PerfLabel.Font = Enum.Font.GothamBold
PerfLabel.Text = "perf"
PerfLabel.TextColor3 = Color3.fromRGB(170, 170, 170)
PerfLabel.TextSize = 16.000
PerfLabel.TextXAlignment = Enum.TextXAlignment.Right

fps.Name = "fps"
fps.Parent = Parent
fps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fps.BackgroundTransparency = 1.000
fps.BorderColor3 = Color3.fromRGB(0, 0, 0)
fps.BorderSizePixel = 0
fps.Position = UDim2.new(0.0625, 0, 0, 0)
fps.Size = UDim2.new(0, 150, 0, 30)
fps.ZIndex = 0
fps.Font = Enum.Font.GothamBold
fps.Text = "fps:"
fps.TextColor3 = Color3.fromRGB(170, 170, 170)
fps.TextSize = 16.000
fps.TextXAlignment = Enum.TextXAlignment.Left

fpscountlabel.Name = "fpscountlabel"
fpscountlabel.Parent = fps
fpscountlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fpscountlabel.BackgroundTransparency = 1.000
fpscountlabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
fpscountlabel.BorderSizePixel = 0
fpscountlabel.Size = UDim2.new(0, 150, 0, 30)
fpscountlabel.ZIndex = 0
fpscountlabel.Font = Enum.Font.GothamBold
fpscountlabel.Text = "60"
fpscountlabel.TextColor3 = Color3.fromRGB(102, 187, 136)
fpscountlabel.TextSize = 16.000
fpscountlabel.TextXAlignment = Enum.TextXAlignment.Right

ping.Name = "ping"
ping.Parent = Parent
ping.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ping.BackgroundTransparency = 1.000
ping.BorderColor3 = Color3.fromRGB(0, 0, 0)
ping.BorderSizePixel = 0
ping.LayoutOrder = 2
ping.Position = UDim2.new(0.0625, 0, 0, 0)
ping.Size = UDim2.new(0, 150, 0, 30)
ping.ZIndex = 0
ping.Font = Enum.Font.GothamBold
ping.Text = "ping"
ping.TextColor3 = Color3.fromRGB(170, 170, 170)
ping.TextSize = 16.000
ping.TextXAlignment = Enum.TextXAlignment.Left

pingcountlabel.Name = "pingcountlabel"
pingcountlabel.Parent = ping
pingcountlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pingcountlabel.BackgroundTransparency = 1.000
pingcountlabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
pingcountlabel.BorderSizePixel = 0
pingcountlabel.Size = UDim2.new(0, 150, 0, 30)
pingcountlabel.ZIndex = 0
pingcountlabel.Font = Enum.Font.GothamBold
pingcountlabel.Text = "254"
pingcountlabel.TextColor3 = Color3.fromRGB(203, 135, 0)
pingcountlabel.TextSize = 16.000
pingcountlabel.TextXAlignment = Enum.TextXAlignment.Right

cpu.Name = "cpu"
cpu.Parent = Parent
cpu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cpu.BackgroundTransparency = 1.000
cpu.BorderColor3 = Color3.fromRGB(0, 0, 0)
cpu.BorderSizePixel = 0
cpu.LayoutOrder = 3
cpu.Position = UDim2.new(0.0625, 0, 0, 0)
cpu.Size = UDim2.new(0, 150, 0, 30)
cpu.ZIndex = 0
cpu.Font = Enum.Font.GothamBold
cpu.Text = "cpu"
cpu.TextColor3 = Color3.fromRGB(170, 170, 170)
cpu.TextSize = 16.000
cpu.TextXAlignment = Enum.TextXAlignment.Left

cpucountlabel.Name = "cpucountlabel"
cpucountlabel.Parent = cpu
cpucountlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cpucountlabel.BackgroundTransparency = 1.000
cpucountlabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
cpucountlabel.BorderSizePixel = 0
cpucountlabel.Size = UDim2.new(0, 150, 0, 30)
cpucountlabel.ZIndex = 0
cpucountlabel.Font = Enum.Font.GothamBold
cpucountlabel.Text = "3.6 ms"
cpucountlabel.TextColor3 = Color3.fromRGB(102, 187, 136)
cpucountlabel.TextSize = 16.000
cpucountlabel.TextXAlignment = Enum.TextXAlignment.Right

gpu.Name = "gpu"
gpu.Parent = Parent
gpu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gpu.BackgroundTransparency = 1.000
gpu.BorderColor3 = Color3.fromRGB(0, 0, 0)
gpu.BorderSizePixel = 0
gpu.LayoutOrder = 4
gpu.Position = UDim2.new(0.0625, 0, 0, 0)
gpu.Size = UDim2.new(0, 150, 0, 30)
gpu.ZIndex = 0
gpu.Font = Enum.Font.GothamBold
gpu.Text = "gpu"
gpu.TextColor3 = Color3.fromRGB(170, 170, 170)
gpu.TextSize = 16.000
gpu.TextXAlignment = Enum.TextXAlignment.Left

gpucountlabel.Name = "gpucountlabel"
gpucountlabel.Parent = gpu
gpucountlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gpucountlabel.BackgroundTransparency = 1.000
gpucountlabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
gpucountlabel.BorderSizePixel = 0
gpucountlabel.Size = UDim2.new(0, 150, 0, 30)
gpucountlabel.ZIndex = 0
gpucountlabel.Font = Enum.Font.GothamBold
gpucountlabel.Text = "50.2 ms"
gpucountlabel.TextColor3 = Color3.fromRGB(255, 103, 103)
gpucountlabel.TextSize = 16.000
gpucountlabel.TextXAlignment = Enum.TextXAlignment.Right

DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = PerfParent
DropShadowHolder.BackgroundTransparency = 1.000
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Size = UDim2.new(0, 160, 0, 152)
DropShadowHolder.ZIndex = -999

DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1.000
DropShadow.BorderSizePixel = 0
DropShadow.LayoutOrder = -1
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = -999
DropShadow.Image = "rbxassetid://6014261993"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.500
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

UIListLayout_2.Parent = Performance
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

local function fre()
    local fr = tick()
    for index = #FPS,1,-1 do
        FPS[index + 1] = (FPS[index] >= fr - 1) and FPS[index] or nil
    end
    FPS[1] = fr
    local fps = (tick() - sec >= 1 and #FPS) or (#FPS / (tick() - sec))
    fps = math.floor(fps)
    fpscountlabel.Text = fps

	-- [ Text Color ] --
    if fps < 25 then
    	fpscountlabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    elseif fps < 35 then
	    fpscountlabel.TextColor3 = Color3.fromRGB(255, 103, 103)
    elseif fps < 50 then
        fpscountlabel.TextColor3 = Color3.fromRGB(203, 135, 0)
    else
    	fpscountlabel.TextColor3 = Color3.fromRGB(102, 187, 136)
    end
end

spawn(function()
    renderstep:Connect(fre)
    repeat
        wait(0.1)
        local cpu = math.floor(tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").CPU:GetValue()))
        cpucountlabel.Text = cpu.." ms"
        if cpu > 75 then
            cpucountlabel.TextColor3 = Color3.fromRGB(0, 0, 0)
        elseif cpu > 50 then
            cpucountlabel.TextColor3 = Color3.fromRGB(255, 103, 103)
        elseif cpu > 25 then
            cpucountlabel.TextColor3 = Color3.fromRGB(203, 135, 0)
        else
            cpucountlabel.TextColor3 = Color3.fromRGB(102, 187, 136)
        end

        local gpu = math.floor(tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").GPU:GetValue()))
        gpucountlabel.Text = gpu.." ms"
        if gpu > 75 then
            gpucountlabel.TextColor3 = Color3.fromRGB(0, 0, 0)
        elseif gpu > 50 then
            gpucountlabel.TextColor3 = Color3.fromRGB(255, 103, 103)
        elseif gpu > 25 then
            gpucountlabel.TextColor3 = Color3.fromRGB(203, 135, 0)
        else
            gpucountlabel.TextColor3 = Color3.fromRGB(102, 187, 136)
        end
        local ping = math.floor(tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").Ping:GetValue()))
        pingcountlabel.Text = ping
        if ping > 1000 then
            pingcountlabel.TextColor3 = Color3.fromRGB(0, 0, 0)
        elseif ping > 300 then
            pingcountlabel.TextColor3 = Color3.fromRGB(255, 103, 103)
        elseif ping > 150 then
            pingcountlabel.TextColor3 = Color3.fromRGB(203, 135, 0)
        else
            pingcountlabel.TextColor3 = Color3.fromRGB(102, 187, 136)
        end
    until pingcountlabel == nil
end)