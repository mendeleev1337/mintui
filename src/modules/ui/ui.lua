local GuiService = game:GetService("GuiService")
local players, tweenService, runService, coreGui, viewport,uis = game:GetService"Players", game:GetService"TweenService", game:GetService"RunService", game:GetService"CoreGui", workspace.CurrentCamera.ViewportSize,game:GetService"UserInputService"
local UI = {};UI.CurrnetTab = nil
local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad,Enum.EasingDirection.InOut)


function UI:validate(defaults, options)
	for _,v in pairs(defaults) do
		if options[_] == nil then
			options[_] = v
		end
	end
end

function UI:Tween(obj, goal, callback)
	local tween = tweenService:Create(obj,tweenInfo,goal)
	tween.Completed:Connect(callback or function()end)
	tween:Play()
end

function UI:Init(options)
	local optinons = options or {}
	UI:validate({
		Name = "shitUI"
	}, optinons)
	-- theme = prop.Theme or "defaultTheme"
	-- StarterGui.mintui.git
	UI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
	UI["1"]["DisplayOrder"] = 1;
	UI["1"]["Name"] = [[mintui.git]];
	UI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
	UI["1"]["IgnoreGuiInset"] = true
	-- StarterGui.mintui.git.UI
	UI["2"] = Instance.new("Frame", UI["1"]);
	UI["2"]["BorderSizePixel"] = 0;
	UI["2"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
	UI["2"]["Size"] = UDim2.new(0, 400, 0, 300);
	UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["2"]["Position"] = UDim2.fromOffset((viewport.X / 2) - UI["2"].Size.X.Offset / 2, (viewport.Y / 2) - UI["2"].Size.Y.Offset / 2);
	UI["2"]["Name"] = [[UI]];
	-- StarterGui.mintui.git.UI.LeftPart
	UI["3"] = Instance.new("Frame", UI["2"]);
	UI["3"]["BorderSizePixel"] = 0;
	UI["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	UI["3"]["BackgroundTransparency"] = 1;
	UI["3"]["Size"] = UDim2.new(0, 100, 0, 292);
	UI["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["3"]["Position"] = UDim2.new(0.02300002984702587, 0, 0.02588539570569992, 0);
	UI["3"]["Name"] = [[LeftPart]];

	-- StarterGui.mintui.git.UI.LeftPart.UIListLayout
	UI["4"] = Instance.new("UIListLayout", UI["3"]);
	UI["4"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
	UI["4"]["Padding"] = UDim.new(0, 5);
	UI["4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.mintui.git.UI.LeftPart.NameFrame
	UI["5"] = Instance.new("Frame", UI["3"]);
	UI["5"]["ZIndex"] = 0;
	UI["5"]["BorderSizePixel"] = 0;
	UI["5"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
	UI["5"]["BackgroundTransparency"] = 1;
	UI["5"]["LayoutOrder"] = 2;
	UI["5"]["Size"] = UDim2.new(0, 100, 0, 30);
	UI["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["5"]["Name"] = [[NameFrame]];

	-- StarterGui.mintui.git.UI.LeftPart.NameFrame.UICorner
	UI["6"] = Instance.new("UICorner", UI["5"]);
	UI["6"]["CornerRadius"] = UDim.new(0, 2);

	-- StarterGui.mintui.git.UI.LeftPart.NameFrame.TextLabel
	UI["7"] = Instance.new("TextLabel", UI["5"]);
	UI["7"]["ZIndex"] = 0;
	UI["7"]["BorderSizePixel"] = 0;
	UI["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	UI["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	UI["7"]["TextSize"] = 14;
	UI["7"]["TextColor3"] = Color3.fromRGB(171, 171, 171);
	UI["7"]["Size"] = UDim2.new(0, 100, 0, 30);
	UI["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["7"]["Text"] = tostring(optinons["Place"]);
	UI["7"]["BackgroundTransparency"] = 1;

	-- StarterGui.mintui.git.UI.LeftPart.TopFrame
	UI["8"] = Instance.new("Frame", UI["3"]);
	UI["8"]["ZIndex"] = 0;
	UI["8"]["BorderSizePixel"] = 0;
	UI["8"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
	UI["8"]["BackgroundTransparency"] = 1;
	UI["8"]["Size"] = UDim2.new(0, 100, 0, 30);
	UI["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["8"]["Position"] = UDim2.new(0, 0, -0.0034129691775888205, 0);
	UI["8"]["Name"] = [[TopFrame]];

	-- StarterGui.mintui.git.UI.LeftPart.TopFrame.UICorner
	UI["9"] = Instance.new("UICorner", UI["8"]);
	UI["9"]["CornerRadius"] = UDim.new(0, 4);

	-- StarterGui.mintui.git.UI.LeftPart.TopFrame.TextLabel
	UI["a"] = Instance.new("TextLabel", UI["8"]);
	UI["a"]["ZIndex"] = 0;
	UI["a"]["BorderSizePixel"] = 0;
	UI["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	UI["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	UI["a"]["TextSize"] = 16;
	UI["a"]["TextColor3"] = Color3.fromRGB(103, 188, 137);
	UI["a"]["Size"] = UDim2.new(0, 101, 0, 30);
	UI["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["a"]["Text"] = tostring(optinons["Name"]);
	UI["a"]["BackgroundTransparency"] = 1;

	-- StarterGui.mintui.git.UI.LeftPart.TopFrame.TextLabel.UIListLayout
	UI["b"] = Instance.new("UIListLayout", UI["a"]);
	UI["b"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
	UI["b"]["FillDirection"] = Enum.FillDirection.Horizontal;
	UI["b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.mintui.git.UI.LeftPart.TabFrame
	UI["c"] = Instance.new("Frame", UI["3"]);
	UI["c"]["ZIndex"] = 0;
	UI["c"]["BorderSizePixel"] = 0;
	UI["c"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
	UI["c"]["BackgroundTransparency"] = 1;
	UI["c"]["LayoutOrder"] = 1;
	UI["c"]["Size"] = UDim2.new(0, 100, 0, 215);
	UI["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["c"]["Position"] = UDim2.new(0, 0, 0.11604095250368118, 0);
	UI["c"]["Name"] = [[TabFrame]];

	-- StarterGui.mintui.git.UI.LeftPart.TabFrame.UICorner
	UI["d"] = Instance.new("UICorner", UI["c"]);
	UI["d"]["CornerRadius"] = UDim.new(0, 2);

	-- StarterGui.mintui.git.UI.LeftPart.TabFrame.UIStroke
	UI["e"] = Instance.new("UIStroke", UI["c"]);
	UI["e"]["Color"] = Color3.fromRGB(69, 69, 69);
	UI["e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

	-- StarterGui.mintui.git.UI.LeftPart.TabFrame.UIListLayout
	UI["f"] = Instance.new("UIListLayout", UI["c"]);
	UI["f"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
	UI["f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.mintui.git.UI.TopPart
	UI["11"] = Instance.new("Frame", UI["2"]);
	UI["11"]["ZIndex"] = 0;
	UI["11"]["BorderSizePixel"] = 0;
	UI["11"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
	UI["11"]["BackgroundTransparency"] = 1;
	UI["11"]["Size"] = UDim2.new(0, 272, 0, 29);
	UI["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["11"]["Position"] = UDim2.new(0.29750001430511475, 0, 0.02588539570569992, 0);
	UI["11"]["Name"] = [[TopPart]];

	-- StarterGui.mintui.git.UI.TopPart.UICorner
	UI["12"] = Instance.new("UICorner", UI["11"]);
	UI["12"]["CornerRadius"] = UDim.new(0, 4);

	-- StarterGui.mintui.git.UI.TopPart.Tools
	UI["13"] = Instance.new("Frame", UI["11"]);
	UI["13"]["ZIndex"] = 0;
	UI["13"]["BorderSizePixel"] = 0;
	UI["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	UI["13"]["BackgroundTransparency"] = 1;
	UI["13"]["Size"] = UDim2.new(0, 272, 0, 30);
	UI["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["13"]["Name"] = [[Tools]];

	-- StarterGui.mintui.git.UI.TopPart.Tools.UIListLayout
	UI["14"] = Instance.new("UIListLayout", UI["13"]);
	UI["14"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
	UI["14"]["FillDirection"] = Enum.FillDirection.Horizontal;
	UI["14"]["Padding"] = UDim.new(0, 5);
	UI["14"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.mintui.git.UI.TopPart.Tools.SaveButton
	UI["15"] = Instance.new("TextButton", UI["13"]);
	UI["15"]["BorderSizePixel"] = 0;
	UI["15"]["AutoButtonColor"] = false;
	UI["15"]["BackgroundColor3"] = Color3.fromRGB(17, 17, 17);
	UI["15"]["TextSize"] = 14;
	UI["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	UI["15"]["TextColor3"] = Color3.fromRGB(171, 171, 171);
	UI["15"]["Size"] = UDim2.new(0, 47, 0, 21);
	UI["15"]["LayoutOrder"] = -1;
	UI["15"]["Name"] = [[SaveButton]];
	UI["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["15"]["Text"] = [[Save]];
	UI["15"]["Position"] = UDim2.new(0, 0, 0.06521739065647125, 0);

	-- StarterGui.mintui.git.UI.TopPart.Tools.SaveButton.UICorner
	UI["16"] = Instance.new("UICorner", UI["15"]);
	UI["16"]["CornerRadius"] = UDim.new(0, 4);

	-- StarterGui.mintui.git.UI.TopPart.Tools.SaveButton.UIStroke
	UI["17"] = Instance.new("UIStroke", UI["15"]);
	UI["17"]["Color"] = Color3.fromRGB(69, 69, 69);
	UI["17"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

	-- StarterGui.mintui.git.UI.TopPart.Tools.SettingsButton
	UI["18"] = Instance.new("ImageButton", UI["13"]);
	UI["18"]["BorderSizePixel"] = 0;
	UI["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	UI["18"]["LayoutOrder"] = 1;
	UI["18"]["Image"] = [[rbxassetid://3926307971]];
	UI["18"]["ImageRectSize"] = Vector2.new(36, 36);
	UI["18"]["Size"] = UDim2.new(0, 20, 0, 21);
	UI["18"]["Name"] = [[SettingsButton]];
	UI["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["18"]["ImageRectOffset"] = Vector2.new(324, 124);
	UI["18"]["BackgroundTransparency"] = 1;
	UI["18"].MouseButton1Click:Connect(function()
		UI["11d"]["Visible"] = not UI["11d"]["Visible"]
	end)

	-- StarterGui.mintui.git.UI.TopPart.Tools.Frame
	UI["19"] = Instance.new("Frame", UI["13"]);
	UI["19"]["ZIndex"] = 0;
	UI["19"]["BorderSizePixel"] = 0;
	UI["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	UI["19"]["BackgroundTransparency"] = 1;
	UI["19"]["Size"] = UDim2.new(0, 192, 0, 21);
	UI["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["19"]["Position"] = UDim2.new(0.19117647409439087, 0, 0.15000000596046448, 0);
	UI["19"]["AutomaticSize"] = Enum.AutomaticSize.XY;

	-- StarterGui.mintui.git.UI.UICorner
	UI["11c"] = Instance.new("UICorner", UI["2"]);
	UI["11c"]["CornerRadius"] = UDim.new(0, 3);

	-- StarterGui.mintui.git.UI.Settings
	UI["11d"] = Instance.new("Frame", UI["2"]);
	UI["11d"]["ZIndex"] = -999;
	UI["11d"]["BorderSizePixel"] = 0;
	UI["11d"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
	UI["11d"]["Size"] = UDim2.new(0, 160, 0, 170);
	UI["11d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["11d"]["Position"] = UDim2.new(1.0172057151794434, 0, -0.0009290118468925357, 0);
	UI["11d"]["Visible"] = false;
	UI["11d"]["Name"] = [[Settings]];

	-- StarterGui.mintui.git.UI.Settings.UICorner
	UI["11e"] = Instance.new("UICorner", UI["11d"]);
	UI["11e"]["CornerRadius"] = UDim.new(0, 3);

	-- StarterGui.mintui.git.UI.Settings.Parent
	UI["11f"] = Instance.new("Frame", UI["11d"]);
	UI["11f"]["BorderSizePixel"] = 0;
	UI["11f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	UI["11f"]["BackgroundTransparency"] = 1;
	UI["11f"]["Size"] = UDim2.new(0, 160, 0, 152);
	UI["11f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["11f"]["Position"] = UDim2.new(0, 0, -4.0154708358386415e-07, 0);
	UI["11f"]["AutomaticSize"] = Enum.AutomaticSize.X;
	UI["11f"]["Name"] = [[Parent]];

	-- StarterGui.mintui.git.UI.Settings.Parent.UIListLayout
	UI["120"] = Instance.new("UIListLayout", UI["11f"]);
	UI["120"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
	UI["120"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.mintui.git.UI.Settings.Parent.SettingsLabel
	UI["121"] = Instance.new("TextLabel", UI["11f"]);
	UI["121"]["ZIndex"] = 0;
	UI["121"]["BorderSizePixel"] = 0;
	UI["121"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	UI["121"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	UI["121"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	UI["121"]["TextSize"] = 16;
	UI["121"]["TextColor3"] = Color3.fromRGB(171, 171, 171);
	UI["121"]["LayoutOrder"] = -1;
	UI["121"]["Size"] = UDim2.new(0, 142, 0, 26);
	UI["121"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["121"]["Text"] = [[Settings]];
	UI["121"]["Name"] = [[SettingsLabel]];
	UI["121"]["BackgroundTransparency"] = 1;
	UI["121"]["Position"] = UDim2.new(0.078125, 0, 0, 0);

	-- StarterGui.mintui.git.UI.Settings.Parent.SettingsLabel.UIListLayout
	UI["122"] = Instance.new("UIListLayout", UI["121"]);
	UI["122"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
	UI["122"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
	UI["122"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.mintui.git.UI.Settings.Parent.SettingsLabel.ImageButton
	UI["123"] = Instance.new("ImageButton", UI["121"]);
	UI["123"]["BorderSizePixel"] = 0;
	UI["123"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	UI["123"]["ImageColor3"] = Color3.fromRGB(207, 207, 207);
	UI["123"]["Image"] = [[rbxassetid://3926305904]];
	UI["123"]["ImageRectSize"] = Vector2.new(24, 24);
	UI["123"]["Size"] = UDim2.new(0, 20, 0, 20);
	UI["123"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["123"]["ImageRectOffset"] = Vector2.new(284, 4);
	UI["123"]["Position"] = UDim2.new(0.8523489832878113, 0, -1.6739130020141602, 0);
	UI["123"]["BackgroundTransparency"] = 1;
	UI["123"].MouseButton1Click:Connect(function()
		UI["11d"]["Visible"] = false
	end)


	-- StarterGui.mintui.git.UI.Settings.Parent.PerfToggle
	UI["124"] = Instance.new("TextLabel", UI["11f"]);
	UI["124"]["BorderSizePixel"] = 0;
	UI["124"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	UI["124"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	UI["124"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	UI["124"]["TextSize"] = 14;
	UI["124"]["TextColor3"] = Color3.fromRGB(171, 171, 171);
	UI["124"]["Size"] = UDim2.new(0, 131, 0, 20);
	UI["124"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["124"]["Text"] = [[Performance]];
	UI["124"]["Name"] = [[PerfToggle]];
	UI["124"]["BackgroundTransparency"] = 1;
	UI["124"]["Position"] = UDim2.new(0.09062500298023224, 0, 0.17105263471603394, 0);

	-- StarterGui.mintui.git.UI.Settings.Parent.PerfToggle.TextButton
	UI["125"] = Instance.new("TextButton", UI["124"]);
	UI["125"]["BorderSizePixel"] = 0;
	UI["125"]["AutoButtonColor"] = false;
	UI["125"]["BackgroundColor3"] = Color3.fromRGB(103, 188, 137);
	UI["125"]["TextSize"] = 14;
	UI["125"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	UI["125"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
	UI["125"]["Size"] = UDim2.new(0, 15, 0, 15);
	UI["125"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["125"]["Text"] = [[]];
	UI["125"]["Position"] = UDim2.new(0.8500000238418579, 0, 0, 0);

	-- StarterGui.mintui.git.UI.Settings.Parent.PerfToggle.TextButton.UICorner
	UI["126"] = Instance.new("UICorner", UI["125"]);
	UI["126"]["CornerRadius"] = UDim.new(0, 5);

	-- StarterGui.mintui.git.UI.Settings.Parent.PerfToggle.UIListLayout
	UI["127"] = Instance.new("UIListLayout", UI["124"]);
	UI["127"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
	UI["127"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
	UI["127"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.mintui.git.UI.Settings.Parent.WaterToggle
	UI["128"] = Instance.new("TextLabel", UI["11f"]);
	UI["128"]["BorderSizePixel"] = 0;
	UI["128"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	UI["128"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	UI["128"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	UI["128"]["TextSize"] = 14;
	UI["128"]["TextColor3"] = Color3.fromRGB(171, 171, 171);
	UI["128"]["Size"] = UDim2.new(0, 131, 0, 20);
	UI["128"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["128"]["Text"] = [[Watermark]];
	UI["128"]["Name"] = [[WaterToggle]];
	UI["128"]["BackgroundTransparency"] = 1;
	UI["128"]["Position"] = UDim2.new(0.09062500298023224, 0, 0.17105263471603394, 0);

	-- StarterGui.mintui.git.UI.Settings.Parent.WaterToggle.TextButton
	UI["129"] = Instance.new("TextButton", UI["128"]);
	UI["129"]["BorderSizePixel"] = 0;
	UI["129"]["AutoButtonColor"] = false;
	UI["129"]["BackgroundColor3"] = Color3.fromRGB(103, 188, 137);
	UI["129"]["TextSize"] = 14;
	UI["129"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	UI["129"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
	UI["129"]["Size"] = UDim2.new(0, 15, 0, 15);
	UI["129"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["129"]["Text"] = [[]];
	UI["129"]["Position"] = UDim2.new(0.8500000238418579, 0, 0, 0);

	-- StarterGui.mintui.git.UI.Settings.Parent.WaterToggle.TextButton.UICorner
	UI["12a"] = Instance.new("UICorner", UI["129"]);
	UI["12a"]["CornerRadius"] = UDim.new(0, 5);

	-- StarterGui.mintui.git.UI.Settings.Parent.WaterToggle.UIListLayout
	UI["12b"] = Instance.new("UIListLayout", UI["128"]);
	UI["12b"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
	UI["12b"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
	UI["12b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.mintui.git.UI.Settings.Parent.WaterToggle
	UI["12c"] = Instance.new("TextLabel", UI["11f"]);
	UI["12c"]["BorderSizePixel"] = 0;
	UI["12c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	UI["12c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	UI["12c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	UI["12c"]["TextSize"] = 14;
	UI["12c"]["TextColor3"] = Color3.fromRGB(171, 171, 171);
	UI["12c"]["Size"] = UDim2.new(0, 131, 0, 20);
	UI["12c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["12c"]["Text"] = [[Custom Theme]];
	UI["12c"]["Name"] = [[WaterToggle]];
	UI["12c"]["BackgroundTransparency"] = 1;
	UI["12c"]["Position"] = UDim2.new(0.09062500298023224, 0, 0.17105263471603394, 0);

	-- StarterGui.mintui.git.UI.Settings.Parent.WaterToggle.TextButton
	UI["12d"] = Instance.new("TextButton", UI["12c"]);
	UI["12d"]["BorderSizePixel"] = 0;
	UI["12d"]["AutoButtonColor"] = false;
	UI["12d"]["BackgroundColor3"] = Color3.fromRGB(103, 188, 137);
	UI["12d"]["TextSize"] = 14;
	UI["12d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	UI["12d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
	UI["12d"]["Size"] = UDim2.new(0, 15, 0, 15);
	UI["12d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["12d"]["Text"] = [[]];
	UI["12d"]["Position"] = UDim2.new(0.8500000238418579, 0, 0, 0);

	-- StarterGui.mintui.git.UI.Settings.Parent.WaterToggle.TextButton.UICorner
	UI["12e"] = Instance.new("UICorner", UI["12d"]);
	UI["12e"]["CornerRadius"] = UDim.new(0, 5);

	-- StarterGui.mintui.git.UI.Settings.Parent.WaterToggle.TextButton.Propties
	UI["12f"] = Instance.new("Frame", UI["12d"]);
	UI["12f"]["ZIndex"] = 2;
	UI["12f"]["BorderSizePixel"] = 2;
	UI["12f"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
	UI["12f"]["Size"] = UDim2.new(0, 100, 0, 95);
	UI["12f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["12f"]["Position"] = UDim2.new(2.433333396911621, 0, 0.15000000596046448, 0);
	UI["12f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
	UI["12f"]["Visible"] = false;
	UI["12f"]["Name"] = [[Propties]];

	-- StarterGui.mintui.git.UI.Settings.Parent.WaterToggle.TextButton.Propties.UICorner
	UI["130"] = Instance.new("UICorner", UI["12f"]);
	UI["130"]["CornerRadius"] = UDim.new(0, 5);

	-- StarterGui.mintui.git.UI.Settings.Parent.WaterToggle.TextButton.Propties.ScrollingFrame
	UI["131"] = Instance.new("ScrollingFrame", UI["12f"]);
	UI["131"]["Active"] = true;
	UI["131"]["BorderSizePixel"] = 0;
	UI["131"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	UI["131"]["BackgroundTransparency"] = 1;
	UI["131"]["Size"] = UDim2.new(0, 100, 0, 84);
	UI["131"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
	UI["131"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["131"]["Position"] = UDim2.new(0, 0, 0.15528073906898499, 0);

	-- StarterGui.mintui.git.UI.Settings.Parent.WaterToggle.TextButton.Propties.ScrollingFrame.UIListLayout
	UI["132"] = Instance.new("UIListLayout", UI["131"]);
	UI["132"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
	UI["132"]["Padding"] = UDim.new(0, 5);
	UI["132"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.mintui.git.UI.Settings.Parent.WaterToggle.TextButton.Propties.ScrollingFrame.BindSettings
	UI["133"] = Instance.new("Frame", UI["131"]);
	UI["133"]["BorderSizePixel"] = 0;
	UI["133"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	UI["133"]["BackgroundTransparency"] = 1;
	UI["133"]["Size"] = UDim2.new(0, 90, 0, 65);
	UI["133"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["133"]["Position"] = UDim2.new(0.05000000074505806, 0, 0, 0);
	UI["133"]["AutomaticSize"] = Enum.AutomaticSize.Y;
	UI["133"]["Name"] = [[BindSettings]];

	-- StarterGui.mintui.git.UI.Settings.Parent.WaterToggle.TextButton.Propties.ScrollingFrame.BindSettings.UIListLayout
	UI["134"] = Instance.new("UIListLayout", UI["133"]);
	UI["134"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
	UI["134"]["Padding"] = UDim.new(0, 5);
	UI["134"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.mintui.git.UI.Settings.Parent.WaterToggle.TextButton.Propties.ScrollingFrame.BindSettings.TextButton
	UI["135"] = Instance.new("TextButton", UI["133"]);
	UI["135"]["ZIndex"] = 2;
	UI["135"]["BorderSizePixel"] = 0;
	UI["135"]["AutoButtonColor"] = false;
	UI["135"]["BackgroundColor3"] = Color3.fromRGB(103, 188, 137);
	UI["135"]["TextSize"] = 14;
	UI["135"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	UI["135"]["TextColor3"] = Color3.fromRGB(26, 26, 26);
	UI["135"]["Size"] = UDim2.new(0, 78, 0, 19);
	UI["135"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["135"]["Text"] = [[Dark]];
	UI["135"]["Position"] = UDim2.new(0.06666667014360428, 0, 0, 0);

	-- StarterGui.mintui.git.UI.Settings.Parent.WaterToggle.TextButton.Propties.ScrollingFrame.BindSettings.TextButton.UICorner
	UI["136"] = Instance.new("UICorner", UI["135"]);
	UI["136"]["CornerRadius"] = UDim.new(0, 5);

	-- StarterGui.mintui.git.UI.Settings.Parent.WaterToggle.TextButton.Propties.ScrollingFrame.BindSettings.TextButton
	UI["137"] = Instance.new("TextButton", UI["133"]);
	UI["137"]["ZIndex"] = 2;
	UI["137"]["BorderSizePixel"] = 0;
	UI["137"]["AutoButtonColor"] = false;
	UI["137"]["BackgroundColor3"] = Color3.fromRGB(69, 69, 69);
	UI["137"]["TextSize"] = 14;
	UI["137"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	UI["137"]["TextColor3"] = Color3.fromRGB(171, 171, 171);
	UI["137"]["Size"] = UDim2.new(0, 78, 0, 19);
	UI["137"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["137"]["Text"] = [[Light]];
	UI["137"]["Position"] = UDim2.new(0.06666667014360428, 0, 0, 0);

	-- StarterGui.mintui.git.UI.Settings.Parent.WaterToggle.TextButton.Propties.ScrollingFrame.BindSettings.TextButton.UICorner
	UI["138"] = Instance.new("UICorner", UI["137"]);
	UI["138"]["CornerRadius"] = UDim.new(0, 5);

	-- StarterGui.mintui.git.UI.Settings.Parent.WaterToggle.UIListLayout
	UI["139"] = Instance.new("UIListLayout", UI["12c"]);
	UI["139"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
	UI["139"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
	UI["139"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.mintui.git.UI.RightPart
	UI["1a"] = Instance.new("Frame", UI["2"]);
	UI["1a"]["ZIndex"] = 0;
	UI["1a"]["BorderSizePixel"] = 0;
	UI["1a"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
	UI["1a"]["BackgroundTransparency"] = 1;
	UI["1a"]["Size"] = UDim2.new(0, 270, 0, 250);
	UI["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	UI["1a"]["Position"] = UDim2.new(0.29750001430511475, 0, 0.1421644687652588, 0);
	UI["1a"]["Name"] = [[RightPart]];

	-- StarterGui.mintui.git.UI.RightPart.UICorner
	UI["1b"] = Instance.new("UICorner", UI["1a"]);
	UI["1b"]["CornerRadius"] = UDim.new(0, 2);

	-- StarterGui.mintui.git.UI.RightPart.UIStroke
	UI["1c"] = Instance.new("UIStroke", UI["1a"]);
	UI["1c"]["Color"] = Color3.fromRGB(255, 255, 255);
	UI["1c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

	-- StarterGui.mintui.git.UI.RightPart.UIStroke.UIGradient
	UI["1d"] = Instance.new("UIGradient", UI["1c"]);
	UI["1d"]["Rotation"] = 45;
	UI["1d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(69, 69, 69)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(26, 26, 26)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(16, 16, 16))};

	local tabs = {};
	function tabs:NewTab(options)
		local optinons = options or {}
		UI:validate({
			Name = "Tab"
		}, optinons)
		local Tab = {
			Active = false
		}

		-- StarterGui.mintui.git.UI.LeftPart.TabFrame.General_tabbutton
		Tab["10"] = Instance.new("TextButton", UI["c"]);
		Tab["10"]["BorderSizePixel"] = 0;
		Tab["10"]["AutoButtonColor"] = false;
		Tab["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["10"]["TextSize"] = 14;
		Tab["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		Tab["10"]["TextColor3"] = Color3.fromRGB(171, 171, 171) 
		Tab["10"]["Size"] = UDim2.new(0, 100, 0, 28);
		Tab["10"]["Name"] = tostring(optinons["Name"]).."_tabbutton";
		Tab["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Tab["10"]["Text"] = tostring(options["Name"]);
		Tab["10"]["Position"] = UDim2.new(0.07999999821186066, 0, 0, 0);
		Tab["10"]["BackgroundTransparency"] = 1;

		-- StarterGui.mintui.git.UI.RightPart.General_tab
		Tab["1e"] = Instance.new("ScrollingFrame", UI["1a"]);
		Tab["1e"]["Active"] = true;
		Tab["1e"]["ZIndex"] = 0;
		Tab["1e"]["BorderSizePixel"] = 0;
		Tab["1e"]["CanvasSize"] = UDim2.new(0, 0, 1, 0);
		Tab["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["1e"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
		Tab["1e"]["BackgroundTransparency"] = 1;
		Tab["1e"]["Size"] = UDim2.new(0, 279, 0, 250);
		Tab["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Tab["1e"]["ScrollBarThickness"] = 6;
		Tab["1e"]["Name"] = tostring(optinons["Name"]).."_tab";
		Tab["1e"].Visible = false

		-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent
		Tab["1f"] = Instance.new("Frame", Tab["1e"]);
		Tab["1f"]["ZIndex"] = 0;
		Tab["1f"]["BorderSizePixel"] = 0;
		Tab["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["1f"]["BackgroundTransparency"] = 1;
		Tab["1f"]["Size"] = UDim2.new(0, 271, 0, 250);
		Tab["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Tab["1f"]["Name"] = [[sidesParent]];

		-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left
		Tab["20"] = Instance.new("Frame", Tab["1f"]);
		Tab["20"]["ZIndex"] = 0;
		Tab["20"]["BorderSizePixel"] = 0;
		Tab["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["20"]["BackgroundTransparency"] = 1;
		Tab["20"]["Size"] = UDim2.new(0, 135, 0, 243);
		Tab["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Tab["20"]["Position"] = UDim2.new(0, 0, 0.02800000086426735, 0);
		Tab["20"]["AutomaticSize"] = Enum.AutomaticSize.Y;
		Tab["20"]["Name"] = [[Left]];

		-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.UIListLayout
		Tab["5f"] = Instance.new("UIListLayout", Tab["20"]);
		Tab["5f"]["Padding"] = UDim.new(0, 20);
		Tab["5f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

		-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Right
		Tab["9e"] = Instance.new("Frame", Tab["1f"]);
		Tab["9e"]["ZIndex"] = 0;
		Tab["9e"]["BorderSizePixel"] = 0;
		Tab["9e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Tab["9e"]["BackgroundTransparency"] = 1;
		Tab["20"]["Size"] = UDim2.new(0, 135, 0, 243);
		Tab["9e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		Tab["9e"]["Position"] = UDim2.new(0.49077489972114563, 0, 0.02800000086426735, 0);
		Tab["9e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
		Tab["9e"]["Name"] = [[Right]];

		-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Right.UIListLayout
		Tab["dd"] = Instance.new("UIListLayout", Tab["9e"]);
		Tab["dd"]["Padding"] = UDim.new(0, 20);
		Tab["dd"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

		Tab["10"].MouseButton1Click:Connect(function()
			Tab:Activate()
		end)

		function Tab:Activate()
			if not Tab.Active then
				if UI.CurrnetTab ~= nil then
					UI.CurrnetTab:Deactivate()
				end
				Tab.Active = true
				Tab["1e"].Visible = true
				UI:Tween(Tab["10"],{TextColor3 = Color3.fromRGB(103, 188, 137)})
				UI.CurrnetTab = Tab
			end
		end

		function Tab:Deactivate()
			if Tab.Active then
				Tab.Active = false
				Tab["1e"].Visible = false
				UI:Tween(Tab["10"],{TextColor3 = Color3.fromRGB(171, 171, 171)})
			end
		end

		if UI.CurrnetTab == nil then
			Tab:Activate()
		end

		local sections = {}

		function sections:NewSection(options)
			local options = options or {}
			UI:validate({
				Name = "Section",
				Side = "Left"
			}, optinons)

			local section = {}
			-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section
			section["21"] = Instance.new("Frame", if options["Side"] == "Left" then Tab["20"] else Tab["9e"]);
			section["21"]["BorderSizePixel"] = 0;
			section["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			section["21"]["BackgroundTransparency"] = 1;
			section["21"]["Size"] = UDim2.new(0, 135, 0, 33);
			section["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			section["21"]["AutomaticSize"] = Enum.AutomaticSize.Y;
			section["21"]["Name"] = tostring(options["Name"])..[[_section]];

			-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel
			section["22"] = Instance.new("TextLabel", section["21"]);
			section["22"]["BorderSizePixel"] = 0;
			section["22"]["TextYAlignment"] = Enum.TextYAlignment.Top;
			section["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			section["22"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			section["22"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			section["22"]["TextSize"] = 14;
			section["22"]["TextColor3"] = Color3.fromRGB(91, 91, 91);
			section["22"]["Size"] = UDim2.new(0, 120, 0, 15);
			section["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			section["22"]["Text"] = tostring(options["Name"]);
			section["22"]["Name"] = [[SectionLabel]];
			section["22"]["BackgroundTransparency"] = 1;
			section["22"]["Position"] = UDim2.new(0.04444444552063942, 0, 0, 0);

			-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame
			section["23"] = Instance.new("Frame", section["22"]);
			section["23"]["BorderSizePixel"] = 0;
			section["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			section["23"]["BackgroundTransparency"] = 1;
			section["23"]["Size"] = UDim2.new(0, 132, 0, 100);
			section["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			section["23"]["Position"] = UDim2.new(0, 0, 1.2000000476837158, 0);

			local elemets = {}

			function elemets:Toggle(options)
				local options = options or {}
				UI:validate({
					Name = "Toggle",
					Value = false, 
					Callback = function()end
				}, optinons)
				local Toggle = {}

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle
				Toggle["24"] = Instance.new("TextLabel", section["23"]);
				Toggle["24"]["BorderSizePixel"] = 0;
				Toggle["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["24"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Toggle["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
				Toggle["24"]["TextSize"] = 14;
				Toggle["24"]["TextColor3"] = Color3.fromRGB(171, 171, 171);
				Toggle["24"]["LayoutOrder"] = 1;
				Toggle["24"]["Size"] = UDim2.new(0, 120, 0, 15);
				Toggle["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["24"]["Text"] = tostring(optinons["Name"]);
				Toggle["24"]["Name"] = tostring(optinons["Name"])..[[_toggle]];
				Toggle["24"]["BackgroundTransparency"] = 1;
				Toggle["24"]["Position"] = UDim2.new(0.04444444552063942, 0, 0, 0);

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle.TextButton
				Toggle["25"] = Instance.new("TextButton", Toggle["24"]);
				Toggle["25"]["BorderSizePixel"] = 0;
				Toggle["25"]["AutoButtonColor"] = false;
				Toggle["25"]["BackgroundColor3"] = if optinons["Value"] then Color3.fromRGB(103, 188, 137) else Color3.fromRGB(171, 171, 171);
				Toggle["25"]["TextSize"] = 14;
				Toggle["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Toggle["25"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["25"]["Size"] = UDim2.new(0, 15, 0, 15);
				Toggle["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["25"]["Text"] = [[]];
				Toggle["25"]["Position"] = UDim2.new(0.8500000238418579, 0, 0, 0);
				Toggle["25"].MouseButton1Click:Connect(function()
					optinons["Value"] = not optinons["Value"]
					if optinons["Value"] then 
						UI:Tween(Toggle["25"],{BackgroundColor3 = Color3.fromRGB(103, 188, 137)})
					else 
						UI:Tween(Toggle["25"],{BackgroundColor3 = Color3.fromRGB(171, 171, 171)})
					end
				end)

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle.TextButton.UICorner
				Toggle["26"] = Instance.new("UICorner", Toggle["25"]);
				Toggle["26"]["CornerRadius"] = UDim.new(0, 5);

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle.TextButton.Propties
				Toggle["27"] = Instance.new("Frame", Toggle["25"]);
				Toggle["27"]["ZIndex"] = 2;
				Toggle["27"]["BorderSizePixel"] = 2;
				Toggle["27"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
				Toggle["27"]["Size"] = UDim2.new(0, 102, 0, 101);
				Toggle["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["27"]["Position"] = UDim2.new(1.1666666269302368, 0, -0.05000000074505806, 0);
				Toggle["27"]["Visible"] = false;
				Toggle["27"]["Name"] = [[Propties]];

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle.TextButton.Propties.UICorner
				Toggle["28"] = Instance.new("UICorner", Toggle["27"]);
				Toggle["28"]["CornerRadius"] = UDim.new(0, 5);

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle.TextButton.Propties.Frame
				Toggle["29"] = Instance.new("Frame", Toggle["27"]);
				Toggle["29"]["BorderSizePixel"] = 0;
				Toggle["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["29"]["BackgroundTransparency"] = 1;
				Toggle["29"]["Size"] = UDim2.new(0.8823529481887817, 0, 0.8712871074676514, 0);
				Toggle["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["29"]["Position"] = UDim2.new(0.05882352963089943, 0, 0.059405941516160965, 0);

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle.TextButton.Propties.Frame.Bind
				Toggle["2a"] = Instance.new("TextLabel", Toggle["29"]);
				Toggle["2a"]["BorderSizePixel"] = 0;
				Toggle["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["2a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Toggle["2a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
				Toggle["2a"]["TextSize"] = 14;
				Toggle["2a"]["TextColor3"] = Color3.fromRGB(171, 171, 171);
				Toggle["2a"]["Size"] = UDim2.new(0, 93, 0, 15);
				Toggle["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["2a"]["Text"] = [[Bind]];
				Toggle["2a"]["Name"] = [[Bind]];
				Toggle["2a"]["BackgroundTransparency"] = 1;
				Toggle["2a"]["Position"] = UDim2.new(0.02222222276031971, 0, 0, 0);

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle.TextButton.Propties.Frame.Bind.TextButton
				Toggle["2b"] = Instance.new("TextButton", Toggle["2a"]);
				Toggle["2b"]["ZIndex"] = 3;
				Toggle["2b"]["BorderSizePixel"] = 0;
				Toggle["2b"]["AutoButtonColor"] = false;
				Toggle["2b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Toggle["2b"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
				Toggle["2b"]["TextSize"] = 14;
				Toggle["2b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
				Toggle["2b"]["TextColor3"] = Color3.fromRGB(171, 171, 171);
				Toggle["2b"]["Size"] = UDim2.new(0, 15, 0, 15);
				Toggle["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["2b"]["Text"] = [[LAlt]];
				Toggle["2b"]["AutomaticSize"] = Enum.AutomaticSize.XY;
				Toggle["2b"]["Position"] = UDim2.new(0.8500000238418579, 0, 0, 0);
				Toggle["2b"]["BackgroundTransparency"] = 1;

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle.TextButton.Propties.Frame.Bind.TextButton.UICorner
				Toggle["2c"] = Instance.new("UICorner", Toggle["2b"]);
				Toggle["2c"]["CornerRadius"] = UDim.new(0, 5);

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle.TextButton.Propties.Frame.Bind.UIListLayout
				Toggle["2d"] = Instance.new("UIListLayout", Toggle["2a"]);
				Toggle["2d"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
				Toggle["2d"]["Padding"] = UDim.new(0, 3);
				Toggle["2d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle.TextButton.Propties.Frame.UIListLayout
				Toggle["2e"] = Instance.new("UIListLayout", Toggle["29"]);
				Toggle["2e"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
				Toggle["2e"]["Padding"] = UDim.new(0, 5);
				Toggle["2e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle.TextButton.Propties.Frame.BindSettings
				Toggle["2f"] = Instance.new("Frame", Toggle["29"]);
				Toggle["2f"]["BorderSizePixel"] = 0;
				Toggle["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["2f"]["BackgroundTransparency"] = 1;
				Toggle["2f"]["Size"] = UDim2.new(0, 90, 0, 65);
				Toggle["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["2f"]["Position"] = UDim2.new(0.011111111380159855, 0, 0.22727273404598236, 0);
				Toggle["2f"]["Name"] = [[BindSettings]];

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle.TextButton.Propties.Frame.BindSettings.UIListLayout
				Toggle["30"] = Instance.new("UIListLayout", Toggle["2f"]);
				Toggle["30"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
				Toggle["30"]["Padding"] = UDim.new(0, 5);
				Toggle["30"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle.TextButton.Propties.Frame.BindSettings.TextButton
				Toggle["31"] = Instance.new("TextButton", Toggle["2f"]);
				Toggle["31"]["ZIndex"] = 2;
				Toggle["31"]["BorderSizePixel"] = 0;
				Toggle["31"]["AutoButtonColor"] = false;
				Toggle["31"]["BackgroundColor3"] = Color3.fromRGB(103, 188, 137);
				Toggle["31"]["TextSize"] = 14;
				Toggle["31"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
				Toggle["31"]["TextColor3"] = Color3.fromRGB(26, 26, 26);
				Toggle["31"]["Size"] = UDim2.new(0, 78, 0, 19);
				Toggle["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["31"]["Text"] = [[Toggle]];
				Toggle["31"]["Position"] = UDim2.new(0.06666667014360428, 0, 0, 0);

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle.TextButton.Propties.Frame.BindSettings.TextButton.UICorner
				Toggle["32"] = Instance.new("UICorner", Toggle["31"]);
				Toggle["32"]["CornerRadius"] = UDim.new(0, 5);

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle.TextButton.Propties.Frame.BindSettings.TextButton
				Toggle["33"] = Instance.new("TextButton", Toggle["2f"]);
				Toggle["33"]["ZIndex"] = 2;
				Toggle["33"]["BorderSizePixel"] = 0;
				Toggle["33"]["AutoButtonColor"] = false;
				Toggle["33"]["BackgroundColor3"] = Color3.fromRGB(69, 69, 69);
				Toggle["33"]["TextSize"] = 14;
				Toggle["33"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
				Toggle["33"]["TextColor3"] = Color3.fromRGB(171, 171, 171);
				Toggle["33"]["Size"] = UDim2.new(0, 78, 0, 19);
				Toggle["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["33"]["Text"] = [[Hold]];
				Toggle["33"]["Position"] = UDim2.new(0.06666667014360428, 0, 0, 0);

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle.TextButton.Propties.Frame.BindSettings.TextButton.UICorner
				Toggle["34"] = Instance.new("UICorner", Toggle["33"]);
				Toggle["34"]["CornerRadius"] = UDim.new(0, 5);

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle.TextButton.Propties.Frame.BindSettings.TextButton
				Toggle["35"] = Instance.new("TextButton", Toggle["2f"]);
				Toggle["35"]["ZIndex"] = 2;
				Toggle["35"]["BorderSizePixel"] = 0;
				Toggle["35"]["AutoButtonColor"] = false;
				Toggle["35"]["BackgroundColor3"] = Color3.fromRGB(69, 69, 69);
				Toggle["35"]["TextSize"] = 14;
				Toggle["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
				Toggle["35"]["TextColor3"] = Color3.fromRGB(171, 171, 171);
				Toggle["35"]["Size"] = UDim2.new(0, 78, 0, 19);
				Toggle["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["35"]["Text"] = [[Always-on]];
				Toggle["35"]["Position"] = UDim2.new(0.06666667014360428, 0, 0, 0);

				-- StarterGui.mintui.git.UI.RightPart.General_tab.sidesParent.Left.Section_section.SectionLabel.Frame.Toggle_toggle.TextButton.Propties.Frame.BindSettings.TextButton.UICorner
				Toggle["36"] = Instance.new("UICorner", Toggle["35"]);
				Toggle["36"]["CornerRadius"] = UDim.new(0, 5);

			end

		end
		return sections
	end
	return tabs

end

local menu = UI:Init({
	Name = "Mint.ui",
	Place = "Roblox Studio"
})

local tab = menu:NewTab({
	Name = "Tab",
})

local section = tab:NewSection({
	Name = "Section",
	Side = "Left"
})

local toggle = section:Toggle({
	Name = "Toggle",
	Value = true,
})