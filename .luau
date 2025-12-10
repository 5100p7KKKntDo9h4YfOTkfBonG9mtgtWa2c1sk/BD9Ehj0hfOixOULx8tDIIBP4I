local ui_options = {
	main_color = Color3.fromRGB(150, 1, 1),
	min_size = Vector2.new(400, 300),
	toggle_key = Enum.KeyCode.C,
	can_resize = true,
}

do
	local imgui = game:GetService("CoreGui"):FindFirstChild("imgui")
	if imgui then imgui:Destroy() end
end

local imgui = Instance.new("ScreenGui")
local Prefabs = Instance.new("Frame")
local Label = Instance.new("TextLabel")
local Window = Instance.new("ImageLabel")
local Resizer = Instance.new("Frame")
local Bar = Instance.new("Frame")
local Toggle = Instance.new("ImageButton")
local Base = Instance.new("ImageLabel")
local Top = Instance.new("ImageLabel")
local Tabs = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TabSelection = Instance.new("ImageLabel")
local TabButtons = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Frame = Instance.new("Frame")
local Tab = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local TextBox = Instance.new("TextBox")
local TextBox_Roundify_4px = Instance.new("ImageLabel")
local Slider = Instance.new("ImageLabel")
local Title_2 = Instance.new("TextLabel")
local Indicator = Instance.new("ImageLabel")
local Value = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local Circle = Instance.new("ImageLabel")
local UIListLayout_3 = Instance.new("UIListLayout")
local Dropdown = Instance.new("TextButton")
local Indicator_2 = Instance.new("ImageLabel")
local Box = Instance.new("ImageButton")
local Objects = Instance.new("ScrollingFrame")
local UIListLayout_4 = Instance.new("UIListLayout")
local TextButton_Roundify_4px = Instance.new("ImageLabel")
local TabButton = Instance.new("TextButton")
local TextButton_Roundify_4px_2 = Instance.new("ImageLabel")
local Folder = Instance.new("ImageLabel")
local Button = Instance.new("TextButton")
local TextButton_Roundify_4px_3 = Instance.new("ImageLabel")
local Toggle_2 = Instance.new("ImageLabel")
local Objects_2 = Instance.new("Frame")
local UIListLayout_5 = Instance.new("UIListLayout")
local HorizontalAlignment = Instance.new("Frame")
local UIListLayout_6 = Instance.new("UIListLayout")
local Console = Instance.new("ImageLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Source = Instance.new("TextBox")
local Comments = Instance.new("TextLabel")
local Globals = Instance.new("TextLabel")
local Keywords = Instance.new("TextLabel")
local RemoteHighlight = Instance.new("TextLabel")
local Strings = Instance.new("TextLabel")
local Tokens = Instance.new("TextLabel")
local Numbers = Instance.new("TextLabel")
local Info = Instance.new("TextLabel")
local Lines = Instance.new("TextLabel")
local ColorPicker = Instance.new("ImageLabel")
local Palette = Instance.new("ImageLabel")
local Indicator_3 = Instance.new("ImageLabel")
local Sample = Instance.new("ImageLabel")
local Saturation = Instance.new("ImageLabel")
local Indicator_4 = Instance.new("Frame")
local Switch = Instance.new("TextButton")
local TextButton_Roundify_4px_4 = Instance.new("ImageLabel")
local Title_3 = Instance.new("TextLabel")
local Button_2 = Instance.new("TextButton")
local TextButton_Roundify_4px_5 = Instance.new("ImageLabel")
local DropdownButton = Instance.new("TextButton")
local Keybind = Instance.new("ImageLabel")
local Title_4 = Instance.new("TextLabel")
local Input = Instance.new("TextButton")
local Input_Roundify_4px = Instance.new("ImageLabel")
local Windows = Instance.new("Frame")
local MultiSelectButton = Instance.new("TextButton")
local CheckMark = Instance.new("TextLabel")

imgui.Name = "imgui"
imgui.Parent = game:GetService("CoreGui") or gethui()
imgui.ResetOnSpawn = false
imgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Prefabs.Name = "Prefabs"
Prefabs.Parent = imgui
Prefabs.BackgroundColor3 = Color3.new(1, 1, 1)
Prefabs.Size = UDim2.new(0, 100, 0, 100)
Prefabs.Visible = false

Label.Name = "Label"
Label.Parent = Prefabs
Label.BackgroundColor3 = Color3.new(1, 1, 1)
Label.BackgroundTransparency = 1
Label.Size = UDim2.new(0, 200, 0, 20)
Label.Font = Enum.Font.Bangers
Label.Text = "Hello, world 123"
Label.TextColor3 = Color3.new(1, 1, 1)
Label.TextSize = 17
Label.TextXAlignment = Enum.TextXAlignment.Left

Window.Name = "Window"
Window.Parent = Prefabs
Window.Active = true
Window.BackgroundColor3 = Color3.new(1, 1, 1)
Window.BackgroundTransparency = 1
Window.ClipsDescendants = true
Window.Position = UDim2.new(0, 20, 0, 20)
Window.Selectable = true
Window.Size = UDim2.new(0, 200, 0, 200)
Window.Image = "rbxassetid://2851926732"
Window.ImageColor3 = Color3.new(0.0823529, 0.0862745, 0.0901961)
Window.ScaleType = Enum.ScaleType.Slice
Window.SliceCenter = Rect.new(12, 12, 12, 12)

Resizer.Name = "Resizer"
Resizer.Parent = Window
Resizer.Active = true
Resizer.BackgroundColor3 = Color3.new(1, 1, 1)
Resizer.BackgroundTransparency = 1
Resizer.BorderSizePixel = 0
Resizer.Position = UDim2.new(1, -20, 1, -20)
Resizer.Size = UDim2.new(0, 20, 0, 20)

Bar.Name = "Bar"
Bar.Parent = Window
Bar.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0, 0, 0, 5)
Bar.Size = UDim2.new(1, 0, 0, 15)

Toggle.Name = "Toggle"
Toggle.Parent = Bar
Toggle.BackgroundColor3 = Color3.new(1, 1, 1)
Toggle.BackgroundTransparency = 1
Toggle.Position = UDim2.new(0, 5, 0, -2)
Toggle.Rotation = 90
Toggle.Size = UDim2.new(0, 20, 0, 20)
Toggle.ZIndex = 2
Toggle.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=600&height=600&assetId=107371206137546"

Base.Name = "Base"
Base.Parent = Bar
Base.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Base.BorderSizePixel = 0
Base.Position = UDim2.new(0, 0, 0.800000012, 0)
Base.Size = UDim2.new(1, 0, 0, 10)
Base.Image = "rbxassetid://2851926732"
Base.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Base.ScaleType = Enum.ScaleType.Slice
Base.SliceCenter = Rect.new(12, 12, 12, 12)

Top.Name = "Top"
Top.Parent = Bar
Top.BackgroundColor3 = Color3.new(1, 1, 1)
Top.BackgroundTransparency = 1
Top.Position = UDim2.new(0, 0, 0, -5)
Top.Size = UDim2.new(1, 0, 0, 10)
Top.Image = "rbxassetid://2851926732"
Top.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Top.ScaleType = Enum.ScaleType.Slice
Top.SliceCenter = Rect.new(12, 12, 12, 12)

Tabs.Name = "Tabs"
Tabs.Parent = Window
Tabs.BackgroundColor3 = Color3.new(1, 1, 1)
Tabs.BackgroundTransparency = 1
Tabs.Position = UDim2.new(0, 15, 0, 60)
Tabs.Size = UDim2.new(1, -30, 1, -60)

Title.Name = "Title"
Title.Parent = Window
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 30, 0, 3)
Title.Size = UDim2.new(0, 200, 0, 20)
Title.Font = Enum.Font.Bangers
Title.Text = "Gamer Time"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 20
Title.TextXAlignment = Enum.TextXAlignment.Left

TabSelection.Name = "TabSelection"
TabSelection.Parent = Window
TabSelection.BackgroundColor3 = Color3.new(1, 1, 1)
TabSelection.BackgroundTransparency = 1
TabSelection.Position = UDim2.new(0, 15, 0, 30)
TabSelection.Size = UDim2.new(1, -30, 0, 25)
TabSelection.Visible = false
TabSelection.Image = "rbxassetid://2851929490"
TabSelection.ImageColor3 = Color3.new(0.145098, 0.14902, 0.156863)
TabSelection.ScaleType = Enum.ScaleType.Slice
TabSelection.SliceCenter = Rect.new(4, 4, 4, 4)

TabButtons.Name = "TabButtons"
TabButtons.Parent = TabSelection
TabButtons.BackgroundColor3 = Color3.new(1, 1, 1)
TabButtons.BackgroundTransparency = 1
TabButtons.Size = UDim2.new(1, 0, 1, 0)

UIListLayout.Parent = TabButtons
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)

Frame.Parent = TabSelection
Frame.BackgroundColor3 = Color3.new(0.12549, 0.227451, 0.372549)
Frame.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 1, 0)
Frame.Size = UDim2.new(1, 0, 0, 2)

Tab.Name = "Tab"
Tab.Parent = Prefabs
Tab.BackgroundColor3 = Color3.new(1, 1, 1)
Tab.BackgroundTransparency = 1
Tab.Size = UDim2.new(1, 0, 1, 0)
Tab.Visible = false

UIListLayout_2.Parent = Tab
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 5)

TextBox.Parent = Prefabs
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BackgroundTransparency = 1
TextBox.BorderSizePixel = 0
TextBox.Size = UDim2.new(0, 275, 0, 20)
TextBox.ZIndex = 2
TextBox.Font = Enum.Font.GrenzeGotisch
TextBox.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
TextBox.PlaceholderText = "Input Text"
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextBox.TextSize = 25

TextBox_Roundify_4px.Name = "TextBox_Roundify_4px"
TextBox_Roundify_4px.Parent = TextBox
TextBox_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox_Roundify_4px.BackgroundTransparency = 1
TextBox_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
TextBox_Roundify_4px.Image = "rbxassetid://2851929490"
TextBox_Roundify_4px.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
TextBox_Roundify_4px.ScaleType = Enum.ScaleType.Slice
TextBox_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)

Slider.Name = "Slider"
Slider.Parent = Prefabs
Slider.BackgroundColor3 = Color3.new(1, 1, 1)
Slider.BackgroundTransparency = 1
Slider.Position = UDim2.new(0, 0, 0.178571433, 0)
Slider.Size = UDim2.new(1, 0, 0, 20)
Slider.Image = "rbxassetid://2851929490"
Slider.ImageColor3 = Color3.new(0.145098, 0.14902, 0.156863)
Slider.ScaleType = Enum.ScaleType.Slice
Slider.SliceCenter = Rect.new(4, 4, 4, 4)

