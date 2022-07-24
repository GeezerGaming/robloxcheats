getgenv().infstam = false;
getgenv().ks = false;
getgenv().autojoe = false
getgenv().StaffKick = false
getgenv().funnyspeed = false


-- IGNORE MY SHITTY CODE IT WORKS :)))) [FROG] -- it barely works bro im so retarded [frog in the future]

local Config = { 
    WindowName = "GEEZWARE Community v4 | RIOT",
	Color = Color3.fromRGB(32,92,167),
	Keybind = Enum.KeyCode.RightBracket
}

-- i hope you like paywalls

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))


local Tab1 = Window:CreateTab("Main")
local Tab3 = Window:CreateTab("Hitboxes")
local Tab4 = Window:CreateTab("Miscellaneous")
local Tab5 = Window:CreateTab("UI Settings")

local Section1 = Tab1:CreateSection("Main Shit")
local Section2 = Tab1:CreateSection("Extra Shit")
local Section9 = Tab4:CreateSection("Miscellaneous")
local sectionhead = Tab4:CreateSection("HeadSpoofing")
local Section7 = Tab3:CreateSection("Extend like G0D")
local Section4 = Tab5:CreateSection("Menu")
local Section5 = Tab5:CreateSection("Background")
local SectionT = Tab3:CreateSection("Other")



local Players = game:GetService("Players")
local plr = game:GetService("Players").LocalPlayer


local ts = game:GetService("TweenService")




local kyscunt = game:GetService("CoreGui")

local PISS = 2 -- what does this even mean? [frog]


---

--ill add the group check here eventually [frog]
---

function randommsg()
	local msgevent = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest 
	local rnum = math.random(1,7)
	
	print(rnum)
	if rnum == 1 then
	  msgevent:FireServer("we geez, therefore we are.", "All")
	elseif rnum == 2 then
	  msgevent:FireServer("geezer cannot be stopped", "All")
	elseif rnum == 3 then
	  msgevent:FireServer("im the geezer, i geez.", "All")
	elseif rnum == 4 then
	  msgevent:FireServer("geezer always returns", "All")
	elseif rnum == 5 then
	  msgevent:FireServer("im the geezer, say my name.", "All")
	elseif rnum == 6 then
	  msgevent:FireServer("do not harm the geezer.", "All")
	elseif rnum == 7 then
	  msgevent:FireServer("geezer never team, geezer only friend", "All") -- FUCK you for this SPELLING MISTAKE, your GEEZER2. (i fixed this so you dont get it)
end end


function disableconnection(path)
	for i, connection in pairs(getconnections(path)) do
		connection:Disable()
	end
end


function check(value)
	local rank = value:GetRoleInGroup(10294339)
	if rank == "Moderator" or rank == "Admin" or rank == "Developers" or rank == "Music Man" or rank == "Scripter" or rank == "Builder" or rank == "Crimson" or rank == "Dosko" or rank == "Astrix" then
		   game.Players.LocalPlayer:Kick(rank.." | "..value.Name.." | ".."Is In Server")
	   end
end


function THISISRETARDED()
	local msgevent = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
	local invite = "courd.gg / gTQWKuqSkB"
	local ranum = math.random(1,7)
	
	if ranum == 1 then
	  msgevent:FireServer("Get good get geezware today! "..invite, "All")
	elseif ranum == 2 then
	  msgevent:FireServer("shoulda had geezware! "..invite, "All")
	elseif ranum == 3 then
	  msgevent:FireServer("join the geezware server today! "..invite, "All")
	elseif ranum == 4 then
	  msgevent:FireServer(invite, "All")
	elseif ranum == 5 then
	  msgevent:FireServer("my dad works for riot and he says geezin is good. "..invite, "All")
	elseif ranum == 6 then
	  msgevent:FireServer("Ready to try geezware? "..invite, "All")
	elseif ranum == 7 then
	  msgevent:FireServer("geezware, one step ahead of the game. "..invite, "All")
end end



function tweentp(coords)
    local LCH = game:GetService("Players").LocalPlayer.Character
    local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

	local tweenInfo = TweenInfo.new(4,Enum.EasingStyle.Linear,Enum.EasingDirection.Out)
	ts:Create(HRP, tweenInfo, {CFrame = coords}):Play()
end


function autoJOE()
    while autojoe do
    fireclickdetector(game:GetService("Workspace").Joseph.ClickDetector)
    wait(2)
    end
end


-------------
local WEAPONLOL
local Dropdown1 = Section1:CreateDropdown("Weapon", {"Bat","Sword","Knife","Machete","Fists","Mace","Sign","Sledge Hammer","Pipe",}, function(String)
	WEAPONLOL = String
end)
Dropdown1:AddToolTip("Select what weapon to spawn with")
Dropdown1:SetOption("Bat")

