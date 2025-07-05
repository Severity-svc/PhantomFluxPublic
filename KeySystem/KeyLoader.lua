local KeySystem = {
	["Fonts"] = {
		Montserrat = {
			SemiBold = Font.new(
				"rbxasset://fonts/families/GothamSSm.json",
				Enum.FontWeight.SemiBold,
				Enum.FontStyle.Normal
			),
			Bold = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal),
		},
	},
}

local TweenService = game:GetService("TweenService")

local PhantomFluxKeySystem = Instance.new("ScreenGui")
local Holder = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local CloseButton = Instance.new("ImageButton")
local Content = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local KeySection = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local TextBar = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local KeyBox = Instance.new("TextBox")
local Title_2 = Instance.new("TextLabel")
local HeaderSection = Instance.new("Frame")
local Title_3 = Instance.new("TextLabel")
local Logo = Instance.new("ImageLabel")
local UIListLayout_3 = Instance.new("UIListLayout")
local CheckSection = Instance.new("Frame")
local UIListLayout_4 = Instance.new("UIListLayout")
local TextBar_2 = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Title_4 = Instance.new("TextLabel")
local Glow = Instance.new("ImageLabel")
local UIGradient_3 = Instance.new("UIGradient")
local Support = Instance.new("TextLabel")
local Line = Instance.new("Frame")
local TitleSection = Instance.new("Frame")
local Header = Instance.new("TextLabel")
local ExplainSection = Instance.new("Frame")
local UIListLayout_5 = Instance.new("UIListLayout")
local Info = Instance.new("Frame")
local Num = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local NumText = Instance.new("TextLabel")
local Title_5 = Instance.new("TextLabel")
local UIListLayout_6 = Instance.new("UIListLayout")
local Info_2 = Instance.new("Frame")
local Num_2 = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local NumText_2 = Instance.new("TextLabel")
local Title_6 = Instance.new("TextLabel")
local UIListLayout_7 = Instance.new("UIListLayout")
local Info_3 = Instance.new("Frame")
local Num_3 = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local NumText_3 = Instance.new("TextLabel")
local Title_7 = Instance.new("TextLabel")
local UIListLayout_8 = Instance.new("UIListLayout")
local TabSection = Instance.new("Frame")
local UIListLayout_9 = Instance.new("UIListLayout")
local Line_2 = Instance.new("Frame")
local Tab = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local UIGradient_4 = Instance.new("UIGradient")
local UIListLayout_10 = Instance.new("UIListLayout")
local UIPadding_2 = Instance.new("UIPadding")
local LinkLogo = Instance.new("ImageLabel")
local LinkName = Instance.new("TextLabel")
local Tab_2 = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local UIGradient_5 = Instance.new("UIGradient")
local UIListLayout_11 = Instance.new("UIListLayout")
local UIPadding_3 = Instance.new("UIPadding")
local LinkLogo_2 = Instance.new("ImageLabel")
local Title_8 = Instance.new("TextLabel")

PhantomFluxKeySystem.Name = "Phantom Flux KeySystem"
PhantomFluxKeySystem.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
PhantomFluxKeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
PhantomFluxKeySystem.Enabled = true
PhantomFluxKeySystem.ResetOnSpawn = false

Holder.Name = "Holder"
Holder.Parent = PhantomFluxKeySystem
Holder.AnchorPoint = Vector2.new(0.5, 0.5)
Holder.BackgroundColor3 = Color3.fromRGB(40, 40, 44)
Holder.AutomaticSize = Enum.AutomaticSize.Y
Holder.BackgroundTransparency = 0.150
Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
Holder.BorderSizePixel = 0
Holder.Position = UDim2.new(0.5, 0, 0.5, 0)
Holder.Size = UDim2.new(0, 350, 0, 0)

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Holder

UIGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)),
	ColorSequenceKeypoint.new(0.49, Color3.fromRGB(112, 186, 255)),
	ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0)),
})
UIGradient.Parent = Holder

Content.Name = "Content"
Content.Parent = Holder
Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content.BackgroundTransparency = 1.000
Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
Content.BorderSizePixel = 0
Content.Size = UDim2.new(1, 0, 1, 0)