Title_2.Name = "Title"
Title_2.Parent = Slider
Title_2.BackgroundColor3 = Color3.new(1, 1, 1)
Title_2.BackgroundTransparency = 1
Title_2.Position = UDim2.new(0.5, 0, 0.5, -10)
Title_2.Size = UDim2.new(0, 0, 0, 20)
Title_2.ZIndex = 2
Title_2.Font = Enum.Font.Merriweather
Title_2.Text = "Slider"
Title_2.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Title_2.TextSize = 17

Indicator.Name = "Indicator"
Indicator.Parent = Slider
Indicator.BackgroundColor3 = Color3.new(1, 1, 1)
Indicator.BackgroundTransparency = 1
Indicator.Size = UDim2.new(0, 0, 0, 20)
Indicator.Image = "rbxassetid://2851929490"
Indicator.ImageColor3 = Color3.new(0.254902, 0.262745, 0.278431)
Indicator.ScaleType = Enum.ScaleType.Slice
Indicator.SliceCenter = Rect.new(4, 4, 4, 4)

Value.Name = "Value"
Value.Parent = Slider
Value.BackgroundColor3 = Color3.new(1, 1, 1)
Value.BackgroundTransparency = 1
Value.Position = UDim2.new(1, -55, 0.5, -10)
Value.Size = UDim2.new(0, 50, 0, 20)
Value.Font = Enum.Font.Garamond
Value.Text = "0%"
Value.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Value.TextSize = 17

TextLabel.Parent = Slider
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(1, -20, -0.75, 0)
TextLabel.Size = UDim2.new(0, 26, 0, 50)
TextLabel.Font = Enum.Font.Garamond
TextLabel.Text = "]"
TextLabel.TextColor3 = Color3.new(0.627451, 0.627451, 0.627451)
TextLabel.TextSize = 17

TextLabel_2.Parent = Slider
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(1, -65, -0.75, 0)
TextLabel_2.Size = UDim2.new(0, 26, 0, 50)
TextLabel_2.Font = Enum.Font.Oswald
TextLabel_2.Text = "["
TextLabel_2.TextColor3 = Color3.new(0.627451, 0.627451, 0.627451)
TextLabel_2.TextSize = 17

Circle.Name = "Circle"
Circle.Parent = Prefabs
Circle.BackgroundColor3 = Color3.new(1, 1, 1)
Circle.BackgroundTransparency = 1
Circle.Image = "rbxassetid://266543268"
Circle.ImageTransparency = 0.5

UIListLayout_3.Parent = Prefabs
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 20)

Dropdown.Name = "Dropdown"
Dropdown.Parent = Prefabs
Dropdown.BackgroundColor3 = Color3.new(1, 1, 1)
Dropdown.BackgroundTransparency = 1
Dropdown.BorderSizePixel = 0
Dropdown.Position = UDim2.new(-0.055555556, 0, 0.0833333284, 0)
Dropdown.Size = UDim2.new(0, 275, 0, 20)
Dropdown.ZIndex = 2
Dropdown.Font = Enum.Font.Oswald
Dropdown.Text = "      Dropdown"
Dropdown.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Dropdown.TextSize = 18
Dropdown.TextXAlignment = Enum.TextXAlignment.Left

Indicator_2.Name = "Indicator"
Indicator_2.Parent = Dropdown
Indicator_2.BackgroundColor3 = Color3.new(1, 1, 1)
Indicator_2.BackgroundTransparency = 1
Indicator_2.Position = UDim2.new(0.899999976, -10, 0.100000001, 0)
Indicator_2.Rotation = -90
Indicator_2.Size = UDim2.new(0, 15, 0, 15)
Indicator_2.ZIndex = 2
Indicator_2.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4744658743"

Box.Name = "Box"
Box.Parent = Dropdown
Box.BackgroundColor3 = Color3.new(1, 1, 1)
Box.BackgroundTransparency = 1
Box.Position = UDim2.new(0, 0, 0, 25)
Box.Size = UDim2.new(1, 0, 0, 150)
Box.ZIndex = 3
Box.Image = "rbxassetid://2851929490"
Box.ImageColor3 = Color3.new(0.129412, 0.133333, 0.141176)
Box.ScaleType = Enum.ScaleType.Slice
Box.SliceCenter = Rect.new(4, 4, 4, 4)

Objects.Name = "Objects"
Objects.Parent = Box
Objects.BackgroundColor3 = Color3.new(1, 1, 1)
Objects.BackgroundTransparency = 1
Objects.BorderSizePixel = 0
Objects.Size = UDim2.new(1, 0, 1, 0)
Objects.ZIndex = 3
Objects.CanvasSize = UDim2.new(0, 0, 0, 0)
Objects.ScrollBarThickness = 8

UIListLayout_4.Parent = Objects
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

TextButton_Roundify_4px.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px.Parent = Dropdown
TextButton_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px.BackgroundTransparency = 1
TextButton_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
TextButton_Roundify_4px.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)

MultiSelectButton.Name = "MultiSelectButton"
MultiSelectButton.Parent = Prefabs
MultiSelectButton.BackgroundColor3 = Color3.new(0.129412, 0.133333, 0.141176)
MultiSelectButton.BorderSizePixel = 0
MultiSelectButton.Size = UDim2.new(1, 0, 0, 20)
MultiSelectButton.ZIndex = 3
MultiSelectButton.Font = Enum.Font.Oswald
MultiSelectButton.Text = "      Button"
MultiSelectButton.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
MultiSelectButton.TextSize = 18
MultiSelectButton.TextXAlignment = Enum.TextXAlignment.Left

CheckMark.Name = "CheckMark"
CheckMark.Parent = MultiSelectButton
CheckMark.BackgroundColor3 = Color3.new(1, 1, 1)
CheckMark.BackgroundTransparency = 1
CheckMark.Position = UDim2.new(1, -20, 0, 0)
CheckMark.Size = UDim2.new(0, 20, 0, 20)
CheckMark.ZIndex = 4
CheckMark.Font = Enum.Font.Oswald
CheckMark.Text = ""
CheckMark.TextColor3 = Color3.new(0, 1, 0)
CheckMark.TextSize = 18

TabButton.Name = "TabButton"
TabButton.Parent = Prefabs
TabButton.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TabButton.BackgroundTransparency = 1
TabButton.BorderSizePixel = 0
TabButton.Position = UDim2.new(0.185185179, 0, 0, 0)
TabButton.Size = UDim2.new(0, 71, 0, 20)
TabButton.ZIndex = 2
TabButton.Font = Enum.Font.Bangers
TabButton.Text = "Test tab"
TabButton.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TabButton.TextSize = 17

TextButton_Roundify_4px_2.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_2.Parent = TabButton
TextButton_Roundify_4px_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_2.BackgroundTransparency = 1
TextButton_Roundify_4px_2.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_2.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_2.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
TextButton_Roundify_4px_2.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_2.SliceCenter = Rect.new(4, 4, 4, 4)

Folder.Name = "Folder"
Folder.Parent = Prefabs
Folder.BackgroundColor3 = Color3.new(1, 1, 1)
Folder.BackgroundTransparency = 1
Folder.Position = UDim2.new(0, 0, 0, 50)
Folder.Size = UDim2.new(1, 0, 0, 20)
Folder.Image = "rbxassetid://2851929490"
Folder.ImageColor3 = Color3.new(0.0823529, 0.0862745, 0.0901961)
Folder.ScaleType = Enum.ScaleType.Slice
Folder.SliceCenter = Rect.new(4, 4, 4, 4)

Button.Name = "Button"
Button.Parent = Folder
Button.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Button.BackgroundTransparency = 1
Button.BorderSizePixel = 0
Button.Size = UDim2.new(1, 0, 0, 20)
Button.ZIndex = 2
Button.Font = Enum.Font.Bangers
Button.Text = "      Folder"
Button.TextColor3 = Color3.new(1, 1, 1)
Button.TextSize = 17
Button.TextXAlignment = Enum.TextXAlignment.Left

TextButton_Roundify_4px_3.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_3.Parent = Button
TextButton_Roundify_4px_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_3.BackgroundTransparency = 1
TextButton_Roundify_4px_3.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_3.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_3.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TextButton_Roundify_4px_3.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_3.SliceCenter = Rect.new(4, 4, 4, 4)

Toggle_2.Name = "Toggle"
Toggle_2.Parent = Button
Toggle_2.BackgroundColor3 = Color3.new(1, 1, 1)
Toggle_2.BackgroundTransparency = 1
Toggle_2.Position = UDim2.new(0, 5, 0, 0)
Toggle_2.Size = UDim2.new(0, 20, 0, 20)
Toggle_2.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4731371541"

Objects_2.Name = "Objects"
Objects_2.Parent = Folder
Objects_2.BackgroundColor3 = Color3.new(1, 1, 1)
Objects_2.BackgroundTransparency = 1
Objects_2.Position = UDim2.new(0, 10, 0, 25)
Objects_2.Size = UDim2.new(1, -10, 1, -25)
Objects_2.Visible = false

UIListLayout_5.Parent = Objects_2
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_5.Padding = UDim.new(0, 5)

HorizontalAlignment.Name = "HorizontalAlignment"
HorizontalAlignment.Parent = Prefabs
HorizontalAlignment.BackgroundColor3 = Color3.new(1, 1, 1)
HorizontalAlignment.BackgroundTransparency = 1
HorizontalAlignment.Size = UDim2.new(1, 0, 0, 20)

UIListLayout_6.Parent = HorizontalAlignment
UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_6.Padding = UDim.new(0, 5)

Console.Name = "Console"
Console.Parent = Prefabs
Console.BackgroundColor3 = Color3.new(1, 1, 1)
Console.BackgroundTransparency = 1
Console.Size = UDim2.new(1, 0, 0, 200)
Console.Image = "rbxassetid://2851928141"
Console.ImageColor3 = Color3.new(0.129412, 0.133333, 0.141176)
Console.ScaleType = Enum.ScaleType.Slice
Console.SliceCenter = Rect.new(8, 8, 8, 8)

ScrollingFrame.Parent = Console
ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(1, 0, 1, 1)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.ScrollBarThickness = 4

Source.Name = "Source"
Source.Parent = ScrollingFrame
Source.BackgroundColor3 = Color3.new(1, 1, 1)
Source.BackgroundTransparency = 1
Source.Position = UDim2.new(0, 40, 0, 0)
Source.Size = UDim2.new(1, -40, 0, 10000)
Source.ZIndex = 3
Source.ClearTextOnFocus = false
Source.Font = Enum.Font.Code
Source.MultiLine = true
Source.PlaceholderColor3 = Color3.new(0.8, 0.8, 0.8)
Source.Text = ""
Source.TextColor3 = Color3.new(1, 1, 1)
Source.TextSize = 15
Source.TextStrokeColor3 = Color3.new(1, 1, 1)
Source.TextWrapped = true
Source.TextXAlignment = Enum.TextXAlignment.Left
Source.TextYAlignment = Enum.TextYAlignment.Top