local Button1 = Section1:CreateButton("Spawn Selected Weapon", function()
    local Weapo = {[1] = WEAPONLOL}game:GetService("ReplicatedStorage").Remotes.Weapons:InvokeServer(unpack(Weapo))
    wait()
    local Weapo = {[1] = WEAPONLOL}game:GetService("ReplicatedStorage").Remotes.Weapons:InvokeServer(unpack(Weapo))
end)
Button1:AddToolTip("Gives you selected weapon (will tp you to a random location)")


-----------
local Label1 = Section1:CreateLabel("Attributes")
Label1:UpdateText("Attributes")
------------

local Toggle1 = Section1:CreateToggle("Madness Mode", nil, function(State)
	plr:SetAttribute("MadnessMode", State)
end)

local Toggle2 = Section1:CreateToggle("Rage Mode", nil, function(State)
	plr:SetAttribute("RageMode", State)
end)

local Toggle3 = Section1:CreateToggle("Inf Stamina", nil, function(State)
	plr:SetAttribute("InfStamina", State)
end)

local Toggle4 = Section1:CreateToggle("Inf Dash", nil, function(State)
	plr:SetAttribute("InfiniteDash", State)
end)

local Toggle5 = Section1:CreateToggle("NoCooldown", nil, function(State)
	plr:SetAttribute("WeaponSpam", State)
end)


local Toggle66 = Section1:CreateToggle("Inf Accelerate", nil, function(State)
    getgenv().funnyspeed = State
    if funnyspeed then
    plr:SetAttribute("FunnySpeed", 15)
    elseif funnyspeed == false then
        plr:SetAttribute("FunnySpeed", false)
    end
end)

function setdowned(state)
local LCH = game:GetService("Players").LocalPlayer.Character
local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
LCH:SetAttribute("Downed", state)
end

local Toggle6 = Section1:CreateToggle("Downed", nil, function(State)
	setdowned(State)
end)
Toggle6:AddToolTip("Changes your downed state.")

-- haha no antiaim (FUCK YOU)
-- TP INSTEAD!!!!



local PBuy = game:GetService("Workspace").PBuyables
local SelArea
local Dropdown1 = Section2:CreateDropdown("Teleports", {"BladeProxPart","AppleProxPart","PizzaProxPart","HammerProxPart","WaterProxPart","ColaProxPart","MolotovProxPart","MetalBatProxPart","AxeProxPart","SignProxPart","MaceProxPart","BandageProxPart","CheeseProxPart","RageProxPart","PipeProxPart","PanProxPart"}, function(String)
	SelArea = String
end)
Dropdown1:AddToolTip("Teleport to purchasable (buggy)")
Dropdown1:SetOption("BladeProxPart")

local Button1 = Section2:CreateButton("Teleport", function()
    tweentp(PBuy[SelArea].CFrame)
end)

local Button211 = Section2:CreateButton("Teleport to box", function()
    for i,v in pairs(game:GetService("Workspace").Mystery:GetDescendants()) do
        if v.Name == "Indicator" then tweentp(v.CFrame) end end
end)


local Button2h12 = Section2:CreateButton("No jump cooldown", function()
	disableconnection(game:GetService("UserInputService").JumpRequest)
end)

local ButtonMace = Section2:CreateButton("Activate Old Mace", function()
	for i,v in pairs(getgc(true)) do 
		if type(v) == 'table' and rawget(v,'Mace') then
			v.Mace.Animations = {
			Attacks = { 6732276839, 6732281350, 6732283066 }, 
			Equip = 6789836832, 
			Idle = 6748119246
		} 
		end 
	end
end) -- ned
ButtonMace:AddToolTip("Execute before buying Mace.")


function oldanims()
    local LCH = game:GetService("Players").LocalPlayer.Character
    local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

LCH["Carry/Finish"].Finish.AnimationId = "rbxassetid://7121695954"

wait()
for i,v in pairs(getgc(true)) do 
	if type(v) == 'table' and rawget(v,'Mace') then
		v.Mace.Animations = {
		Attacks = { 6732276839, 6732281350, 6732283066 }, 
		Equip = 6789836832, 
		Idle = 6748119246
	} 
	v.Sign.Animations = {
		Attacks = { 6824974395 }, 
		Equip = 6824988916, 
		Idle = 6824982196
	} 
end end
end

local Buttonfizn = Section2:CreateButton("Enable Old Animations", function()
	oldanims()
end)
Buttonfizn:AddToolTip("Re-Execute after death - work in progress ")



local Toggle445 = Section2:CreateToggle("Leave On Staff Join", nil, function(State)
      getgenv().StaffKick = State
      if StaffKick == true then
        Players.PlayerAdded:Connect(function(player)
          check(player)
        end)
      end
end)