UIListLayout.Parent = Content
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

UIPadding.Parent = Content
UIPadding.PaddingBottom = UDim.new(0, 15)
UIPadding.PaddingLeft = UDim.new(0, 15)
UIPadding.PaddingRight = UDim.new(0, 15)
UIPadding.PaddingTop = UDim.new(0, 15)

KeySection.Name = "KeySection"
KeySection.Parent = Content
KeySection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeySection.AutomaticSize = Enum.AutomaticSize.Y
KeySection.BackgroundTransparency = 1.000
KeySection.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeySection.BorderSizePixel = 0
KeySection.LayoutOrder = 2
KeySection.Size = UDim2.new(1, 0, 0, 0)

UIListLayout_2.Parent = KeySection
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.Padding = UDim.new(0, 5)

TextBar.Name = "TextBar"
TextBar.Parent = KeySection
TextBar.BackgroundColor3 = Color3.fromRGB(107, 208, 255)
TextBar.BackgroundTransparency = 0.760
TextBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBar.BorderSizePixel = 0
TextBar.LayoutOrder = 1
TextBar.Position = UDim2.new(0.540624976, 0, 3.4857142, 0)
TextBar.Size = UDim2.new(1, 0, 0, 35)

UICorner_3.Parent = TextBar

KeyBox.Name = "KeyBox"
KeyBox.Parent = TextBar
KeyBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.BackgroundTransparency = 1.000
KeyBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeyBox.BorderSizePixel = 0
KeyBox.Position = UDim2.new(0.0437499993, 0, 0, 0)
KeyBox.Size = UDim2.new(0.828125, 0, 1, 0)
KeyBox.FontFace = KeySystem.Fonts.Montserrat.SemiBold
KeyBox.PlaceholderText = "XXXXXXXXXXXXXXXXXXX"
KeyBox.Text = ""
KeyBox.TextColor3 = Color3.fromRGB(225, 225, 225)
KeyBox.TextSize = 12.000
KeyBox.TextXAlignment = Enum.TextXAlignment.Left

Title_2.Name = "Title"
Title_2.Parent = KeySection
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_2.AutomaticSize = Enum.AutomaticSize.Y
Title_2.BorderSizePixel = 0
Title_2.Size = UDim2.new(1, 0, 0, 0)
Title_2.FontFace = KeySystem.Fonts.Montserrat.SemiBold
Title_2.Text = "Put Key Here"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextSize = 14.000
Title_2.TextTransparency = 0.200
Title_2.TextWrapped = true
Title_2.TextXAlignment = Enum.TextXAlignment.Left

HeaderSection.Name = "HeaderSection"
HeaderSection.Parent = Content
HeaderSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HeaderSection.BackgroundTransparency = 1.000
HeaderSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
HeaderSection.BorderSizePixel = 0
HeaderSection.Size = UDim2.new(0, 100, 0, 20)

Title_3.Name = "Title"
Title_3.Parent = HeaderSection
Title_3.AutomaticSize = Enum.AutomaticSize.XY
Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_3.BackgroundTransparency = 1.000
Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_3.AutomaticSize = Enum.AutomaticSize.Y
Title_3.BorderSizePixel = 0
Title_3.LayoutOrder = 1
Title_3.Size = UDim2.new(0, 74, 0, 20)
Title_3.FontFace = KeySystem.Fonts.Montserrat.SemiBold
Title_3.Text = "Key System"
Title_3.TextColor3 = Color3.fromRGB(107, 208, 255)
Title_3.TextSize = 14.000

Logo.Name = "Logo"
Logo.Parent = HeaderSection
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Size = UDim2.new(0, 25, 0, 25)
Logo.Image = "rbxassetid://127401782998130"

UIListLayout_3.Parent = HeaderSection
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 4)

CheckSection.Name = "CheckSection"
CheckSection.Parent = Content
CheckSection.AutomaticSize = Enum.AutomaticSize.Y
CheckSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheckSection.BackgroundTransparency = 1.000
CheckSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
CheckSection.BorderSizePixel = 0
CheckSection.LayoutOrder = 3
CheckSection.Size = UDim2.new(1, 0, 0, 0)