Comments.Name = "Comments"
Comments.Parent = Source
Comments.BackgroundColor3 = Color3.new(1, 1, 1)
Comments.BackgroundTransparency = 1
Comments.Size = UDim2.new(1, 0, 1, 0)
Comments.ZIndex = 5
Comments.Font = Enum.Font.Code
Comments.Text = ""
Comments.TextColor3 = Color3.new(0.231373, 0.784314, 0.231373)
Comments.TextSize = 15
Comments.TextXAlignment = Enum.TextXAlignment.Left
Comments.TextYAlignment = Enum.TextYAlignment.Top

Globals.Name = "Globals"
Globals.Parent = Source
Globals.BackgroundColor3 = Color3.new(1, 1, 1)
Globals.BackgroundTransparency = 1
Globals.Size = UDim2.new(1, 0, 1, 0)
Globals.ZIndex = 5
Globals.Font = Enum.Font.Code
Globals.Text = ""
Globals.TextColor3 = Color3.new(0.517647, 0.839216, 0.968628)
Globals.TextSize = 15
Globals.TextXAlignment = Enum.TextXAlignment.Left
Globals.TextYAlignment = Enum.TextYAlignment.Top

Keywords.Name = "Keywords"
Keywords.Parent = Source
Keywords.BackgroundColor3 = Color3.new(1, 1, 1)
Keywords.BackgroundTransparency = 1
Keywords.Size = UDim2.new(1, 0, 1, 0)
Keywords.ZIndex = 5
Keywords.Font = Enum.Font.Code
Keywords.Text = ""
Keywords.TextColor3 = Color3.new(0.972549, 0.427451, 0.486275)
Keywords.TextSize = 15
Keywords.TextXAlignment = Enum.TextXAlignment.Left
Keywords.TextYAlignment = Enum.TextYAlignment.Top

RemoteHighlight.Name = "RemoteHighlight"
RemoteHighlight.Parent = Source
RemoteHighlight.BackgroundColor3 = Color3.new(1, 1, 1)
RemoteHighlight.BackgroundTransparency = 1
RemoteHighlight.Size = UDim2.new(1, 0, 1, 0)
RemoteHighlight.ZIndex = 5
RemoteHighlight.Font = Enum.Font.Code
RemoteHighlight.Text = ""
RemoteHighlight.TextColor3 = Color3.new(0, 0.568627, 1)
RemoteHighlight.TextSize = 15
RemoteHighlight.TextXAlignment = Enum.TextXAlignment.Left
RemoteHighlight.TextYAlignment = Enum.TextYAlignment.Top

Strings.Name = "Strings"
Strings.Parent = Source
Strings.BackgroundColor3 = Color3.new(1, 1, 1)
Strings.BackgroundTransparency = 1
Strings.Size = UDim2.new(1, 0, 1, 0)
Strings.ZIndex = 5
Strings.Font = Enum.Font.Code
Strings.Text = ""
Strings.TextColor3 = Color3.new(0.678431, 0.945098, 0.584314)
Strings.TextSize = 15
Strings.TextXAlignment = Enum.TextXAlignment.Left
Strings.TextYAlignment = Enum.TextYAlignment.Top

Tokens.Name = "Tokens"
Tokens.Parent = Source
Tokens.BackgroundColor3 = Color3.new(1, 1, 1)
Tokens.BackgroundTransparency = 1
Tokens.Size = UDim2.new(1, 0, 1, 0)
Tokens.ZIndex = 5
Tokens.Font = Enum.Font.Code
Tokens.Text = ""
Tokens.TextColor3 = Color3.new(1, 1, 1)
Tokens.TextSize = 15
Tokens.TextXAlignment = Enum.TextXAlignment.Left
Tokens.TextYAlignment = Enum.TextYAlignment.Top

Numbers.Name = "Numbers"
Numbers.Parent = Source
Numbers.BackgroundColor3 = Color3.new(1, 1, 1)
Numbers.BackgroundTransparency = 1
Numbers.Size = UDim2.new(1, 0, 1, 0)
Numbers.ZIndex = 4
Numbers.Font = Enum.Font.Code
Numbers.Text = ""
Numbers.TextColor3 = Color3.new(1, 0.776471, 0)
Numbers.TextSize = 15
Numbers.TextXAlignment = Enum.TextXAlignment.Left
Numbers.TextYAlignment = Enum.TextYAlignment.Top

Info.Name = "Info"
Info.Parent = Source
Info.BackgroundColor3 = Color3.new(1, 1, 1)
Info.BackgroundTransparency = 1
Info.Size = UDim2.new(1, 0, 1, 0)
Info.ZIndex = 5
Info.Font = Enum.Font.Code
Info.Text = ""
Info.TextColor3 = Color3.new(0, 0.635294, 1)
Info.TextSize = 15
Info.TextXAlignment = Enum.TextXAlignment.Left
Info.TextYAlignment = Enum.TextYAlignment.Top

Lines.Name = "Lines"
Lines.Parent = ScrollingFrame
Lines.BackgroundColor3 = Color3.new(1, 1, 1)
Lines.BackgroundTransparency = 1
Lines.BorderSizePixel = 0
Lines.Size = UDim2.new(0, 40, 0, 10000)
Lines.ZIndex = 4
Lines.Font = Enum.Font.Code
Lines.Text = "1\n"
Lines.TextColor3 = Color3.new(1, 1, 1)
Lines.TextSize = 15
Lines.TextWrapped = true
Lines.TextYAlignment = Enum.TextYAlignment.Top

ColorPicker.Name = "ColorPicker"
ColorPicker.Parent = Prefabs
ColorPicker.BackgroundColor3 = Color3.new(1, 1, 1)
ColorPicker.BackgroundTransparency = 1
ColorPicker.Size = UDim2.new(0, 180, 0, 110)
ColorPicker.Image = "rbxassetid://2851929490"
ColorPicker.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
ColorPicker.ScaleType = Enum.ScaleType.Slice
ColorPicker.SliceCenter = Rect.new(4, 4, 4, 4)

Palette.Name = "Palette"
Palette.Parent = ColorPicker
Palette.BackgroundColor3 = Color3.new(1, 1, 1)
Palette.BackgroundTransparency = 1
Palette.Position = UDim2.new(0.0500000007, 0, 0.0500000007, 0)
Palette.Size = UDim2.new(0, 100, 0, 100)
Palette.Image = "rbxassetid://698052001"
Palette.ScaleType = Enum.ScaleType.Slice
Palette.SliceCenter = Rect.new(4, 4, 4, 4)

Indicator_3.Name = "Indicator"
Indicator_3.Parent = Palette
Indicator_3.BackgroundColor3 = Color3.new(1, 1, 1)
Indicator_3.BackgroundTransparency = 1
Indicator_3.Size = UDim2.new(0, 5, 0, 5)
Indicator_3.ZIndex = 2
Indicator_3.Image = "rbxassetid://2851926732"
Indicator_3.ImageColor3 = Color3.new(0, 0, 0)
Indicator_3.ScaleType = Enum.ScaleType.Slice
Indicator_3.SliceCenter = Rect.new(12, 12, 12, 12)

Sample.Name = "Sample"
Sample.Parent = ColorPicker
Sample.BackgroundColor3 = Color3.new(1, 1, 1)
Sample.BackgroundTransparency = 1
Sample.Position = UDim2.new(0.800000012, 0, 0.0500000007, 0)
Sample.Size = UDim2.new(0, 25, 0, 25)
Sample.Image = "rbxassetid://2851929490"
Sample.ScaleType = Enum.ScaleType.Slice
Sample.SliceCenter = Rect.new(4, 4, 4, 4)

Saturation.Name = "Saturation"
Saturation.Parent = ColorPicker
Saturation.BackgroundColor3 = Color3.new(1, 1, 1)
Saturation.Position = UDim2.new(0.649999976, 0, 0.0500000007, 0)
Saturation.Size = UDim2.new(0, 15, 0, 100)
Saturation.Image = "rbxassetid://3641079629"

Indicator_4.Name = "Indicator"
Indicator_4.Parent = Saturation
Indicator_4.BackgroundColor3 = Color3.new(1, 1, 1)
Indicator_4.BorderSizePixel = 0
Indicator_4.Size = UDim2.new(0, 20, 0, 2)
Indicator_4.ZIndex = 2

Switch.Name = "Switch"
Switch.Parent = Prefabs
Switch.BackgroundColor3 = Color3.new(1, 1, 1)
Switch.BackgroundTransparency = 1
Switch.BorderSizePixel = 0
Switch.Position = UDim2.new(0.229411766, 0, 0.20714286, 0)
Switch.Size = UDim2.new(0, 20, 0, 20)
Switch.ZIndex = 2
Switch.Font = Enum.Font.Arimo
Switch.Text = ""
Switch.TextColor3 = Color3.new(1, 1, 1)
Switch.TextSize = 18

TextButton_Roundify_4px_4.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_4.Parent = Switch
TextButton_Roundify_4px_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_4.BackgroundTransparency = 1
TextButton_Roundify_4px_4.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_4.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_4.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TextButton_Roundify_4px_4.ImageTransparency = 0.5
TextButton_Roundify_4px_4.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_4.SliceCenter = Rect.new(4, 4, 4, 4)

Title_3.Name = "Title"
Title_3.Parent = Switch
Title_3.BackgroundColor3 = Color3.new(1, 1, 1)
Title_3.BackgroundTransparency = 1
Title_3.Position = UDim2.new(1.20000005, 0, 0, 0)
Title_3.Size = UDim2.new(0, 21, 0, 21)
Title_3.Font = Enum.Font.Garamond
Title_3.Text = "Switch"
Title_3.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Title_3.TextSize = 19
Title_3.TextXAlignment = Enum.TextXAlignment.Left

Button_2.Name = "Button"
Button_2.Parent = Prefabs
Button_2.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Button_2.BackgroundTransparency = 1
Button_2.BorderSizePixel = 0
Button_2.Size = UDim2.new(0, 91, 0, 20)
Button_2.ZIndex = 2
Button_2.Font = Enum.Font.BuilderSansExtraBold
Button_2.TextColor3 = Color3.new(1, 1, 1)
Button_2.TextSize = 17