getgenv().worldarea = State
local Toggle674 = Section2:CreateToggle("Sanctuary Skybox", nil, function(State)
    getgenv().worldarea = State
    if worldarea then
    plr:SetAttribute("WorldArea", "Sanctuary")
    elseif worldarea == false then
        plr:SetAttribute("WorldArea", "Main")
    end
end)



-------------
local Label1299 = Section7:CreateLabel("Hitbox Expander")
Label1299:UpdateText("Hitbox Expander")
-------------
getgenv().extender = false

local fuck = Section7:CreateToggle("Toggle Extender", nil, function(State)
	getgenv().extender = State
end)

local sex = SectionT:CreateTextBox("Hitbox Transparency", "Only numbers", true, function(Value)
	getgenv().trans = Value -- shoutout trans people [frog]
end)

local fuckslider = Section7:CreateSlider("Extender Size", 2, 30, 5, true, function(value) -- FUCK this extender 
	function reset()
		for i, v in pairs(game.Players:GetPlayers()) do
			if v.Name ~= game.Players.LocalPlayer.Name then
			  pcall(function()
				v.Character.HumanoidRootPart.Size = Vector3.new(3, 3, 3)
				v.Character.HumanoidRootPart.Transparency = _G.trans
				v.Character.HumanoidRootPart.CanCollide = false
				wait()
			  end)
			end
			end 
	end

	function extend()
		for i, v in pairs(game.Players:GetPlayers()) do
		  if v.Name ~= game.Players.LocalPlayer.Name then
			pcall(function()
			  v.Character.HumanoidRootPart.Size = Vector3.new(value, value, value)
			  v.Character.HumanoidRootPart.Transparency = _G.trans
			  v.Character.HumanoidRootPart.CanCollide = false
			  wait()
			end)
		  end
		  end 
	  end

	  spawn(function()
		while extender do
		if extender then
			 extend()
		else 
			 reset()
			end
		end
	end)  -- EXTEND WHEN EXTENDER EXTENDED.
end)

-------------
local Label1 = Section2:CreateLabel("Other Stuff")
Label1:UpdateText("Other Stuff")
-------------
local Button1 = Section2:CreateButton("GEEZER PROPAGANDA", function()
    randommsg()
end)

local Button9999 = Section2:CreateButton("Discord Ad", function()
    THISISRETARDED()
end)
Button9999:AddToolTip("you should totally use this button when geezin")

function BRST()
    game:GetService("Players").LocalPlayer.CharacterTorso.Neck:Destroy()
end

local ButtonBRST = Section2:CreateButton("Better Reset", function()
	BRST()
end) -- wow [frog]
ButtonBRST:AddToolTip("Lets you reset your character any time (if you're being bled, for example)\nif you reset while being carried, that person can no longer carry you")




-------------
local SP = game:GetService("StarterPlayer")

-- will add more here, just wanted some misc features for fun [frog]

local toggleAUGH = Section9:CreateToggle("AUTO JOSEPH.", nil, function(State)
	getgenv().autojoe = State
	if autojoe then
		autoJOE()
		wait()
end
end)


local Button2312 = Section9:CreateButton("Remove System Messages", function()
	plr.PlayerScripts.SystemMessages:Destroy()
	SP.StarterPlayerScripts.SystemMessages:Destroy()
end)
Button2312:AddToolTip("Stops System Messages from sending")


local Slider123 = Section9:CreateSlider("CurrentHealth Effects", 0,100,nil,true, function(Value)
	getsenv(plr.PlayerScripts.DamageIndicator).currentHealth = Value
end)
Slider123:AddToolTip("Changes the health effects")

local Tzoggle674 = Section9:CreateToggle("Downed Effects", nil, function(State)
	getsenv(plr.PlayerScripts.DamageIndicator).downed = State
end)
Tzoggle674:AddToolTip("Changes the downed effect")





local Button2312z = Section9:CreateButton("Disable anti-swim", function()

local LCH = game:GetService("Players").LocalPlayer.Character
local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart


	LCH.StateEnabled:Destroy()
	SP.StarterCharacterScripts.StateEnableds:Destroy()
end)
Button2312z:AddToolTip("Allows you to swim (use something like inf yield)")


function demeshlol()
    local LCH = game:GetService("Players").LocalPlayer.Character
    local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

	for i,v in pairs (LCH:GetChildren()) do
		if v.ClassName == "Tool" then
			v.Handle.Mesh:Destroy()
		end
	end
end


local Button232z = Section9:CreateButton("Demesh held Tool", function()
	demeshlol()
end)
Button232z:AddToolTip("Demeshes your tool (if it has a mesh)")