UIListLayout_4.Parent = CheckSection
UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_4.Padding = UDim.new(0, 10)

TextBar_2.Name = "TextBar"
TextBar_2.Parent = CheckSection
TextBar_2.BackgroundColor3 = Color3.fromRGB(107, 208, 255)
TextBar_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBar_2.BorderSizePixel = 0
TextBar_2.LayoutOrder = 1
TextBar_2.Position = UDim2.new(0.540624976, 0, 3.4857142, 0)
TextBar_2.Size = UDim2.new(1, 0, 0, 35)

UICorner_4.Parent = TextBar_2

Title_4.Name = "Title"
Title_4.Parent = TextBar_2
Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_4.BackgroundTransparency = 1.000
Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_4.BorderSizePixel = 0
Title_4.Size = UDim2.new(1, 0, 1, 0)
Title_4.ZIndex = 2
Title_4.Font = Enum.Font.GothamBold
Title_4.Text = "Check Key"
Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_4.TextSize = 17.000

Glow.Name = "Glow"
Glow.Parent = TextBar_2
Glow.AnchorPoint = Vector2.new(0.5, 0.5)
Glow.BackgroundColor3 = Color3.fromRGB(107, 208, 255)
Glow.BackgroundTransparency = 1.000
Glow.BorderColor3 = Color3.fromRGB(0, 0, 0)
Glow.BorderSizePixel = 0
Glow.Position = UDim2.new(0.5, 0, 0.5, 0)
Glow.Size = UDim2.new(1.04999995, 0, 1.5, 0)
Glow.Image = "rbxassetid://1316045217"
Glow.ImageColor3 = Color3.fromRGB(107, 208, 255)
Glow.ImageTransparency = 0.800

UIGradient_3.Rotation = 90
UIGradient_3.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0.00, 0.48),
	NumberSequenceKeypoint.new(0.50, 0.00),
	NumberSequenceKeypoint.new(1.00, 0.26),
})
UIGradient_3.Parent = Glow

Support.Name = "Support"
Support.Parent = CheckSection
Support.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Support.AutomaticSize = Enum.AutomaticSize.XY
Support.BackgroundTransparency = 1.000
Support.BorderColor3 = Color3.fromRGB(0, 0, 0)
Support.BorderSizePixel = 0
Support.LayoutOrder = 1
Support.FontFace = KeySystem.Fonts.Montserrat.SemiBold
Support.Text = "Need support? <font color='rgb(107, 208, 255)'>Join the Discord</font>"
Support.RichText = true
Support.TextColor3 = Color3.fromRGB(255, 255, 255)
Support.TextSize = 12.000

Line.Name = "Line"
Line.Parent = CheckSection
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BackgroundTransparency = 0.900
Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line.BorderSizePixel = 0
Line.LayoutOrder = 2
Line.Size = UDim2.new(1, 0, 0, 1)

TitleSection.Name = "TitleSection"
TitleSection.Parent = Content
TitleSection.AutomaticSize = Enum.AutomaticSize.Y
TitleSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleSection.BackgroundTransparency = 1.000
TitleSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleSection.BorderSizePixel = 0
TitleSection.LayoutOrder = 1
TitleSection.Size = UDim2.new(1, 0, 0, 0)

Header.Name = "Header"
Header.Parent = TitleSection
Header.AutomaticSize = Enum.AutomaticSize.Y
Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Header.BackgroundTransparency = 1.000
Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
Header.BorderSizePixel = 0
Header.Size = UDim2.new(1, 0, 0, 0)
Header.Font = Enum.Font.GothamBold
Header.Text = "WELCOME TO THE, \n<font color='rgb(107, 208, 255)'>Phantom Flux</font>"
Header.RichText = true
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.TextSize = 22.000
Header.TextXAlignment = Enum.TextXAlignment.Left

ExplainSection.Name = "ExplainSection"
ExplainSection.Parent = Content
ExplainSection.AutomaticSize = Enum.AutomaticSize.Y
ExplainSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExplainSection.BackgroundTransparency = 1.000
ExplainSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExplainSection.BorderSizePixel = 0
ExplainSection.LayoutOrder = 5
ExplainSection.Size = UDim2.new(1, 0, 0, 0)