TextButton_Roundify_4px_5.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_5.Parent = Button_2
TextButton_Roundify_4px_5.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_5.BackgroundTransparency = 1
TextButton_Roundify_4px_5.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_5.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_5.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TextButton_Roundify_4px_5.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_5.SliceCenter = Rect.new(4, 4, 4, 4)

DropdownButton.Name = "DropdownButton"
DropdownButton.Parent = Prefabs
DropdownButton.BackgroundColor3 = Color3.new(0.129412, 0.133333, 0.141176)
DropdownButton.BorderSizePixel = 0
DropdownButton.Size = UDim2.new(1, 0, 0, 20)
DropdownButton.ZIndex = 3
DropdownButton.Font = Enum.Font.Oswald
DropdownButton.Text = "      Button"
DropdownButton.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
DropdownButton.TextSize = 18
DropdownButton.TextXAlignment = Enum.TextXAlignment.Left

Keybind.Name = "Keybind"
Keybind.Parent = Prefabs
Keybind.BackgroundColor3 = Color3.new(1, 1, 1)
Keybind.BackgroundTransparency = 1
Keybind.Size = UDim2.new(0, 200, 0, 20)
Keybind.Image = "rbxassetid://2851929490"
Keybind.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
Keybind.ScaleType = Enum.ScaleType.Slice
Keybind.SliceCenter = Rect.new(4, 4, 4, 4)

Title_4.Name = "Title"
Title_4.Parent = Keybind
Title_4.BackgroundColor3 = Color3.new(1, 1, 1)
Title_4.BackgroundTransparency = 1
Title_4.Size = UDim2.new(0, 0, 1, 0)
Title_4.Font = Enum.Font.Garamond
Title_4.Text = "Keybind"
Title_4.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Title_4.TextSize = 17
Title_4.TextXAlignment = Enum.TextXAlignment.Left

Input.Name = "Input"
Input.Parent = Keybind
Input.BackgroundColor3 = Color3.new(1, 1, 1)
Input.BackgroundTransparency = 1
Input.BorderSizePixel = 0
Input.Position = UDim2.new(1, -85, 0, 2)
Input.Size = UDim2.new(0, 80, 1, -4)
Input.ZIndex = 2
Input.Font = Enum.Font.Garamond
Input.Text = "RShift"
Input.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Input.TextSize = 12
Input.TextWrapped = true

Input_Roundify_4px.Name = "Input_Roundify_4px"
Input_Roundify_4px.Parent = Input
Input_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
Input_Roundify_4px.BackgroundTransparency = 1
Input_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
Input_Roundify_4px.Image = "rbxassetid://2851929490"
Input_Roundify_4px.ImageColor3 = Color3.new(0.290196, 0.294118, 0.313726)
Input_Roundify_4px.ScaleType = Enum.ScaleType.Slice
Input_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)

Windows.Name = "Windows"
Windows.Parent = imgui
Windows.BackgroundColor3 = Color3.new(1, 1, 1)
Windows.BackgroundTransparency = 1
Windows.Position = UDim2.new(0, 20, 0, 20)
Windows.Size = UDim2.new(1, 20, 1, -20)

script.Parent = imgui

local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RS = game:GetService("RunService")
local ps = game:GetService("Players")

local p = ps.LocalPlayer
local mouse = p:GetMouse()

local Prefabs = script.Parent:WaitForChild("Prefabs")
local Windows = script.Parent:FindFirstChild("Windows")

local checks = {
	["binding"] = false,
}

UIS.InputBegan:Connect(function(input, gameProcessed)
	if input.KeyCode == ((typeof(ui_options.toggle_key) == "EnumItem") and ui_options.toggle_key or Enum.KeyCode.RightShift) then
		if script.Parent then
			if not checks.binding then
				script.Parent.Enabled = not script.Parent.Enabled
			end
		end
	end
end)