local Slider12x3 = Section9:CreateSlider("Time of day", 1,24,nil,true, function(Value)
	game:GetService("Lighting").ClockTime = Value
end)
Slider12x3:AddToolTip("Changes the Time of day")
Slider12x3:SetValue(12)


local Button2732z = Section9:CreateButton("Reset Character", function()
	game:GetService("ReplicatedStorage").Remotes.ResetCharacter:FireServer()
end)
Button2732z:AddToolTip("Makes you hit the haystack")


local Buttondmz = Section9:CreateButton("Disable Death screen", function()
	disableconnection(game:GetService("Players").LocalPlayer.Character.Humanoid.Died)
end)

local ButtonWORM = Section9:CreateButton("worm mode.", function()
    local LCH = game:GetService("Players").LocalPlayer.Character
    local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

	for i,v in pairs(LCH:getChildren()) do
		if v.Name == "Left Leg" then v:Destroy() end end
		for i,v in pairs(LCH:getChildren()) do
		if v.Name == "Right Leg" then v:Destroy() end end
		for i,v in pairs(LCH:getChildren()) do
		if v.Name == "Left Arm" then v:Destroy() end end
end) -- lol [frog]




function headspoof()

    local LCH = game:GetService("Players").LocalPlayer.Character
    local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

	for i,v in pairs(LCH.Animate:GetChildren()) do
		if v.Name == "Assets" then v:Destroy()
	end
	for i,v in pairs(game:GetService("StarterPlayer").StarterCharacterScripts.Animate:GetChildren()) do
		if v.Name == "Assets" then v:Destroy()
	end end end
end




function headmove(a,b,c,z,x,c)
    local LCH = game:GetService("Players").LocalPlayer.Character
	local argshm = {
		[1] = "maybe_akita_can_program...",
		[2] = CFrame.new(a,b,c) * CFrame.Angles(z,x,c)
	}
	
	game:GetService("ReplicatedStorage").Events.Look:FireServer(unpack(argshm))
	
	LCH.Torso.Neck.C0 = CFrame.new(a,b,c) * CFrame.Angles(z,x,c) -- lets you see your head position locally [frog]
end



local Button2z732z = sectionhead:CreateButton("Spoof Head Movement", function()
	headspoof()
end)
Button2z732z:AddToolTip("Allows spoofing head movement") -- not even spoofing it just sounds cool LOOOL [frog]

local Button2v0z = sectionhead:CreateButton("Reset Head to normal", function()
	headmove(0,1,0,1.5,-9.5,0)
end)

local Button2v08 = sectionhead:CreateButton("Backwards head", function()
	headmove(0,1,0,-1.8,0,0)
end)

local Button2v07 = sectionhead:CreateButton("upsidedown head", function()
	headmove(0,1.99,0,1.5,0,0)
end)

local Button3vcz = sectionhead:CreateButton("head legs", function()
	headmove(0,-1,0,-1.5,9.5,0)
end)







-------------
local Toggle3 = Section4:CreateToggle("UI Toggle", nil, function(State)
	Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
	Config.Keybind = Enum.KeyCode[Key]
end)
Toggle3:SetState(true)


local Colorpicker3 = Section4:CreateColorpicker("UI Color", function(Color)
	Window:ChangeColor(Color)
end)
Colorpicker3:UpdateColor(Config.Color)

local Button1 = Section4:CreateButton("Delete GUI", function()
	for i,v in pairs(kyscunt:GetDescendants()) do
        if v.Name == "LibraryName" then v.Parent.Parent.Parent:Destroy()
    end end
end)

-- credits to jan for patterns
local Dropdown3 = Section5:CreateDropdown("Image", {"Default","Hearts","Abstract","Hexagon","Circles","Lace With Flowers","Floral"}, function(Name)
	if Name == "Default" then
		Window:SetBackground("2151741365")
	elseif Name == "Hearts" then
		Window:SetBackground("6073763717")
	elseif Name == "Abstract" then
		Window:SetBackground("6073743871")
	elseif Name == "Hexagon" then
		Window:SetBackground("6073628839")
	elseif Name == "Circles" then
		Window:SetBackground("6071579801")
	elseif Name == "Lace With Flowers" then
		Window:SetBackground("6071575925")
	elseif Name == "Floral" then
		Window:SetBackground("5553946656")
	end
end)
Dropdown3:SetOption("Default")


--

local Colorpicker4 = Section5:CreateColorpicker("Color", function(Color)
	Window:SetBackgroundColor(Color)
end)

local Slider334 = Section5:CreateSlider("Transparency",0,1,nil,false, function(Value)
	Window:SetBackgroundTransparency(Value)
end)
Slider334:SetValue(0)

local Slider4 = Section5:CreateSlider("Tile Scale",0,1,nil,false, function(Value)
	Window:SetTileScale(Value)
end)
Slider4:SetValue(0.5)