UIListLayout_5.Parent = ExplainSection
UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_5.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_5.Padding = UDim.new(0, 8)
UIListLayout_5.Wraps = true

Info.Name = "Info"
Info.Parent = ExplainSection
Info.AutomaticSize = Enum.AutomaticSize.Y
Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info.BackgroundTransparency = 1.000
Info.BorderColor3 = Color3.fromRGB(0, 0, 0)
Info.BorderSizePixel = 0
Info.Position = UDim2.new(0, 0, 0.319999993, 0)
Info.Size = UDim2.new(1, 0, 1, 0)

Num.Name = "Num"
Num.Parent = Info
Num.BackgroundColor3 = Color3.fromRGB(107, 208, 255) -- FIXED: Changed from 255107 to 255
Num.BackgroundTransparency = 0.710
Num.BorderColor3 = Color3.fromRGB(0, 0, 0)
Num.BorderSizePixel = 0
Num.Size = UDim2.new(0, 18, 0, 18)

UICorner_5.CornerRadius = UDim.new(1, 0)
UICorner_5.Parent = Num

NumText.Name = "NumText"
NumText.Parent = Num
NumText.BackgroundColor3 = Color3.fromRGB(107, 208, 255)
NumText.BackgroundTransparency = 1.000
NumText.BorderColor3 = Color3.fromRGB(0, 0, 0)
NumText.BorderSizePixel = 0
NumText.Size = UDim2.new(1, 0, 1, 0)
NumText.Font = Enum.Font.GothamBold
NumText.Text = "1"
NumText.TextColor3 = Color3.fromRGB(107, 208, 255) -- FIXED: Changed from 255107 to 255
NumText.TextSize = 14.000

Title_5.Name = "Title"
Title_5.Parent = Info
Title_5.AutomaticSize = Enum.AutomaticSize.XY
Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_5.BackgroundTransparency = 1.000
Title_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_5.BorderSizePixel = 0
Title_5.FontFace = KeySystem.Fonts.Montserrat.SemiBold
Title_5.Text = "Choose Your Key Link"
Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_5.TextSize = 12.000
Title_5.TextTransparency = 0.200

UIListLayout_6.Parent = Info
UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_6.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_6.Padding = UDim.new(0, 8)

Info_2.Name = "Info"
Info_2.Parent = ExplainSection
Info_2.AutomaticSize = Enum.AutomaticSize.Y
Info_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info_2.BackgroundTransparency = 1.000
Info_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Info_2.BorderSizePixel = 0
Info_2.Position = UDim2.new(0, 0, 0.319999993, 0)
Info_2.Size = UDim2.new(1, 0, 1, 0)

Num_2.Name = "Num"
Num_2.Parent = Info_2
Num_2.BackgroundColor3 = Color3.fromRGB(107, 208, 255) -- FIXED: Changed from 255107 to 255
Num_2.BackgroundTransparency = 0.710
Num_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Num_2.BorderSizePixel = 0
Num_2.Size = UDim2.new(0, 18, 0, 18)

UICorner_6.CornerRadius = UDim.new(1, 0)
UICorner_6.Parent = Num_2

NumText_2.Name = "NumText"
NumText_2.Parent = Num_2
NumText_2.BackgroundColor3 = Color3.fromRGB(107, 208, 255)
NumText_2.BackgroundTransparency = 1.000
NumText_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
NumText_2.BorderSizePixel = 0
NumText_2.Size = UDim2.new(1, 0, 1, 0)
NumText_2.Font = Enum.Font.GothamBold
NumText_2.Text = "2"
NumText_2.TextColor3 = Color3.fromRGB(107, 208, 255) -- FIXED: Changed from 255107 to 255
NumText_2.TextSize = 14.000

Title_6.Name = "Title"
Title_6.Parent = Info_2
Title_6.AutomaticSize = Enum.AutomaticSize.XY
Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_6.BackgroundTransparency = 1.000
Title_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_6.BorderSizePixel = 0
Title_6.FontFace = KeySystem.Fonts.Montserrat.SemiBold
Title_6.Text = "Complete ads ( 2 Checkpoint )"
Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_6.TextSize = 12.000
Title_6.TextTransparency = 0.200