local function Resize(part, new, _delay)
	_delay = _delay or 0.5
	local tweenInfo = TweenInfo.new(_delay, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local tween = TweenService:Create(part, tweenInfo, new)
	tween:Play()
end

local function rgbtohsv(r, g, b)
	r, g, b = r / 255, g / 255, b / 255
	local max, min = math.max(r, g, b), math.min(r, g, b)
	local h, s, v
	v = max

	local d = max - min
	if max == 0 then
		s = 0
	else
		s = d / max
	end

	if max == min then
		h = 0
	else
		if max == r then
			h = (g - b) / d
			if g < b then
				h = h + 6
			end
		elseif max == g then
			h = (b - r) / d + 2
		elseif max == b then
			h = (r - g) / d + 4
		end
		h = h / 6
	end

	return h, s, v
end

local function hasprop(object, prop)
	local a, b = pcall(function()
		return object[tostring(prop)]
	end)
	if a then
		return b
	end
end

local function gNameLen(obj)
	return obj.TextBounds.X + 15
end

local function gMouse()
	return Vector2.new(UIS:GetMouseLocation().X + 1, UIS:GetMouseLocation().Y - 35)
end

local function ripple(button, x, y)
	spawn(function()
		button.ClipsDescendants = true

		local circle = Prefabs:FindFirstChild("Circle"):Clone()

		circle.Parent = button
		circle.ZIndex = 1000

		local new_x = x - circle.AbsolutePosition.X
		local new_y = y - circle.AbsolutePosition.Y
		circle.Position = UDim2.new(0, new_x, 0, new_y)

		local size = 0
		if button.AbsoluteSize.X > button.AbsoluteSize.Y then
			size = button.AbsoluteSize.X * 1.5
		elseif button.AbsoluteSize.X < button.AbsoluteSize.Y then
			size = button.AbsoluteSize.Y * 1.5
		elseif button.AbsoluteSize.X == button.AbsoluteSize.Y then
			size = button.AbsoluteSize.X * 1.5
		end

		circle:TweenSizeAndPosition(UDim2.new(0, size, 0, size), UDim2.new(0.5, -size / 2, 0.5, -size / 2), "Out", "Quad", 0.5, false, nil)
		Resize(circle, {ImageTransparency = 1}, 0.5)

		wait(0.5)
		circle:Destroy()
	end)
end

local windows = 0
local library = {}

local function format_windows()
	local ull = Prefabs:FindFirstChild("UIListLayout"):Clone()
	ull.Parent = Windows
	local data = {}

	for i,v in next, Windows:GetChildren() do
		if not (v:IsA("UIListLayout")) then
			data[v] = v.AbsolutePosition
		end
	end

	ull:Destroy()

	for i,v in next, data do
		i.Position = UDim2.new(0, v.X, 0, v.Y)
	end
end

function library:FormatWindows()
	format_windows()
end

function library:AddWindow(title, options)
	windows = windows + 1
	local dropdown_open = false
	title = tostring(title or "New Window")
	options = (typeof(options) == "table") and options or ui_options
	options.tween_time = 0.1

	local Window = Prefabs:FindFirstChild("Window"):Clone()
	Window.Parent = Windows
	Window:FindFirstChild("Title").Text = title
	Window.Size = UDim2.new(0, options.min_size.X, 0, options.min_size.Y)
	Window.ZIndex = Window.ZIndex + (windows * 10)

	do
		local Title = Window:FindFirstChild("Title")
		local Bar = Window:FindFirstChild("Bar")
		local Base = Bar:FindFirstChild("Base")
		local Top = Bar:FindFirstChild("Top")
		local SplitFrame = Window:FindFirstChild("TabSelection"):FindFirstChild("Frame")
		local Toggle = Bar:FindFirstChild("Toggle")

		spawn(function()
			while true do
				Bar.BackgroundColor3 = options.main_color
				Base.BackgroundColor3 = options.main_color
				Base.ImageColor3 = options.main_color
				Top.ImageColor3 = options.main_color
				SplitFrame.BackgroundColor3 = options.main_color

				RS.Heartbeat:Wait()
			end
		end)
	end

	local Resizer = Window:WaitForChild("Resizer")
	local window_data = {}
	Window.Draggable = true
	
	do
		local oldIcon = mouse.Icon
		local Entered = false
		Resizer.MouseEnter:Connect(function()
			Window.Draggable = false
			if options.can_resize then
				oldIcon = mouse.Icon
			end
			Entered = true
		end)

		Resizer.MouseLeave:Connect(function()
			Entered = false
			if options.can_resize then
				mouse.Icon = oldIcon
			end
			Window.Draggable = true
		end)

		local Held = false
		local connection1, connection2
		
		connection1 = UIS.InputBegan:Connect(function(inputObject)
			if inputObject.UserInputType == Enum.UserInputType.MouseButton1 or inputObject.UserInputType == Enum.UserInputType.Touch then
				Held = true

				spawn(function()
					if Entered and Resizer.Active and options.can_resize then
						while Held and Resizer.Active do
							local mouse_location = gMouse()
							
							if inputObject.UserInputType == Enum.UserInputType.Touch then
								local touchPos = inputObject.Position
								mouse_location = Vector2.new(touchPos.X, touchPos.Y - 35)
							end
							
							local x = mouse_location.X - Window.AbsolutePosition.X
							local y = mouse_location.Y - Window.AbsolutePosition.Y

							if x >= options.min_size.X and y >= options.min_size.Y then
								Resize(Window, {Size = UDim2.new(0, x, 0, y)}, options.tween_time)
							elseif x >= options.min_size.X then
								Resize(Window, {Size = UDim2.new(0, x, 0, options.min_size.Y)}, options.tween_time)
							elseif y >= options.min_size.Y then
								Resize(Window, {Size = UDim2.new(0, options.min_size.X, 0, y)}, options.tween_time)
							else
								Resize(Window, {Size = UDim2.new(0, options.min_size.X, 0, options.min_size.Y)}, options.tween_time)
							end

							RS.Heartbeat:Wait()
						end
					end
				end)
			end
		end)
		
		connection2 = UIS.InputEnded:Connect(function(inputObject)
			if inputObject.UserInputType == Enum.UserInputType.MouseButton1 or inputObject.UserInputType == Enum.UserInputType.Touch then
				Held = false
			end
		end)
	end

	do
		local open_close = Window:FindFirstChild("Bar"):FindFirstChild("Toggle")
		local open = true
		local canopen = true

		local oldwindowdata = {}
		local oldy = Window.AbsoluteSize.Y
		open_close.MouseButton1Click:Connect(function()
			if canopen then
				canopen = false

				if open then
					oldwindowdata = {}
					for i,v in next, Window:FindFirstChild("Tabs"):GetChildren() do
						oldwindowdata[v] = v.Visible
						v.Visible = false
					end

					Resizer.Active = false

					oldy = Window.AbsoluteSize.Y
					Resize(open_close, {Rotation = 0}, options.tween_time)
					Resize(Window, {Size = UDim2.new(0, Window.AbsoluteSize.X, 0, 26)}, options.tween_time)
					open_close.Parent:FindFirstChild("Base").Transparency = 1

				else
					for i,v in next, oldwindowdata do
						i.Visible = v
					end

					Resizer.Active = true

					Resize(open_close, {Rotation = 90}, options.tween_time)
					Resize(Window, {Size = UDim2.new(0, Window.AbsoluteSize.X, 0, oldy)}, options.tween_time)
					open_close.Parent:FindFirstChild("Base").Transparency = 0

				end

				open = not open
				wait(options.tween_time)
				canopen = true

			end
		end)
	end

	do
		local tabs = Window:FindFirstChild("Tabs")
		local tab_selection = Window:FindFirstChild("TabSelection")
		local tab_buttons = tab_selection:FindFirstChild("TabButtons")

		function window_data:AddTab(tab_name)
			local tab_data = {}
			tab_name = tostring(tab_name or "New Tab")
			tab_selection.Visible = true

			local new_button = Prefabs:FindFirstChild("TabButton"):Clone()
			new_button.Parent = tab_buttons
			new_button.Text = tab_name
			new_button.Size = UDim2.new(0, gNameLen(new_button), 0, 20)
			new_button.ZIndex = new_button.ZIndex + (windows * 10)
			new_button:GetChildren()[1].ZIndex = new_button:GetChildren()[1].ZIndex + (windows * 10)

			local new_tab = Prefabs:FindFirstChild("Tab"):Clone()
			new_tab.Parent = tabs
			new_tab.ZIndex = new_tab.ZIndex + (windows * 10)

			local function show()
				if dropdown_open then return end
				for i, v in next, tab_buttons:GetChildren() do
					if not (v:IsA("UIListLayout")) then
						v:GetChildren()[1].ImageColor3 = Color3.fromRGB(52, 53, 56)
						Resize(v, {Size = UDim2.new(0, v.AbsoluteSize.X, 0, 20)}, options.tween_time)
					end
				end
				for i, v in next, tabs:GetChildren() do
					v.Visible = false
				end

				Resize(new_button, {Size = UDim2.new(0, new_button.AbsoluteSize.X, 0, 25)}, options.tween_time)
				new_button:GetChildren()[1].ImageColor3 = Color3.fromRGB(73, 75, 79)
				new_tab.Visible = true
			end

			new_button.MouseButton1Click:Connect(function()
				show()
			end)

			function tab_data:Show()
				show()
			end
			
			function tab_data:AddLabel(text)
				text = tostring(text or "New Label")
				
				local new_label = Prefabs:FindFirstChild("Label"):Clone()
				new_label.Parent = new_tab
				new_label.Text = text
				new_label.ZIndex = new_label.ZIndex + (windows * 10)
				
				local label_data = {}
				
				function label_data:Set(new_text)
					new_label.Text = tostring(new_text)
				end
				
				return label_data
			end

			function tab_data:AddButton(text, callback)
				text = tostring(text or "New Button")
				callback = (typeof(callback) == "function") and callback or function() end
				
				local new_button = Prefabs:FindFirstChild("Button"):Clone()
				new_button.Parent = new_tab
				new_button.Text = text
				new_button.Size = UDim2.new(0, gNameLen(new_button), 0, 20)
				new_button.ZIndex = new_button.ZIndex + (windows * 10)
				new_button:GetChildren()[1].ZIndex = new_button:GetChildren()[1].ZIndex + (windows * 10)
				
				spawn(function()
					while true do
						if new_button and new_button:GetChildren()[1] then
							new_button:GetChildren()[1].ImageColor3 = options.main_color
						end
						RS.Heartbeat:Wait()
					end
				end)
				
				new_button.MouseButton1Click:Connect(function()
					ripple(new_button, mouse.X, mouse.Y)
					callback()
				end)
				
				local button_data = {}
				
				function button_data:Set(new_text)
					new_button.Text = tostring(new_text)
					new_button.Size = UDim2.new(0, gNameLen(new_button), 0, 20)
				end
				
				return button_data
			end

			function tab_data:AddSwitch(text, default, callback)
				text = tostring(text or "New Switch")
				default = (typeof(default) == "boolean") and default or false
				callback = (typeof(callback) == "function") and callback or function() end
				
				local new_switch = Prefabs:FindFirstChild("Switch"):Clone()
				new_switch.Parent = new_tab
				new_switch:FindFirstChild("Title").Text = text
				new_switch.ZIndex = new_switch.ZIndex + (windows * 10)
				new_switch:GetChildren()[1].ZIndex = new_switch:GetChildren()[1].ZIndex + (windows * 10)
				new_switch:GetChildren()[2].ZIndex = new_switch:GetChildren()[2].ZIndex + (windows * 10)
				
				spawn(function()
					while true do
						if new_switch and new_switch:GetChildren()[1] then
							new_switch:GetChildren()[1].ImageColor3 = options.main_color
						end
						RS.Heartbeat:Wait()
					end
				end)
				
				local toggled = default
				
				if default then
					new_switch:GetChildren()[1].ImageTransparency = 0
				end
				
				new_switch.MouseButton1Click:Connect(function()
					toggled = not toggled
					
					if toggled then
						Resize(new_switch:GetChildren()[1], {ImageTransparency = 0}, options.tween_time)
					else
						Resize(new_switch:GetChildren()[1], {ImageTransparency = 0.5}, options.tween_time)
					end
					
					callback(toggled)
				end)
				
				local switch_data = {}
				
				function switch_data:Set(bool, no_callback)
					toggled = (typeof(bool) == "boolean") and bool or false
					
					if toggled then
						Resize(new_switch:GetChildren()[1], {ImageTransparency = 0}, options.tween_time)
					else
						Resize(new_switch:GetChildren()[1], {ImageTransparency = 0.5}, options.tween_time)
					end
					
					if not no_callback then
						callback(toggled)
					end
				end
				
				function switch_data:Get()
					return toggled
				end
				
				return switch_data
			end

			function tab_data:AddTextBox(text, default, callback)
				text = tostring(text or "Input Text")
				default = tostring(default or "")
				callback = (typeof(callback) == "function") and callback or function() end
				
				local new_textbox = Prefabs:FindFirstChild("TextBox"):Clone()
				new_textbox.Parent = new_tab
				new_textbox.PlaceholderText = text
				new_textbox.Text = default
				new_textbox.ZIndex = new_textbox.ZIndex + (windows * 10)
				new_textbox:GetChildren()[1].ZIndex = new_textbox:GetChildren()[1].ZIndex + (windows * 10)
				
				new_textbox.FocusLost:Connect(function(enterPressed)
					if enterPressed then
						callback(new_textbox.Text)
					end
				end)
				
				local textbox_data = {}
				
				function textbox_data:Set(new_text)
					new_textbox.Text = tostring(new_text)
				end
				
				function textbox_data:Get()
					return new_textbox.Text
				end
				
				return textbox_data
			end

			function tab_data:AddSlider(text, min, max, default, callback)
				text = tostring(text or "Slider")
				min = (typeof(min) == "number") and min or 0
				max = (typeof(max) == "number") and max or 100
				default = (typeof(default) == "number") and default or 0
				callback = (typeof(callback) == "function") and callback or function() end
				
				if default < min then default = min end
				if default > max then default = max end
				
				local new_slider = Prefabs:FindFirstChild("Slider"):Clone()
				new_slider.Parent = new_tab
				new_slider:FindFirstChild("Title").Text = text
				new_slider.ZIndex = new_slider.ZIndex + (windows * 10)
				
				for i,v in pairs(new_slider:GetDescendants()) do
					if v:IsA("GuiObject") then
						v.ZIndex = v.ZIndex + (windows * 10)
					end
				end
				
				local indicator = new_slider:FindFirstChild("Indicator")
				local value_label = new_slider:FindFirstChild("Value")
				
				local function update(val)
					local percent = (val - min) / (max - min)
					indicator.Size = UDim2.new(percent, 0, 0, 20)
					value_label.Text = tostring(math.floor(val))
					callback(val)
				end
				
				update(default)
				
				local Entered = false
				new_slider.MouseEnter:Connect(function()
					Entered = true
					Window.Draggable = false
				end)
				new_slider.MouseLeave:Connect(function()
					Entered = false
					Window.Draggable = true
				end)
				
				local Held = false
				UIS.InputBegan:Connect(function(inputObject)
					if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
						Held = true
						
						spawn(function()
							if Entered and (not dropdown_open) then
								while Held do
									local mouse_pos = gMouse()
									local rel_pos = mouse_pos.X - new_slider.AbsolutePosition.X
									local percent = math.clamp(rel_pos / new_slider.AbsoluteSize.X, 0, 1)
									local val = min + ((max - min) * percent)
									
									update(val)
									RS.Heartbeat:Wait()
								end
							end
						end)
					end
				end)
				
				UIS.InputEnded:Connect(function(inputObject)
					if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
						Held = false
					end
				end)
				
				local slider_data = {}
				
				function slider_data:Set(val)
					val = (typeof(val) == "number") and val or default
					if val < min then val = min end
					if val > max then val = max end
					update(val)
				end
				
				function slider_data:Get()
					return tonumber(value_label.Text)
				end
				
				return slider_data
			end

			function tab_data:AddDropdown(text, options_list, default, callback)
				text = tostring(text or "Dropdown")
				options_list = (typeof(options_list) == "table") and options_list or {}
				default = default or options_list[1] or ""
				callback = (typeof(callback) == "function") and callback or function() end
				
				local new_dropdown = Prefabs:FindFirstChild("Dropdown"):Clone()
				new_dropdown.Parent = new_tab
				new_dropdown.Text = "      " .. text
				new_dropdown.ZIndex = new_dropdown.ZIndex + (windows * 10)
				
				for i,v in pairs(new_dropdown:GetDescendants()) do
					if v:IsA("GuiObject") then
						v.ZIndex = v.ZIndex + (windows * 10)
					end
				end
				
				local box = new_dropdown:FindFirstChild("Box")
				local objects = box:FindFirstChild("Objects")
				local indicator = new_dropdown:FindFirstChild("Indicator")
				
				box.Visible = false
				box.Size = UDim2.new(1, 0, 0, 0)
				local opened = false
				local selected = default
				
				for i, option in pairs(options_list) do
					local button = Prefabs:FindFirstChild("DropdownButton"):Clone()
					button.Parent = objects
					button.Text = "      " .. tostring(option)
					button.ZIndex = button.ZIndex + (windows * 10)
					
					button.MouseEnter:Connect(function()
						button.BackgroundColor3 = options.main_color
					end)
					button.MouseLeave:Connect(function()
						button.BackgroundColor3 = Color3.fromRGB(33, 34, 36)
					end)
					
					button.MouseButton1Click:Connect(function()
						if dropdown_open then
							selected = option
							new_dropdown.Text = "      " .. text .. ": " .. tostring(option)
							callback(option)
							
							opened = false
							dropdown_open = false
							Resize(box, {Size = UDim2.new(1, 0, 0, 0)}, options.tween_time)
							Resize(indicator, {Rotation = -90}, options.tween_time)
						end
					end)
				end
				
				local len = (#objects:GetChildren() - 1) * 20
				if #objects:GetChildren() - 1 >= 10 then
					len = 10 * 20
					objects.CanvasSize = UDim2.new(0, 0, (#objects:GetChildren() - 1) * 0.1, 0)
				end
				
				new_dropdown.MouseButton1Click:Connect(function()
					if dropdown_open then return end
					
					opened = not opened
					
					if opened then
						dropdown_open = true
						box.Visible = true
						Resize(box, {Size = UDim2.new(1, 0, 0, len)}, options.tween_time)
						Resize(indicator, {Rotation = 0}, options.tween_time)
					else
						dropdown_open = false
						Resize(box, {Size = UDim2.new(1, 0, 0, 0)}, options.tween_time)
						Resize(indicator, {Rotation = -90}, options.tween_time)
						wait(options.tween_time)
						box.Visible = false
					end
				end)
				
				if default ~= "" then
					new_dropdown.Text = "      " .. text .. ": " .. tostring(default)
				end
				
				local dropdown_data = {}
				
				function dropdown_data:Set(option)
					selected = option
					new_dropdown.Text = "      " .. text .. ": " .. tostring(option)
				end
				
				function dropdown_data:Get()
					return selected
				end
				
				function dropdown_data:Refresh(new_options, new_default)
					new_options = (typeof(new_options) == "table") and new_options or options_list
					new_default = new_default or new_options[1] or ""
					
					for i,v in pairs(objects:GetChildren()) do
						if not v:IsA("UIListLayout") then
							v:Destroy()
						end
					end
					
					for i, option in pairs(new_options) do
						local button = Prefabs:FindFirstChild("DropdownButton"):Clone()
						button.Parent = objects
						button.Text = "      " .. tostring(option)
						button.ZIndex = button.ZIndex + (windows * 10)
						
						button.MouseEnter:Connect(function()
							button.BackgroundColor3 = options.main_color
						end)
						button.MouseLeave:Connect(function()
							button.BackgroundColor3 = Color3.fromRGB(33, 34, 36)
						end)
						
						button.MouseButton1Click:Connect(function()
							if dropdown_open then
								selected = option
								new_dropdown.Text = "      " .. text .. ": " .. tostring(option)
								callback(option)
								
								opened = false
								dropdown_open = false
								Resize(box, {Size = UDim2.new(1, 0, 0, 0)}, options.tween_time)
								Resize(indicator, {Rotation = -90}, options.tween_time)
							end
						end)
					end
					
					len = (#objects:GetChildren() - 1) * 20
					if #objects:GetChildren() - 1 >= 10 then
						len = 10 * 20
						objects.CanvasSize = UDim2.new(0, 0, (#objects:GetChildren() - 1) * 0.1, 0)
					end
					
					if new_default ~= "" then
						selected = new_default
						new_dropdown.Text = "      " .. text .. ": " .. tostring(new_default)
					end
				end
				
				return dropdown_data
			end

			function tab_data:AddMultiDropdown(text, options_list, callback)
				text = tostring(text or "Multi Dropdown")
				options_list = (typeof(options_list) == "table") and options_list or {}
				callback = (typeof(callback) == "function") and callback or function() end
				
				local new_dropdown = Prefabs:FindFirstChild("Dropdown"):Clone()
				new_dropdown.Parent = new_tab
				new_dropdown.Text = "      " .. text
				new_dropdown.ZIndex = new_dropdown.ZIndex + (windows * 10)
				
				for i,v in pairs(new_dropdown:GetDescendants()) do
					if v:IsA("GuiObject") then
						v.ZIndex = v.ZIndex + (windows * 10)
					end
				end
				
				local box = new_dropdown:FindFirstChild("Box")
				local objects = box:FindFirstChild("Objects")
				local indicator = new_dropdown:FindFirstChild("Indicator")
				
				box.Visible = false
				box.Size = UDim2.new(1, 0, 0, 0)
				local opened = false
				local selected = {}
				
				for i, option in pairs(options_list) do
					local button = Prefabs:FindFirstChild("MultiSelectButton"):Clone()
					button.Parent = objects
					button.Text = "      " .. tostring(option)
					button.ZIndex = button.ZIndex + (windows * 10)
					button:FindFirstChild("CheckMark").ZIndex = button:FindFirstChild("CheckMark").ZIndex + (windows * 10)
					
					button.MouseEnter:Connect(function()
						button.BackgroundColor3 = options.main_color
					end)
					button.MouseLeave:Connect(function()
						button.BackgroundColor3 = Color3.fromRGB(33, 34, 36)
					end)
					
					button.MouseButton1Click:Connect(function()
						if selected[option] then
							selected[option] = nil
							button:FindFirstChild("CheckMark").Text = ""
						else
							selected[option] = true
							button:FindFirstChild("CheckMark").Text = "✓"
						end
						callback(selected)
					end)
				end
				
				local len = (#objects:GetChildren() - 1) * 20
				if #objects:GetChildren() - 1 >= 10 then
					len = 10 * 20
					objects.CanvasSize = UDim2.new(0, 0, (#objects:GetChildren() - 1) * 0.1, 0)
				end
				
				new_dropdown.MouseButton1Click:Connect(function()
					if dropdown_open and opened == false then return end
					
					opened = not opened
					
					if opened then
						dropdown_open = true
						box.Visible = true
						Resize(box, {Size = UDim2.new(1, 0, 0, len)}, options.tween_time)
						Resize(indicator, {Rotation = 0}, options.tween_time)
					else
						dropdown_open = false
						Resize(box, {Size = UDim2.new(1, 0, 0, 0)}, options.tween_time)
						Resize(indicator, {Rotation = -90}, options.tween_time)
						wait(options.tween_time)
						box.Visible = false
					end
				end)
				
				local multidropdown_data = {}
				
				function multidropdown_data:Get()
					return selected
				end
				
				function multidropdown_data:Clear()
					selected = {}
					for i,v in pairs(objects:GetChildren()) do
						if v:IsA("TextButton") then
							v:FindFirstChild("CheckMark").Text = ""
						end
					end
				end
				
				return multidropdown_data
			end

			function tab_data:AddColorPicker(default, callback)
				default = (typeof(default) == "Color3") and default or Color3.fromRGB(255, 255, 255)
				callback = (typeof(callback) == "function") and callback or function() end
				
				local new_colorpicker = Prefabs:FindFirstChild("ColorPicker"):Clone()
				new_colorpicker.Parent = new_tab
				new_colorpicker.ZIndex = new_colorpicker.ZIndex + (windows * 10)
				
				for i,v in pairs(new_colorpicker:GetDescendants()) do
					if v:IsA("GuiObject") then
						v.ZIndex = v.ZIndex + (windows * 10)
					end
				end
				
				local palette = new_colorpicker:FindFirstChild("Palette")
				local palette_indicator = palette:FindFirstChild("Indicator")
				local saturation = new_colorpicker:FindFirstChild("Saturation")
				local saturation_indicator = saturation:FindFirstChild("Indicator")
				local sample = new_colorpicker:FindFirstChild("Sample")
				
				local hue = 0
				local sat = 1
				local val = 1
				
				local function update()
					local color = Color3.fromHSV(hue, sat, val)
					sample.ImageColor3 = color
					palette.ImageColor3 = Color3.fromHSV(hue, 1, 1)
					callback(color)
				end
				
				do
					local color = Color3.fromHSV(hue, sat, val)
					sample.ImageColor3 = color
					saturation.ImageColor3 = Color3.fromHSV(hue, 1, 1)
				end
				
				local Entered1, Entered2 = false, false
				palette.MouseEnter:Connect(function()
					Window.Draggable = false
					Entered1 = true
				end)
				palette.MouseLeave:Connect(function()
					Window.Draggable = true
					Entered1 = false
				end)
				saturation.MouseEnter:Connect(function()
					Window.Draggable = false
					Entered2 = true
				end)
				saturation.MouseLeave:Connect(function()
					Window.Draggable = true
					Entered2 = false
				end)
				
				local Held = false
				UIS.InputBegan:Connect(function(inputObject)
					if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
						Held = true
						
						spawn(function()
							while Held and Entered1 and (not dropdown_open) do
								local mouse_pos = gMouse()
								
								local x = ((palette.AbsoluteSize.X - (mouse_pos.X - palette.AbsolutePosition.X)) + 1)
								local y = ((palette.AbsoluteSize.Y - (mouse_pos.Y - palette.AbsolutePosition.Y)) + 1.5)
								
								hue = x / 100
								sat = y / 100
								
								Resize(palette_indicator, {Position = UDim2.new(0, math.abs(x - 100) - (palette_indicator.AbsoluteSize.X / 2), 0, math.abs(y - 100) - (palette_indicator.AbsoluteSize.Y / 2))}, options.tween_time)
								
								update()
								RS.Heartbeat:Wait()
							end
							
							while Held and Entered2 and (not dropdown_open) do
								local mouse_pos = gMouse()
								local y = ((saturation.AbsoluteSize.Y - (mouse_pos.Y - saturation.AbsolutePosition.Y)) + 1.5)
								val = y / 100
								
								Resize(saturation_indicator, {Position = UDim2.new(0, 0, 0, math.abs(y - 100))}, options.tween_time)
								
								update()
								RS.Heartbeat:Wait()
							end
						end)
					end
				end)
				
				UIS.InputEnded:Connect(function(inputObject)
					if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
						Held = false
					end
				end)
				
				local h, s, v = rgbtohsv(default.R * 255, default.G * 255, default.B * 255)
				hue = h
				sat = s
				val = v
				update()
				
				palette_indicator.Position = UDim2.new(sat, 0, 1 - val, 0)
				saturation_indicator.Position = UDim2.new(0, 0, 1 - hue, 0)
				
				local colorpicker_data = {}
				
				function colorpicker_data:Set(color)
					color = (typeof(color) == "Color3") and color or default
					local h, s, v = rgbtohsv(color.R * 255, color.G * 255, color.B * 255)
					hue = h
					sat = s
					val = v
					update()
					palette_indicator.Position = UDim2.new(sat, 0, 1 - val, 0)
					saturation_indicator.Position = UDim2.new(0, 0, 1 - hue, 0)
				end
				
				function colorpicker_data:Get()
					return Color3.fromHSV(hue, sat, val)
				end
				
				return colorpicker_data
			end

			function tab_data:AddKeybind(text, default, callback)
				text = tostring(text or "Keybind")
				default = (typeof(default) == "EnumItem") and default or Enum.KeyCode.E
				callback = (typeof(callback) == "function") and callback or function() end
				
				local new_keybind = Prefabs:FindFirstChild("Keybind"):Clone()
				new_keybind.Parent = new_tab
				new_keybind:FindFirstChild("Title").Text = text
				new_keybind.ZIndex = new_keybind.ZIndex + (windows * 10)
				
				for i,v in pairs(new_keybind:GetDescendants()) do
					if v:IsA("GuiObject") then
						v.ZIndex = v.ZIndex + (windows * 10)
					end
				end
				
				local input_button = new_keybind:FindFirstChild("Input")
				local current_key = default
				
				local shortkeys = {
					RightControl = 'RightCtrl',
					LeftControl = 'LeftCtrl',
					LeftShift = 'LShift',
					RightShift = 'RShift',
					MouseButton1 = "Mouse1",
					MouseButton2 = "Mouse2"
				}
				
				local key = shortkeys[tostring(default):gsub("Enum.KeyCode.", "")] or tostring(default):gsub("Enum.KeyCode.", "")
				input_button.Text = key
				
				local binding = false
				
				input_button.MouseButton1Click:Connect(function()
					if not binding then
						binding = true
						checks.binding = true
						input_button.Text = "..."
						
						local connection
						connection = UIS.InputBegan:Connect(function(input, gameProcessed)
							if input.UserInputType == Enum.UserInputType.Keyboard then
								current_key = input.KeyCode
								local key = shortkeys[tostring(input.KeyCode):gsub("Enum.KeyCode.", "")] or tostring(input.KeyCode):gsub("Enum.KeyCode.", "")
								input_button.Text = key
								binding = false
								checks.binding = false
								connection:Disconnect()
							end
						end)
					end
				end)
				
				UIS.InputBegan:Connect(function(input, gameProcessed)
					if not binding and input.KeyCode == current_key then
						callback(current_key)
					end
				end)
				
				local keybind_data = {}
				
				function keybind_data:Set(key)
					key = (typeof(key) == "EnumItem") and key or default
					current_key = key
					local keytext = shortkeys[tostring(key):gsub("Enum.KeyCode.", "")] or tostring(key):gsub("Enum.KeyCode.", "")
					input_button.Text = keytext
				end
				
				function keybind_data:Get()
					return current_key
				end
				
				return keybind_data
			end

			function tab_data:AddFolder(text)
				text = tostring(text or "Folder")
				
				local new_folder = Prefabs:FindFirstChild("Folder"):Clone()
				new_folder.Parent = new_tab
				new_folder.ZIndex = new_folder.ZIndex + (windows * 10)
				
				local button = new_folder:FindFirstChild("Button")
				local objects = new_folder:FindFirstChild("Objects")
				local toggle = button:FindFirstChild("Toggle")
				
				button.Text = "      " .. text
				button.ZIndex = button.ZIndex + (windows * 10)
				
				for i,v in pairs(new_folder:GetDescendants()) do
					if v:IsA("GuiObject") then
						v.ZIndex = v.ZIndex + (windows * 10)
					end
				end
				
				spawn(function()
					while true do
						if button and button:GetChildren()[1] then
							button:GetChildren()[1].ImageColor3 = options.main_color
						end
						RS.Heartbeat:Wait()
					end
				end)
				
				local function gFolderLen()
					local n = 25
					for i,v in next, objects:GetChildren() do
						if not (v:IsA("UIListLayout")) then
							n = n + v.AbsoluteSize.Y + 5
						end
					end
					return n
				end
				
				local opened = false
				
				button.MouseButton1Click:Connect(function()
					opened = not opened
					objects.Visible = opened
					
					if opened then
						toggle.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4731371541"
						Resize(toggle, {Rotation = 90}, options.tween_time)
					else
						toggle.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4731371541"
						Resize(toggle, {Rotation = 0}, options.tween_time)
					end
					
					local size = gFolderLen()
					
					if opened then
						Resize(new_folder, {Size = UDim2.new(1, 0, 0, size)}, options.tween_time)
					else
						Resize(new_folder, {Size = UDim2.new(1, 0, 0, 20)}, options.tween_time)
					end
				end)
				
				spawn(function()
					while true do
						if opened then
							Resize(new_folder, {Size = UDim2.new(1, 0, 0, gFolderLen())}, options.tween_time)
						end
						wait()
					end
				end)
				
				local folder_data = {
					objects = objects
				}
				
				function folder_data:AddLabel(text)
					text = tostring(text or "New Label")
					
					local new_label = Prefabs:FindFirstChild("Label"):Clone()
					new_label.Parent = objects
					new_label.Text = text
					new_label.ZIndex = new_label.ZIndex + (windows * 10)
					
					local label_data = {}
					
					function label_data:Set(new_text)
						new_label.Text = tostring(new_text)
					end
					
					return label_data
				end

				function folder_data:AddButton(text, callback)
					text = tostring(text or "New Button")
					callback = (typeof(callback) == "function") and callback or function() end
					
					local new_button = Prefabs:FindFirstChild("Button"):Clone()
					new_button.Parent = objects
					new_button.Text = text
					new_button.Size = UDim2.new(0, gNameLen(new_button), 0, 20)
					new_button.ZIndex = new_button.ZIndex + (windows * 10)
					new_button:GetChildren()[1].ZIndex = new_button:GetChildren()[1].ZIndex + (windows * 10)
					
					spawn(function()
						while true do
							if new_button and new_button:GetChildren()[1] then
								new_button:GetChildren()[1].ImageColor3 = options.main_color
							end
							RS.Heartbeat:Wait()
						end
					end)
					
					new_button.MouseButton1Click:Connect(function()
						ripple(new_button, mouse.X, mouse.Y)
						callback()
					end)
					
					local button_data = {}
					
					function button_data:Set(new_text)
						new_button.Text = tostring(new_text)
						new_button.Size = UDim2.new(0, gNameLen(new_button), 0, 20)
					end
					
					return button_data
				end

				function folder_data:AddSwitch(text, default, callback)
					text = tostring(text or "New Switch")
					default = (typeof(default) == "boolean") and default or false
					callback = (typeof(callback) == "function") and callback or function() end
					
					local new_switch = Prefabs:FindFirstChild("Switch"):Clone()
					new_switch.Parent = objects
					new_switch:FindFirstChild("Title").Text = text
					new_switch.ZIndex = new_switch.ZIndex + (windows * 10)
					new_switch:GetChildren()[1].ZIndex = new_switch:GetChildren()[1].ZIndex + (windows * 10)
					new_switch:GetChildren()[2].ZIndex = new_switch:GetChildren()[2].ZIndex + (windows * 10)
					
					spawn(function()
						while true do
							if new_switch and new_switch:GetChildren()[1] then
								new_switch:GetChildren()[1].ImageColor3 = options.main_color
							end
							RS.Heartbeat:Wait()
						end
					end)
					
					local toggled = default
					
					if default then
						new_switch:GetChildren()[1].ImageTransparency = 0
					end
					
					new_switch.MouseButton1Click:Connect(function()
						toggled = not toggled
						
						if toggled then
							Resize(new_switch:GetChildren()[1], {ImageTransparency = 0}, options.tween_time)
						else
							Resize(new_switch:GetChildren()[1], {ImageTransparency = 0.5}, options.tween_time)
						end
						
						callback(toggled)
					end)
					
					local switch_data = {}
					
					function switch_data:Set(bool, no_callback)
						toggled = (typeof(bool) == "boolean") and bool or false
						
						if toggled then
							Resize(new_switch:GetChildren()[1], {ImageTransparency = 0}, options.tween_time)
						else
							Resize(new_switch:GetChildren()[1], {ImageTransparency = 0.5}, options.tween_time)
						end
						
						if not no_callback then
							callback(toggled)
						end
					end
					
					function switch_data:Get()
						return toggled
					end
					
					return switch_data
				end

				function folder_data:AddTextBox(text, default, callback)
					text = tostring(text or "Input Text")
					default = tostring(default or "")
					callback = (typeof(callback) == "function") and callback or function() end
					
					local new_textbox = Prefabs:FindFirstChild("TextBox"):Clone()
					new_textbox.Parent = objects
					new_textbox.PlaceholderText = text
					new_textbox.Text = default
					new_textbox.ZIndex = new_textbox.ZIndex + (windows * 10)
					new_textbox:GetChildren()[1].ZIndex = new_textbox:GetChildren()[1].ZIndex + (windows * 10)
					
					new_textbox.FocusLost:Connect(function(enterPressed)
						if enterPressed then
							callback(new_textbox.Text)
						end
					end)
					
					local textbox_data = {}
					
					function textbox_data:Set(new_text)
						new_textbox.Text = tostring(new_text)
					end
					
					function textbox_data:Get()
						return new_textbox.Text
					end
					
					return textbox_data
				end

				function folder_data:AddSlider(text, min, max, default, callback)
					text = tostring(text or "Slider")
					min = (typeof(min) == "number") and min or 0
					max = (typeof(max) == "number") and max or 100
					default = (typeof(default) == "number") and default or 0
					callback = (typeof(callback) == "function") and callback or function() end
					
					if default < min then default = min end
					if default > max then default = max end
					
					local new_slider = Prefabs:FindFirstChild("Slider"):Clone()
					new_slider.Parent = objects
					new_slider:FindFirstChild("Title").Text = text
					new_slider.ZIndex = new_slider.ZIndex + (windows * 10)
					
					for i,v in pairs(new_slider:GetDescendants()) do
						if v:IsA("GuiObject") then
							v.ZIndex = v.ZIndex + (windows * 10)
						end
					end
					
					local indicator = new_slider:FindFirstChild("Indicator")
					local value_label = new_slider:FindFirstChild("Value")
					
					local function update(val)
						local percent = (val - min) / (max - min)
						indicator.Size = UDim2.new(percent, 0, 0, 20)
						value_label.Text = tostring(math.floor(val))
						callback(val)
					end
					
					update(default)
					
					local Entered = false
					new_slider.MouseEnter:Connect(function()
						Entered = true
						Window.Draggable = false
					end)
					new_slider.MouseLeave:Connect(function()
						Entered = false
						Window.Draggable = true
					end)
					
					local Held = false
					UIS.InputBegan:Connect(function(inputObject)
						if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
							Held = true
							
							spawn(function()
								if Entered and (not dropdown_open) then
									while Held do
										local mouse_pos = gMouse()
										local rel_pos = mouse_pos.X - new_slider.AbsolutePosition.X
										local percent = math.clamp(rel_pos / new_slider.AbsoluteSize.X, 0, 1)
										local val = min + ((max - min) * percent)
										
										update(val)
										RS.Heartbeat:Wait()
									end
								end
							end)
						end
					end)
					
					UIS.InputEnded:Connect(function(inputObject)
						if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
							Held = false
						end
					end)
					
					local slider_data = {}
					
					function slider_data:Set(val)
						val = (typeof(val) == "number") and val or default
						if val < min then val = min end
						if val > max then val = max end
						update(val)
					end
					
					function slider_data:Get()
						return tonumber(value_label.Text)
					end
					
					return slider_data
				end

				function folder_data:AddDropdown(text, options_list, default, callback)
					text = tostring(text or "Dropdown")
					options_list = (typeof(options_list) == "table") and options_list or {}
					default = default or options_list[1] or ""
					callback = (typeof(callback) == "function") and callback or function() end
					
					local new_dropdown = Prefabs:FindFirstChild("Dropdown"):Clone()
					new_dropdown.Parent = objects
					new_dropdown.Text = "      " .. text
					new_dropdown.ZIndex = new_dropdown.ZIndex + (windows * 10)
					
					for i,v in pairs(new_dropdown:GetDescendants()) do
						if v:IsA("GuiObject") then
							v.ZIndex = v.ZIndex + (windows * 10)
						end
					end
					
					local box = new_dropdown:FindFirstChild("Box")
					local dropdown_objects = box:FindFirstChild("Objects")
					local indicator = new_dropdown:FindFirstChild("Indicator")
					
					box.Visible = false
					box.Size = UDim2.new(1, 0, 0, 0)
					local opened = false
					local selected = default
					
					for i, option in pairs(options_list) do
						local button = Prefabs:FindFirstChild("DropdownButton"):Clone()
						button.Parent = dropdown_objects
						button.Text = "      " .. tostring(option)
						button.ZIndex = button.ZIndex + (windows * 10)
						
						button.MouseEnter:Connect(function()
							button.BackgroundColor3 = options.main_color
						end)
						button.MouseLeave:Connect(function()
							button.BackgroundColor3 = Color3.fromRGB(33, 34, 36)
						end)
						
						button.MouseButton1Click:Connect(function()
							if dropdown_open then
								selected = option
								new_dropdown.Text = "      " .. text .. ": " .. tostring(option)
								callback(option)
								
								opened = false
								dropdown_open = false
								Resize(box, {Size = UDim2.new(1, 0, 0, 0)}, options.tween_time)
								Resize(indicator, {Rotation = -90}, options.tween_time)
							end
						end)
					end
					
					local len = (#dropdown_objects:GetChildren() - 1) * 20
					if #dropdown_objects:GetChildren() - 1 >= 10 then
						len = 10 * 20
						dropdown_objects.CanvasSize = UDim2.new(0, 0, (#dropdown_objects:GetChildren() - 1) * 0.1, 0)
					end
					
					new_dropdown.MouseButton1Click:Connect(function()
						if dropdown_open then return end
						
						opened = not opened
						
						if opened then
							dropdown_open = true
							box.Visible = true
							Resize(box, {Size = UDim2.new(1, 0, 0, len)}, options.tween_time)
							Resize(indicator, {Rotation = 0}, options.tween_time)
						else
							dropdown_open = false
							Resize(box, {Size = UDim2.new(1, 0, 0, 0)}, options.tween_time)
							Resize(indicator, {Rotation = -90}, options.tween_time)
							wait(options.tween_time)
							box.Visible = false
						end
					end)
					
					if default ~= "" then
						new_dropdown.Text = "      " .. text .. ": " .. tostring(default)
					end
					
					local dropdown_data = {}
					
					function dropdown_data:Set(option)
						selected = option
						new_dropdown.Text = "      " .. text .. ": " .. tostring(option)
					end
					
					function dropdown_data:Get()
						return selected
					end
					
					return dropdown_data
				end

				function folder_data:AddColorPicker(default, callback)
					default = (typeof(default) == "Color3") and default or Color3.fromRGB(255, 255, 255)
					callback = (typeof(callback) == "function") and callback or function() end
					
					local new_colorpicker = Prefabs:FindFirstChild("ColorPicker"):Clone()
					new_colorpicker.Parent = objects
					new_colorpicker.ZIndex = new_colorpicker.ZIndex + (windows * 10)
					
					for i,v in pairs(new_colorpicker:GetDescendants()) do
						if v:IsA("GuiObject") then
							v.ZIndex = v.ZIndex + (windows * 10)
						end
					end
					
					local palette = new_colorpicker:FindFirstChild("Palette")
					local palette_indicator = palette:FindFirstChild("Indicator")
					local saturation = new_colorpicker:FindFirstChild("Saturation")
					local saturation_indicator = saturation:FindFirstChild("Indicator")
					local sample = new_colorpicker:FindFirstChild("Sample")
					
					local hue = 0
					local sat = 1
					local val = 1
					
					local function update()
						local color = Color3.fromHSV(hue, sat, val)
						sample.ImageColor3 = color
						palette.ImageColor3 = Color3.fromHSV(hue, 1, 1)
						callback(color)
					end
					
					do
						local color = Color3.fromHSV(hue, sat, val)
						sample.ImageColor3 = color
						saturation.ImageColor3 = Color3.fromHSV(hue, 1, 1)
					end
					
					local Entered1, Entered2 = false, false
					palette.MouseEnter:Connect(function()
						Window.Draggable = false
						Entered1 = true
					end)
					palette.MouseLeave:Connect(function()
						Window.Draggable = true
						Entered1 = false
					end)
					saturation.MouseEnter:Connect(function()
						Window.Draggable = false
						Entered2 = true
					end)
					saturation.MouseLeave:Connect(function()
						Window.Draggable = true
						Entered2 = false
					end)
					
					local Held = false
					UIS.InputBegan:Connect(function(inputObject)
						if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
							Held = true
							
							spawn(function()
								while Held and Entered1 and (not dropdown_open) do
									local mouse_pos = gMouse()
									
									local x = ((palette.AbsoluteSize.X - (mouse_pos.X - palette.AbsolutePosition.X)) + 1)
									local y = ((palette.AbsoluteSize.Y - (mouse_pos.Y - palette.AbsolutePosition.Y)) + 1.5)
									
									hue = x / 100
									sat = y / 100
									
									Resize(palette_indicator, {Position = UDim2.new(0, math.abs(x - 100) - (palette_indicator.AbsoluteSize.X / 2), 0, math.abs(y - 100) - (palette_indicator.AbsoluteSize.Y / 2))}, options.tween_time)
									
									update()
									RS.Heartbeat:Wait()
								end
								
								while Held and Entered2 and (not dropdown_open) do
									local mouse_pos = gMouse()
									local y = ((saturation.AbsoluteSize.Y - (mouse_pos.Y - saturation.AbsolutePosition.Y)) + 1.5)
									val = y / 100
									
									Resize(saturation_indicator, {Position = UDim2.new(0, 0, 0, math.abs(y - 100))}, options.tween_time)
									
									update()
									RS.Heartbeat:Wait()
								end
							end)
						end
					end)
					
					UIS.InputEnded:Connect(function(inputObject)
						if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
							Held = false
						end
					end)
					
					local h, s, v = rgbtohsv(default.R * 255, default.G * 255, default.B * 255)
					hue = h
					sat = s
					val = v
					update()
					
					palette_indicator.Position = UDim2.new(sat, 0, 1 - val, 0)
					saturation_indicator.Position = UDim2.new(0, 0, 1 - hue, 0)
					
					local colorpicker_data = {}
					
					function colorpicker_data:Set(color)
						color = (typeof(color) == "Color3") and color or default
						local h, s, v = rgbtohsv(color.R * 255, color.G * 255, color.B * 255)
						hue = h
						sat = s
						val = v
						update()
						palette_indicator.Position = UDim2.new(sat, 0, 1 - val, 0)
						saturation_indicator.Position = UDim2.new(0, 0, 1 - hue, 0)
					end
					
					function colorpicker_data:Get()
						return Color3.fromHSV(hue, sat, val)
					end
					
					return colorpicker_data
				end

				function folder_data:AddKeybind(text, default, callback)
					text = tostring(text or "Keybind")
					default = (typeof(default) == "EnumItem") and default or Enum.KeyCode.E
					callback = (typeof(callback) == "function") and callback or function() end
					
					local new_keybind = Prefabs:FindFirstChild("Keybind"):Clone()
					new_keybind.Parent = objects
					new_keybind:FindFirstChild("Title").Text = text
					new_keybind.ZIndex = new_keybind.ZIndex + (windows * 10)
					
					for i,v in pairs(new_keybind:GetDescendants()) do
						if v:IsA("GuiObject") then
							v.ZIndex = v.ZIndex + (windows * 10)
						end
					end
					
					local input_button = new_keybind:FindFirstChild("Input")
					local current_key = default
					
					local shortkeys = {
						RightControl = 'RightCtrl',
						LeftControl = 'LeftCtrl',
						LeftShift = 'LShift',
						RightShift = 'RShift',
						MouseButton1 = "Mouse1",
						MouseButton2 = "Mouse2"
					}
					
					local key = shortkeys[tostring(default):gsub("Enum.KeyCode.", "")] or tostring(default):gsub("Enum.KeyCode.", "")
					input_button.Text = key
					
					local binding = false
					
					input_button.MouseButton1Click:Connect(function()
						if not binding then
							binding = true
							checks.binding = true
							input_button.Text = "..."
							
							local connection
							connection = UIS.InputBegan:Connect(function(input, gameProcessed)
								if input.UserInputType == Enum.UserInputType.Keyboard then
									current_key = input.KeyCode
									local key = shortkeys[tostring(input.KeyCode):gsub("Enum.KeyCode.", "")] or tostring(input.KeyCode):gsub("Enum.KeyCode.", "")
									input_button.Text = key
									binding = false
									checks.binding = false
									connection:Disconnect()
								end
							end)
						end
					end)
					
					UIS.InputBegan:Connect(function(input, gameProcessed)
						if not binding and input.KeyCode == current_key then
							callback(current_key)
						end
					end)
					
					local keybind_data = {}
					
					function keybind_data:Set(key)
						key = (typeof(key) == "EnumItem") and key or default
						current_key = key
						local keytext = shortkeys[tostring(key):gsub("Enum.KeyCode.", "")] or tostring(key):gsub("Enum.KeyCode.", "")
						input_button.Text = keytext
					end
					
					function keybind_data:Get()
						return current_key
					end
					
					return keybind_data
				end
				
				return folder_data
			end

			show()
			return tab_data
		end
	end

	Window.Visible = true
	return window_data
end

return library
	
	