UIListLayout_7.Parent = Info_2
UIListLayout_7.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_7.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_7.Padding = UDim.new(0, 8)

Info_3.Name = "Info"
Info_3.Parent = ExplainSection
Info_3.AutomaticSize = Enum.AutomaticSize.Y
Info_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info_3.BackgroundTransparency = 1.000
Info_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Info_3.BorderSizePixel = 0
Info_3.Position = UDim2.new(0, 0, 0.319999993, 0)
Info_3.Size = UDim2.new(1, 0, 1, 0)

Num_3.Name = "Num"
Num_3.Parent = Info_3
Num_3.BackgroundColor3 = Color3.fromRGB(107, 208, 255) -- FIXED: Changed from 255107 to 255
Num_3.BackgroundTransparency = 0.710
Num_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Num_3.BorderSizePixel = 0
Num_3.Size = UDim2.new(0, 18, 0, 18)

UICorner_7.CornerRadius = UDim.new(1, 0)
UICorner_7.Parent = Num_3

NumText_3.Name = "NumText"
NumText_3.Parent = Num_3
NumText_3.BackgroundColor3 = Color3.fromRGB(107, 208, 255)
NumText_3.BackgroundTransparency = 1.000
NumText_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
NumText_3.BorderSizePixel = 0
NumText_3.Size = UDim2.new(1, 0, 1, 0)
NumText_3.Font = Enum.Font.GothamBold
NumText_3.Text = "3"
NumText_3.TextColor3 = Color3.fromRGB(107, 208, 255) -- FIXED: Changed from 255107 to 255
NumText_3.TextSize = 14.000

Title_7.Name = "Title"
Title_7.Parent = Info_3
Title_7.AutomaticSize = Enum.AutomaticSize.XY
Title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_7.BackgroundTransparency = 1.000
Title_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_7.BorderSizePixel = 0
Title_7.FontFace = KeySystem.Fonts.Montserrat.SemiBold
Title_7.Text = "Copy and paste key here!!"
Title_7.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_7.TextSize = 12.000
Title_7.TextTransparency = 0.200

UIListLayout_8.Parent = Info_3
UIListLayout_8.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_8.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_8.Padding = UDim.new(0, 8)

TabSection.Name = "TabSection"
TabSection.Parent = Content
TabSection.AutomaticSize = Enum.AutomaticSize.Y
TabSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabSection.BackgroundTransparency = 1.000
TabSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabSection.BorderSizePixel = 0
TabSection.LayoutOrder = 4
TabSection.Size = UDim2.new(1, 0, 0, 0)

UIListLayout_9.Parent = TabSection
UIListLayout_9.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_9.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_9.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_9.Padding = UDim.new(0, 8)
UIListLayout_9.Wraps = true

Line_2.Name = "Line"
Line_2.Parent = TabSection
Line_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line_2.BackgroundTransparency = 0.900
Line_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line_2.BorderSizePixel = 0
Line_2.LayoutOrder = 999
Line_2.Size = UDim2.new(1, 0, 0, 1)

Tab.Name = "Tab"
Tab.Parent = TabSection
Tab.AutomaticSize = Enum.AutomaticSize.X
Tab.BackgroundColor3 = Color3.fromRGB(107, 208, 255)
Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tab.BorderSizePixel = 0
Tab.Size = UDim2.new(0, 25, 0, 25)

UICorner_8.CornerRadius = UDim.new(0, 12)
UICorner_8.Parent = Tab

UIGradient_4.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1.00, Color3.fromRGB(191, 191, 191)),
})
UIGradient_4.Parent = Tab

UIListLayout_10.Parent = Tab
UIListLayout_10.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_10.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_10.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_10.Padding = UDim.new(0, 6)

UIPadding_2.Parent = Tab
UIPadding_2.PaddingLeft = UDim.new(0, 8)
UIPadding_2.PaddingRight = UDim.new(0, 8)

LinkLogo.Name = "LinkLogo"
LinkLogo.Parent = Tab
LinkLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LinkLogo.BackgroundTransparency = 1.000
LinkLogo.BorderColor3 = Color3.fromRGB(0, 0, 0)
LinkLogo.BorderSizePixel = 0
LinkLogo.Size = UDim2.new(0, 23, 0, 23)
LinkLogo.Image = "rbxassetid://122637139040192"

LinkName.Name = "Title"
LinkName.Parent = Tab
LinkName.AutomaticSize = Enum.AutomaticSize.X
LinkName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LinkName.BackgroundTransparency = 1.000 -- FIXED: Changed from 11.000 to 1.000
LinkName.BorderColor3 = Color3.fromRGB(0, 0, 0)
LinkName.BorderSizePixel = 0
LinkName.Size = UDim2.new(0, 0, 1, 0)
LinkName.Font = Enum.Font.GothamBold
LinkName.Text = "Linkvertise"
LinkName.TextColor3 = Color3.fromRGB(255, 255, 255)
LinkName.TextSize = 16.000

Tab_2.Name = "Tab"
Tab_2.Parent = TabSection
Tab_2.AutomaticSize = Enum.AutomaticSize.X
Tab_2.BackgroundColor3 = Color3.fromRGB(107, 208, 255)
Tab_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tab_2.BorderSizePixel = 0
Tab_2.Size = UDim2.new(0, 25, 0, 25)

UICorner_9.CornerRadius = UDim.new(0, 12)
UICorner_9.Parent = Tab_2

UIGradient_5.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1.00, Color3.fromRGB(191, 191, 191)),
})
UIGradient_5.Parent = Tab_2

UIListLayout_11.Parent = Tab_2
UIListLayout_11.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_11.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_11.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_11.Padding = UDim.new(0, 6)

UIPadding_3.Parent = Tab_2
UIPadding_3.PaddingLeft = UDim.new(0, 8)
UIPadding_3.PaddingRight = UDim.new(0, 8)

LinkLogo_2.Name = "LinkLogo"
LinkLogo_2.Parent = Tab_2
LinkLogo_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LinkLogo_2.BackgroundTransparency = 1.000
LinkLogo_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
LinkLogo_2.BorderSizePixel = 0
LinkLogo_2.Size = UDim2.new(0, 23, 0, 23)
LinkLogo_2.Image = "rbxassetid://81598390322167"

Title_8.Name = "Title"
Title_8.Parent = Tab_2
Title_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_8.BackgroundTransparency = 1.000 -- FIXED: Changed from 11.000 to 1.000
Title_8.AutomaticSize = Enum.AutomaticSize.X
Title_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_8.BorderSizePixel = 0
Title_8.Size = UDim2.new(0, 0, 1, 0)
Title_8.Font = Enum.Font.GothamBold
Title_8.Text = "Lootlabs"
Title_8.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_8.TextSize = 16.000

--// Setup
function KeySystem:Exit()
	task.wait(0.05)
	PhantomFluxKeySystem:Destroy()
end

local Import = getgenv().Import
local Branch = getgenv().Branch

function KeySystem:CheckKey(Key)
	local Lowered = string.lower(Key)
	local CorrectKey = string.lower("GLCbrcR9rVHtEXs")

	if Lowered:find(CorrectKey) then
		KeySystem:Exit()
		Import("Web", Branch)

		return true
	else
		return false
	end
end

function KeySystem:Notify(Param)
	if Holder:FindFirstChild("Notification") then
		repeat
			task.wait()
		until not Holder:FindFirstChild("Notification")
	end

	local Notification = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local UIGradient_2 = Instance.new("UIGradient")

	Notification.Name = "Notification"
	Notification.Parent = Holder
	Notification.BackgroundColor3 = Color3.fromRGB(255, 79, 79)
	Notification.AnchorPoint = Vector2.new(0.5, 0)
	Notification.BackgroundTransparency = 1
	Notification.AutomaticSize = Enum.AutomaticSize.X
	Notification.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Notification.BorderSizePixel = 0
	Notification.Position = UDim2.new(0.5, 0, 0.86, 0)
	Notification.Size = UDim2.new(0, 0, 0, 38)
	Notification.Visible = true
	Notification.ZIndex = 2

	local ManualPadding = Instance.new("UIPadding")
	ManualPadding.Parent = Notification
	ManualPadding.PaddingLeft = UDim.new(0, 8)
	ManualPadding.PaddingRight = UDim.new(0, 8)

	local ManualStroke = Instance.new("UIStroke")
	ManualStroke.Parent = Notification
	ManualStroke.Color = Color3.fromRGB(255, 79, 79)
	ManualStroke.Transparency = 1

	local ManualLayout = Instance.new("UIListLayout")
	ManualLayout.Parent = Notification
	ManualLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	ManualLayout.VerticalAlignment = Enum.VerticalAlignment.Center

	UICorner_2.CornerRadius = UDim.new(0, 12)
	UICorner_2.Parent = Notification

	Title.Name = "Title"
	Title.Parent = Notification
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.AnchorPoint = Vector2.new(0.5, 0.5)
	Title.BackgroundTransparency = 1.000
	Title.AutomaticSize = Enum.AutomaticSize.X
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.5, 0, 0.5, 0)
	Title.Size = UDim2.new(0, 0, 1, 0)
	Title.FontFace = KeySystem.Fonts.Montserrat.SemiBold
	Title.Text = Param.Content or ""
	Title.TextTransparency = 1
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 14.000

	UIGradient_2.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
		ColorSequenceKeypoint.new(1.00, Color3.fromRGB(199, 199, 199)),
	})
	UIGradient_2.Rotation = 90
	UIGradient_2.Parent = Notification

	local Duration = Param.Duration or 3.5

	--// Init
	coroutine.wrap(function()
		TweenService:Create(Notification, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Position = UDim2.new(0.5, 0, 0.840540528, 0),
			BackgroundTransparency = 0.15,
		}):Play()

		TweenService:Create(ManualStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Transparency = 0,
		}):Play()

		TweenService:Create(Title, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			TextTransparency = 0,
		}):Play()

		task.wait(Duration)

		TweenService:Create(Notification, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Position = UDim2.new(0.5, 0, 0.86, 0),
			BackgroundTransparency = 1,
		}):Play()

		TweenService:Create(ManualStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Transparency = 1,
		}):Play()

		TweenService:Create(Title, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			TextTransparency = 1,
		}):Play()

		task.wait(0.25)
		if Notification and Notification.Parent then
			Notification:Destroy()
		end
	end)()
end

function KeySystem:AttachButton(Parent, Addition)
	local AdditionalSize = Addition or 0
	local Button = Instance.new("TextButton")

	Button.Parent = Parent
	Button.Text = ""
	Button.AnchorPoint = Vector2.new(0.5, 0.5)
	Button.Position = UDim2.new(0.5, 0, 0.5, 0)
	Button.Size = UDim2.new(1 + AdditionalSize, 0, 1 + AdditionalSize, 0)
	Button.Name = "ClickableButton"
	Button.BackgroundTransparency = 1
	Button.ZIndex = 1

	return Button
end

local fileName = "PhantomFluxKey.json"

function KeySystem:FileExists(file)
	local success, response = pcall(function()
		return readfile(file)
	end)
	return success and response ~= nil
end

function KeySystem:SaveKey(keyToSave)
	writefile(fileName, keyToSave)
end

function KeySystem:LoadKey()
	if fileExists(fileName) then
		return readfile(fileName)
	else
		return nil
	end
end

--// Core
local CheckKeyButton = KeySystem:AttachButton(TextBar_2)
local SupportButton = KeySystem:AttachButton(Support)

local IgnoreLinkverstise = Instance.new("Folder")
IgnoreLinkverstise.Parent = Tab

local IgnoreLootLabs = Instance.new("Folder")
IgnoreLootLabs.Parent = Tab_2

local LootLabs = KeySystem:AttachButton(IgnoreLootLabs)
local LinkVertise = KeySystem:AttachButton(IgnoreLinkverstise)

Tab:SetAttribute("Selected", false)
Tab_2:SetAttribute("Selected", false)

local Selected = nil

LootLabs.MouseButton1Click:Connect(function()
	if not Tab_2:GetAttribute("Selected", false) then
		KeySystem:Notify({
			Content = "Copied Key Link To Clipboard",
			Duration = 3.5,
		})

		setclipboard("https://panscripts.com/phantom-flux-key-5/")
	end
end)

LinkVertise.MouseButton1Click:Connect(function()
	if not Tab:GetAttribute("Selected", false) then
		KeySystem:Notify({
			Content = "Copied Key Link To Clipboard",
			Duration = 3.5,
		})

		setclipboard("https://panscripts.com/phantom-flux-key-7/")
	end
end)

SupportButton.MouseButton1Click:Connect(function()
	KeySystem:Notify({
		Content = "Copied Discord Invite To Clipboard",
		Duration = 3.5,
	})

	setclipboard("https://discord.gg/TWRyHQgJsf")
end)

CheckKeyButton.MouseButton1Click:Connect(function()
	local InputKey = KeyBox.Text

	if InputKey == "" then
		KeySystem:Notify({
			Content = "Key Is Empty!",
			Duration = 3.5,
		})
	else
		if KeySystem:CheckKey(InputKey) then
			KeyBox.PlaceholderText = "Key Valid!"
			KeyBox.Text = InputKey
			saveKey(InputKey)
			task.wait(0.5)
		else
			KeySystem:Notify({
				Content = "Your Key Is Wrong Or Expired",
				Duration = 3.5,
			})
			KeyBox.Text = ""
			KeyBox.PlaceholderText = "Enter Key..."
		end
	end
end)

local savedKey = loadKey()
if savedKey then
	KeyBox.Text = savedKey
	KeyBox.PlaceholderText = "Saved Key Loaded"
	task.wait(0.1)
	processKeyCheck()
end

--// Animations
local CommonInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

TextBar_2.MouseEnter:Connect(function()
	TweenService:Create(TextBar_2, CommonInfo, {
		Size = UDim2.new(1.025, 0, 0, 40),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	}):Play()

	TweenService:Create(TextBar_2:FindFirstChild("Title"), CommonInfo, {
		TextColor3 = Color3.fromRGB(0, 0, 0),
	}):Play()

	TweenService:Create(TextBar_2:FindFirstChild("Glow"), CommonInfo, {
		ImageColor3 = Color3.fromRGB(255, 255, 255),
	}):Play()
end)

TextBar_2.MouseLeave:Connect(function()
	TweenService:Create(TextBar_2, CommonInfo, {
		Size = UDim2.new(1, 0, 0, 35),
		BackgroundColor3 = Color3.fromRGB(107, 208, 255),
	}):Play()

	TweenService:Create(TextBar_2:FindFirstChild("Title"), CommonInfo, {
		TextColor3 = Color3.fromRGB(255, 255, 255),
	}):Play()

	TweenService:Create(TextBar_2:FindFirstChild("Glow"), CommonInfo, {
		ImageColor3 = Color3.fromRGB(107, 208, 255),
	}):Play()
end)

KeyBox.Focused:Connect(function()
	TweenService:Create(TextBar, CommonInfo, {
		BackgroundTransparency = 0.65,
		Size = UDim2.new(1.025, 0, 0, 40),
	}):Play()
end)

KeyBox.FocusLost:Connect(function()
	TweenService:Create(TextBar, CommonInfo, {
		BackgroundTransparency = 0.76,
		Size = UDim2.new(1, 0, 0, 35),
	}):Play()
end)

for _, v in pairs(TabSection:GetChildren()) do
	if v:IsA("Frame") and v.Name ~= "Line" then
		v.MouseEnter:Connect(function()
			TweenService:Create(v, CommonInfo, {
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			}):Play()

			TweenService:Create(v:FindFirstChild("Title"), CommonInfo, {
				TextColor3 = Color3.fromRGB(0, 0, 0),
			}):Play()
		end)

		v.MouseLeave:Connect(function()
			if not v:GetAttribute("Selected", true) then
				TweenService:Create(v, CommonInfo, {
					BackgroundColor3 = Color3.fromRGB(107, 208, 255),
				}):Play()

				TweenService:Create(v:FindFirstChild("Title"), CommonInfo, {
					TextColor3 = Color3.fromRGB(255, 255, 255),
				}):Play()
			end
		end)
	end
end

return KeySystem
