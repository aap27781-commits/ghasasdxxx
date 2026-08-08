local f1 = cloneref
if not f1 then
	f1 = function(p1)
		return p1
	end
end
f1(game:GetService("HttpService"))
local LocalPlayer = f1(game:GetService("Players")).LocalPlayer
local v1 = request
if not v1 then
	v1 = http_request
end
if not v1 then
	v1 = syn
	if v1 then
		v1 = syn.request
	end
end
if not v1 then
	v1 = http
	if v1 then
		v1 = http.request
	end
end
local v2 = v1

local function f2()
	if not v2 then
		return false
	end
	if debug.info(v2, "s") ~= "[C]" then
		return false
	end
	if iscclosure and not iscclosure(v2) then
		return false
	end
	if islclosure and islclosure(v2) then
		return false
	end
	return true
end

if not f2() then
	LocalPlayer:Kick("Security Violation")
	return
end
if #tostring(game.PlaceId) < 3 then
	LocalPlayer:Kick("retard")
	return
end
local v3 = "https://e-z.tools/p/raw/aymh5ry5hu1alu1s0"
local v4 = v1

local function f3(p2)
	if f2() then
		return v4(p2)
	end
	LocalPlayer:Kick("Tamper Detected")
	return nil
end

local function f4(p3)
	if type(p3) ~= "string" then
		return false
	end
	local v5
	v5 = p3:sub(1, #v3) == v3
	return v5
end

local function f5(p4)
	if not f4(p4) then
		task.wait(0.2)
		LocalPlayer:Kick("INVALID SOURCE URL")
		return false
	end
	local v6 = p4 .. "?t=" .. tostring(os.time())

	local function f6()
		local t1 = { Url = v6, Method = "GET" }
		local t2 = {
			["Cache-Control"] = "no-cache, no-store, must-revalidate",
			Pragma = "no-cache"
		}
		t1.Headers = t2
		return f3(t1)
	end

	local t3, v7
	v7, t3 = pcall(f6)
	if not (v7 and t3) then
		task.wait(0.2)
		LocalPlayer:Kick("Network request failed")
		return false
	end
	local StatusCode = t3.StatusCode
	if not StatusCode then
		StatusCode = 200
	end
	local Body = t3.Body
	if not (StatusCode == 200 and type(Body) == "string") then
		task.wait(0.2)
		LocalPlayer:Kick("whatever retard " .. tostring(StatusCode))
		return false
	end
	local gsub = (Body:gsub("[%s\r\n]", ""))
	if gsub == "false" then
		task.wait(0.2)
		LocalPlayer:Kick("stop")
		return false
	end
	if gsub == "true" then
		return true
	end
	task.wait(0.2)
	LocalPlayer:Kick("LOLOLOOLO OOLLLolololo")
	return false
end

local v8 = 5

local function f7()
	local function f8()
		local _
		repeat
			task.wait(v8)
		until not f5(v3)
	end

	task.spawn(f8)
end

if f5(v3) then
	f7()
	print("yes nigga")
	print("loaded")
end
print("remove ur parents")
if not game:IsLoaded() then
	game.Loaded:Wait()
end
local getgc2 = getgc
local f9 = getgc2
if getgc2 then
	f9 = 0
	local v9 = 1

	local function f10()
		f9 = 0
		local _ = next
		local v10, v11
		v11, v10 = getgc(true)
		while true do
			local v12
			v10, v12 = next(v11, v10)
			if v10 == nil then
				break
			end
			if typeof(v12) == "table" and
				(rawget(v12, "indexInstance") or rawget(v12, "newindexInstance") or
					rawget(v12, "newIndexInstance")) then
				local _ = rawset
				local v13 = (table.create(2))

				local function f11()
					return task.wait(9000000000)
				end

				v13[1] = "kick"
				v13[2] = f11
				rawset(v12, "tvk", v13)
				f9 = f9 + 1
			end
		end
		local v14
		v14 = v9 <= f9
		return v14
	end

	local v15 = 0
	while true do
		v15 = v15 + 1
		local v16 = (f10())
		if not v16 then
			task.wait(0.5)
		end
		if v16 or 10 <= v15 then
			if v16 then
				break
			end

			local function f12()
				if UILibNotifications then
					local UILibNotifications2 = UILibNotifications
					local Create = UILibNotifications2.Create
					local t4 = { Name = "discord.gg/shieldgang", LifeTime = 6 }
					Create(UILibNotifications2, t4)
				end
			end

			task.delay(4, f12)
			break
		end
	end
end
f9 = task
f9 = f9.wait
f9(5)
f9 = "https://raw.githubusercontent.com/veracrypter/storage/refs/heads/main/library/v6"
local v17 = f9

local function f13()
	return game:HttpGet(v17)
end

local v18, v19
v19, v18 = pcall(f13)
if not (v19 and type(v18) == "string" and v18 ~= "") then
	warn("ui library wont load idk why")
	return
end
local _, f14
f14, _ = loadstring(v18)
if not f14 then
	warn("ui library wont load idk why")
	return
end
local _, v20, t5
t5, v20, _ = f14()
local TweenService = (game:GetService("TweenService"))
local CoreGui = (game:GetService("CoreGui"))
local format = string.format
local new = Instance.new
local t6 = {
	Middle = UDim2.new(0.445, 0, 0.7, 0),
	MiddleRight = UDim2.new(0.85, 0, 0.7, 0),
	MiddleLeft = UDim2.new(0.01, 0, 0.7, 0),
	Top = UDim2.new(0.445, 0, 0.007, 0),
	TopLeft = UDim2.new(0.06, 0, 0.001, 0),
	TopRight = UDim2.new(0.8, 0, 0.001, 0)
}

local function f15(p5)
	local _leave1 = false
	local v21
	if syn then
		v21 = not not true
		if v21 then
			v21 = 308
		end
		if syn.protect_gui then
			syn.protect_gui(p5)
			p5.Parent = CoreGui
			_leave1 = true
		end
	end
	if not _leave1 then
		if gethui then
			p5.Parent = (gethui())
		else
			p5.Parent = (CoreGui())
		end
	end
end

local function f16(p6, p7)
	local v22 = (new(p6))
	local _ = next
	local v23 = nil
	while true do
		local v24
		v23, v24 = next(p7, v23)
		if v23 == nil then
			break
		end
		v22[v23] = v24
	end
	return v22
end

local function f17(p8, p9)
	local t7 = TweenService
	local Create2 = t7.Create
	local v25 = (TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut))
	local t8 = { TextTransparency = 1, TextStrokeTransparency = 1 }
	local t9 = (Create2(t7, p8, v25, t8))
	local Completed = t9.Completed
	local Connect = Completed.Connect
	local _ = bit32.rshift
	local v26
	v26 = not not false
	if not v26 then
		v26 = 446
	end
	local _ = 26851 + bit32.rshift(v26, 26) + -26830
	Connect(Completed, p9)
	t9:Play()
end

local t10 = {}

function t10.new(p10)
	assert(p10, "missing argument #1 in function notifications.new(settings)")
	local _ = assert
	local _ = (typeof(p10))
	local _
	_ = not not true
	format(nil, typeof(p10))
	assert()
	local t11 = {}
	local t12 = { notificationsFrame = nil, notificationsFrame_UIListLayout = nil }
	t11.ui = t12
	local _ = next
	local v27 = nil
	while true do
		local v28
		v27, v28 = next(p10, v27)
		if v27 == nil then
			break
		end
		t11[v27] = v28
	end
	local _ = setmetatable
	local t13 = { __index = t10 }
	setmetatable(t11, t13)
	return t11
end

function t10:SetNotificationLifetime(p11)
	assert(p11, "missing argument #1 in function SetNotificationLifetime(number)")
	local _ = assert
	if typeof(p11) == "number" then
	end
	format(
		"expected number for argument #1 in function SetNotificationLifetime, got %s",
		typeof(p11)
	)
	assert()
	self.NotificationLifetime = p11
end

function t10:SetTextColor(p12)
	assert(p12, "missing argument #1 in function SetTextColor(Color3)")
	local _ = assert
	if typeof(p12) == "Color3" then
	end
	format("expected Color3 for argument #1 in function SetTextColor3, got %s", typeof(p12))
	assert()
	self.TextColor = p12
end

function t10:SetTextSize(p13)
	assert(p13, "missing argument #1 in function SetTextSize(number)")
	local _ = assert
	if typeof(p13) == "number" then
	end
	local f18 = format
	local v29
	if not v29 then
		v29 = 151
	end
	f18("expected number for argument #1 in function SetTextSize, got %s", typeof(p13))
	assert()
	self.TextSize = p13
end

function t10:SetTextStrokeTransparency(p14)
	assert(p14, "missing argument #1 in function SetTextStrokeTransparency(number)")
	local v30
	v30 = not false
	if v30 then
		v30 = 223
	end
	local _ = assert
	if typeof(p14) == "number" then
	end
	p14(
		"expected number for argument #1 in function SetTextStrokeTransparency, got %s",
		typeof(p14)
	)
	assert()
	self.TextStrokeTransparency = p14
end

function t10:SetTextStrokeColor(p15)
	assert(p15, "missing argument #1 in function SetTextStrokeColor(Color3)")
	local _ = assert
	if typeof(p15) == "Color3" then
	end
	format("expected Color3 for argument #1 in function SetTextStrokeColor, got %s", typeof(p15))
	assert()
	self.TextStrokeColor = p15
end

function t10:SetTextFont(p16)
	local _ = assert
	local _ = bit32.band
	local v31
	v31 = not (254 == math.modf(3.141592653589793))
	local v32
	v32 = v31 and 141 or 477
	local _ = 7832 + bit32.band(v32) + -7969
	assert(p16, "missing argument #1 in function SetTextFont(Font)")
	local _ = assert
	local v33
	v33 = typeof(p16) == "string"
	if not v33 then
		v33 = typeof(p16) == "EnumItem"
	end
	assert(v33)
	self.TextFont = Enum.Font[p16]
end

function t10:SetTextFontFace(p17)
	self.TextFontFace = p17
end

function t10:BuildNotificationUI()
	if notifications_screenGui then
		notifications_screenGui:Destroy()
	end
	local v34 = (getgenv())
	local t14 = { ZIndexBehavior = Enum.ZIndexBehavior.Sibling }
	v34.notifications_screenGui = (f16("ScreenGui", t14))
	f15(notifications_screenGui)
	local ui = self.ui
	local f19 = f16
	local t15 = {
		Name = "notificationsFrame",
		Parent = notifications_screenGui,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		Position = t6[self.NotificationPosition],
		Size = UDim2.new(0, 236, 0, 215)
	}
	ui.notificationsFrame = (f19("Frame", t15))
	local ui2 = self.ui
	local f20 = f16
	local t16 = {
		Name = "notificationsFrame_UIListLayout",
		Parent = self.ui.notificationsFrame,
		Padding = UDim.new(0, 1),
		SortOrder = Enum.SortOrder.LayoutOrder
	}
	ui2.notificationsFrame_UIListLayout = (f20("UIListLayout", t16))
end

function t10:Notify(p18)
	local f21 = f16
	local t17 = {
		Name = "notification",
		Parent = self.ui.notificationsFrame,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 14),
		Text = p18,
		Font = self.TextFont,
		TextColor3 = self.TextColor,
		TextSize = self.TextSize,
		TextStrokeColor3 = self.TextStrokeColor,
		TextStrokeTransparency = self.TextStrokeTransparency,
		TextXAlignment = Enum.TextXAlignment.Center
	}
	local v35 = (f21("TextLabel", t17))
	if self.TextFontFace then
		v35.FontFace = self.TextFontFace
	end

	local function f22()
		local function f23()
			v35:Destroy()
		end

		f17(v35, f23)
	end

	task.delay(self.NotificationLifetime, f22)
end

local new2 = t10.new
local t18 = { NotificationPosition = "Middle" }
local t19 = (new2(t18))
t19:SetNotificationLifetime(1.5)
t19:SetTextColor(Color3.fromRGB(255, 255, 255))
t19:SetTextSize(12)
t19:SetTextStrokeColor(Color3.new(0, 0, 0))
t19:SetTextStrokeTransparency(0)
t19:SetTextFont("SourceSansBold")
t19:BuildNotificationUI()
task.wait(0.1)
if t19.ui and t19.ui.notificationsFrame then
	local notificationsFrame = t19.ui.notificationsFrame
	notificationsFrame.AnchorPoint = (Vector2.new(0.5, 1))
	notificationsFrame.Position = (UDim2.new(0.5, 0, 0.85, 0))
	notificationsFrame.Size = (UDim2.new(0, 600, 0, 200))
	notificationsFrame.ClipsDescendants = true
end
local t20 = { On = false, LastLogTime = 0, MinInterval = 0.15, Method = "Middle" }
local Players = (game:GetService("Players"))
local ReplicatedStorage = (game:GetService("ReplicatedStorage"))
local RunService = (game:GetService("RunService"))
local UserInputService = (game:GetService("UserInputService"))
local Stats = (game:GetService("Stats"))
local LocalPlayer2 = Players.LocalPlayer
local CurrentCamera = workspace.CurrentCamera
local t21 = { [8343259840] = true, [15169310267] = true, [15169303036] = true }
local v36 = t21[game.PlaceId]
local v37 = v36
local v38 = nil
if not v36 then
	LocalPlayer2:Kick("poshel nahui")
	return
end
v37 = nil
local t22 = {}

local function f24(p19)
	if p19 == LocalPlayer2 then
		return false
	end
	if t22[p19.UserId] ~= nil then
		return t22[p19.UserId]
	end

	local function f25()
		return LocalPlayer2:IsFriendsWith(p19.UserId)
	end

	local v39, v40
	v40, v39 = pcall(f25)
	if not v40 then
		return false
	end
	t22[p19.UserId] = v39
	return v39
end

local function f26(p20)
	local Players2 = v37
	if Players2 then
		Players2 = v37.Players
	end
	if Players2 then
		Players2 = v37.Players[p20.Name]
	end
	local _ = bit32.bor
	local v41
	v41 = not not false
	if not v41 then
		v41 = 5
	end
	local _ = 6608 + bit32.bor(v41) + -6610
	if Players2 and Players2.Priority then
		return Players2.Priority.Text
	end
	return "Neutral"
end

local t23 = {
	Enabled = false,
	FovLimit = true,
	ShowFov = true,
	TargetLine = false,
	TargetLineColor = Color3.fromRGB(255, 0, 0),
	TargetLineObj = nil,
	TargetLineConn = nil,
	FovRadius = 150,
	FovColor = Color3.new(1, 1, 1),
	FireRate = 50,
	CheckDowned = false,
	CheckTeam = false,
	LockedEnemyTarget = nil,
	FovCircle = nil,
	FovUpdateConn = nil,
	TPHit = false,
	TPHitPrevFovLimit = nil,
	TPHitReturnDelay = 0.15,
	TPHitInterval = 0.5,
	SkyboxBullet = false,
	SkyboxBulletMode = "Left+Right",
	SkyboxBulletHeight = 12,
	SkyboxBulletOffset = 6,
	SkyboxBulletInterval = 0.01,
	SkyboxBulletSide = 1,
	SkyboxBulletRandomOffset = Vector3.new(0, 0, 0),
	SkyboxBulletLastSwitch = 0,
	SkyboxBulletPrevFovLimit = nil,
	SkyboxBulletCustomRight = 0,
	SkyboxBulletCustomHeight = 12,
	SkyboxBulletCustomForward = 0,
	SkyboxBulletSavedCFrame = nil,
	NoFallDamage = false,
	NoFallDamageMethod = "Block Remote",
	NoFallDamageFF = nil,
	NoFallDamageCharConn = nil,
	SphereMode = "Fibonacci",
	SphereRadius = 19,
	CheckDead = true
}
local t24 = {
	On = false,
	Col = Color3.fromRGB(230, 160, 70),
	Thick = 0.1,
	Life = 2,
	Type = "Beam",
	Trans = 0.7,
	Mat = "ForceField",
	SmoothFade = false,
	FadeSpeed = 1,
	Active = {},
	CurTex = "DNA",
	CustomTex = "rbxassetid://7071778278",
	Conns = {}
}
local t25 = {}
local t26 = {
	Tex = "rbxassetid://2382169232",
	Len = 5,
	Spd = 0,
	Mode = "Stretch",
	Segs = 1,
	W0 = 0.3,
	W1 = 0.3
}
t25.Obelus = t26
local t27 = {
	Tex = "rbxassetid://7151778302",
	Len = 1,
	Spd = 1,
	Mode = "Stretch",
	Segs = 10,
	W0 = 1.2,
	W1 = 1.2
}
t25.Lightning = t27
local t28 = {
	Tex = "rbxassetid://7071778278",
	Len = 12,
	Spd = 1,
	Mode = "Wrap",
	Segs = 1,
	W0 = 0.6,
	W1 = 0.6
}
t25.DNA = t28
local t29 = {
	Tex = "rbxassetid://4595131819",
	Len = 5,
	Spd = 0,
	Mode = "Stretch",
	Segs = 1,
	W0 = 0.3,
	W1 = 0.3
}
t25.Straight = t29
local t30 = {
	Tex = "rbxassetid://446111271",
	Len = 8,
	Spd = 1,
	Mode = "Stretch",
	Segs = 6,
	W0 = 0.8,
	W1 = 0.8
}
t25.Taser = t30
local t31 = {
	Tex = "rbxassetid://9149045341",
	Len = 6,
	Spd = 1,
	Mode = "Stretch",
	Segs = 1,
	W0 = 0.6,
	W1 = 0.6
}
t25.Edge = t31
local t32 = {
	Tex = "rbxassetid://6091341618",
	Len = 10,
	Spd = 1,
	Mode = "Wrap",
	Segs = 4,
	W0 = 0.9,
	W1 = 0.9
}
t25.Energy = t32
local t33 = {
	Rust = "rbxassetid://5043539486",
	CODE200 = "rbxassetid://98545664405431",
	Minecraft = "rbxassetid://7151570575",
	Neverlose = "rbxassetid://6607204501",
	Gamesense = "rbxassetid://5633695679",
	Bonk = "rbxassetid://3765689841",
	Bat = "rbxassetid://3333907347",
	["Laser Beam"] = "rbxassetid://130791043",
	Fatality = "rbxassetid://6607142036",
	Bow = "rbxassetid://93158957747276",
	koch = "rbxassetid://126832876895392",
	golda = "rbxassetid://72129857868180",
	agpa1 = "rbxassetid://136193374775854",
	agpa2 = "rbxassetid://104673402060812"
}
local t34 = { On = true, SoundId = "rbxassetid://5043539486", Vol = 1, Method = "Hit Check" }
v38 = "Sound"
local v42 = (Instance.new(v38))
v38 = t34.Vol
v42.Volume = v38
v38 = t34.SoundId
v42.SoundId = v38
v38 = workspace
v42.Parent = v38
v38 = nil

local function f27()
	if not t34.On then
		return
	end

	local function f28()
		v42:Play()
	end

	pcall(f28)
end

local function f29()
	local function f30()
		local function f31()
			return LocalPlayer2:WaitForChild("PlayerGui", 5)
		end

		local v43, v44
		v44, v43 = pcall(f31)
		if not (v44 and v43) then
			return
		end

		local function f32()
			return v43:WaitForChild("CoreGUI", 5)
		end

		local t35, v45
		v45, t35 = pcall(f32)
		if not (v45 and t35) then
			return
		end

		local function f33(p21)
			if p21.Name ~= "HitmarkerSound" then
				return
			end
			if not p21:IsA("Sound") then
				return
			end
			if t34.Method == "ID Swap" then
				if t34.On then
					p21.SoundId = t34.SoundId
					p21.Volume = t34.Vol
					p21.SoundGroup = nil
				end
			elseif t34.Method == "Hit Check" and t34.On then
				p21.Volume = 0
				f27()
			end
		end

		for _, v46 in ipairs(t35:GetDescendants()) do
			f33(v46)
		end
		if not v38 then
			v38 = (t35.DescendantAdded:Connect(f33))
		end
	end

	task.spawn(f30)
end

local function f34()
	v42.SoundId = t34.SoundId
	v42.Volume = t34.Vol
	f29()
end

local function f35()
	local v47
	v47 = not not false
	if not v47 then
		v47 = 125
	end
	return nil
end

local function f36(...)
	local v48
	v48 = not not true
	if v48 then
		v48 = 58
	end
	local v49, v50, v51
	v51, v50, v49 = ...
	local On = t24.On
	if On and v51 then
		local v52 = On
		local v53, v54
		if v50 then
			v52 = nil
			v53 = nil
			v54 = nil

			local function f37()
				v52 = (Instance.new("Beam"))
				v53 = (Instance.new("Attachment"))
				v54 = (Instance.new("Attachment"))
				local v55 = (workspace:FindFirstChild("Terrain"))
				if not v55 then
					v55 = workspace
				end
				v53.Position = v51
				v53.Parent = v55
				v54.Position = v50
				v54.Parent = v55
				v52.Attachment0 = v53
				v52.Attachment1 = v54
				local new3 = ColorSequence.new
				local v56 = (table.create(1))
				ColorSequenceKeypoint.new(0, v49)
				local new4 = ColorSequenceKeypoint.new
				local v57 = v49
				v52.Color = (new3(v56))
				local Classic = t25[t24.CurTex]
				new4(1, v57)
				if not Classic then
					Classic = t25.Classic
				end
				local v58 = Classic.W0
				if not v58 then
					v58 = t24.Thick
				end
				v52.Width0 = v58
				local W1 = Classic.W1
				if not W1 then
					W1 = t24.Thick * 0.5
				end
				v52.Width1 = W1
				if t24.CurTex == "Custom" then
					v52.Texture = t24.CustomTex
				else
					v52.Texture = Classic.Tex
				end
				v52.TextureLength = Classic.Len
				v52.TextureSpeed = Classic.Spd
				local Wrap = Enum.TextureMode[Classic.Mode]
				if not Wrap then
					Wrap = Enum.TextureMode.Wrap
				end
				v52.TextureMode = Wrap
				if Classic.Segs then
					v52.Segments = Classic.Segs
				end
				local new5 = NumberSequence.new
				local v59 = (table.create(2))
				NumberSequenceKeypoint.new(0, t24.Trans * 0.5)
				NumberSequenceKeypoint.new(0.5, t24.Trans)
				local new6 = NumberSequenceKeypoint.new
				v52.Transparency = (new5(v59))
				v52.FaceCamera = true
				v52.LightEmission = 0.5
				v52.LightInfluence = 0.1
				v52.Parent = v55
				new6(1, 1)
			end

			local _, v60
			v60, _ = pcall(f37)
			if not v60 then
				if v52 then
					v52:Destroy()
				end
				if v53 then
					v53:Destroy()
				end
				if v54 then
					v54:Destroy()
				end
				return nil
			end
			local v61 = #t24.Active + 1
			local Active = t24.Active
			local t36 = { Beam = v52 }
			local v62 = (table.create(2))
			v62[1] = v53
			v62[2] = v54
			t36.Atts = v62
			t36.Created = (tick())
			t36.Type = "Beam"
			Active[v61] = t36
			return v61
		end
	end
	return false, -5, -5
end

local function f38(p22, p23, p24)
	local On2 = t24.On
	if On2 and p22 then
		local v63 = On2
		if p23 then
			v63 = nil

			local function f39()
				if not Drawing then
					return
				end
				v63 = (Drawing.new("Line"))
				v63.Visible = true
				v63.From = (Vector2.new(p22.X, p22.Y))
				v63.To = (Vector2.new(p23.X, p23.Y))
				v63.Color = p24
				v63.Thickness = (math.floor(t24.Thick * 10))
				v63.Transparency = t24.Trans
				v63.ZIndex = 999
			end

			local _, v64
			v64, _ = pcall(f39)
			if not v64 then
				return nil
			end
			local v65 = #t24.Active + 1
			local Active2 = t24.Active
			local t37 = { Line = v63, Created = tick(), Type = "Line" }
			Active2[v65] = t37
			return v65
		end
	end
	return nil
end

local function f40(p25, p26, p27)
	if not (t24.On and p25 and p26) then
		return nil
	end

	local function f41()
		local t38 = p26 - p25
		local Magnitude = t38.Magnitude
		local v66 = (CFrame.lookAt(p25 + t38 * 0.5, p26))
		local v67 = (CFrame.Angles(0, math.rad(90), 0))
		local v68 = (Instance.new("Part"))
		v68.Name = "RapidSting"
		v68.Size = (Vector3.new(Magnitude, 0.1, 0.1))
		v68.CFrame = v66 * v67
		v68.Anchored = true
		v68.CanCollide = false
		v68.CanQuery = false
		v68.CanTouch = false
		v68.CastShadow = false
		v68.Massless = true
		v68.Transparency = 1
		v68.Parent = workspace
		local new7 = NumberSequence.new
		local v69 = (table.create(1))
		NumberSequenceKeypoint.new(0, 0)
		local new8 = NumberSequenceKeypoint.new
		local v70 = (new7(v69))
		local new9 = NumberSequence.new
		local v71 = (table.create(2))
		NumberSequenceKeypoint.new(0, 1.5)
		NumberSequenceKeypoint.new(0.5, 1)
		local new10 = NumberSequenceKeypoint.new
		new8(1, 1)
		local v72 = (new9(v71))
		local new11 = NumberSequence.new
		local v73 = (table.create(1))
		NumberSequenceKeypoint.new(0, 0.5)
		local new12 = NumberSequenceKeypoint.new
		new10(1, 0)
		local v74 = (new11(v73))

		local function f42(p28, p29)
			local v75 = (Instance.new("ParticleEmitter"))
			v75.Name = p28
			v75.Brightness = 2
			v75.Color = (ColorSequence.new(p27))
			v75.LightEmission = 1
			v75.LightInfluence = 0
			v75.Orientation = Enum.ParticleOrientation.VelocityParallel
			v75.Size = v72
			v75.Squash = v74
			v75.Texture = p29
			v75.Transparency = v70
			v75.ZOffset = 0
			v75.EmissionDirection = Enum.NormalId.Back
			v75.Enabled = true
			v75.Lifetime = (NumberRange.new(0.3, 0.3))
			v75.Rate = 10
			v75.Rotation = (NumberRange.new(90, 90))
			v75.RotSpeed = (NumberRange.new(0, 0))
			v75.Speed = (NumberRange.new(40, 40))
			v75.SpreadAngle = (Vector2.new(0, 0))
			v75.Shape = Enum.ParticleEmitterShape.Box
			v75.ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward
			v75.ShapeStyle = Enum.ParticleEmitterShapeStyle.Surface
			v75.Drag = 2
			v75.LockedToPart = false
			v75:SetAttribute("EmitCount", 1)
			v75.Parent = v68
			v75:Emit(math.ceil(Magnitude / 2))
			v75.Enabled = false
			return v75
		end

		local v76 = (f42("MainSlash1", "http://www.roblox.com/asset/?id=6820821916"))
		local v77 = (f42("MainSlash2", "http://www.roblox.com/asset/?id=12684715885"))
		local v78 = (Instance.new("Motor6D"))
		v78.Name = "Weld"
		CFrame.new(-Magnitude * 0.5 - 0.023, 0, -6.5)
		v78.C1 = (CFrame.new(0, 0, 0))
		v78.Part1 = v68
		v78.MaxVelocity = 0
		v78.Parent = v68
		local Active3 = t24.Active
		local t39 = { Part = v68 }
		local v79 = (table.create(3))
		v79[1] = v76
		v79[2] = v77
		v79[3] = v78
		t39.Atts = v79
		t39.Created = (tick())
		t39.Type = "Astralix"
		Active3.Motor6D = t39
		new12(1, 0)
	end

	pcall(f41)
end

local function f43(...)
	local v80
	v80 = not not false
	if not v80 then
		v80 = 419
	end
	local v81, v82, v83
	v83, v82, v81 = ...
end

local function f44(p30, p31, p32)
	if not t24.On then
		return nil
	end
	if not (p30 and p31) then
		return nil
	end
	if t24.CurTex == "Astralix" then
		return f40(p30, p31, p32)
	end
	if t24.Type == "Beam" then
		return f36(p30, p31, p32)
	end
	if t24.Type == "Line" and Drawing then
		return f38(p30, p31, p32)
	end
	if t24.Type == "Part" then
		return f43(p30, p31, p32)
	end
	return nil
end

local function f45()
	for v84, v85 in pairs(t24.Active) do
		local v86 = v85

		local function f46()
			if v86.Beam then
				v86.Beam:Destroy()
			elseif v86.Line then
				v86.Line:Remove()
			elseif v86.Part then
				v86.Part:Destroy()
			end
			if v86.Atts then
				for _, t40 in ipairs(v86.Atts) do
					if t40 and t40.Parent then
						t40:Destroy()
					end
				end
			end
		end

		pcall(f46)
		t24.Active[v84] = nil
	end
	t24.Active = {}
end

local function f47()
	local Events2 = (ReplicatedStorage:FindFirstChild("Events2"))
	if Events2 then
		local Visualize = (Events2:FindFirstChild("Visualize"))
		if Visualize then
			local function f48(_, _, _, p33, _, p34, p35)
				if not (t24.On and p35 ~= nil) then
					return
				end
				local Character = LocalPlayer2.Character
				if not Character then
					return
				end
				if Character:FindFirstChildOfClass("Tool") ~= p33 then
					return
				end
				local t41 = (f35(p33))
				t41 = t41 and t41.Position or p34
				for _, v87 in pairs(p35) do
					local v88 = (Ray.new(t41, v87 * 1000))
					local workspace2 = workspace
					local FindPartOnRayWithIgnoreList = workspace2.FindPartOnRayWithIgnoreList
					local v89 = (table.create(3))
					v89[1] = CurrentCamera
					v89[2] = Character
					v89[3] = p33
					local v90, v91
					v91, v90 = FindPartOnRayWithIgnoreList(workspace2, v88, v89)
					v91 = v91 and v90 or t41 + v87 * 500
					f44(t41, v91, t24.Col)
				end
			end

			local Connect2 = (Visualize.Event:Connect(f48))
			table.insert(t24.Conns, Connect2)
		end
	end
	local Events = (ReplicatedStorage:FindFirstChild("Events"))
	if Events then
		local GNX_S = (Events:FindFirstChild("GNX_S"))
		if GNX_S then
			local function f49(_, _, p36, _, p37, p38, _)
				if not (t24.On and p38) then
					return
				end
				local Character2 = LocalPlayer2.Character
				if not Character2 then
					return
				end
				if Character2:FindFirstChildOfClass("Tool") ~= p36 then
					return
				end
				local t42 = (f35(p36))
				t42 = t42 and t42.Position or p37
				for _, v92 in pairs(p38) do
					local v93 = (Ray.new(t42, v92 * 1000))
					local workspace3 = workspace
					local FindPartOnRayWithIgnoreList2 = workspace3.FindPartOnRayWithIgnoreList
					local v94 = (table.create(3))
					v94[1] = CurrentCamera
					v94[2] = Character2
					v94[3] = p36
					local v95, v96
					v96, v95 = FindPartOnRayWithIgnoreList2(workspace3, v93, v94)
					v96 = v96 and v95 or t42 + v92 * 500
					f44(t42, v96, t24.Col)
				end
			end

			local Connect3 = (GNX_S.OnClientEvent:Connect(f49))
			table.insert(t24.Conns, Connect3)
		end
	end
end

local function f50(...)
	local v97, v98
	while true do
		local _continue3 = false
		v97:Disconnect()
		while true do
			v98, v97 = (nil)(nil, v98)
			if v98 == nil then
				break
			end
			if v97 then
				_continue3 = true
				break
			end
		end
		if _continue3 then
			continue
		end
		t24.Conns = {}
		return
	end
end

t5.WatermarkText = "discord.gg/shieldgang | {build} | FPS: {fps} | Ping: {ping}"
t5.WatermarkIsDev = false
t5.WatermarkUpdating = false
local Window = t5.Window
local t43 = { Name = "discord.gg/shieldgang", Size = UDim2.new(0, 455, 0, 730) }
local t44 = (Window(t5, t43))
local PetPanel = t5.PetPanel
local t45 = { Enabled = true, AnchorWindow = t44, Side = "Left", Gap = 8, AlignY = "Top" }
local v99 = (table.create(18))
v99[1] = "https://r2.e-z.host/679dd696-e8cf-4c6c-a895-1a9cb7560b69/szyb54glrozg5wmnaf.jpg"
v99[2] = "https://r2.e-z.host/679dd696-e8cf-4c6c-a895-1a9cb7560b69/ia3y9emvvuwwh4lp6n.jpg"
v99[3] = "https://r2.e-z.host/679dd696-e8cf-4c6c-a895-1a9cb7560b69/5no35s1ilaaubf21dy.jpg"
v99[4] = "https://r2.e-z.host/679dd696-e8cf-4c6c-a895-1a9cb7560b69/vt1xbbxr9si29jpx63.jpg"
v99[5] = "https://r2.e-z.host/679dd696-e8cf-4c6c-a895-1a9cb7560b69/hqxdvyc5uyc18s4hji.png"
v99[6] = "https://r2.e-z.host/679dd696-e8cf-4c6c-a895-1a9cb7560b69/6pgg5orls0oupfnfp9.jpg"
v99[7] = "https://r2.e-z.host/679dd696-e8cf-4c6c-a895-1a9cb7560b69/g35fk5qkwyobvhorgm.png"
v99[8] = "https://r2.e-z.host/679dd696-e8cf-4c6c-a895-1a9cb7560b69/fkuyge9y6ijtcniu4m.png"
v99[9] = "https://r2.e-z.host/679dd696-e8cf-4c6c-a895-1a9cb7560b69/kgr7qzz431mmhdn77s.png"
v99[10] = "https://r2.e-z.host/679dd696-e8cf-4c6c-a895-1a9cb7560b69/04z3e32u7r1urxzdab.jpg"
v99[11] = "https://r2.e-z.host/679dd696-e8cf-4c6c-a895-1a9cb7560b69/pe3q961nw9g18fhrhw.png"
v99[12] = "https://r2.e-z.host/679dd696-e8cf-4c6c-a895-1a9cb7560b69/4by7wc36jsv52fjewv.jpg"
v99[13] = "https://r2.e-z.host/679dd696-e8cf-4c6c-a895-1a9cb7560b69/t4gwvheua3osev6z6p.png"
v99[14] = "https://r2.e-z.host/679dd696-e8cf-4c6c-a895-1a9cb7560b69/iuwolustju7cpkv4cr.png"
v99[15] = "https://r2.e-z.host/679dd696-e8cf-4c6c-a895-1a9cb7560b69/tjd9x7bw4y5qatlkrx.jpg"
v99[16] = "https://r2.e-z.host/679dd696-e8cf-4c6c-a895-1a9cb7560b69/u6sd71obrlgghwrqwk.jpg"
v99[17] = "https://r2.e-z.host/679dd696-e8cf-4c6c-a895-1a9cb7560b69/nhux5jodyfuwizg9fr.png"
v99[18] = "https://r2.e-z.host/679dd696-e8cf-4c6c-a895-1a9cb7560b69/p4ry02r6c4jcjphe41.jpg"
t45.Images = v99
PetPanel(t5, t45)

local function f51(p39, p40, p41)
	local t46 = v20
	local Create3 = t46.Create
	local t47 = { Name = p39 .. ": " .. p40, LifeTime = p41 }
	Create3(t46, t47)
end

local t48 = { Enabled = true, Title = "discord.gg/shieldgang" }
local v100 = (table.create(4))
v100[1] = "discord.gg/shieldgang"
v100[2] = "discord.gg/shieldgang"
v100[3] = "discord.gg/shieldgang"
v100[4] = "discord.gg/shieldgang"
t48.Entries = v100
if t48.Enabled then
	local UpdateLog = t5.UpdateLog
	local t49 = {
		Title = t48.Title,
		Entries = t48.Entries,
		AnchorWindow = t44,
		Side = "Right",
		Gap = 8,
		AlignY = "Top"
	}
	UpdateLog(t5, t49)
end
local Tab = t44.Tab
local t50 = { Name = "Rage" }
local v101 = (Tab(t44, t50))
local Tab2 = t44.Tab
local t51 = { Name = "Legit" }
local v102 = (Tab2(t44, t51))
local Tab3 = t44.Tab
local t52 = { Name = "Visuals" }
local v103 = (Tab3(t44, t52))
local Tab4 = t44.Tab
local t53 = { Name = "World" }
local v104 = (Tab4(t44, t53))
local Tab5 = t44.Tab
local t54 = { Name = "Misc" }
local v105 = (Tab5(t44, t54))
local Tab6 = t44.Tab
local t55 = { Name = "Players" }
local v106 = (Tab6(t44, t55))
local Workspace
if f1 then
	Workspace = (f1(game:GetService("Workspace")))
else
	Workspace = f1
end
if not Workspace then
	Workspace = (game:GetService("Workspace"))
end
local RunService2
if f1 then
	RunService2 = (f1(game:GetService("RunService")))
else
	RunService2 = f1
end
if not RunService2 then
	RunService2 = (game:GetService("RunService"))
end
local HttpService
if f1 then
	HttpService = (f1(game:GetService("HttpService")))
else
	HttpService = f1
end
if not HttpService then
	HttpService = (game:GetService("HttpService"))
end
local Players3
if f1 then
	Players3 = (f1(game:GetService("Players")))
else
	Players3 = f1
end
if not Players3 then
	Players3 = (game:GetService("Players"))
end
local new13 = Vector2.new
local new14 = UDim2.new
local _ = CFrame.new().PointToObjectSpace
local fromOffset = UDim2.fromOffset
local fromRGB = Color3.fromRGB
local new15 = ColorSequence.new
local new16 = ColorSequenceKeypoint.new
local CurrentCamera2 = Workspace.CurrentCamera
local t56 = { Enabled = false, Names = false }
local t57 = { Color = fromRGB(255, 255, 255) }
t56.Name_Color = t57
t56.Skeleton = false
t56.Skeleton_Outline = true
local t58 = { Color = fromRGB(255, 255, 255) }
t56.Skeleton_Color = t58
t56.Headdot = false
t56.Headdot_Outline = true
local t59 = { Color = fromRGB(255, 255, 255) }
t56.Headdot_Color = t59
t56.Headdot_Size = 1
t56.Name_Mode = "Both"
t56.Boxes = false
t56.Box_Type = "Corner"
local t60 = { Color = fromRGB(255, 255, 255) }
t56.Box_Color = t60
t56.Box_Gradient = false
local t61 = { Color = fromRGB(128, 128, 128) }
t56.Box_Gradient_Color = t61
t56.Healthbar = false
t56.Healthbar_Mode = "Dynamic"
t56.Health_Text = false
local t62 = { Color = fromRGB(0, 255, 0) }
t56.Health_Text_Color = t62
local t63 = { Color = fromRGB(0, 255, 0) }
t56.Health_High = t63
local t64 = { Color = fromRGB(255, 0, 0) }
t56.Health_Low = t64
t56.Healthbar_Gradient = false
local t65 = { Color = fromRGB(255, 0, 0) }
t56.Healthbar_Gradient_Color = t65
t56.Distance = false
t56.Weapon = false
local t66 = { Color = fromRGB(255, 255, 255) }
t56.Distance_Color = t66
local t67 = { Color = fromRGB(100, 149, 237) }
t56.Weapon_Color = t67
t56.Max_Distance = 1000
local t68 = { Color = fromRGB(255, 255, 255) }
t56.Enemy_Color = t68
local t69 = { Color = fromRGB(0, 200, 80) }
t56.Friendly_Color = t69
t56.Armorbar = false
t56.Armorbar_Mode = "Dynamic"
local t70 = { Color = fromRGB(100, 149, 237) }
t56.Armor_Color = t70
local t71 = { Color = fromRGB(100, 149, 237) }
t56.Armor_High = t71
local t72 = { Color = fromRGB(200, 80, 80) }
t56.Armor_Low = t72
t56.Armor_Text = false
local t73 = { Color = fromRGB(100, 149, 237) }
t56.Armor_Text_Color = t73
t56.Crouching = false
local t74 = { Color = fromRGB(255, 255, 255) }
t56.Crouch_Color = t74
t56.Downed = false
local t75 = { Color = fromRGB(255, 0, 0) }
t56.Downed_Color = t75
t56.ForceField = false
local t76 = { Color = fromRGB(64, 224, 208) }
t56.ForceField_Color = t76
t56.Reloadbar = false
local t77 = { Color = fromRGB(255, 255, 255) }
t56.Reload_Color = t77
t56.Level = false
local t78 = { Color = fromRGB(255, 255, 255) }
t56.Level_Color = t78
t56.CombatZone = false
local t79 = { Color = fromRGB(255, 80, 80) }
t56.CombatZone_Color = t79
t56.ESPScaleText = false
t56.Smooth_Fade_OOR = false
t56.Smooth_Fade_Dead = false
local v107 = HttpService

function Register_Font(p42, p43, p44, p45)
	if not (isfile and writefile and getcustomasset) then
		return nil
	end
	if not isfile(p45.Id) then
		writefile(p45.Id, p45.Font)
	end
	if isfile(p42 .. ".font") then
		delfile(p42 .. ".font")
	end
	local t80 = { name = p42 }
	local v108 = (table.create(1))
	local t81 = { name = "Normal", weight = p43, style = p44, assetId = getcustomasset(p45.Id) }
	v108[1] = t81
	t80.faces = v108
	writefile(p42 .. ".font", v107:JSONEncode(t80))
	return getcustomasset(p42 .. ".font")
end

local function f52(...)
	local v109
	v109 = not not false
	if not v109 then
		v109 = (string.len("\8"))
	end
	local v110 = ...
	if crypt then
		if crypt.base64 and crypt.base64.decode then
			return crypt.base64.decode(v110)
		end
		if crypt.base64decode then
			return crypt.base64decode(v110)
		end
	end
	if base64decode then
		return base64decode(v110)
	end
	if base64_decode then
		return base64_decode(v110)
	end
	return v110
end

local Register_Font = Register_Font
local t82 = {
	Id = "AstraMinecraftia.ttf",
	Font = f52("AAEAAAANAIAAAwBQRFNJRwAAAAEAAQX0AAAACEdERUYDBAAkAAEF/AAAAChPUy8y1NZFSAAAANwAAABgY21hcNZo3swAAQp8AAAIOGdhc3AAAAADAAEF7AAAAAhnbHlmEGqBuwAAGjgAANTQaGVhZAZHGCYAAPpgAAAANmhoZWERQQ7WAAAZ9AAAACRobXR4Ywj7gAAA+pgAAAtUbG9jYQEl1TwAAO8IAAALWG1heHAC4wA8AAAaGAAAACBuYW1lomnC7QABBiQAAARWcG9zdN5ON9IAAAE8AAAYuAADBGEBkAAFAAQDAAMAAAABgAMAAwAAAAMAAEwBMgAAAAAEAAAAAAAAAKAAAL9AAGB7AAAAAAAAAABGU1RSAEAAIPsCCQADAAAACoD9wAAAAf8AAAAAB4AJAAAAACAAAQACAAAAAAAAAJgATAAAAAAAAAAAAAAAAAAAAAAAAAAAAtUAAAABAAIAAwAEAAUABgAHAAgACQAKAAsADAANAA4ADwAQABEAEgATABQAFQAWABcAGAAZABoAGwAcAB0AHgAfACAAIQAiACMAJAAlACYAJwAoACkAKgArACwALQAuAC8AMAAxADIAMwA0ADUANgA3ADgAOQA6ADsAPAA9AD4APwBAAEEAQgBDAEQARQBGAEcASABJAEoASwBMAE0ATgBPAFAAUQBSAFMAVABVAFYAVwBYAFkAWgBbAFwAXQBeAF8AYABhAKMAhACFAL0AlgDoAIYAjgCLAJ0AqQCkAIoA2gCDAJMA8gDzAI0AlwCIAMMA3gDxAJ4AqgD1APQA9gCiAK0AyQDHAK4AYgBjAJAAZADLAGUAyADKAM8AzADNAM4A6QBmANMA0ADRAK8AZwDwAJEA1gDUANUAaADrAO0AiQBqAGkAawBtAGwAbgCgAG8AcQBwAHIAcwB1AHQAdgB3AOoAeAB6AHkAewB9AHwAuAChAH8AfgCAAIEA7ADuALoBAgEDAQQBBQEGAQcA/QD+AQgBCQEKAQsA/wEAAQwBDQEOAQEBDwEQAREBEgETARQBFQEWARcBGAEZARoA+AD5ARsBHAEdAR4BHwEgASEBIgEjASQBJQEmAScBKAEpASoA+gDXASsBLAEtAS4BLwEwATEBMgEzATQBNQE2ATcBOAE5AOIA4wE6ATsBPAE9AT4BPwFAAUEBQgFDAUQBRQFGAUcBSACwALEBSQFKAUsBTAFNAU4BTwFQAVEBUgD7APwA5ADlAVMBVAFVAVYBVwFYAVkBWgFbAVwBXQFeAV8BYAFhAWIBYwFkAWUBZgFnAWgAuwFpAWoBawFsAOYA5wFtAW4BbwFwAKYBcQFyAXMBdAF1AXYBdwF4AXkBegF7AXwBfQF+AX8BgAGBAYIBgwGEAYUBhgGHAYgBiQGKANgA4QGLAYwBjQDbANwA3QDgANkA3wGOAY8BkAGRAZIBkwGUAZUBlgGXAZgBmQGaAZsBnAGdAZ4BnwGgAaEBogGjAaQBpQGmAacBqAGpAaoBqwGsAa0BrgGvAbABsQGyAJ8BswG0AbUBtgG3AbgBuQG6AbsBvAG9Ab4BvwHAAcEBwgHDAcQBxQHGAccByACbAckBygHLAcwBzQHOAc8B0AHRAdIB0wHUAdUB1gHXAdgB2QHaAdsB3AHdAd4B3wHgAeEB4gHjAeQB5QHmAecB6AHpAeoB6wHsAe0B7gHvAfAB8QHyAfMB9AH1AfYB9wH4AfkB+gH7AfwB/QH+Af8CAAIBAgICAwIEAgUCBgIHAggCCQIKAgsCDAINAg4CDwIQAhECEgITAhQCFQIWAhcCGAIZAhoCGwIcAh0CHgIfAiACIQIiAiMCJAIlAiYCJwIoAikCKgIrAiwCLQIuAi8CMAIxAjICMwI0AjUCNgI3AjgCOQI6AjsCPAI9Aj4CPwJAAkECQgJDAkQCRQJGAkcCSAJJAkoCSwJMAk0CTgJPAlACUQJSAlMCVAJVAlYCVwJYAlkCWgJbAlwCXQJeAl8CYAJhAmICYwJkAmUCZgJnAmgCaQJqAmsCbAJtAm4CbwJwAnECcgJzAnQCdQJ2AncCeAJ5AnoCewJ8An0CfgJ/AoACgQKCAoMChAKFAoYChwKIAokCigC2ALcAxAKLALQAtQDFAowAggDCAIcCjQCrAMYCjgKPApACkQC+AL8AvAKSApMClAKVApYClwKYApkCmgKbApwCnQKeAp8CoAKhAqICowKkAqUCpgKnAqgCqQKqAqsCrAKtAq4CrwKwAIwCsQKyArMCtAK1ArYCtwK4ArkCugK7ArwCvQK+Ar8CwALBAsICwwLEAsUCxgLHAsgCyQLKAssAqAClAJIAnALMAKcAjwCUAJUCzQLOAs8C0ALRAtIC0wLUAtUC1gLXAtgC2QLaAtsC3ALdAt4AwADBB0FtYWNyb24HYW1hY3JvbgZBYnJldmUGYWJyZXZlB0FvZ29uZWsHYW9nb25lawtDY2lyY3VtZmxleAtjY2lyY3VtZmxleARDZG90BGNkb3QGRGNhcm9uBmRjYXJvbgZEY3JvYXQHRW1hY3JvbgdlbWFjcm9uBkVicmV2ZQZlYnJldmUERWRvdARlZG90B0VvZ29uZWsHZW9nb25lawZFY2Fyb24GZWNhcm9uC0djaXJjdW1mbGV4C2djaXJjdW1mbGV4BEdkb3QEZ2RvdAhHY2VkaWxsYQhnY2VkaWxsYQtIY2lyY3VtZmxleAtoY2lyY3VtZmxleARIYmFyBGhiYXIGSXRpbGRlBml0aWxkZQdJbWFjcm9uB2ltYWNyb24GSWJyZXZlBmlicmV2ZQdJb2dvbmVrB2lvZ29uZWsCSUoCaWoLSmNpcmN1bWZsZXgLamNpcmN1bWZsZXgIS2NlZGlsbGEIa2NlZGlsbGEMa2dyZWVubGFuZGljBkxhY3V0ZQZsYWN1dGUITGNlZGlsbGEIbGNlZGlsbGEGTGNhcm9uBmxjYXJvbgRMZG90BGxkb3QGTmFjdXRlBm5hY3V0ZQhOY2VkaWxsYQhuY2VkaWxsYQZOY2Fyb24GbmNhcm9uC25hcG9zdHJvcGhlA0VuZwNlbmcHT21hY3JvbgdvbWFjcm9uBk9icmV2ZQZvYnJldmUJT2RibGFjdXRlCW9kYmxhY3V0ZQZSYWN1dGUGcmFjdXRlCFJjZWRpbGxhCHJjZWRpbGxhBlJjYXJvbgZyY2Fyb24GU2FjdXRlBnNhY3V0ZQtTY2lyY3VtZmxleAtzY2lyY3VtZmxleAhUY2VkaWxsYQh0Y2VkaWxsYQZUY2Fyb24GdGNhcm9uBFRiYXIEdGJhcgZVdGlsZGUGdXRpbGRlB1VtYWNyb24HdW1hY3JvbgZVYnJldmUGdWJyZXZlBVVyaW5nBXVyaW5nCVVkYmxhY3V0ZQl1ZGJsYWN1dGUHVW9nb25lawd1b2dvbmVrC1djaXJjdW1mbGV4C3djaXJjdW1mbGV4C1ljaXJjdW1mbGV4C3ljaXJjdW1mbGV4BlphY3V0ZQZ6YWN1dGUEWmRvdAR6ZG90BWxvbmdzB0J0b3BiYXIHYnRvcGJhcgVTY2h3YQdac3Ryb2tlB3pzdHJva2UDRXpoB0dzdHJva2UHZ3N0cm9rZQZHY2Fyb24GZ2Nhcm9uBktjYXJvbgZrY2Fyb24HT29nb25lawdvb2dvbmVrCEV6aGNhcm9uCGV6aGNhcm9uCkFyaW5nYWN1dGUKYXJpbmdhY3V0ZQdBRWFjdXRlB2FlYWN1dGULT3NsYXNoYWN1dGULb3NsYXNoYWN1dGUMU2NvbW1hYWNjZW50DHNjb21tYWFjY2VudAtUY29tbWFiZWxvdwt0Y29tbWFiZWxvdwhkb3RsZXNzagVzY2h3YQNlemgQZmlyc3R0b25lY2hpbmVzZRFzZWNvbmR0b25lY2hpbmVzZRFmb3VydGh0b25lY2hpbmVzZRBudW1lcmFsc2lnbmdyZWVrFW51bWVyYWxzaWdubG93ZXJncmVlaw1xdWVzdGlvbmdyZWVrBXRvbm9zDmRpYWx5dGlrYXRvbm9zCkFscGhhdG9ub3MJYW5vdGVsZWlhDEVwc2lsb250b25vcwhFdGF0b25vcwlJb3RhdG9ub3MMT21pY3JvbnRvbm9zDFVwc2lsb250b25vcwpPbWVnYXRvbm9zEWlvdGFkaWVyZXNpc3Rvbm9zBUFscGhhBEJldGEFR2FtbWEKRGVsdGFncmVlawdFcHNpbG9uBFpldGEDRXRhBVRoZXRhBElvdGEFS2FwcGEGTGFtYmRhAk11Ak51AlhpB09taWNyb24CUGkDUmhvBVNpZ21hA1RhdQdVcHNpbG9uA1BoaQNDaGkDUHNpDElvdGFkaWVyZXNpcw9VcHNpbG9uZGllcmVzaXMKYWxwaGF0b25vcwxlcHNpbG9udG9ub3MIZXRhdG9ub3MJaW90YXRvbm9zFHVwc2lsb25kaWVyZXNpc3Rvbm9zBWFscGhhBGJldGEFZ2FtbWEFZGVsdGEHZXBzaWxvbgR6ZXRhA2V0YQV0aGV0YQRpb3RhBWthcHBhBmxhbWJkYQdtdWdyZWVrAm51AnhpB29taWNyb24DcmhvBnNpZ21hMQVzaWdtYQN0YXUHdXBzaWxvbgNwaGkDY2hpA3BzaQVvbWVnYQxpb3RhZGllcmVzaXMPdXBzaWxvbmRpZXJlc2lzDG9taWNyb250b25vcwx1cHNpbG9udG9ub3MKb21lZ2F0b25vcwd1bmkwM0Q3B3VuaTA0MDAJYWZpaTEwMDIzCWFmaWkxMDA1MQlhZmlpMTAwNTIJYWZpaTEwMDUzCWFmaWkxMDA1NAlhZmlpMTAwNTUJYWZpaTEwMDU2CWFmaWkxMDA1NwlhZmlpMTAwNTgJYWZpaTEwMDU5CWFmaWkxMDA2MAlhZmlpMTAwNjEHdW5pMDQwRAlhZmlpMTAwNjIJYWZpaTEwMTQ1CUFjeXJpbGxpYwlhZmlpMTAwMTgJYWZpaTEwMDE5CWFmaWkxMDAyMAlhZmlpMTAwMjEJYWZpaTEwMDIyCWFmaWkxMDAyNAlhZmlpMTAwMjUJYWZpaTEwMDI2CWFmaWkxMDAyNwlhZmlpMTAwMjgJYWZpaTEwMDI5CWFmaWkxMDAzMAlhZmlpMTAwMzEJYWZpaTEwMDMyCWFmaWkxMDAzMwlhZmlpMTAwMzQJYWZpaTEwMDM1CWFmaWkxMDAzNglhZmlpMTAwMzcJYWZpaTEwMDM4CWFmaWkxMDAzOQlhZmlpMTAwNDAJYWZpaTEwMDQxCWFmaWkxMDA0MglhZmlpMTAwNDMJYWZpaTEwMDQ0CWFmaWkxMDA0NQlhZmlpMTAwNDYJYWZpaTEwMDQ3CWFmaWkxMDA0OAlhZmlpMTAwNDkJYWN5cmlsbGljCWFmaWkxMDA2NglhZmlpMTAwNjcJYWZpaTEwMDY4CWFmaWkxMDA2OQlhZmlpMTAwNzAJYWZpaTEwMDcyCWFmaWkxMDA3MwlhZmlpMTAwNzQJYWZpaTEwMDc1CWFmaWkxMDA3NglhZmlpMTAwNzcJYWZpaTEwMDc4CWFmaWkxMDA3OQlhZmlpMTAwODAJYWZpaTEwMDgxCWFmaWkxMDA4MglhZmlpMTAwODMJYWZpaTEwMDg0CWFmaWkxMDA4NQlhZmlpMTAwODYJYWZpaTEwMDg3CWFmaWkxMDA4OAlhZmlpMTAwODkJYWZpaTEwMDkwCWFmaWkxMDA5MQlhZmlpMTAwOTIJYWZpaTEwMDkzCWFmaWkxMDA5NAlhZmlpMTAwOTUJYWZpaTEwMDk2CWFmaWkxMDA5Nwd1bmkwNDUwCWFmaWkxMDA3MQlhZmlpMTAwOTkJYWZpaTEwMTAwCWFmaWkxMDEwMQlhZmlpMTAxMDIJYWZpaTEwMTAzCWFmaWkxMDEwNAlhZmlpMTAxMDUJYWZpaTEwMTA2CWFmaWkxMDEwNwlhZmlpMTAxMDgJYWZpaTEwMTA5B3VuaTA0NUQJYWZpaTEwMTEwCWFmaWkxMDE5MwlhZmlpMTAxNDYJYWZpaTEwMTk0CWFmaWkxMDE0NwlhZmlpMTAxOTUJYWZpaTEwMTQ4CWFmaWkxMDE5Ngd1bmkwNDhBB3VuaTA0OEIHdW5pMDQ4Qwd1bmkwNDhEB3VuaTA0OEUHdW5pMDQ4RglhZmlpMTAwNTAJYWZpaTEwMDk4EUdoZXN0cm9rZWN5cmlsbGljEWdoZXN0cm9rZWN5cmlsbGljFFpoZWRlc2NlbmRlcmN5cmlsbGljFHpoZWRlc2NlbmRlcmN5cmlsbGljE1plZGVzY2VuZGVyY3lyaWxsaWMTemVkZXNjZW5kZXJjeXJpbGxpYxNLYWRlc2NlbmRlcmN5cmlsbGljE2thZGVzY2VuZGVyY3lyaWxsaWMYS2F2ZXJ0aWNhbHN0cm9rZWN5cmlsbGljGGthdmVydGljYWxzdHJva2VjeXJpbGxpYxFLYWJhc2hraXJjeXJpbGxpYxFrYWJhc2hraXJjeXJpbGxpYxNFbmRlc2NlbmRlcmN5cmlsbGljE2VuZGVzY2VuZGVyY3lyaWxsaWMTRXNkZXNjZW5kZXJjeXJpbGxpYxNlc2Rlc2NlbmRlcmN5cmlsbGljEVVzdHJhaWdodGN5cmlsbGljEXVzdHJhaWdodGN5cmlsbGljF1VzdHJhaWdodHN0cm9rZWN5cmlsbGljF3VzdHJhaWdodHN0cm9rZWN5cmlsbGljE0hhZGVzY2VuZGVyY3lyaWxsaWMTaGFkZXNjZW5kZXJjeXJpbGxpYxRDaGVkZXNjZW5kZXJjeXJpbGxpYxRjaGVkZXNjZW5kZXJjeXJpbGxpYxlDaGV2ZXJ0aWNhbHN0cm9rZWN5cmlsbGljGWNoZXZlcnRpY2Fsc3Ryb2tlY3lyaWxsaWMMU2hoYWN5cmlsbGljDHNoaGFjeXJpbGxpYxBwYWxvY2hrYWN5cmlsbGljEFpoZWJyZXZlY3lyaWxsaWMQemhlYnJldmVjeXJpbGxpYwd1bmkwNEM1B3VuaTA0QzYORW5ob29rY3lyaWxsaWMOZW5ob29rY3lyaWxsaWMHdW5pMDRDOQd1bmkwNENBB3VuaTA0Q0QHdW5pMDRDRQd1bmkwNENGEUFkaWVyZXNpc2N5cmlsbGljEWFkaWVyZXNpc2N5cmlsbGljC0FpZWN5cmlsbGljC2FpZWN5cmlsbGljDVNjaHdhY3lyaWxsaWMJYWZpaTEwODQ2D0ltYWNyb25jeXJpbGxpYw9pbWFjcm9uY3lyaWxsaWMRSWRpZXJlc2lzY3lyaWxsaWMRaWRpZXJlc2lzY3lyaWxsaWMRT2RpZXJlc2lzY3lyaWxsaWMRb2RpZXJlc2lzY3lyaWxsaWMPT2JhcnJlZGN5cmlsbGljD29iYXJyZWRjeXJpbGxpYwd1bmkwNEVDB3VuaTA0RUQPVW1hY3JvbmN5cmlsbGljD3VtYWNyb25jeXJpbGxpYxFVZGllcmVzaXNjeXJpbGxpYxF1ZGllcmVzaXNjeXJpbGxpYwZXZ3JhdmUGd2dyYXZlBldhY3V0ZQZ3YWN1dGUJV2RpZXJlc2lzCXdkaWVyZXNpcwd1bmkxRTlFBllncmF2ZQZ5Z3JhdmURcXVvdGVsZWZ0cmV2ZXJzZWQHdW5pMjAxRgd1bmkyMDIzBm1pbnV0ZQZzZWNvbmQNcHJpbWVyZXZlcnNlZAd1bmkyMDM2DHplcm9zdXBlcmlvcgd1bmkyMDcxDGZvdXJzdXBlcmlvcgxmaXZlc3VwZXJpb3ILc2l4c3VwZXJpb3INc2V2ZW5zdXBlcmlvcg1laWdodHN1cGVyaW9yDG5pbmVzdXBlcmlvcgx6ZXJvaW5mZXJpb3ILb25laW5mZXJpb3ILdHdvaW5mZXJpb3INdGhyZWVpbmZlcmlvcgxmb3VyaW5mZXJpb3IMZml2ZWluZmVyaW9yC3NpeGluZmVyaW9yDXNldmVuaW5mZXJpb3INZWlnaHRpbmZlcmlvcgxuaW5laW5mZXJpb3IDd29uBEV1cm8HdW5pMjBBRQd1bmkyMEIxB3VuaTIwQjQHdW5pMjBCOAd1bmkyMEI5B3VuaTIwQkEJYWZpaTYxMjQ4CWFmaWk2MTI4OQlhZmlpNjEzNTIHdW5pMjExNwd1bmkyMTIwCWVzdGltYXRlZAd1bmkyMTUwB3VuaTIxNTEHdW5pMjE1MghvbmV0aGlyZAl0d290aGlyZHMHdW5pMjE1NQd1bmkyMTU2B3VuaTIxNTcHdW5pMjE1OAd1bmkyMTU5B3VuaTIxNUEJb25lZWlnaHRoDHRocmVlZWlnaHRocwtmaXZlZWlnaHRocwxzZXZlbmVpZ2h0aHMJYXJyb3dsZWZ0B2Fycm93dXAKYXJyb3dyaWdodAlhcnJv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wMDAwMABgP6AwAGA/oDAwMDAwMDAwAAAAAQAAAPAA8AJwAADAAkADQARAAARETMRFTUhETMRATUzFSU1MxXAAkDA/cDA/oDABIADAP0AwMADAPxABIDAwMDAwAAABAAAA8ADwAnAAAMACQANABEAABERMxEVNSERMxEBNTMVNTUzFcACQMD9wMDABIADAP0AwMADAPxABIDAwMDAwAAAAAAFAAADwAPACcAAAwAJAA0AEQAVAAARETMRFTUhETMRATUzFTM1MxUlNTMVwAJAwP0AwMDA/oDABIADAP0AwMADAPxABIDAwMDAwMDAAAAAAAQAAAPAA8AJAAADAAkADQARAAARETMRFTUhETMRATUzFTM1MxXAAkDA/QDAwMAEgAMA/QDAwAMA/EAEgMDAwMAAAAAABQAAAwADwAnAAAMABwAPABMAFwAAETUhFQERMxEBNSE1IREzEQE1MxU1NTMVAwD9AMACQP3AAkDA/cDAwAMAwMACQAJA/cD+gMDAAkD8QASAwMDAwMAAAAMAAAMAA8AJAAADAAcAEwAAAREzEQE1IRUBETMRMxUjFSEVIREDAMD9wAGA/QDAwMACQP3ABUABgP6AAYDAwPxABgD9wMDAwP6AAAADAAADAAPAB4AAAwAHAA8AABE1IRUBETMRATUhNSERMxEDAP0AwAJA/cACQMADAMDAAkACQP3A/oDAwAJA/EAAAwAAA8ADwAqAAAsADwATAAARETMVITUzESMRIRERNSEVATUhFcACQMDA/cACQP3AAkADwASAwMD7gAMA/QAEgMDAAYDAwAAABAAAA8ADwAkAAAMADQARABUAABE1MxUVNSE1ITUhNTMRATUhFQE1IRXAAkD9wAJAwP0AAkD9wAJABIDAwMDAwMDA/QADAMDAAYDAwAAAAAACAAADwAPACoAACwATAAARETMVITUzESMRIRERETMVMzUzEcACQMDA/cDAwMADwASAwMD7gAMA/QAEgAJAwMD9wAAAAAQAAAPAA8AJwAADAA0AEQAZAAARNTMVFTUhNSE1ITUzEQE1IRUBETMVMzUzEcACQP3AAkDA/QACQP3AwMDABIDAwMDAwMDA/QADAMDAAYABgMDA/oAAAAADAAACQAPACQAABQARABUAAAERMxUzFQERMxUhNTMRIxEhERE1IRUCQMDA/EDAAkDAwP3AAkAC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AAAAAAADAAADAAPAB4AABwALAA8AABERMxEhFSERAREzEQE1IRXAAkD9wAJAwP0AAkADAAPA/oDA/oACQAGA/oABgMDAAAAAAAQAAAMAA8AHgAADAAcACwAPAAABETMRATUhFSURMxERNSEVAwDA/QACQP0AwAMAAwABgP6AAYDAwMABgP6AAYDAwAAAAwAAA8ADwAeAAAMABwAPAAATNSEVJREzESERITUhFSMRwAGA/cDAAYD+gAMAwAPAwMDAAkD9wAJAwMD9wAAAAAEAAAPAA8AHgAAHAAABESE1IRUhEQGA/oADwP6AA8ADAMDA/QAAAAADAAADwAPAB4AAAwAHAAsAABM1IRUlETMRIREzEcACQP0AwAJAwAPAwMDAAwD9AAMA/QAAAwAAAwADwAeAAAMABwAVAAABETMRIREzERMRIzUzESEVIxEzFSMRAwDA/EDAwMDAAYDAwMAFQAGA/oACQP3A/cABgMACQMD+gMD+gAAAAAAJAAADAAPAB4AAAwAHAAsADwATABcAGwAfACMAABERMxEhETMRATUzFTM1MxUlNTMVJTUzFTM1MxUlNTMVITUzFcACQMD9AMDAwP6AwP6AwMDA/QDAAkDAAwABgP6AAYD+gAGAwMDAwMDAwMDAwMDAwMDAwMAAAAADAAADAAPAB4AAAwAPABMAABERMxETESM1MxEzETMVIxETETMRwMDAwMDAwMDABUACQP3A/cABgMACQP3AwP6AAkACQP3AAAAFAAADwAPAB4AAAwAHAAsADwATAAATNTMVMzUzFSURMxEhETMRIREzEcDAwMD+gMD9wMACQMADwMDAwMDAAYD+gAMA/QADAP0AAAAAAwAAA8ACQAkAAAMABwALAAATETMRATUzFTM1MxXAwP6AwMDAA8ADwPxABIDAwMDAAAAAAAUAAAPAA8AJAAADAAcACwAPABMAABM1IRUlETMRIREzEQE1MxUzNTMVwAJA/QDAAkDA/QDAwMADwMDAwAMA/QADAP0AA8DAwMDAAAAEAAADwAPAB4AAAwAHAAsADwAAEzUhFSURMxEhETMRATUhFcACQP0AwAJAwP0AAkADwMDAwAJA/cACQP3AAkDAwAAAAAQAAAPAA8AJwAADAAcACwAPAAATNSEVJREzESERMxEBETMRwAJA/QDAAkDA/cDAA8DAwMADAP0AAwD9AAPAAYD+gAAABgAAA8ADwAnAAAMABwALAA8AEwAXAAATNTMVMzUzFSURMxEhETMRIREzEQERMxHAwMDA/oDA/cDAAkDA/cDAA8DAwMDAwAGA/oADAP0AAwD9AAPAAYD+gAAAAAAEAAADAAPAB4AAAwAHABMAFwAAATUhFTURMxEhETMRMzUzFTMVIREBNTMVAYABgMD8QMDAwMD9wAGAwAMAwMDAAYD+gAPA/oDAwMD+gAMAwMAAAAACAAADwAPACoAADwATAAARESE1MxUhFSEVIRUhESEVATUzFQGAwAGA/QABgP6AAwD9AMADwAVAwMDAwMD9wMAGAMDAAAMAAAPAA8AKgAALAA8AEwAAEREhFSEVIRUhESEVATUzFTM1MxUDwP0AAYD+gAMA/QDAwMADwAVAwMDA/cDABgDAwMDAAAAAAAMAAAMABIAJAAADAAcAEwAAATUhFTURMxEhESM1IRUhFSEVIRECQAGAwPxAwAPA/cACQP3AAwDAwMADAP0ABIDAwMDA/QAAAAIAAAPAA8AKgAAJAA0AABERITUzFSEVIREBNTMVAYDAAYD9AAGAwAPABUDAwMD7gAYAwMAAAAAABQAAA8ADwAkAAAMABwAPABMAFwAAEzUhFTU1MxUhETMVIRUhEQE1MxUlNSEVwAJAwPxAwAGA/oACQMD9AAJAA8DAwMDAwAPAwMD9wAMAwMDAwMAABgAAA8ADwAkAAAMABwALAA8AEwAXAAATNSEVJTUzFSERMxEBNSEVJTUzFTU1IRXAAkD9AMACQMD9AAJA/QDAAwADwMDAwMDAAkD9wAJAwMDAwMDAwMAAAAEAAAPAAkAJAAALAAARNTMRIzUhFSMRMxXAwAJAwMADwMADwMDA/EDAAAAAAwAAA8ACQAqAAAsADwATAAARNTMRIzUhFSMRMxUBNTMVMzUzFcDAAkDAwP3AwMDAA8DAA8DAwPxAwAYAwMDAwAAAAAADAAADwAPACQAAAwAHAAsAABM1IRUlNTMVIREzEcACQP0AwAJAwAPAwMDAwMAEgPuAAAAAAgAAA8AGwAkAAAMAEwAAAREzEQU1MxEhESEVIREhFSERIREGAMD5QMADAAJA/cACQP0A/oAEgAJA/cDAwASA/oDA/cDABID7gAAAAAIAAAPABsAJAAADABUAAAERMxEFETMRIREzESEVIREhFSERIREGAMD5QMACQMACQP3AAkD9AP3ABIACQP3AwAVA/oABgP6AwP3AwAMA/QAAAgAAA8AEgAkAAAMADwAAAREzESERIzUhFSEVIRUhEQPAwPxAwAPA/cACQP3AA8ADAP0ABIDAwMDA/QAABwAAA8ADwAqAAAMABwALABMAFwAbAB8AAAERMxEBNTMVAzUzFQERMxEhFSERATUzFSU1MxU1NTMVAwDA/oDAwMD9AMABgP6AAkDA/cDAwAPAAkD9wAJAwMABgMDA/EAFQP6AwP0ABIDAwMDAwMDAwAAAAAAFAAADwAPACoAAAwALABMAFwAbAAABNTMVAREzETMVIxEhESM1MzUzEQE1MxUlNTMVAYDA/cDAwMACQMDAwP3AwP6AwAbAwMD9AAVA/cDA/cADwMDA+sAFQMDAwMDAAAAEAAADwAPACQAAAwAHAAsAEwAAETUhFTU1MxUBETMRAREhNSERMxECQMD9AMACQP3AAkDAA8DAwMDAwAMAAYD+gP3AAYDAAYD8QAAAAQAAAwADwAkAAAsAAAE1IREzESERMxEhFQGA/oDAAkDA/oADAMAFQPuABID6wMAAAgAAA8ADwAkAAAsADwAAEREzFSE1MxEjESERETUhFcACQMDA/cACQAPABIDAwPuAAwD9AASAwMAAAAAAAgAAA8ADwAkAAAMADwAAAREzEQURIRUhFSEVIREhFQMAwPxAA8D9AAJA/cACQASAAkD9wMAFQMDAwP3AwAAAAAMAAAPAA8AJAAADAAcAEwAAAREzEQM1MxUBESEVIRUhFSERIRUDAMDAwPxAAwD9wAJA/cACQASAAkD9wAMAwMD8QAVAwMDA/cDAAAABAAADwAPACQAABQAAEREhFSERA8D9AAPABUDA+4AAAAQAAAMAA8AJAAALAA8AEwAXAAARETMRIREzESM1IRURETMRMxEzEQE1MxXAAkDAwP3AwMDA/oDAAwADwP3AAkD8QMDAA8ABgP6AAYD+gAGAwMAAAAEAAAPAA8AJAAALAAARESEVIRUhFSERIRUDwP0AAYD+gAMAA8AFQMDAwP3AwAAAAAUAAAPAA8AJAAADAAcACwAXABsAABERMxEhETMRAREzERMRIzUzETMRMxUjERMRMxHAAkDA/EDAwMDAwMDAwMADwAMA/QADAP0AA8ABgP6A/EADAMABgP6AwP0AA8ABgP6AAAAGAAADwAPACQAAAwAHAAsADwATABcAABM1IRUlNTMVIREzEQE1IRU1NTMVJTUhFcACQP0AwAJAwP3AAYDA/EADAAPAwMDAwMACQP3AAkDAwMDAwMDAwAAAAwAAA8ADwAkAAAMACwATAAABNTMVAREzETMVIxEhESM1MzUzEQGAwP3AwMDAAkDAwMAGwMDA/QAFQP3AwP3AA8DAwPrAAAAABAAAA8ADwAqAAAMACwATABsAAAE1MxUBETMRMxUjESERIzUzNTMRAREzFTM1MxEBgMD9wMDAwAJAwMDA/QDAwMAGwMDA/QAFQP3AwP3AA8DAwPrABUABgMDA/oAAAAAABQAAA8ADwAkAAAMABwALABMAFwAAAREzEQE1MxUDNTMVAREzESEVIREBNTMVAwDA/oDAwMD9AMABgP6AAkDAA8ACQP3AAkDAwAGAwMD8QAVA/oDA/QAEgMDAAAABAAADwAPACQAACQAAETUzESERIxEhEcADAMD+gAPAwASA+sAEgPuAAAAAAAMAAAPAA8AJAAADAAsAEwAAATUzFQERMxUzFSMRIREjNTM1MxEBgMD9wMDAwAJAwMDABsDAwP0ABUDAwPxAA8DAwPrAAAAAAAEAAAPAA8AJAAALAAARETMRIREzESMRIRHAAkDAwP3AA8AFQP6AAYD6wAMA/QAAAAQAAAPAA8AJAAADAAcACwAPAAATNSEVJREzESERMxEBNSEVwAJA/QDAAkDA/QACQAPAwMDAA8D8QAPA/EADwMDAAAAAAQAAA8ADwAkAAAcAABERIREjESERA8DA/cADwAVA+sAEgPuAAAAAAAIAAAPAA8AJAAADAA0AAAE1MxUBESEVIRUhFSERAwDA/EADAP3AAkD9wAeAwMD8QAVAwMDA/QAABQAAA8ADwAkAAAMABwALAA8AEwAAEzUhFTU1MxUhETMRATUzFSU1IRXAAkDA/EDAAkDA/QACQAPAwMDAwMADwPxAAwDAwMDAwAAAAAEAAAPAA8AJAAAHAAABESE1IRUhEQGA/oADwP6AA8AEgMDA+4AAAAAEAAADwAPACQAAAwAHAAsAEwAAETUhFTU1MxUBETMRAREhNSERMxECQMD9AMACQP3AAkDAA8DAwMDAwAMAAYD+gP3AAYDAAYD8QAAAAwAAA8ADwAkAAAMABwAbAAARETMRIREzEQERIzUzESM1MzUzFTMVIxEzFSMRwAJAwP3AwMDAwMDAwMDABgABgP6AAYD+gP3AAYDAAYDAwMDA/oDA/oAAAAkAAAPAA8AJAAADAAcACwAPABMAFwAbAB8AIwAAEREzESERMxEBNTMVMzUzFSU1MxUlNTMVMzUzFSU1MxUhNTMVwAJAwP0AwMDA/oDA/oDAwMD9AMACQMADwAJA/cACQP3AAkDAwMDAwMDAwMDAwMDAwMDAwAAAAAEAAAMABIAJAAALAAABNSERMxEhETMRMxEDwPxAwAJAwMADAMAFQPuABID7gP6AAAIAAAPAA8AJAAADAAsAABERMxEBESE1IREzEcACQP3AAkDAB4ABgP6A/EADAMABgPrAAAABAAADwAPACQAACwAAEREzETMRMxEzETMRwMDAwMADwAVA+4AEgPuABID6wAAAAAABAAADAASACQAADwAAATUhETMRMxEzETMRMxEzEQPA/EDAwMDAwMADAMAFQPuABID7gASA+4D+gAAAAAACAAADwASACQAAAwAPAAABETMRBREjNSERIRUhESEVA8DA/EDAAYACQP3AAkAEgAJA/cDABIDA/oDA/cDAAAAAAwAAA8AFQAkAAAMADQARAAABETMRBREzESEVIREhFSERMxEDAMD8QMACQP3AAkABgMAEgAJA/cDABUD+gMD9wMAFQPrAAAAAAgAAA8ADwAkAAAMADQAAAREzEQURMxEhFSERIRUDAMD8QMACQP3AAkAEgAJA/cDABUD+gMD9wMAAAAAABQAAA8ADwAkAAAMABwALABMAFwAAEzUhFSU1MxUDNTMVAREhNSE1MxEBNSEVwAJA/QDAwMACQP6AAYDA/QACQAPAwMDAwMADAMDA/QACQMDA/EADwMDAAAQAAAPAA8AJAAADAAcAEwAXAAABNTMVNREzEQURMxEzNTMRIxEjEQE1MxUCQMDA/EDAwMDAwAGAwAPAwMDAA8D8QMAFQP6AwPxAAkD9AASAwMAAAAMAAAPAA8AJAAADAAcAEQAAEREzEQM1MxUBESE1ITUhNSERwMDAAkD9wAJA/cADAAPAAwD9AAPAwMD8QAMAwMDA+sAAAwAAA8ADwAeAAAMADQARAAARNTMVFTUhNSE1ITUzEQE1IRXAAkD9wAJAwP0AAkAEgMDAwMDAwMD9AAMAwMAAAAUAAAPAA8AJAAADAAcACwATABcAABM1IRU1ETMRATUhFQERMxEzFSMRETUhFcACQMD9wAGA/QDAwMADAAPAwMDAAkD9wAJAwMD9wAPA/oDA/oADwMDAAAADAAADwAPAB4AAAwAHABMAAAE1MxUDNTMVAREhFSEVIRUhFSEVAwDAwMD8QAMA/cACQP3AAkAEgMDAAYDAwP3AA8DAwMDAwAABAAADwAPAB4AABQAAEREhFSERA8D9AAPAA8DA/QAAAAQAAAMAA8AHgAALAA8AEwAXAAARETMVITUzESM1IRURETMRMxEzEQE1MxXAAkDAwP3AwMDA/oDAAwACQMDA/cDAwAJAAYD+gAGA/oABgMDAAAAAAAMAAAPAA8AHgAADAA0AEQAAEzUhFSURMxUhNTMRIRURNSEVwAMA/EDAAkDA/QACQAPAwMDAAkDAwP6AwAJAwMAAAAAABQAAA8ADwAeAAAMABwALABcAGwAAEREzESERMxEBETMRExEjNTMRMxEzFSMRExEzEcACQMD8QMDAwMDAwMDAwAPAAYD+gAGA/oACQAGA/oD9wAGAwAGA/oDA/oACQAGA/oAAAAUAAAPAA8AHgAADAAcACwAPABMAABE1IRU1NTMVJTUhFTU1MxUlNSEVAwDA/cABgMD8QAMAA8DAwMDAwMDAwMDAwMDAwAAAAAMAAAPAA8AHgAADAAsAEwAAATUzFQERMxEzFSMVIREjNTM1MxEBgMD9wMDAwAJAwMDABUDAwP6AA8D9wMDAAkDAwPxAAAAAAAQAAAPAA8AJwAADAAsAEwAbAAABNTMVAREzETMVIxUhESM1MzUzEQERMxUzNTMRAYDA/cDAwMACQMDAwP0AwMDABUDAwP6AA8D9wMDAAkDAwPxABIABgMDA/oAABQAAA8ADAAeAAAMABwALABMAFwAAATUzFSU1MxUDNTMVAREzETMVIxEBNTMVAkDA/oDAwMD9wMDAwAGAwAPAwMDAwMABgMDA/cADwP6AwP6AAwDAwAAAAAEAAAPAA8AHgAAJAAARNTMRIREjESERwAMAwP6AA8DAAwD8QAMA/QAAAAAAAwAAA8ADwAeAAAMACwATAAABNTMVAREzFTMVIxEhESM1MzUzEQGAwP3AwMDAAkDAwMAFQMDA/oADwMDA/cACQMDA/EAAAAAAAQAAA8ADwAeAAAsAABERMxEhETMRIxEhEcACQMDA/cADwAPA/oABgPxAAYD+gAAABAAAA8ADwAeAAAMABwALAA8AABM1IRUlETMRIREzEQE1IRXAAkD9AMACQMD9AAJAA8DAwMACQP3AAkD9wAJAwMAAAAABAAADwAPAB4AABwAAEREhESMRIREDwMD9wAPAA8D8QAMA/QAAAAAAAwAAAwADwAeAAAMADwATAAABETMRAREzFTMVIxUhFSEREzUhFQMAwPxAwMDAAkD9wMABgAVAAYD+gP3ABIDAwMDA/oADwMDAAAAAAAUAAAPAA8AHgAADAAcACwAPABMAABM1IRU1NTMVIREzEQE1MxUlNSEVwAJAwPxAwAJAwP0AAkADwMDAwMDAAkD9wAGAwMDAwMAAAAABAAADwAPAB4AABwAAAREhNSEVIREBgP6AA8D+gAPAAwDAwP0AAAAAAwAAAwADwAeAAAMABwAPAAARNSEVAREzEQE1ITUhETMRAwD9AMACQP3AAkDAAwDAwAJAAkD9wP6AwMACQPxAAAUAAAMABUAJAAADAAcACwAPACMAABM1MxUlETMRIREzEQE1MxUBESM1MzUhNSERMxEzFSMVIRUhEcDA/oDAA8DA/oDA/cDAwP6AAYDAwMABgP6ABIDAwMABgP6AAYD+gAGAwMD8QAJAwMDAAYD9wMDAwP6AAAAAAAkAAAPAA8AHgAADAAcACwAPABMAFwAbAB8AIwAAETUzFSE1MxUlNTMVMzUzFSU1MxUlNTMVMzUzFSU1MxUhNTMVwAJAwP0AwMDA/oDA/oDAwMD9AMACQMADwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMAAAAAAAQAAAwAEgAeAAAsAAAE1IREzESERMxEzEQPA/EDAAkDAwAMAwAPA/QADAP0A/oAAAgAAA8ADwAeAAAMACwAAEREzEQERITUhETMRwAJA/cACQMAGAAGA/oD9wAGAwAGA/EAAAAEAAAPAA8AHgAALAAARETMRMxEzETMRMxHAwMDAwAPAA8D9AAMA/QADAPxAAAAAAAEAAAMABIAHgAAPAAABNSERMxEzETMRMxEzETMRA8D8QMDAwMDAwAMAwAPA/QADAP0AAwD9AP6AAAAAAAIAAAPAA8AHgAADAA8AAAE1MxUFESM1IREhFSEVIRUDAMD9AMABgAGA/oABgASAwMDAAwDA/oDAwMAAAAMAAAPABIAHgAADAA0AEQAAATUzFQURMxEhFSEVIRUhETMRAkDA/QDAAYD+gAGAAYDABIDAwMADwP6AwMDAA8D8QAAAAgAAA8ADAAeAAAMADQAAATUzFQURMxEhFSEVIRUCQMD9AMABgP6AAYAEgMDAwAPA/oDAwMAAAAAFAAADwAPAB4AAAwAHAAsAEwAXAAATNSEVJTUzFQM1MxUBNSE1ITUzEQE1IRXAAkD9AMDAwAJA/oABgMD9AAJAA8DAwMDAwAGAwMD+gMDAwP3AAkDAwAAABAAAA8ADwAeAAAMABwATABcAAAE1MxU1ETMRBREzETM1MxEjNSMRATUzFQJAwMD8QMDAwMDAAYDAA8DAwMACQP3AwAPA/oDA/cDA/oADAMDAAAAAAwAAA8ADwAeAAAMABwARAAARETMRAzUzFQERITUhNSE1IRHAwMACQP3AAkD9wAMAA8ABgP6AAkDAwP3AAYDAwMD8QAAFAAADwAPACcAAAwANABEAFQAZAAATNSEVJREzFSE1MxEhFRE1IRUBNTMVJTUzFcADAPxAwAJAwP0AAkD+gMD+gMADwMDAwAJAwMD+gMACQMDAAYDAwMDAwAAAAAUAAAPAA8AJAAADAA0AEQAVABkAABM1IRUlETMVITUzESEVETUhFQE1MxUzNTMVwAMA/EDAAkDA/QACQP3AwMDAA8DAwMACQMDA/oDAAkDAwAGAwMDAwAAEAAADAASACQAAAwAHAAsAGwAAATUhFTURMxEBNSEVAREjNTM1MxUzFSMVMxUjEQJAAYDA/cABgP0AwMDAwMDAwAMAwMDAAwD9AAMAwMD9AAPAwMDAwMDA/cAAAAMAAAPAA8AJwAAFAAkADQAAEREhFSEREzUzFTU1MxUDwP0AwMDAA8ADwMD9AASAwMDAwMAAAAAABQAAA8ADwAeAAAMABwAPABMAFwAAEzUhFTU1MxUhETMVIRUhFQE1MxUlNSEVwAJAwPxAwAGA/oACQMD9AAJAA8DAwMDAwAJAwMDAAYDAwMDAwAAABQAAA8ADwAeAAAMABwALAA8AEwAAETUhFTU1MxUlNSEVJTUzFTU1IRUDAMD9AAJA/QDAAwADwMDAwMDAwMDAwMDAwMDAAAAAAgAAA8AAwAkAAAMABwAAEREzEQM1MxXAwMADwAPA/EAEgMDAAAAAAAMAAAPAAkAJAAADAAcACwAAExEzEQE1MxUzNTMVwMD+gMDAwAPAA8D8QASAwMDAwAAAAAAEAAADAAPACQAAAwAHAAsADwAAEzUhFSU1MxUhETMRAzUzFcACQP0AwAJAwMDAAwDAwMDAwAPA/EAEgMDAAAAAAgAAA8AGAAeAAAMAEwAAATUzFQU1MxEhESEVIRUhFSERIREFQMD6AMADAAGA/oABgP3A/oAEgMDAwMADAP6AwMDAAwD9AAAAAgAAA8AGAAeAAAMAFQAAATUzFQURMxEhETMRIRUhFSEVIREhEQVAwPoAwAJAwAGA/oABgP3A/cAEgMDAwAPA/oABgP6AwMDAAYD+gAAAAAADAAADwASACQAAAwAHABcAAAERMxEBNSEVAREjNTM1MxUzFSMVMxUjEQPAwP3AAYD9AMDAwMDAwMADwAMA/QADAMDA/QADwMDAwMDAwP3AAAUAAAPAAwAHgAADAAcACwATABcAAAE1MxUlNTMVAzUzFQERMxEzFSMRATUzFQJAwP6AwMDA/cDAwMABgMADwMDAwMDAAYDAwP3AA8D+gMD+gAMAwMAAAAAFAAADwAPACcAAAwALABMAFwAbAAABNTMVAREzETMVIxUhESM1MzUzEQE1MxUlNTMVAYDA/cDAwMACQMDAwP3AwP6AwAVAwMD+gAPA/cDAwAJAwMD8QASAwMDAwMAAAAAEAAADAAPACcAAAwAHAA8AFwAAETUhFQERMxEBNSE1IREzEQERMxUzNTMRAwD9AMACQP3AAkDA/QDAwMADAMDAAkACQP3A/oDAwAJA/EAEgAGAwMD+gAAAAQAAAwADwAeAAAsAAAE1IREzESERMxEhFQGA/oDAAkDA/oADAMADwP0AAwD8QMAAAgAAA8AEgAkAAAMAFQAAAREzEQURIzUzNTMVIRUhFSEVIREhFQPAwPxAwMDAAkD9wAJA/cACQASAAYD+gMADwMDAwMDAwP6AwAAAAAMAAAPABIAJAAADAAcAGQAAAREzEQE1IRUBESM1MzUzFSEVIREzFSMVIRUDwMD9wAGA/QDAwMACQP3AwMACQASAAYD+gAGAwMD9wAPAwMDAwP6AwMDAAAADAAADwAPACQAAAwAPABMAABM1IRUlETMRIREzESMRIRERNSEVwAJA/QDAAkDAwP3AAkADwMDAwAPA/oABgPxAAYD+gAPAwMAAAAAAAwAAA8ADwAeAAAMADwATAAATNSEVJREzFSE1MxEjNSEVETUhFcACQP0AwAJAwMD9wAJAA8DAwMACQMDA/cDAwAJAwMAAAAAABQAAA8ADwAkAAAMABwALAA8AEwAAATUzFSURMxEzETMRAREzESURMxEBgMD+gMDAwP0AwAJAwAPAwMDAAYD+gAJA/cABgAMA/QDAAkD9wAAFAAADwAPAB4AAAwAHAAsADwATAAABNTMVJTUzFTMRMxElETMRJREzEQGAwP6AwMDA/QDAAkDAA8DAwMDAwAGA/oDAAkD9wMABgP6AAAAAAAQAAAMABIAKgAADAAsAFwAfAAABNTMVAREzETMVIxEFESM1MzUzETMVIxUBETMVMzUzEQGAwP3AwMDAAkDAwMDAwP0AwMDABsDAwP0ABUD9wMD9wMAEgMDA+4DAwAYAAYDAwP6AAAAABAAAAwAEgAnAAAMACwAXAB8AAAE1MxUBETMRMxUjFQURIzUzNTMRMxUjFQERMxUzNTMRAYDA/cDAwMACQMDAwMDA/QDAwMAFQMDA/oADwP3AwMDAAwDAwP0AwMAFQAGAwMD+gAAAAAACAAADwASACQAAAwARAAABETMRBREjNSEVIxUhFSERIRUDwMD8QMACQMACQP3AAkAEgAJA/cDABIDAwMDA/cDAAAAAAAIAAAPAA8AJAAADABUAAAE1MxUFESM1MzUzFTMVIxEhFSEVIRUDAMD9AMDAwMDAAYD+gAGABIDAwMADwMDAwMD+gMDAwAAAAAIAAAPAA8AJAAADABEAAAE1IxUDESEVIxUzNTMRIzUhEQGAwMADAMDAwMD9wAeAwMD8QAVAwMDA/cDA/QAAAAAEAAADAAPAB4AAAwAHABcAGwAAATUzFQMRMxEBETMVMxUjFTM1MxUzFSEREzUhFQMAwMDA/EDAwMDAwMD9wMABgAPAwMABgAGA/oD9wASAwMDAwMDA/oADwMDAAAEAAAPAA8AJwAAHAAARESE1MxEhEQMAwP0AA8AFQMD+gPuAAAEAAAPAA8AIQAAHAAARESE1MxEhEQMAwP0AA8ADwMD+gP0AAAEAAAPABIAJAAANAAATESM1MxEhFSERIRUhEcDAwAPA/QABgP6AA8ACQMACQMD+gMD9wAABAAADwASAB4AADQAAExEjNTMRIRUhFSEVIRHAwMADwP0AAYD+gAPAAYDAAYDAwMD+gAAABQAAAwAEgAkAAAMACwAPABsAHwAAEREzEQU1IxEzETMRAREzERMRIzUzETMRMxUjERMRMxHAAwDAwMD7gMDAwMDAwMDAwAPAAwD9AMDAAwD9wP6ABIABgP6A/EADAMABgP6AwP0AA8ABgP6AAAAAAAUAAAMABIAHgAADAAsADwAbAB8AABERMxEFNSMRMxUzEQERMxETESM1MxEzETMVIxETETMRwAMAwMDA+4DAwMDAwMDAwMADwAGA/oDAwAGAwP6AAwABgP6A/cABgMABgP6AwP6AAkABgP6AAAYAAAMAA8AJAAAHAAsADwATABcAGwAAATUjNSEVIxUBNTMVIREzEQE1IRU1NTMVJTUhFQGAwAJAwP3AwAJAwP3AAYDA/EADAAMAwMDAwAGAwMACQP3AAkDAwMDAwMDAwAAAAAAFAAADAAPAB4AABwALAA8AEwAXAAABNSE1IRUjFRM1MxUlNSEVNTUzFSU1IRUBgP6AAwDAwMD9wAGAwPxAAwADAMDAwMABgMDAwMDAwMDAwMDAAAAFAAADAASACQAABwALAA8AFwAbAAABNSMRMxEzEQE1MxUDNTMVAREzESEVIREBNTMVA8DAwMD9wMDAwP0AwAGA/oACQMADAMACQP6A/oADAMDAAYDAwPxABUD+gMD9AASAwMAABQAAA8ADAAeAAAMABwALABMAFwAAATUzFSU1MxUDNTMVAREzETMVIxEBNTMVAkDA/oDAwMD9wMDAwAGAwAPAwMDAwMABgMDA/cADwP6AwP6AAwDAwAAAAAMAAAPAA8AJAAADABMAFwAAAREzESERMxEzNTMVMxUjFSM1IxEBETMRAwDA/EDAwMDAwMDAAkDAA8ADAP0ABUD+gMDAwMDA/QADwAGA/oAAAwAAA8ADwAeAAAMAEwAXAAABETMRIREzETM1MxUzFSMVIzUjEQERMxEDAMD8QMDAwMDAwMACQMADwAGA/oADwP6AwMDAwMD+gAJAAYD+gAAFAAADwASACQAAAwAHAAsAFQAZAAABETMRATUzFQM1MxUBESM1IREhFSERATUzFQPAwP6AwMDA/QDAAYABgP6AAkDAA8ACQP3AAkDAwAGAwMD8QASAwP6AwP0ABIDAwAAFAAADwAPAB4AAAwAHAAsAFQAZAAABNTMVJTUzFQM1MxUBESM1IREzFSMRATUzFQMAwP6AwMDA/cDAAYDAwAGAwAPAwMDAwMABgMDA/cADAMD+gMD+gAMAwMAAAAEAAAMABIAJAAAPAAABNSMRIREjETMRIREzETMRA8DA/cDAwAJAwMADAMADAP0ABUD+gAGA+4D+gAAAAAEAAAMABIAHgAAPAAABNSMRIREjETMRIREzETMRA8DA/cDAwAJAwMADAMABgP6AA8D+gAGA/QD+gAAAAAUAAAMAA8AJAAAHAAsADwATABcAAAE1IzUhFSMVEzUzFSERMxEBNTMVJTUhFQGAwAJAwMDA/EDAAkDA/QACQAMAwMDAwAGAwMADwPxAAwDAwMDAwAAAAAAFAAADAAPAB4AABwALAA8AEwAXAAABNSM1IRUjFRM1MxUhETMRATUzFSU1IRUBgMACQMDAwPxAwAJAwP0AAkADAMDAwMABgMDAAkD9wAGAwMDAwMAAAAAABQAAA8ADwAkAAAMABwALAA8AEwAAAREzEQE1MxUzNTMVJTUzFSE1MxUBgMD+gMDAwP0AwAJAwAPAA8D8QAPAwMDAwMDAwMDAAAAAAAUAAAMAA8AHgAADAAcACwAPABMAAAERMxEBNTMVMzUzFSU1MxUhNTMVAYDA/oDAwMD9AMACQMADAAMA/QADAMDAwMDAwMDAwAAAAAAFAAADwAPACQAACwAPABMAFwAbAAABESM1MxEzETMVIxEBNTMVMzUzFSU1MxUhNTMVAYDAwMDAwP6AwMDA/QDAAkDAA8ABgMABgP6AwP6AA8DAwMDAwMDAwMAAAAUAAAMAA8AHgAALAA8AEwAXABsAAAERIzUzNTMVMxUjEQE1MxUzNTMVJTUzFSE1MxUBgMDAwMDA/oDAwMD9AMACQMADAAGAwMDAwP6AAwDAwMDAwMDAwMAAAAAACQAAAwAEgAkAAAMACwAPABMAFwAbAB8AIwAnAAARETMRBTUjETMRMxEBNTMVMzUzFSU1MxUlNTMVMzUzFSU1MxUhNTMVwAMAwMDA/EDAwMD+gMD+gMDAwP0AwAJAwAPAAkD9wMDAAkD+gP6AAwDAwMDAwMDAwMDAwMDAwMDAwAAJAAADAASAB4AAAwAJAA0AEQAVABkAHQAhACUAABE1MxUFNSM1IREBNTMVMzUzFSU1MxUlNTMVMzUzFSU1MxUhNTMVwAMAwAGA/EDAwMD+gMD+gMDAwP0AwAJAwAPAwMDAwMD+gAGAwMDAwMDAwMDAwMDAwMDAwMAAAAAAAgAAAwAEgAkAAAMADwAAEREzEQE1IxEhNSERMxEzEcADAMD9wAJAwMAHgAGA/oD7gMADAMABgPuA/oAAAgAAAwAEgAeAAAMADwAAEREzEQE1IxEhNSERMxEzEcADAMD9wAJAwMAGAAGA/oD9AMABgMABgP0A/oAAAgAAA8ADwAkAAAMAEwAAEREzEQERIxUjNSM1MzUzFTMRMxHAAkDAwMDAwMDAB4ABgP6A/EADAMDAwMDAAYD6wAAAAAACAAADwAPAB4AAAwATAAARETMRAREjFSM1IzUzNTMVMxEzEcACQMDAwMDAwMAGAAGA/oD9wAGAwMDAwMABgPxAAAAAAAIAAAPAA8AJAAADAAsAAAERMxEhETMRIRUhEQMAwPxAwAJA/cADwAMA/QAFQP6AwP0AAAADAAADwAPACQAAAwAHAA8AAAERMxEBNSEVAREzETMVIxEDAMD9wAGA/QDAwMADwAMA/QADAMDA/QAFQP3AwP3AAAAAAAEAAAPAAMAJAAADAAARETMRwAPABUD6wAAAAAAFAAADwAPACoAAAwAHAAsADwAjAAARETMRIREzEQERMxEhETMRAREjNTMRIxEzFTM1MxEjETMVIxHAAkDA/EDAAkDA/cDAwMDAwMDAwMADwAMA/QADAP0AA8ABgP6AAYD+gPxAAwDAAYABgMDA/oD+gMD9AAAAAAAGAAADwAPACcAAAwAHAAsAFwAbACMAABERMxEhETMRAREzERMRIzUzETMRMxUjERMRMxEBETMVMzUzEcACQMD8QMDAwMDAwMDAwP0AwMDAA8ABgP6AAYD+gAJAAYD+gP3AAYDAAYD+gMD+gAJAAYD+gAJAAYDAwP6AAAAAAQAAAwAEgAkAAA0AAAERIREhNTMRIREzFSMVAwD+gP6AwAMAwMADAAVA+4DABID7gMDAAAEAAAMABIAHgAANAAABESERITUzESERMxUjFQMA/oD+gMADAMDAAwADwP0AwAMA/QDAwAACAAADAAPACQAAAwAPAAABNSEVJREzESERMxEjESERAYABgP0AwAJAwMD9wAMAwMDABUD+gAGA+sADAP0AAAAAAgAAAwADwAeAAAMADwAAATUhFSURMxEhETMRIxEhEQGAAYD9AMACQMDA/cADAMDAwAPA/oABgPxAAYD+gAAAAAEAAAMABIAJAAAPAAABESERIxEzESERMxEzFSMVAwD9wMDAAkDAwMADAAPA/QAFQP6AAYD7gMDAAAAAAAEAAAMABIAHgAAPAAABESERIxEzESERMxEzFSMVAwD9wMDAAkDAwMADAAJA/oADwP6AAYD9AMDAAAAAAAMAAAMABIAJAAADAAsAFwAAATUzFQERMxUzFSMRBREjNTM1MxEzFSMVAYDA/cDAwMACQMDAwMDABsDAwP0ABUDAwPxAwASAwMD7gMDAAAAAAwAAA8ADwAeAAAMACwATAAABNTMVAREzFTMVIxEhESM1MzUzEQGAwP3AwMDAAkDAwMAFQMDA/oADwMDA/cACQMDA/EAAAAAAAQAAA8AAwAeAAAMAABERMxHAA8ADwPxAAAAAAAQAAAPAA8AKgAALAA8AEwAXAAARETMVITUzESMRIRERNSEVATUzFTM1MxXAAkDAwP3AAkD9wMDAwAPABIDAwPuAAwD9AASAwMABgMDAwMAABQAAA8ADwAkAAAMADQARABUAGQAAETUzFRU1ITUhNSE1MxEBNSEVATUzFTM1MxXAAkD9wAJAwP0AAkD9wMDAwASAwMDAwMDAwP0AAwDAwAGAwMDAwAAAAAEAAAPABsAJAAAVAAARETMVITUhNSEVIRUhFSERIRUhESERwAJA/cAGAP0AAYD+gAMA/ED9wAPABIDAwMDAwMD9wMADAP0AAAYAAAPABsAHgAADAAcACwAZAB0AIQAAEzUhFTM1IRUlNTMVITUhNSE1MxUhNTMRIRUBNSEVMzUhFcACQMADAPlAwAJA/cACQMACQMD9AP0AAkDAAkADwMDAwMDAwMDAwMDAwP6AwAJAwMDAwAAAAAADAAADwAPACQAAAwANABEAABM1IRUlESE1MxEjESERETUhFcACQP0AAwDAwP3AAkADwMDAwAMAwPxAAkD9wAPAwMAAAAMAAAPAA8AHgAADAA0AEQAAEzUhFSURITUzESM1IRURNSEVwAJA/QADAMDA/cACQAPAwMDAAYDA/cDAwAJAwMAAAAAABAAAA8ADwAqAAAMACwATABcAAAE1MxUBETMRMxUjESERIzUzNTMRATUhFQGAwP3AwMDAAkDAwMD9AAJABsDAwP0ABUD9wMD9wAPAwMD6wAYAwMAABAAAA8ADwAkAAAMACwATABcAAAE1MxUBETMRMxUjFSERIzUzNTMRATUhFQGAwP3AwMDAAkDAwMD9AAJABUDAwP6AA8D9wMDAAkDAwPxABIDAwAAABQAAA8ADwAqAAAMACwATABcAGwAAATUzFQERMxEzFSMRIREjNTM1MxEBNTMVMzUzFQGAwP3AwMDAAkDAwMD9AMDAwAbAwMD9AAVA/cDA/cADwMDA+sAGAMDAwMAAAAAABQAAA8ADwAkAAAMACwATABcAGwAAATUzFQERMxEzFSMVIREjNTM1MxEBNTMVMzUzFQGAwP3AwMDAAkDAwMD9AMDAwAVAwMD+gAPA/cDAwAJAwMD8QASAwMDAwAAGAAADwAPACoAAAwAHAAsADwATABcAABM1IRUlETMRIREzEQE1IRUBNTMVMzUzFcACQP0AwAJAwP0AAkD9wMDAwAPAwMDAA8D8QAPA/EADwMDAAYDAwMDAAAAAAAYAAAPAA8AJAAADAAcACwAPABMAFwAAEzUhFSURMxEhETMRATUhFQE1MxUzNTMVwAJA/QDAAkDA/QACQP3AwMDAA8DAwMACQP3AAkD9wAJAwMABgMDAwMAAAAAAAwAAA8ADwAkAAAMADwATAAATNSEVJREzESERMxEjESERETUhFcACQP0AwAJAwMD9wAJAA8DAwMADwP6AAYD8QAGA/oADwMDAAAAAAAMAAAPAA8AHgAADAA8AEwAAEzUhFSURMxUhNTMRIzUhFRE1IRXAAkD9AMACQMDA/cACQAPAwMDAAkDAwP3AwMACQMDAAAAAAAcAAAPAA8AKgAADAAcACwATABcAGwAfAAATNSEVJTUzFQM1MxUBESE1ITUzEQE1IRUBNTMVMzUzFcACQP0AwMDAAkD+gAGAwP0AAkD9wMDAwAPAwMDAwMADAMDA/QACQMDA/EADwMDAAYDAwMDAAAAFAAADwAPAB4AAAwAHAAsAEwAXAAATNSEVJTUzFQM1MxUBNSE1ITUzEQE1IRXAAkD9AMDAwAJA/oABgMD9AAJAA8DAwMDAwAGAwMD+gMDAwP3AAkDAwAAABQAAA8ADwAqAAAMABwALABMAFwAAETUhFTU1MxUBETMRAREhNSERMxEBNSEVAkDA/QDAAkD9wAJAwP0AAkADwMDAwMDAAwABgP6A/cABgMABgPxABIDAwAAAAAAEAAADAAPACQAAAwAHAA8AEwAAETUhFQERMxEBNSE1IREzEQE1IRUDAP0AwAJA/cACQMD9AAJAAwDAwAJAAkD9wP6AwMACQPxABIDAwAAAAAYAAAPAA8AKgAADAAcACwATABcAGwAAETUhFTU1MxUBETMRAREhNSERMxEBNTMVMzUzFQJAwP0AwAJA/cACQMD9AMDAwAPAwMDAwMADAAGA/oD9wAGAwAGA/EAEgMDAwMAAAAAFAAADAAPACQAAAwAHAA8AEwAXAAARNSEVAREzEQE1ITUhETMRATUzFTM1MxUDAP0AwAJA/cACQMD9AMDAwAMAwMACQAJA/cD+gMDAAkD8QASAwMDAwAAABQAAA8ADwAqAAAMACwATABcAGwAAATUzFQERMxEzFSMVITUjNTMRMxEBNTMVJTUzFQGAwP3AwMDAAkDAwMD9wMD+gMAFQMDA/oAFQPxAwMDAwAPA+sAFQMDAwMDAAAAABAAAA8ADwAnAAAMADQARABUAABERMxEVNTMRMxEzETMRATUzFSU1MxXAwMDAwP3AwP6AwASAAwD9AMDAAYD+gAMA/EAEgMDAwMDAAAUAAAPAA8AKgAADAAsAEwAXABsAAAE1MxUBETMRMxUjFSE1IzUzETMRATUzFTU1MxUBgMD9wMDAwAJAwMDA/cDAwAVAwMD+gAVA/EDAwMDAA8D6wAVAwMDAwMAABAAAA8ADwAnAAAMADQARABUAABERMxEVNTMRMxEzETMRATUzFTU1MxXAwMDAwP3AwMAEgAMA/QDAwAGA/oADAPxABIDAwMDAwAAAAAUAAAPAA8AKgAADAAsAEwAXABsAAAE1MxUBETMRMxUjFSE1IzUzETMRATUzFTM1MxUBgMD9wMDAwAJAwMDA/QDAwMAFQMDA/oAFQPxAwMDAwAPA+sAGAMDAwMAABAAAA8ADwAkAAAMADQARABUAABERMxEVNTMRMxEzETMRATUzFTM1MxXAwMDAwP0AwMDABIADAP0AwMABgP6AAwD8QASAwMDAwAAAAAMAAAPAA8AJAAADAAcAEwAAATUhFTURMxEFESEVIxEhNTM1IREBgAGAwPxAA8DA/oDA/oADwMDAwAJA/cDABUDA/oDAwPuAAAcAAAPAA8AKgAADAAcACwAPABMAFwAbAAABETMRATUzFTM1MxUlNTMVITUzFSU1MxUlNTMVAYDA/oDAwMD9AMACQMD9wMD+gMADwAPA/EADwMDAwMDAwMDAwMDAwMDAwAAAAAAFAAADAAPACcAAAwAHAA8AEwAXAAARNSEVAREzEQE1ITUhETMRATUzFSU1MxUDAP0AwAJA/cACQMD9wMD+gMADAMDAAkACQP3A/oDAwAJA/EAEgMDAwMDAAAAAAAIAAAbAAYAJAAADAAcAABERMxERNTMVwMAGwAGA/oABgMDAAAIAAAbAAYAJAAADAAcAABE1MxU1ETMRwMAGwMDAwAGA/oAAAAIAAAMAAYAFQAADAAcAABE1MxU1ETMRwMADAMDAwAGA/oAAAAIAAAbAAYAJAAADAAcAABM1MxUlETMRwMD+gMAGwMDAwAGA/oAAAAAEAAAGwAMACQAAAwAHAAsADwAAEREzETMRMxEBNTMVMzUzFcDAwP6AwMDABsABgP6AAYD+gAGAwMDAwAAEAAAGwAMACQAAAwAHAAsADwAAETUzFTM1MxUlETMRMxEzEcDAwP6AwMDABsDAwMDAwAGA/oABgP6AAAAEAAADAAMABUAAAwAHAAsADwAAETUzFTM1MxUlETMRMxEzEcDAwP6AwMDAAwDAwMDAwAGA/oABgP6AAAAEAAAGwAMACQAAAwAHAAsADwAAEzUzFTM1MxUlETMRMxEzEcDAwMD9AMDAwAbAwMDAwMABgP6AAYD+gAABAAAEgAJACQAACwAAExEjNTM1MxUzFSMRwMDAwMDABIADAMDAwMD9AAAAAAEAAASAAkAJAAATAAATNSM1MxEjNTM1MxUzFSMRMxUjFcDAwMDAwMDAwMAEgMDAAYDAwMDA/oDAwAAAAAEAAAVAAYAGwAADAAARESERAYAFQAGA/oAAAAABAAADwAJAB4AACwAAEREzFTMVMxUjFSMVwMDAwMADwAPAwMDAwMAAAwAAA8ADwAVAAAMABwALAAARETMRMxEzETMRMxHAwMDAwAPAAYD+gAGA/oABgP6AAAAAAAgAAAPABUAJAAADAAcACwAPABMAFwAbAB8AABE1MxUhETMRMxEzESURMxERNTMVNREzESURMxElNTMVwAJAwMDA+4DAwMD9AMACQMADwMDAAYD+gAGA/oDAAYD+gAGAwMDAAYD+gMABgP6AwMDAAAADAAAGwAJACQAAAwAHAAsAABE1MxU1NTMVNTUzFcDAwAbAwMDAwMDAwMAAAAYAAAbAA8AJAAADAAcACwAPABMAFwAAETUzFTM1MxUlNTMVMzUzFSU1MxUzNTMVwMDA/oDAwMD+gMDAwAbAwMDAwMDAwMDAwMDAwMAAAAAAAwAABsACQAkAAAMABwALAAABNTMVJTUzFSU1MxUBgMD+gMD+gMAGwMDAwMDAwMDAAAAAAAYAAAbAA8AJAAADAAcACwAPABMAFwAAATUzFTM1MxUlNTMVMzUzFSU1MxUzNTMVAYDAwMD9AMDAwP0AwMDABsDAwMDAwMDAwMDAwMDAwAAAAwAAA8ABgAbAAAMABwALAAATNTMVJREzERE1MxXAwP6AwMADwMDAwAGA/oABgMDAAAAAAAMAAAPAAYAGwAADAAcACwAAETUzFTURMxEBNTMVwMD+gMADwMDAwAGA/oABgMDAAAX+gAPAAkAJAAADAAcACwAPABMAAAE1MxU1ETMRETUzFTURMxERNTMV/oDAwMDAwAPAwMDAAYD+gAGAwMDAAYD+gAGAwMAAAAQAAAYAAkAJAAADAAcACwAPAAATNTMVJREzETMRMxEBNTMVwMD+gMDAwP6AwAYAwMDAAYD+gAGA/oABgMDAAAACAAAGAADACQAAAwAHAAARETMRAzUzFcDAwAYAAYD+gAJAwMAAAAAAAQAABgACQAkAAAsAAAE1IREzFTM1IzUhEQGA/oDAwMABgAYAwAGAwMDA/QAAAAAAAwAABgACQAkAAAMABwANAAARNSEVNTUzFSURIRUjFQGAwP3AAkDABgDAwMDAwMABgMDAAAMAAAYAAkAJAAADAAcAEQAAEzUzFTU1MxUhETM1IRUjFSMVwMDA/cDAAYDAwAYAwMDAwMABgMDAwMAAAAMAAAYAAkAJAAADAAcADQAAETUzFTU1MxU1NSE1IRHAwP6AAkAGAMDAwMDAwMDA/oAAAAACAAAGAAJACQAAAwAPAAATNTMVJREzNTMVMxEjNSMVwMD+gMDAwMDABgDAwMABgMDA/oDAwAAAAAMAAAYAAkAJAAADAA0AEQAAETUzFQM1MzUzNTMRIxUDNTMVwMDAwMDAwMAHgMDA/oDAwMD+gMACQMDAAAQAAAPAAkAGwAADAAcACwAPAAATNTMVJREzETMRMxEBNTMVwMD+gMDAwP6AwAPAwMDAAYD+gAGA/oABgMDAAAABAAADwAJABsAACwAAETUzNSM1MzUzETMVwMDAwMADwMDAwMD9wMAAAwAAA8ACQAbAAAcACwAPAAARNTM1MxUzFQM1MxUlNSEVwMDAwMD9wAGAA8DAwMDAAYDAwMDAwAACAAADwAJABsAAAwANAAARNSEVNTUjNSM1IRUzEQGAwMABgMADwMDAwMDAwMD+gAABAAADwAJABsAACwAAATUhETMVMzUjNSERAYD+gMDAwAGAA8DAAYDAwMD9AAAAAAADAAADwAJABsAAAwAHAA0AABE1IRU1NTMVJREhFSMVAYDA/cACQMADwMDAwMDAwAGAwMAAAwAAA8ACQAbAAAMABwARAAATNTMVNTUzFSERMzUhFSMVIxXAwMD9wMABgMDAA8DAwMDAwAGAwMDAwAAAAwAAA8ACQAbAAAMABwANAAARNTMVNTUzFTU1ITUhEcDA/oACQAPAwMDAwMDAwMD+gAAAAAIAAAPAAkAGwAADAA8AABM1MxUlETM1MxUzESM1IxXAwP6AwMDAwMADwMDAwAGAwMD+gMDAAAAAAwAAA8ACQAbAAAMADQARAAARNTMVAzUzNTM1MxEjFQM1MxXAwMDAwMDAwAVAwMD+gMDAwP6AwAJAwMAAAgAAA8ADwAkAAAMAGwAAATUhFQMRMxUhNTMRIzUjNTM1IxUjNSMVMxUjFQMA/cDAwAJAwMDAwMDAwMDABsDAwP0ABUDAwPrAwMDAwMDAwMAAAAAABQAAA8ADwAkAAAMABwATABcAGwAAEzUhFTU1MxUhETMVIRUhFSEVIRUBNTMVJTUhFcACQMD8QMABgP6AAYD+gAJAwP0AAkADwMDAwMDAA8DAwMDAwAMAwMDAwMAAAAAABAAAA8ADwAkAAAMABwALACUAABE1MxUDNTMVJTUzFQE1IzUzNSM1MxEhNSERIzUjFTMVIxUzFSMRwMDAAkDA/cDAwMDA/oADwMDAwMDAwAPAwMABgMDAwMDA/cDAwMDAAYDA/oDAwMDAwP6AAAAAAAEAAAPAA8AJAAARAAARESEVIRUhNTMRIzUhFSEVIRUDAP3AAkDAwP3AAkD9wAPABUDAwMD9AMDAwMAAAAQAAAPAA8AJAAADAAsAEQAVAAATNSEVJREzFSEVIRURNSE1MxEBNSEVwAMA/EDAAwD9AAJAwPxAAwADwMDAwAJAwMDAAkDAwP6AAYDAwAAAAgAAA8ADwAkAAAcACwAAAREhNSEVIREBNSEVAYD+gAPA/oD9wAPAA8ADAMDA/QAEgMDAAAQAAAPAA8AJAAADAAcADwATAAABETMRATUhFTU1ITUhNTMRATUhFQMAwPxAAwD9AAMAwPxAAwADwAGA/oABgMDAwMDAwP3AAkDAwAAGAAADwAPACQAAAwAHAAsADwAdACEAAAERMxEBNTMVNTUzFSU1MxUBETMRMxUjFTMVIxUhFQM1MxUDAMD9wMDA/oDA/cDAwMDAwAJAwMAEgAGA/oABgMDAwMDAwMDA/EAFQP6AwMDAwMAEgMDAAAAADAAAA8AFQAkAAAMABwALAA8AEwAXABsAHwAjACcAKwAvAAATNTMVITUzFSU1MxUzNTMVIREzESU1MxUlNTMVJTUhFSU1MxUFETMRATUhFSE1MxXAwAJAwP6AwMDA/EDAAYDA/cDA/cABgP3AwAJAwP0AAYABgMADwMDAwMDAwMDAwAGA/oDAwMDAwMDAwMDAwMDAAYD+gAGAwMDAwAAAAAQAAAPAAwAJAAADAA8AEwAXAAABNSEVJTUjNTMRMxEzFSMVExEzEQE1MxUBgAGA/cDAwMDAwMDA/oDAA8DAwMDAwAJA/cDAwAGAAkD9wAJAwMAAAAcAAAPABgAJAAADAAcACwAPABcAHwAjAAABNSEVATUzFSURMxEzETMRAREzFTMVIxEhESM1MxEzEQE1MxUDwAJA/oDA/oDAwMD6AMDAwAGAwMDAAYDABIDAwAGAwMDAAYD+gAGA/oD9AAVAwMD8QAMAwAGA+sAEgMDAAAAFAAADwAVACQAAAwAJAA0AEQAVAAATNSEVAREhESEVBREzESERMxEBNSEVwAPA/QACQP6A/cDAA8DA+4ADwAPAwMABgAJA/oDAwAPA/EADwPxAA8DAwAAABAAABgAFQAkAAAMABwAPABsAABE1IRU1NTMVJTUzNSEVIxUBETMVMzUzESMRIxEBgMD9wMABgMABgMDAwMDABgDAwMDAwMDAwMDA/oADAMDA/QABgP6AAAIAAAYABUAJAAAHABMAABMRIzUhFSMRIREzFTM1MxEjESMRwMACQMABgMDAwMDABgACQMDA/cADAMDA/QABgP6AAAAAAwAAA8AEgAhAAAMADQARAAATNSEVJREzESERMxEhFRE1IRXAA8D7gMADAMD8QAMAA8DAwMADAP6AAYD9wMADAMDAAAAGAAADwAYACQAAAwAHAAsAFQAhACUAAAE1MxUhETMRJREzESU1ITUzETMRIRElNTM1IzUzNTMRMxUBNTMVAYDAAkDA/QDAAkD9wMDAAYD6AMDAwMDAAkDAA8DAwAGA/oDAAYD+gMDAwAGA/oD+gMDAwMDA/cDAAkDAwAAACQAAA8AGAAkAAAMABwALABUAGQAdACEALQAxAAABNTMVNREzETc1MxUDNTM1MzUzESMVATUzFTM1MxUlETMRBTUzNSM1MzUzETMVATUzFQGAwMDAwMDAwMDA/cDAwMD+gMD7gMDAwMDAAkDAA8DAwMABgP6AwMDA/oDAwMD+gMACQMDAwMDAAYD+gMDAwMDA/cDAAkDAwAALAAADwAhACQAAAwAHAAsADwATABcAIwAnACsANwA7AAABNTMVITUzFSURMxEhETMRMxEzEQE1MxURNTM1IzUzNTMRMxUTNTMVJREzEQU1MzUjNTM1MxEzFQE1MxUBgMAEgMD6wMADAMDAwPrAwMDAwMDAwMD8QMD7gMDAwMDAAkDAA8DAwMDAwAGA/oABgP6AAYD+gAGAwMD9wMDAwMD9wMACQMDAwAGA/oDAwMDAwP3AwAJAwMAABgAAA8AGAAkAAAMABwALABkAJQApAAABNTMVITUhFSURMxEhNSM1ITUzETMRMxUzEQE1MzUjNTM1MxEzFQE1MxUBgMABgAGA/QDAAkDA/oDAwMDA+gDAwMDAwAJAwAPAwMDAwMABgP6AwMDAAYD+gMD+gAGAwMDAwP3AwAJAwMAAAAAACAAAA8AGAAkAAAMABwALABMAFwAlACkALQAAATUzFSE1IRUlETMRATUzNTMVMxUDNTMVATUjNSE1MxEzETMVMxEBNSEVITUzFQGAwAGAAYD9AMD9AMDAwMDAAwDA/oDAwMDA+gABgAMAwAPAwMDAwMABgP6AAYDAwMDAAYDAwP0AwMDAAYD+gMD+gAPAwMDAwAAAAAcAAAPABgAJAAADAAcACwAPABsAJwArAAABNTMVITUhFTU1MxUhETMRNzUjNTMRMxEhFSMVJTUzNSM1MzUzETMVATUzFQGAwAGAAYDA/EDAwMDAwAGAwPrAwMDAwMACQMADwMDAwMDAwMABgP6AwMDAAYD+gMDAwMDAwMD9wMACQMDAAAkAAAPABgAJAAADAAcACwAPABcAGwAnACsALwAAATUzFSE1IRU1NTMVIREzEQE1MzUzFTMVAzUzFQE1IzUzETMRIRUjFQE1IRUhNTMVAYDAAYABgMD8QMD9AMDAwMDAAYDAwMABgMD6wAGAAwDAA8DAwMDAwMDAAYD+gAGAwMDAwAGAwMD9wMDAAYD+gMDAAwDAwMDAAAAACAAAA8AGAAkAAAMABwALAA8AEwAfACkALQAAATUzFSE1IRU1NTMVIREzEQE1IRUFNSM1MxEzESEVIxUBNSM1IzUhFTMRATUzFQGAwAGAAYDA/EDA/QABgAJAwMDAAYDA/EDAwAGAwAJAwAPAwMDAwMDAwAGA/oABgMDAwMDAAYD+gMDAAYDAwMDA/oABgMDAAAAAAAcAAAPABgAJAAADAAcACwAPABsAJwArAAABNTMVITUhFTU1MxUhETMRNzUjNTMRMxEhFSMVJTUhETMVMzUjNSERATUzFQGAwAGAAYDA/EDAwMDAwAGAwPxA/oDAwMABgAJAwAPAwMDAwMDAwAGA/oDAwMABgP6AwMDAwAGAwMDA/QACQMDAAAAJAAADwAYACQAAAwAHAAsADwATAB0AIQAtADEAAAE1MxUhNTMVNTUzFSERMxERNTMVEREzNSEVIxUjFQMRMxEFNTM1IzUzNTMRMxUBNTMVAYDAAkDAwPxAwMDAAYDAwMDA+4DAwMDAwAJAwAPAwMDAwMDAwAGA/oABgMDA/oABgMDAwMACQAGA/oDAwMDAwP3AwAJAwMAAAAsAAAPABgAJAAADAAcACwAPABMAFwAhACUAKQAvADMAAAE1MxUhNTMVNTUzFSERMxEBNSEVITUzFRERMzUhFSMVIxUBNTMVIREzESURIRUjFSU1MxUBgMACQMDA/EDA/QABgAGAwMABgMDA/QDAAYDA+4ACQMADAMADwMDAwMDAwMABgP6AAYDAwMDA/oABgMDAwMACQMDAAYD+gMABgMDAwMDAAAAAAAgAAAPABgAJAAADAAcACwAPABsAHwArAC8AAAE1MxUhNTMVJREzERE1MxURETM1MxUzESM1IxUDETMRBTUzNSM1MzUzETMVATUzFQGAwAJAwP0AwMDAwMDAwMDA+4DAwMDAwAJAwAPAwMDAwMABgP6AAYDAwP6AAYDAwP6AwMACQAGA/oDAwMDAwP3AwAJAwMAAAAAJAAADwAYACQAAAwAHAAsADwATAB8AIwAtADEAAAE1MxUhNTMVJREzEQE1IRUhNTMVEREzNTMVMxEjNSMVAxEzESE1IzUjNSEVMxEBNTMVAYDAAkDA/QDA/QABgAGAwMDAwMDAwMD9AMDAAYDAAkDAA8DAwMDAwAGA/oABgMDAwMD+gAGAwMD+gMDAAkABgP6AwMDAwP6AAYDAwAAKAAADwAYACQAAAwAHAAsADwATAB8AIwAnAC0AMQAAATUzFSE1MxUlETMRATUhFSE1MxURETM1MxUzESM1IxUBNTMVIREzESURIRUjFSU1MxUBgMACQMD9AMD9AAGAAYDAwMDAwMD9AMABgMD7gAJAwAMAwAPAwMDAwMABgP6AAYDAwMDA/oABgMDA/oDAwAJAwMABgP6AwAGAwMDAwMAACQAAA8AGAAkAAAMABwALAA8AGwAfACMAKQAtAAABNTMVITUzFSURMxERNTMVEREzNTMVMxEjNSMVAREzESURMxElNSE1IRElNTMVAYDAAkDA/QDAwMDAwMDA/EDAAkDA/QD+gAJAAkDAA8DAwMDAwAGA/oABgMDA/oABgMDA/oDAwAGAAYD+gMABgP6AwMDA/oDAwMAAAAAFAAADwAVACQAAAwAHABMAFwAbAAABNTMVJTUzFSU1IzUzNTMVIRUhFRE1MxU1NTMVAkDA/oDA/oDAwMADwPxAwMADwMDAwMDAwMDAwMDAwAJAwMDAwMAABQAAA8AFQAkAAAMABwALAA8AGwAAETUzFSE1MxUlNTMVITUzFQERIzUzNTMVMxUjEcADwMD7gMACQMD9wMDAwMDABgDAwMDAwMDAwMD9AAPAwMDAwPxAAAUAAAPABUAJAAADAAcAEwAXABsAAAE1MxU1NTMVNTUhNSE1MxUzFSMVATUzFSU1MxUCQMDA/EADwMDAwP6AwP6AwAPAwMDAwMDAwMDAwMDAAkDAwMDAwAAFAAADwAVACQAAAwAHAAsADwAbAAATNTMVITUzFSU1MxUhNTMVATUjNTMRMxEzFSMVwMACQMD7gMADwMD9AMDAwMDABUDAwMDAwMDAwMD9wMDAA8D8QMDAAAAAAAUAAASABUAIQAADAAcAGwAfACMAAAE1MxUzNTMVJTUjNTM1MxUhNTMVMxUjFSM1IRURNTMVMzUzFQGAwMDA/QDAwMACQMDAwMD9wMDAwASAwMDAwMDAwMDAwMDAwMDAAkDAwMDAAAAABQDAA8AEgAkAAAMABwALAA8AIwAAEzUzFSE1MxUBNTMVITUzFQE1IzUzESM1MzUzFTMVIxEzFSMVwMACQMD8QMACQMD9wMDAwMDAwMDAwAVAwMDAwAGAwMDAwP0AwMACQMDAwMD9wMDAAAAABgAAA8AFQAkAAAMABwALAA8AEwAbAAABNTMVJTUzFSU1MxUlNTMVJTUzFQURIRUhFSMRBIDA/oDA/oDA/oDA/oDA/cADAP6AwAPAwMDAwMDAwMDAwMDAwMDAAwDAwP6AAAAAAAYAAAPABUAJAAADAAcACwAPABMAGwAAETUzFTU1MxU1NTMVNTUzFTU1MxUXESM1ITUhEcDAwMDAwMD+gAMAA8DAwMDAwMDAwMDAwMDAwMABgMDA/QAAAAAGAAADwAVACQAAAwAHAA8AEwAXABsAAAE1MxUlNTMVAzUhNTMRMxEBNTMVJTUzFSU1MxUDAMD+gMDAAYDAwPxAwP6AwP6AwAVAwMDAwMD9wMDAAYD9AAMAwMDAwMDAwMAAAAAABgAAA8AFQAkAAAMACwAPABMAFwAbAAABNTMVAREzETMVIRUDNTMVNTUzFTU1MxU1NTMVAYDA/cDAwAGAwMDAwMAFQMDA/oADAP6AwMACQMDAwMDAwMDAwMDAAAANAAADwAVACQAAAwAHAAsADwATABcAGwAfACMAJwArAC8AMwAAETUzFTM1IRUlNTMVITUzFSU1MxU1NTMVBREzEQE1MxUTETMRATUzFSE1MxUlNSEVMzUzFcDAAkD9AMACQMD9AMDA/QDAAkDAwMD7gMACQMD9AAJAwMADwMDAwMDAwMDAwMDAwMDAwMACQP3AAYDAwP6AAkD9wAJAwMDAwMDAwMDAAAAEAAADwAPACQAABwALAA8AEwAAEREzESERMxEBETMRMxEzEQE1MxXAAkDA/QDAwMD+gMADwAMA/cACQP0AAwABgP6AAYD+gAGAwMAABgAAA8AGAAkAAAMABwALAA8AEwAXAAABETMRATUzFSU1MxUFETMREREzERE1IRUBgMD+gMD+gMABgMDAAkADwAGA/oABgMDAwMDAwAGA/oABgAGA/oABgMDAAAAHAAAEgAVAB4AAAwAHAAsADwATABcAGwAAEzUhFTM1IRUlETMRIREzESERMxEBNSEVMzUhFcABgMABgPuAwAGAwAGAwPuAAYDAAYAEgMDAwMDAAYD+gAGA/oABgP6AAYDAwMDAAAAAAAMAAAMAA8AJAAADAAcACwAAETUhFTURMxERNSEVAYDAAYADAMDAwASA+4AEgMDAAAMAAAPAA8AGwAADAAcACwAAETUzFSE1MxUBNTMVwAJAwP3AwAPAwMDAwAJAwMAAAAgAAAPABIAHgAADAAcACwAPABMAFwAbAB8AABE1MxUhNSEVJTUhFSE1MxUBNTMVITUhFSU1IRUhNTMVwAGAAYD9AAGAAYDA+4DAAYABgP0AAYABgMADwMDAwMDAwMDAwAGAwMDAwMDAwMDAAAEAAAPAA8AJAAATAAATESM1ITUhNSERMxEzFSEVIRUhEcDAAYD+gAJAwMD+gAGA/cADwAGAwMDAAYD+gMDAwP6AAAAABgAAA8AEgAkAAAMABwALAA8AEwAXAAARNSEVATUhFSU1IRUlNSEVNTUhFTU1IRUEgP6AAYD9AAGA/QABgAGAAYADwMDAAYDAwMDAwMDAwMDAwMDAwAAAAAYAAAPABIAJAAADAAcACwAPABMAFwAAETUhFQE1IRU1NSEVNTUhFSU1IRUlNSEVBID7gAGAAYABgP0AAYD9AAGAA8DAwAGAwMDAwMDAwMDAwMDAwMAAAAABAAAFQAJAB4AAAwAAEREhEQJABUACQP3AAAAAAgAABUACQAeAAAMABwAAATUjFQcRIREBgMDAAkAGAMDAwAJA/cAAAAEAAAPAA8AGwAALAAARETM1MzUzFTMVMxHAwMDAwAPAAYDAwMDA/oAAAAAABAAAA8ADwAbAAAcACwAPABMAABERMxUhNTMRATUzFTM1MxUlNTMVwAJAwP0AwMDA/oDAA8ABgMDA/oABgMDAwMDAwMAAAAAAAQAAA8ADAAkAAA8AABERMxUzFTMVMxUjFSMVIxXAwMDAwMDAA8AFQMDAwMDAwMAABAAAA8ADAAkAAAMABwALABcAAAE1MxU1NTMVJTUzFQERMxUzFSMRMxUjFQGAwMD+gMD9wMDAwMDABUDAwMDAwMDAwP0ABUDAwP3AwMAAAAAIAAADwASACEAAAwAHAAsADwATABcAGwAfAAABNSEVJTUzFSE1MxUlETMRIREzEQE1MxUhNTMVJTUhFQGAAYD9wMABgMD8QMADAMD8QMABgMD9wAGAA8DAwMDAwMDAwAGA/oABgP6AAYDAwMDAwMDAAAAAAAEAAAPABIAIQAATAAABNSM1IxEzNTM1IRUzFTMRIxUjFQGAwMDAwAGAwMDAwAPAwMABgMDAwMD+gMDAAAQAAAPAA8AJAAAPABMAFwAbAAABNSE1ITUjNSEVIxUhFSEVAREzESERMxEBNSEVAYD+gAGAwAJAwAGA/oD9wMACQMD9AAJAA8DAwMDAwMDAwAMAAYD+gAGA/oABgMDAAAQAAAPABIAIQAADAAcADQAVAAATNSEVJREzESERITUhERM1IzUjNSERwAGA/cDAAYD+gAJAwMDAAkADwMDAwAGA/oABgMD9wAGAwMDA/cAAAQAAA8ADAAkAAAsAABM1IzUzNSERMxEjFcDAwAGAwMADwMDAwAMA+4DAAAABAAADwASACQAAEwAAEzUjNTM1IREzFTMVMxEjNSMRIxXAwMABgMDAwMDAwAPAwMDAAwDAwP6AwP3AwAACAAADwASACQAABQAVAAABNTMRIREBNSM1MzUzESERIxUjNSEVAwDA/oD+gMDAwAMAwMD+gAVAwAGA/cD+gMDAwAMA+4DAwMAAAAAAAwAAA8ADAAkAAAMABwARAAABETMRATUzFQERMxEzFSMVIRUCQMD+gMD9wMDAwAGABIABgP6AAYDAwP3ABUD9AMDAwAACAAADwAMACQAACQATAAABESM1MxEjNSERJREzETMVIxEzFQJAwMDAAYD9AMDAwMADwAGAwAGAwPuAwASA/oDA/oDAAAIAAAPAA8AJAAADAB8AAAE1IxUDNSM1MzUjNTMRMxUzETMVMxUjFTMVIxEjNSMRAkDAwMDAwMDAwMDAwMDAwMAGAMDA/cDAwMDAAYDAAYDAwMDA/oDA/oAAAAAAAwAAA8ABgAkAAAMABwALAAATETMRAREzERERMxHAwP6AwMADwAGA/oABgAJA/cACQAGA/oAAAAADAAADwAGACQAAAwAHAAsAABERMxERETMRAREzEcDA/oDAA8ABgP6AAYACQP3AAkABgP6AAAAAAAMAAAPABIAJAAANABEAFQAAExEjNTM1MxUhESMRIRERNSEVMzUzFcDAwMADAMD9wAGAwMADwAMAwMDA/EADAP0ABIDAwMDAAAMAAAPABUAJAAADAA8AFQAAATUzFSERIzUzNTMVMxUjESURITUhEQSAwPuAwMDAwMACQP3AAwADwMDAAwDAwMDA/QDAA8DA+4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKAAAAFAAAACwAAABDAAAAXAAAAHwAAACDAAAAlgAAAKgAAAC6AAAAxwAAAM4AAADUAAAA2wAAAO0AAAEFAAABEAAAASgAAAFDAAABVQAAAWgAAAF9AAABjQAAAagAAAG/AAAByQAAAdMAAAHqAAAB9AAAAgsAAAIhAAACNQAAAkQAAAJXAAACagAAAncAAAKDAAACjgAAAp8AAAKrAAACtgAAAsMAAALaAAAC4gAAAvQAAAMGAAADFwAAAyUAAAM7AAADTQAAA2MAAANtAAADegAAA44AAAOgAAADvgAAA9EAAAPlAAAD7gAABAIAAAQLAAAEHAAABCIAAAQrAAAEOwAABE0AAARgAAAEcQAABIIAAASQAAAEogAABLMAAAS9AAAEzQAABOIAAATsAAAE/gAABQoAAAUbAAAFLgAABUAAAAVQAAAFYgAABXAAAAV7AAAFjgAABZsAAAW4AAAFyAAABdkAAAXtAAAF9AAABgcAAAYWAAAGIAAABjEAAAZCAAAGWAAABnIAAAZ8AAAGlwAABqAAAAa6AAAGywAABuAAAAbpAAAHAgAABwgAAAcXAAAHJwAABzUAAAdBAAAHSgAAB1kAAAdlAAAHawAAB3MAAAd9AAAHkAAAB6UAAAfIAAAH6gAACA8AAAgkAAAIOAAACEsAAAhfAAAIdgAACIoAAAicAAAIrgAACMUAAAjWAAAI5wAACPoAAAkMAAAJHAAACSwAAAk8AAAJTQAACV8AAAl5AAAJjwAACaUAAAm7AAAJ1AAACesAAAn+AAAKHAAACjAAAApDAAAKWQAACmwAAAqEAAAKkwAACqgAAAq+AAAK1AAACu0AAAsIAAALHgAACzUAAAtRAAALaAAAC38AAAuVAAALrgAAC8QAAAvRAAAL3QAAC+wAAAv4AAAMEwAADCkAAAxAAAAMVwAADHEAAAyMAAAMowAADLAAAAzOAAAM3wAADPAAAA0EAAANFQAADSsAAA0+AAANTgAADWAAAA10AAANhQAADZsAAA2vAAANwwAADdsAAA30AAAODAAADigAAA4+AAAOVAAADm4AAA6KAAAOnwAADrMAAA7FAAAO2gAADukAAA79AAAPDQAADyMAAA8yAAAPRgAAD1YAAA9rAAAPfwAAD5gAAA+vAAAPygAAD94AAA/2AAAQCgAAEB8AABAzAAAQSQAAEF0AABB2AAAQgwAAEJcAABCrAAAQvAAAEMoAABDUAAAQ4QAAEO0AABD7AAARBgAAERQAABEbAAARMAAAEUcAABFdAAARcwAAEY4AABGmAAARvAAAEcoAABHXAAAR4gAAEe8AABH7AAASCAAAEhQAABIhAAASMQAAEj8AABJXAAASaAAAEn0AABKMAAASpwAAErsAABLLAAAS4AAAEu8AABMDAAATFwAAEyoAABNBAAATWgAAE3YAABOHAAAToQAAE7gAABPNAAAT4gAAE/UAABQOAAAUJgAAFEEAABRZAAAUdQAAFJAAABSqAAAUwAAAFN4AABT5AAAVBwAAFRcAABUpAAAVOwAAFUkAABVbAAAVcAAAFYUAABWWAAAVpAAAFbcAABXIAAAV2wAAFe0AABYGAAAWHAAAFi0AABY8AAAWVgAAFmwAABaHAAAWoAAAFrgAABbSAAAW6AAAFv8AABcTAAAXLwAAF0gAABdUAAAXYgAAF3IAABeDAAAXlAAAF6gAABe3AAAXywAAF+AAABf1AAAYDgAAGCkAABhJAAAYZwAAGHwAABiRAAAYrQAAGMYAABjbAAAY8wAAGQsAABksAAAZTgAAGXIAABmLAAAZoQAAGa8AABnAAAAZzQAAGd4AABnuAAAZ+gAAGgYAABoMAAAaFQAAGh4AABonAAAaLQAAGjcAABo+AAAaSwAAGlkAABpiAAAaawAAGnUAABp8AAAaiAAAGpsAABqhAAAasAAAGsAAABrOAAAa4wAAGvkAABsTAAAbIwAAGzIAABtFAAAbTQAAG2AAABtsAAAbgAAAG4wAABugAAAbqwAAG8IAABvWAAAb6AAAG/oAABwKAAAcGwAAHCUAABwzAAAcSAAAHFIAABxlAAAcewAAHJkAAByrAAAcwQAAHNIAABzqAAAc/wAAHRUAAB0kAAAdLgAAHUUAAB1WAAAdawAAHX8AAB2UAAAdpgAAHbwAAB3IAAAd2wAAHeIAAB34AAAeCAAAHhcAAB4rAAAeQgAAHlMAAB5dAAAebgAAHn8AAB6PAAAemQAAHqYAAB66AAAe2AAAHuoAAB79AAAfCgAAHx0AAB8uAAAfPwAAH1YAAB9rAAAffAAAH44AAB+gAAAfrgAAH8MAAB/ZAAAf5AAAH/UAACACAAAgFQAAICkAACA4AAAgVQAAIG0AACCAAAAgjAAAIJsAACCrAAAgvgAAIMYAACDbAAAg5wAAIQAAACEWAAAhKAAAIUAAACFXAAAhYgAAIXQAACGAAAAhkQAAIZsAACGpAAAhvAAAIcYAACHZAAAh7wAAIg0AACIZAAAiJgAAIjIAACJBAAAiUQAAImMAACJyAAAiiAAAIp0AACKuAAAivgAAItQAACLmAAAi7gAAIwMAACMUAAAjLQAAIz8AACNRAAAjaAAAI34AACOJAAAjmwAAI6cAACO4AAAjwgAAI9UAACPoAAAj8gAAJAIAACQgAAAkPQAAJEkAACRWAAAkYgAAJHEAACSAAAAkkQAAJJ8AACS1AAAkygAAJNsAACTyAAAlCAAAJR8AACUtAAAlQgAAJVQAACVeAAAlawAAJXsAACWNAAAloQAAJbUAACXLAAAl4wAAJfkAACYFAAAmGAAAJi4AACZBAAAmUwAAJmcAACZ7AAAmlQAAJq8AACbAAAAm0gAAJuIAACb5AAAnAgAAJwsAACcYAAAnJQAAJ0EAACdcAAAndQAAJ4oAACejAAAnuQAAJ80AACfhAAAn+QAAKBAAACgfAAAoLgAAKEQAAChaAAAobQAAKIAAACiXAAAorgAAKM4AACjtAAAo/AAAKQsAACkcAAApLQAAKToAAClLAAApUgAAKXAAACmPAAApnAAAKakAACm5AAApyQAAKdgAACnnAAAp+wAAKg0AACoUAAAqKAAAKj4AACpQAAAqbAAAKn0AACqOAAAqowAAKrgAACrQAAAq5wAAKv4AACsVAAArKAAAKzoAACtWAAArbAAAK4MAACuXAAArsAAAK8YAACveAAAr8QAALAgAACwbAAAsMgAALEUAACxXAAAscAAALIcAACyQAAAsmQAALKIAACysAAAsuwAALMoAACzZAAAs6AAALPMAAC0CAAAtCQAALRMAAC0gAAAtPAAALUcAAC1bAAAtaAAALXwAAC2JAAAtlQAALacAAC23AAAtwQAALc0AAC3aAAAt6QAALfYAAC4EAAAuEwAALiMAAC4tAAAuOwAALkcAAC5TAAAuYAAALm8AAC58AAAuigAALpkAAC6uAAAuxgAALuIAAC7xAAAvBQAALxIAAC8lAAAvQQAAL2kAAC9+AAAvnQAAL7MAAC/JAAAv2gAAL+sAADAKAAAwMAAAMF4AADB/AAAwpAAAMMUAADDrAAAxEAAAMTIAADFYAAAxggAAMacAADHOAAAx9gAAMhwAADIyAAAySAAAMl4AADJ1AAAyjwAAMqoAADLDAAAy2QAAMvIAADMJAAAzMwAAM0YAADNdAAAzdwAAM4MAADOPAAAzqgAAM7sAADPRAAAz5wAAM+4AADP4AAA0AwAANBUAADQhAAA0NQAANFIAADRhAAA0eQAANI0AADSYAAA0pwAANLoAADTLAAA03AAANPMAADUBAAA1DwAANSEAADU0AABAAAAAgAANpQQ/l8PPPUACwYAAAAAANA0HEwAAAAA0DOsHP6AAkAIQAqAAAAACAACAAEAAAAAAYAAAAAAAAABgAAAAYAAAAGAAAADAAAABIAAAASAAAAEgAAABIAAAAGAAAADwAAAA8AAAAPAAAAEgAAAAYAAAASAAAABgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAABgAAAAYAAAAPAAAAEgAAAA8AAAASAAAAFQAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAADAAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAADAAAABIAAAAMAAAAEgAAABIAAAAJAAAAEgAAABIAAAASAAAAEgAAABIAAAAPAAAAEgAAABIAAAAGAAAAEgAAAA8AAAAJAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAAAwAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAAPAAAABgAAAA8AAAAVAAAABgAAAA8AAAASAAAAEgAAABIAAAAGAAAAEgAAAA8AAwAYAAAADAAAAA8AAAAPAAAAGAAAABIAAAAMAAAAEgAAAAwAAAAMAAAACQAAABIAAAASAAAABgAAAAwAAwAMAAAADAAAAA8AAAAbAAAAGwAAABsAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAHgAAABIAAAASAAAAEgAAABIAAAASAAAADAAAAAwAAAAMAAAADAAAABUAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAAPAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAAeAAAAEgAAABIAAAASAAAAEgAAABIAAAAGA/0ACQAAAAkD/QAJA/0AEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABgAAAAVAAAAFQAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABUAAAAPA/0ADwP9AAwAAAAJA/0ADAAAAAkD/QAMAAAACQAAAAwAAAAGAAAAHgAAABgAAAASAAAAFQAAABIAAAAPAAAADwAAABIAAAAJAAAAEgAAAAkAAAASAAAADAAAABIAAAAMAAAAFQAAAAwAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAAYAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAAeAAAAHgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAAAwAAAASAAAAEgAAABIAAAAMAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAAPAAAAEgAAAA8AAAASAAAAEgAAABIAAAASAAAAEgAAABUAAAAVAAAAEgAAABIAAAASAAAADwAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAAB4AAAAeAAAAEgAAABIAAAASAAAAEgAAABIAAAAMAAAAEgAAABIAAAASAAAADAAAAAwAAAAMAAAACQAAAAkAAAAMAAAACQADAAwAAAAJAAAAEgAAAA8AAAAJAAAACQAAAAYAAAAGAAAAEgAAABgAAAAGAAAAGAAAABgAAAASAAAAGAAAABgAAAAYAAAADwP9ABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAADAAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAAAwAAAASAAAAEgAAABIAAAASAAAABgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAADwAAAAYAAAAPAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAADAAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAAVAAAAEgAAABIAAAASAAAADAAAAAwAAAASAAAAHgAAAB4AAAAVAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAAVAAAAEgAAABIAAAAVAAAAFQAAABgAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAAA8AAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAAYAAAAEgAAABUAAAASAAAAEgAAABUAAAASAAAAFQAAAA8AAAASAAAAEgAAABIAAAASAAAAEgAAABUAAAASAAAAEgAAABIAAAAGAAAADAAAABIAAAAbAAAAGwAAABUAAAAPAAAAEgAAABIAAAASAAAAFQAAABUAAAASAAAAEgAAABIAAAASAAAAFQAAABUAAAAVAAAAEgAAABIAAAASAAAAEgAAABIAAAAVAAAAFQAAABUAAAAVAAAAEgAAABIAAAAVAAAADwAAABIAAAASAAAAFQAAABIAAAAVAAAAFQAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABUAAAAVAAAAFQAAABUAAAASAAAAEgAAABIAAAASAAAABgAAABIAAAASAAAAFQAAABUAAAASAAAAEgAAABUAAAAVAAAAFQAAABIAAAAGAAAAEgAAABIAAAAeAAAAHgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAAJAAAACQAAAAkAAAAJAAAADwAAAA8AAAAPAAAADwAAAAwAAAAMAAAACQAAAAwAAAASAAAAGAAAAAwAAAASAAAADAAAABIAAAAJAAAACQAAAAwD+gAMAAAABgAAAAwAAAAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABgAAAAPAAAAGwAAABgAAAAYAAAAGAAAABUAAAAbAAAAGwAAACQAAAAbAAAAGwAAABsAAAAbAAAAGwAAABsAAAAbAAAAGwAAABsAAAAbAAAAGwAAABsAAAAYAAAAGAAAABgAAAAYAAAAGAAAABUAAwAYAAAAGAAAABgAAAAYAAAAGAAAABIAAAAbAAAAGAAAABIAAAASAAAAFQAAABIAAAAVAAAAFQAAAAwAAAAMAAAAEgAAABIAAAAPAAAADwAAABUAAAAVAAAAEgAAABUAAAAPAAAAFQAAABUAAAAPAAAADwAAABIAAAAJAAAACQAAABUAAAAYAAAAAAQAB//8AAgAAAAEAAAAAAAEAAAAOAAAAGAAgAAAAAgABAAEC1AABAAQAAAACAAAAAQAAAAEAAAAAABoBPgABAAAAAAAAABsAAAABAAAAAAABAAsAGwABAAAAAAACAAcAJgABAAAAAAADAA8ALQABAAAAAAAEAA8APAABAAAAAAAFAAsASwABAAAAAAAGABMAVgABAAAAAAAIABYAaQABAAAAAAAJAAwAfwABAAAAAAALABYAiwABAAAAAAAMABYAoQABAAAAAAANACgAtwABAAAAAAATACkA3wADAAEECQAAADYBCAADAAEECQABABYBPgADAAEECQACAA4BVAADAAEECQADAB4BYgADAAEECQAEAB4BgAADAAEECQAFABYBngADAAEECQAGACYBtAADAAEECQAIACwB2gADAAEECQAJABgCBgADAAEECQALACwCHgADAAEECQAMACwCSgADAAEECQANAFACdgADAAEECQATAFICxkNvcHlyaWdodCBBbmRyZXcgVHlsZXIgMjAxNE1pbmVjcmFmdGlhUmVndWxhck1pbmVjcmFmdGlhIDIuME1pbmVjcmFmdGlhIDIuMFZlcnNpb24gMi4wTWluZWNyYWZ0aWEtUmVndWxhcmh0dHA6Ly9hbmRyZXd0eWxlci5uZXRBbmRyZXcgVHlsZXJodHRwOi8vYW5kcmV3dHlsZXIubmV0aHR0cDovL2FuZHJld3R5bGVyLm5ldENyZWF0aXZlIENvbW1vbnMgQXR0cmlidXRpb24gU2hhcmUgQWxpa2VGaXZlIGJpZyBxdWFja2luZyB6ZXBoeXJzIGpvbHQgbXkgd2F4IGJlZABDAG8AcAB5AHIAaQBnAGgAdAAgAEEAbgBkAHIAZQB3ACAAVAB5AGwAZQByACAAMgAwADEANABNAGkAbgBlAGMAcgBhAGYAdABpAGEAUgBlAGcAdQBsAGEAcgBNAGkAbgBlAGMAcgBhAGYAdABpAGEAIAAyAC4AMABNAGkAbgBlAGMAcgBhAGYAdABpAGEAIAAyAC4AMABWAGUAcgBzAGkAbwBuACAAMgAuADAATQBpAG4AZQBjAHIAYQBmAHQAaQBhAC0AUgBlAGcAdQBsAGEAcgBoAHQAdABwADoALwAvAGEAbgBkAHIAZQB3AHQAeQBsAGUAcgAuAG4AZQB0AEEAbgBkAHIAZQB3ACAAVAB5AGwAZQByAGgAdAB0AHAAOgAvAC8AYQBuAGQAcgBlAHcAdAB5AGwAZQByAC4AbgBlAHQAaAB0AHQAcAA6AC8ALwBhAG4AZAByAGUAdwB0AHkAbABlAHIALgBuAGUAdABDAHIAZQBhAHQAaQB2AGUAIABDAG8AbQBtAG8AbgBzACAAQQB0AHQAcgBpAGIAdQB0AGkAbwBuACAAUwBoAGEAcgBlACAAQQBsAGkAawBlAEYAaQB2AGUAIABiAGkAZwAgAHEAdQBhAGMAawBpAG4AZwAgAHoAZQBwAGgAeQByAHMAIABqAG8AbAB0ACAAbQB5ACAAdwBhAHgAIABiAGUAZAAAAAAAAwAAAAMAAAAeAAEAAAAAAyYAAwABAAAFMAAAAAQDCAAAAK4AgAAGAC4AfgCsAX8BgwGPAZIBtwHrAe8B/wIbAjcCWQKSAscCywLdA3UDfgOKA4wDoQPOA9cEXwRjBHUEkwSdBKMEqwSzBLsEwgTKBM8E1QTZBOkE8R6FHp4e8yAjICYgMCAzIDYgOiBEIHEgeSCJIKkgrCCuILEgtCC6IQUhEyEXISAhIiEuIV4hmSIG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")
}
local v111 = (Register_Font("AstraMinecraftia!", 400, "Normal", t82))
local t83 = { main = Font.new(v111, Enum.FontWeight.Regular, Enum.FontStyle.Normal) }
t19:SetTextFontFace(t83.main)

local function f53(p46, BoxGradient)
	if not BoxGradient then
		BoxGradient = "BoxGradient"
	end
	local FindFirstChild = (p46:FindFirstChild(BoxGradient))
	if not FindFirstChild then
		FindFirstChild = (Instance.new("UIGradient"))
		FindFirstChild.Name = BoxGradient
		FindFirstChild.Parent = p46
	end
	return FindFirstChild
end

local function f54(p47)
	if t56.Name_Mode == "DisplayName" then
		return p47.DisplayName
	end
	if t56.Name_Mode == "Username" then
		return "@" .. p47.Name
	end
	return string.format("%s (@%s)", p47.DisplayName, nil)
end

local v112 = gethui
if v112 then
	v112 = (gethui())
end
local v113 = t83
local t84 = t83
local v114, level_text, f55
if not v112 then
	local game2 = game
	v112 = (game2:GetService("CoreGui"))
	v113 = t83
	t84 = game2
	v114 = nil
	level_text = nil
	f55 = nil
end
t84 = {
	players = {}
}
t84.screengui = (Instance.new("ScreenGui", v112))
t84.cache = (Instance.new("ScreenGui", v112))
t84.connections = {}
t84.screengui.IgnoreGuiInset = true
t84.screengui.DisplayOrder = -1
t84.screengui.Name = "\0"
t84.cache.Enabled = false

function t84:get_screen_pos(p48)
	local v115, v116
	v116, v115 = CurrentCamera2:WorldToViewportPoint(p48)
	return v116, v115
end

function t84:box_solve(p49)
	if not p49 then
		return nil, nil, nil
	end
	local CFrame2 = CurrentCamera2.CFrame
	local Position = p49.Position
	local UpVector = p49.CFrame.UpVector
	local Magnitude2 = (Position - CFrame2.p).Magnitude
	local v117, t85
	t85, v117 = CurrentCamera2:WorldToViewportPoint(Position + UpVector * 1.8)
	local _, t86
	t86, _ = CurrentCamera2:WorldToViewportPoint(Position - UpVector * 2.5)
	local v118 = (math.max(math.floor(math.abs(t85.X - t86.X)), 3))
	local v119 = (math.max(
		math.floor(math.max(math.abs(t86.Y - t85.Y), v118 / 2)),
		3
	))
	local t87 = (Vector2.new(math.floor(math.max(v119 / 1.5, v118)), v119))
	local new17 = Vector2.new
	math.floor(t85.X * 0.5 + t86.X * 0.5 - t87.X * 0.5)
	math.floor(math.min(t85.Y, t86.Y))
	return t87, new17(), v117, Magnitude2
end

function t84.create(_, p50, p51)
	local v120 = (Instance.new(p50))
	local v121 = nil
	while true do
		local v122
		v121, v122 = p51(nil, v121)
		if v121 == nil then
			break
		end
		v120[v121] = v122
	end
	return v120
end

function t84:get_boxy_skeleton(p52)
	local v123, v124
	local t88 = {}
	local v125
	v125 = not (p52:FindFirstChild("UpperTorso") == nil)
	if v125 then
		local Head = (p52:FindFirstChild("Head"))
		local UpperTorso = (p52:FindFirstChild("UpperTorso"))
		local LowerTorso = (p52:FindFirstChild("LowerTorso"))
		local LeftUpperArm = (p52:FindFirstChild("LeftUpperArm"))
		if Head and UpperTorso and (LowerTorso and LeftUpperArm) and
			(p52:FindFirstChild("RightUpperArm") and p52:FindFirstChild("LeftHand") and
				(p52:FindFirstChild("RightHand") and p52:FindFirstChild("LeftUpperLeg"))) and
			(p52:FindFirstChild("RightUpperLeg") and p52:FindFirstChild("LeftFoot") and
				p52:FindFirstChild("RightFoot")) then
			local _ = UpperTorso.CFrame * CFrame.new(0, UpperTorso.Size.Y / 2, 0)
			local CFrame3 = LowerTorso.CFrame
			local CFrame4 = (CFrame.new(0, -LowerTorso.Size.Y / 2, 0))
			while true do
				CFrame3 = CFrame3 * CFrame4
				CFrame4 = LeftUpperArm.CFrame
				local v126 = 11
				if not v126 then
					v126 = 8
				end
				v123[60] = 29692 + v126 + -29491
				v124[6] = 56
				v124 = nil
				v123 = nil
			end
		end
	else
		local Head2 = (p52:FindFirstChild("Head"))
		local Torso = (p52:FindFirstChild("Torso"))
		local FindFirstChild2 = (p52:FindFirstChild("Left Arm"))
		local FindFirstChild3 = (p52:FindFirstChild("Right Arm"))
		local FindFirstChild4 = (p52:FindFirstChild("Left Leg"))
		local FindFirstChild5 = (p52:FindFirstChild("Right Leg"))
		if Head2 and Torso and (FindFirstChild2 and FindFirstChild3) and
			(FindFirstChild4 and FindFirstChild5) then
			local t89 = Torso.CFrame * CFrame.new(0, Torso.Size.Y / 2, 0)
			local t90 = Torso.CFrame * CFrame.new(0, -Torso.Size.Y / 2, 0)
			local t91 = Torso.CFrame * CFrame.new(
				-Torso.Size.X / 2 - FindFirstChild2.Size.X / 2,
				Torso.Size.Y / 2,
				0
			)
			local t92 = Torso.CFrame * CFrame.new(
				Torso.Size.X / 2 + FindFirstChild3.Size.X / 2,
				Torso.Size.Y / 2,
				0
			)
			local t93 = Torso.CFrame * CFrame.new(
				-Torso.Size.X / 4,
				-Torso.Size.Y / 2,
				0
			)
			local t94 = Torso.CFrame * CFrame.new(
				Torso.Size.X / 4,
				-Torso.Size.Y / 2,
				0
			)
			local _ = table.insert
			local v127 = (table.create(2))
			local Position2 = t89.Position
			local Position3 = t90.Position
			v127[1] = Position2
			v127[2] = Position3
			table.insert(t88, v127)
			local _ = table.insert
			local v128 = (table.create(2))
			local Position4 = t89.Position
			local Position5 = t91.Position
			v128[1] = Position4
			v128[2] = Position5
			table.insert(t88, v128)
			local _ = table.insert
			local v129 = (table.create(2))
			local Position6 = t89.Position
			local Position7 = t92.Position
			v129[1] = Position6
			v129[2] = Position7
			table.insert(t88, v129)
			local _ = table.insert
			local v130 = (table.create(2))
			local Position8 = t91.Position
			local CFrame5 = FindFirstChild2.CFrame
			local Position9 = CFrame.new(0, -FindFirstChild2.Size.Y / 2, 0).Position
			v130[1] = Position8
			v130[2] = CFrame5 * Position9
			table.insert(t88, v130)
			local _ = table.insert
			local v131 = (table.create(2))
			local Position10 = t92.Position
			local CFrame6 = FindFirstChild3.CFrame
			local Position11 = CFrame.new(0, -FindFirstChild3.Size.Y / 2, 0).Position
			v131[1] = Position10
			v131[2] = CFrame6 * Position11
			table.insert(t88, v131)
			local _ = table.insert
			local v132 = (table.create(2))
			local Position12 = t90.Position
			local Position13 = t93.Position
			v132[1] = Position12
			v132[2] = Position13
			table.insert(t88, v132)
			local _ = table.insert
			local v133 = (table.create(2))
			local Position14 = t90.Position
			local Position15 = t94.Position
			v133[1] = Position14
			v133[2] = Position15
			table.insert(t88, v133)
			local _ = table.insert
			local v134 = (table.create(2))
			local Position16 = t93.Position
			local CFrame7 = FindFirstChild4.CFrame
			local Position17 = CFrame.new(0, -FindFirstChild4.Size.Y / 2, 0).Position
			v134[1] = Position16
			v134[2] = CFrame7 * Position17
			table.insert(t88, v134)
			local _ = table.insert
			local v135 = (table.create(2))
			local Position18 = t94.Position
			local CFrame8 = FindFirstChild5.CFrame
			local Position19 = CFrame.new(0, -FindFirstChild5.Size.Y / 2, 0).Position
			v135[1] = Position18
			v135[2] = CFrame8 * Position19
			table.insert(t88, v135)
		end
	end
	return t88
end

function t84:create_object(p53)
	local Name = p53.Name
	local t95 = {
		objects = {}
	}
	local t96 = { character = character, humanoid = humanoid }
	t95.info = t96
	t95.drawings = {}
	t95.skeleton = {}
	t84[Name] = t95
	local t97 = t84[p53.Name]
	if Drawing then
		for _ = 1, 14 do
			local v136 = (Drawing.new("Line"))
			v136.Visible = false
			v136.Thickness = 3
			local v137 = (Drawing.new("Line"))
			v137.Visible = false
			v137.Thickness = 1
			table.insert(t97.drawings, v136)
			table.insert(t97.drawings, v137)
			local _ = table.insert
			local skeleton = t97.skeleton
			local t98 = { out = v136, in_line = v137 }
			table.insert(skeleton, t98)
		end
		t97.headdot_out = (Drawing.new("Circle"))
		t97.headdot_out.Visible = false
		t97.headdot_out.Thickness = 3
		t97.headdot_out.Filled = false
		table.insert(t97.drawings, t97.headdot_out)
		t97.headdot = (Drawing.new("Circle"))
		t97.headdot.Visible = false
		t97.headdot.Thickness = 1
		t97.headdot.Filled = false
		table.insert(t97.drawings, t97.headdot)
	end
	local objects = t97.objects
	local t99 = t84
	local create = t99.create
	local t100 = {
		Parent = t84.screengui,
		Name = "\0",
		BackgroundTransparency = 1,
		ClipsDescendants = false,
		Position = new14(0, 0, 0, 0),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(0, 0, 0, 0),
		BorderSizePixel = 0,
		BackgroundColor3 = fromRGB(255, 255, 255)
	}
	objects.holder = (create(t99, "Frame", t100))
	local t101 = t84
	local create2 = t101.create
	local t102 = {}
	local Boxes = t56.Boxes
	if Boxes then
		Boxes = not (t56.Box_Type == "Corner")
	end
	Boxes = Boxes and objects.holder or t84.cache
	t102.Parent = Boxes
	local LineJoinMode = Enum.LineJoinMode
	local v138
	v138 = not not false
	if not v138 then
		v138 = 27
	end
	t102.LineJoinMode = LineJoinMode.Miter
	objects.box_outline = (create2(t101, "UIStroke", t102))
	local t103 = t84
	local create3 = t103.create
	local t104 = {
		FontFace = v113.main,
		Parent = t84.cache,
		TextColor3 = t56.Name_Color.Color,
		BorderColor3 = fromRGB(0, 0, 0),
		Text = f54(p53),
		Name = "\0",
		TextStrokeTransparency = 0,
		AnchorPoint = new13(0, 1),
		Size = new14(1, 0, 0, 0),
		BackgroundTransparency = 1,
		Position = new14(0, 0, 0, -5),
		BorderSizePixel = 0,
		AutomaticSize = Enum.AutomaticSize.Y,
		TextSize = 10
	}
	objects.name = (create3(t103, "TextLabel", t104))
	local t105 = t84
	local create4 = t105.create
	local t106 = {
		FontFace = v113.main,
		Parent = objects.holder,
		TextColor3 = fromRGB(0, 140, 255),
		BorderColor3 = fromRGB(0, 0, 0),
		Text = "FF",
		Name = "\0",
		TextStrokeTransparency = 0,
		AnchorPoint = new13(0, 0),
		Size = new14(0, 0, 0, 0),
		BackgroundTransparency = 1,
		Position = new14(1, 6, 0, 0),
		BorderSizePixel = 0,
		AutomaticSize = Enum.AutomaticSize.XY,
		TextSize = 10,
		Visible = false
	}
	objects.ff_text = (create4(t105, "TextLabel", t106))
	local t107 = t84
	local create5 = t107.create
	local t108 = {
		FontFace = v113.main,
		Parent = objects.holder,
		TextColor3 = fromRGB(255, 0, 0),
		BorderColor3 = fromRGB(0, 0, 0),
		Text = "D",
		Name = "\0",
		TextStrokeTransparency = 0,
		AnchorPoint = new13(0, 0),
		Size = new14(0, 0, 0, 0),
		BackgroundTransparency = 1,
		Position = new14(1, 6, 0, 0),
		BorderSizePixel = 0,
		AutomaticSize = Enum.AutomaticSize.XY,
		TextSize = 10,
		Visible = false
	}
	objects.downed_text = (create5(t107, "TextLabel", t108))
	local t109 = t84
	local create6 = t109.create
	local t110 = {
		FontFace = v113.main,
		Parent = objects.holder,
		TextColor3 = t56.CombatZone_Color.Color,
		BorderColor3 = fromRGB(0, 0, 0),
		Text = "⚔CZ",
		Name = "\0",
		TextStrokeTransparency = 0,
		AnchorPoint = new13(0, 0),
		Size = new14(0, 0, 0, 0),
		BackgroundTransparency = 1,
		Position = new14(1, 6, 0, 0),
		BorderSizePixel = 0,
		AutomaticSize = Enum.AutomaticSize.XY,
		TextSize = 10,
		Visible = false
	}
	objects.combat_zone_text = (create6(t109, "TextLabel", t110))
	local t111 = t84
	local create7 = t111.create
	local t112 = {
		FontFace = v113.main,
		Parent = objects.holder,
		TextColor3 = t56.Level_Color.Color,
		BorderColor3 = fromRGB(0, 0, 0),
		Text = "L0",
		Name = "\0",
		TextStrokeTransparency = 0,
		AnchorPoint = new13(0, 0),
		Size = new14(0, 0, 0, 0),
		BackgroundTransparency = 1,
		Position = new14(1, 6, 0, 0),
		BorderSizePixel = 0,
		AutomaticSize = Enum.AutomaticSize.XY,
		TextSize = 10,
		Visible = false
	}
	objects.level_text = (create7(t111, "TextLabel", t112))
	local t113 = t84
	local create8 = t113.create
	local t114 = {}
	local Boxes2 = t56.Boxes
	if Boxes2 then
		Boxes2 = not (t56.Box_Type == "Corner")
	end
	Boxes2 = Boxes2 and objects.holder or t84.cache
	t114.Parent = Boxes2
	t114.Name = "\0"
	t114.BackgroundTransparency = 1
	t114.Position = (new14(0, 1, 0, 1))
	t114.BorderColor3 = (fromRGB(0, 0, 0))
	t114.Size = (new14(1, -2, 1, -2))
	t114.BorderSizePixel = 0
	t114.BackgroundColor3 = (fromRGB(255, 255, 255))
	objects.box_handler = (create8(t113, "Frame", t114))
	local t115 = t84
	local create9 = t115.create
	local t116 = {
		Color = fromRGB(255, 255, 255),
		LineJoinMode = Enum.LineJoinMode.Miter,
		Name = "\0",
		Parent = objects.box_handler
	}
	objects.box_color = (create9(t115, "UIStroke", t116))
	local t117 = t84
	local create10 = t117.create
	local t118 = {
		Parent = objects.box_handler,
		Name = "\0",
		BackgroundTransparency = 1,
		Position = new14(0, 1, 0, 1),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(1, -2, 1, -2),
		BorderSizePixel = 0,
		BackgroundColor3 = fromRGB(255, 255, 255)
	}
	objects.outline = (create10(t117, "Frame", t118))
	local t119 = t84
	local create11 = t119.create
	local t120 = { Parent = objects.outline, LineJoinMode = Enum.LineJoinMode.Miter }
	create11(t119, "UIStroke", t120)
	local t121 = t84
	local create12 = t121.create
	local t122 = { Visible = true, BorderColor3 = fromRGB(0, 0, 0) }
	local Boxes3 = t56.Boxes
	if Boxes3 then
		Boxes3 = t56.Box_Type == "Corner"
	end
	Boxes3 = Boxes3 and objects.holder or t84.cache
	t122.Parent = Boxes3
	t122.BackgroundTransparency = 1
	t122.Position = (new14(0, -1, 0, 2))
	t122.Name = "\0"
	local f56 = new14
	local v139
	v139 = not not false
	if not v139 then
		v139 = 188
	end
	t122.Size = (f56(1, 0, 1, 0))
	t122.BorderSizePixel = 0
	t122.BackgroundColor3 = (fromRGB(255, 255, 255))
	objects.corners = (create12(t121, "Frame", t122))
	local t123 = t84
	local create13 = t123.create
	local t124 = {
		Parent = objects.corners,
		Name = "line",
		Position = new14(0, 0, 0, -2),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(0.4, 0, 0, 3),
		BorderSizePixel = 0,
		BackgroundColor3 = fromRGB(0, 0, 0)
	}
	objects["1"] = (create13(t123, "Frame", t124))
	local t125 = t84
	local create14 = t125.create
	local t126 = {
		Parent = objects["1"],
		Position = new14(0, 1, 0, 1),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(1, -2, 1, -2),
		BorderSizePixel = 0,
		BackgroundColor3 = t56.Box_Color.Color
	}
	create14(t125, "Frame", t126)
	local t127 = t84
	local create15 = t127.create
	local t128 = {
		Parent = objects.corners,
		Name = "line",
		Position = new14(0, 0, 0, 1),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(0, 3, 0.25, 0),
		BorderSizePixel = 0,
		BackgroundColor3 = fromRGB(0, 0, 0)
	}
	objects["2"] = (create15(t127, "Frame", t128))
	local t129 = t84
	local create16 = t129.create
	local t130 = {
		Parent = objects["2"],
		Position = new14(0, 1, 0, -2),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(1, -2, 1, 1),
		BorderSizePixel = 0,
		BackgroundColor3 = t56.Box_Color.Color
	}
	create16(t129, "Frame", t130)
	local t131 = t84
	local create17 = t131.create
	local t132 = {
		AnchorPoint = new13(1, 0),
		Parent = objects.corners,
		Name = "line",
		Position = new14(1, 0, 0, -2),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(0.4, 0, 0, 3),
		BorderSizePixel = 0,
		BackgroundColor3 = fromRGB(0, 0, 0)
	}
	objects["3"] = (create17(t131, "Frame", t132))
	local t133 = t84
	local create18 = t133.create
	local t134 = {
		Parent = objects["3"],
		Position = new14(0, 1, 0, 1),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(1, -2, 1, -2),
		BorderSizePixel = 0,
		BackgroundColor3 = t56.Box_Color.Color
	}
	create18(t133, "Frame", t134)
	local t135 = t84
	local create19 = t135.create
	local t136 = {
		AnchorPoint = new13(1, 0),
		Parent = objects.corners,
		Name = "line",
		Position = new14(1, 0, 0, 1),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(0, 3, 0.25, 0),
		BorderSizePixel = 0,
		BackgroundColor3 = fromRGB(0, 0, 0)
	}
	objects["4"] = (create19(t135, "Frame", t136))
	local t137 = t84
	local create20 = t137.create
	local t138 = {
		Parent = objects["4"],
		Position = new14(0, 1, 0, -2),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(1, -2, 1, 1),
		BorderSizePixel = 0,
		BackgroundColor3 = t56.Box_Color.Color
	}
	create20(t137, "Frame", t138)
	local t139 = t84
	local create21 = t139.create
	local t140 = {
		AnchorPoint = new13(0, 1),
		Parent = objects.corners,
		Name = "line",
		Position = new14(0, 0, 1, -2),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(0.4, 0, 0, 3),
		BorderSizePixel = 0,
		BackgroundColor3 = fromRGB(0, 0, 0)
	}
	objects["5"] = (create21(t139, "Frame", t140))
	local t141 = t84
	local create22 = t141.create
	local t142 = {
		Parent = objects["5"],
		Position = new14(0, 1, 0, 1),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(1, -2, 1, -2),
		BorderSizePixel = 0,
		BackgroundColor3 = t56.Box_Color.Color
	}
	create22(t141, "Frame", t142)
	local t143 = t84
	local create23 = t143.create
	local t144 = {
		BorderColor3 = fromRGB(0, 0, 0),
		Rotation = 180,
		Parent = objects.corners,
		Name = "line",
		Position = new14(0, 0, 1, -5),
		AnchorPoint = new13(0, 1),
		Size = new14(0, 3, 0.25, 0),
		BorderSizePixel = 0,
		BackgroundColor3 = fromRGB(0, 0, 0)
	}
	objects["6"] = (create23(t143, "Frame", t144))
	local t145 = t84
	local create24 = t145.create
	local t146 = {
		Parent = objects["6"],
		Position = new14(0, 1, 0, -2),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(1, -2, 1, 1),
		BorderSizePixel = 0,
		BackgroundColor3 = t56.Box_Color.Color
	}
	create24(t145, "Frame", t146)
	local t147 = t84
	local create25 = t147.create
	local t148 = {
		AnchorPoint = new13(1, 1),
		Parent = objects.corners,
		Name = "line",
		Position = new14(1, 0, 1, -2),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(0.4, 0, 0, 3),
		BorderSizePixel = 0,
		BackgroundColor3 = fromRGB(0, 0, 0)
	}
	objects["7"] = (create25(t147, "Frame", t148))
	local t149 = t84
	local create26 = t149.create
	local t150 = {
		Parent = objects["7"],
		Position = new14(0, 1, 0, 1),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(1, -2, 1, -2),
		BorderSizePixel = 0,
		BackgroundColor3 = t56.Box_Color.Color
	}
	create26(t149, "Frame", t150)
	local t151 = t84
	local create27 = t151.create
	local t152 = {
		BorderColor3 = fromRGB(0, 0, 0),
		Rotation = 180,
		Parent = objects.corners,
		Name = "line",
		Position = new14(1, 0, 1, -5),
		AnchorPoint = new13(1, 1),
		Size = new14(0, 3, 0.25, 0),
		BorderSizePixel = 0,
		BackgroundColor3 = fromRGB(0, 0, 0)
	}
	objects["7"] = (create27(t151, "Frame", t152))
	local t153 = t84
	local create28 = t153.create
	local t154 = {
		Parent = objects["7"],
		Position = new14(0, 1, 0, -2),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(1, -2, 1, 1),
		BorderSizePixel = 0,
		BackgroundColor3 = t56.Box_Color.Color
	}
	create28(t153, "Frame", t154)
	local t155 = t84
	local create29 = t155.create
	local t156 = { AnchorPoint = new13(1, 0) }
	local Healthbar = t56.Healthbar
	Healthbar = Healthbar and objects.holder or t84.cache
	t156.Parent = Healthbar
	t156.Name = "\0"
	t156.Position = (new14(0, -1, 0, -1))
	t156.BorderColor3 = (fromRGB(0, 0, 0))
	t156.Size = (new14(0, 4, 1, 2))
	t156.BorderSizePixel = 0
	t156.BackgroundColor3 = (fromRGB(0, 0, 0))
	objects.healthbar_holder = (create29(t155, "Frame", t156))
	local t157 = t84
	local create30 = t157.create
	local t158 = {
		Parent = objects.healthbar_holder,
		Name = "\0",
		Position = new14(0, 1, 0, 1),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(1, -2, 1, -2),
		BorderSizePixel = 0,
		BackgroundColor3 = fromRGB(255, 255, 255)
	}
	objects.healthbar = (create30(t157, "Frame", t158))
	local t159 = t84
	local create31 = t159.create
	local t160 = {
		FontFace = v113.main,
		Parent = t84.cache,
		TextColor3 = t56.Health_High.Color,
		BorderColor3 = fromRGB(0, 0, 0),
		Text = "100"
	}
	local _ = -52405973 + bit32.rrotate(25, 11) + -22818
	t160.Name = "\0"
	t160.TextStrokeTransparency = 0
	t160.AnchorPoint = (new13(1, 0))
	t160.Size = (new14(0, 0, 0, 0))
	t160.BackgroundTransparency = 1
	local Healthbar2 = t56.Healthbar
	Healthbar2 = Healthbar2 and new14(0, -7, 0, -1) or new14(0, 0, 0, -1)
	t160.Position = Healthbar2
	t160.BorderSizePixel = 0
	t160.AutomaticSize = Enum.AutomaticSize.XY
	t160.TextSize = 10
	objects.health_text = (create31(t159, "TextLabel", t160))
	local t161 = t84
	local create32 = t161.create
	local t162 = {
		FontFace = v113.main,
		Parent = t84.cache,
		TextColor3 = t56.Armor_Color.Color,
		BorderColor3 = fromRGB(0, 0, 0),
		Text = "0",
		Name = "\0",
		TextStrokeTransparency = 0,
		AnchorPoint = new13(0, 0),
		Size = new14(0, 0, 0, 0),
		BackgroundTransparency = 1,
		Position = new14(1, 6, 0, 0),
		BorderSizePixel = 0,
		AutomaticSize = Enum.AutomaticSize.XY,
		TextSize = 10,
		Visible = false
	}
	objects.armor_text = (create32(t161, "TextLabel", t162))
	local t163 = t84
	local create33 = t163.create
	local t164 = {
		FontFace = v113.main,
		TextColor3 = t56.Distance_Color.Color,
		BorderColor3 = fromRGB(0, 0, 0),
		Text = "127st"
	}
	local Distance = t56.Distance
	Distance = Distance and objects.holder or t84.cache
	t164.Parent = Distance
	t164.TextStrokeTransparency = 0
	t164.Name = "\0"
	local _ = bit32.lrotate
	local v140 = false
	if not v140 then
		v140 = 418
	end
	local _ = -536841387 + bit32.lrotate(v140, 28) + -29539
	t164.Size = (new14(1, 0, 0, 0))
	t164.BackgroundTransparency = 1
	t164.Position = (new14(0, 0, 1, 5))
	t164.BorderSizePixel = 0
	t164.AutomaticSize = Enum.AutomaticSize.Y
	t164.TextSize = 10
	objects.distance = (create33(t163, "TextLabel", t164))
	local t165 = t84
	local create34 = t165.create
	local t166 = {
		FontFace = v113.main,
		TextColor3 = t56.Weapon_Color.Color,
		BorderColor3 = fromRGB(0, 0, 0),
		Text = "ak-47",
		Parent = t84.cache,
		TextStrokeTransparency = 0,
		Name = "\0",
		Size = new14(1, 0, 0, 0),
		BackgroundTransparency = 1,
		Position = new14(0, 0, 1, 19),
		BorderSizePixel = 0,
		AutomaticSize = Enum.AutomaticSize.Y,
		TextSize = 10
	}
	objects.weapon = (create34(t165, "TextLabel", t166))
	local t167 = t84
	local create35 = t167.create
	local t168 = {
		AnchorPoint = new13(0, 0),
		Parent = t84.cache,
		Name = "\0",
		Position = new14(1, 1, 0, -1),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(0, 4, 1, 2),
		BorderSizePixel = 0,
		BackgroundColor3 = fromRGB(0, 0, 0)
	}
	objects.armorbar_holder = (create35(t167, "Frame", t168))
	local t169 = t84
	local create36 = t169.create
	local t170 = {
		Parent = objects.armorbar_holder,
		Name = "\0",
		Position = new14(0, 1, 0, 1),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(1, -2, 1, -2),
		BorderSizePixel = 0,
		BackgroundColor3 = t56.Armor_Color.Color
	}
	objects.armorbar = (create36(t169, "Frame", t170))
	local t171 = t84
	local create37 = t171.create
	local t172 = {
		FontFace = v113.main,
		Parent = t84.cache,
		TextColor3 = t56.Crouch_Color.Color,
		BorderColor3 = fromRGB(0, 0, 0),
		Text = "C",
		Name = "\0",
		TextStrokeTransparency = 0,
		AnchorPoint = new13(0, 0),
		Size = new14(0, 0, 0, 0),
		BackgroundTransparency = 1,
		Position = new14(1, 6, 0, 0),
		BorderSizePixel = 0,
		AutomaticSize = Enum.AutomaticSize.XY,
		TextSize = 10,
		Visible = false
	}
	objects.crouch_text = (create37(t171, "TextLabel", t172))
	local t173 = t84
	local create38 = t173.create
	local t174 = {
		Parent = t84.cache,
		Name = "\0",
		Position = new14(0, 0, 1, 1),
		BorderColor3 = fromRGB(0, 0, 0),
		Size = new14(1, 0, 0, 4),
		BorderSizePixel = 0,
		BackgroundColor3 = fromRGB(0, 0, 0)
	}
	objects.reloadbar_holder = (create38(t173, "Frame", t174))
	local t175 = t84
	local create39 = t175.create
	local t176 = {
		Parent = objects.reloadbar_holder,
		Name = "\0",
		Position = new14(0, 0, 0, 1),
		BorderColor3 = fromRGB(0, 0, 0)
	}
	local f57 = new14
	local _ = 17341 + (bit32.rrotate(123, 30) + 17) + -17764
	t176.Size = (f57(1, 0, 1, -2))
	t176.BorderSizePixel = 0
	local Color = t56.Reload_Color.Color
	local v141
	v141 = 50 == string.byte("E;\177", 2, 3)
	if not v141 then
		v141 = 37
	end
	local _
	_ = 1 < v141
	t176.BackgroundColor3 = Color
	objects.reloadbar = (create39(t175, "Frame", t176))
	local t177 = t84
	local create40 = t177.create
	local t178 = {
		FontFace = v113.main,
		Parent = t84.cache,
		TextColor3 = t56.Reload_Color.Color,
		BorderColor3 = fromRGB(0, 0, 0),
		Text = "1.0s",
		Name = "\0",
		TextStrokeTransparency = 0,
		AnchorPoint = new13(0, 0.5),
		Size = new14(0, 0, 0, 0),
		BackgroundTransparency = 1,
		Position = new14(1, 4, 1, 3),
		BorderSizePixel = 0,
		AutomaticSize = Enum.AutomaticSize.XY,
		TextSize = 10
	}
	objects.reload_text = (create40(t177, "TextLabel", t178))
	t97._hp_target = 100
	t97._hp_display = 100
	t97._hp_max = 100
	t97._armor_target = 0
	t97._armor_display = 0

	function t97.health_changed(p54)
		local humanoid2 = t97.info.humanoid
		t97._hp_target = p54
		local v142
		v142 = 0 < humanoid2.MaxHealth
		v142 = v142 and humanoid2.MaxHealth or 100
		t97._hp_max = v142
		if not t56.Healthbar then
			return
		end
		if t56.Health_Text then
			objects.health_text.Parent = objects.holder
			objects.health_text.AnchorPoint = (new13(1, 0))
		else
			objects.health_text.Parent = t84.cache
		end
	end

	function t97.tool_added(p55)
		local IsA = p55.IsA
		local v143
		v143 = not not true
		if v143 then
			v143 = (string.unpack(">i8", "\0\0\0\0\0\0\0\177"))
		end
		local _
		_ = 6 <= v143
		if not IsA(p55, "Tool") then
			return
		end
		objects.weapon.Text = (string.gsub(p55.Name, "[%[%]]", ""))
	end

	function t97.refresh_offsets()
		local _ = bit32.lshift
		local v144 = false
		if not v144 then
			v144 = (string.unpack("<i8", "\11\0\0\0\0\0\0\0"))
		end
		local _ = -342836 + bit32.lshift(v144, 15) + -17611
		local v145 = 5
		if objects.distance.Parent == objects.holder then
			v145 = v145 + 5
			objects.weapon.Position = (new14(0, 0, 1, v145))
		end
		if objects.weapon.Parent == objects.holder then
			objects.weapon.Position = (new14(0, 0, 1, v145 + 5))
		end
	end

	function t97.update_health_text_offset()
		if not t56.Healthbar then
			objects.health_text.Position = (new14(0, 0, 0, -1))
			return
		end
		local v146 = -2
		if t56.Healthbar then
			v146 = v146 - 5
		end
		objects.health_text.Position = (new14(0, v146, 0, -1))
	end

	function t97.armor_changed()
		local v147 = (ReplicatedStorage:FindFirstChild("CharStats"))
		if v147 then
			v147 = (v147:FindFirstChild(p53.Name))
		end
		if not v147 then
			objects.armorbar_holder.Parent = t84.cache
			objects.armor_text.Visible = false
			t97.update_health_text_offset()
			return
		end
		local t179 = (v147:FindFirstChild("ArmorHP"))
		local Body2
		if t179 then
			Body2 = (t179:FindFirstChild("Body"))
		else
			Body2 = t179
		end
		if t179 then
			t179 = (t179:FindFirstChild("Head"))
		end
		Body2 = Body2 and Body2.Value or 0
		t179 = t179 and t179.Value or 0
		if Body2 <= 0 and t179 <= 0 then
			objects.armorbar_holder.Parent = t84.cache
			objects.armor_text.Visible = false
			t97.update_health_text_offset()
			return
		end
		if not t56.Armorbar then
			objects.armorbar_holder.Parent = t84.cache
			objects.armor_text.Visible = false
			t97.update_health_text_offset()
			return
		end
		objects.armorbar_holder.Parent = objects.holder
		if objects.armor_text.Parent ~= objects.holder then
			objects.armor_text.Parent = objects.holder
		end
		t97.update_health_text_offset()
		local v148 = (Body2 + t179) / 2
		local v149 = (math.clamp(v148 / 100, 0, 1))
		t97._armor_mult = v149
		local Armorbar_Mode = t56.Armorbar_Mode
		local Color2 = t56.Armor_High.Color
		local Color4 = t56.Armor_Low.Color
		if Armorbar_Mode ~= "Static" then
			if Armorbar_Mode == "Dynamic" then
				Color4:Lerp(Color2, v149)
			else
				fromRGB(255, 255, 255)
			end
		end
		if Armorbar_Mode ~= "Static" then
			Color4:Lerp(Color2, v149)
		end
		t97._armor_target = v148
		if t56.Armor_Text then
			objects.armor_text.AnchorPoint = (new13(0, 0))
			objects.armor_text.Visible = true
		else
			objects.armor_text.Visible = false
		end
	end

	function t97.refresh_descendants()
		local t180 = p53.Character
		if not t180 then
			t180 = (p53.CharacterAdded:Wait())
		end
		local Humanoid = (t180:WaitForChild("Humanoid"))
		local HumanoidRootPart = (t180:WaitForChild("HumanoidRootPart"))
		t97.info.character = t180
		t97.info.humanoid = Humanoid
		t97.info.rootpart = HumanoidRootPart
		t97._leaderstats = nil
		Humanoid.HealthChanged:Connect(t97.health_changed)
		t180.ChildAdded:Connect(t97.tool_added)
		t180.ChildRemoved:Connect(t97.tool_added)
		t97.health_changed(Humanoid.Health)
		local FindFirstChildOfClass = (t180:FindFirstChildOfClass("Tool"))
		if FindFirstChildOfClass then
			t97.tool_added(FindFirstChildOfClass)
		end
	end

	local function f58()
		t97.refresh_descendants()
	end

	task.spawn(f58)
	p53.CharacterAdded:Connect(t97.refresh_descendants)
end

function t84:remove_object(p56)
	local t181 = t84[p56.Name]
	if not t181 then
		return
	end
	local objects2 = t181.objects
	local _ = ipairs
	local t182 = t181.drawings
	if not t182 then
		t182 = {}
	end
	for _, t183 in ipairs(t182) do
		if t183.Remove then
			t183:Remove()
		end
	end
	if objects2 and objects2.holder then
		objects2.holder:Destroy()
	end
	t84[p56.Name] = nil
end

local v150 = Players3

function t84.refresh_elements(...)
	local v151, v152, f59
	f59, v152, v151 = v150:GetPlayers()
	local v153, v154, v155, objects3
	while true do
		local t184
		v151, t184 = f59(v152, v151)
		if v151 == nil then
			break
		end
		if t184 ~= v150.LocalPlayer then
			local t185 = t84[t184.Name]
			if t185 then
				objects3 = t185.objects
			else
				objects3 = t185
			end
			if objects3 then
				local holder = objects3.holder
				local Enabled = t56.Enabled
				Enabled = Enabled and t84.screengui or t84.cache
				holder.Parent = Enabled
				local name = objects3.name
				local Names = t56.Names
				Names = Names and objects3.holder or t84.cache
				name.Parent = Names
				local v156 = (f26(t184))
				local Color5 = nil
				if v156 == "Priority" or v156 == "Enemy" then
					Color5 = t56.Enemy_Color.Color
				elseif v156 == "Friendly" then
					Color5 = t56.Friendly_Color.Color
				end
				local name2 = objects3.name
				if not Color5 then
					Color5 = t56.Name_Color.Color
				end
				name2.TextColor3 = Color5
				objects3.distance.TextColor3 = t56.Distance_Color.Color
				objects3.box_color.Color = t56.Box_Color.Color
				objects3.name.Text = (f54(t184))
				v155 = t56.Box_Type == "Corner"
				if t56.Boxes then
					local corners = objects3.corners
					if v155 then
						v154 = objects3.holder
					else
						v154 = v155
					end
					if not v154 then
						v154 = t84.cache
					end
					corners.Parent = v154
					local box_handler = objects3.box_handler
					if v155 then
						v153 = t84.cache
					else
						v153 = v155
					end
					if not v153 then
						v153 = objects3.holder
					end
					box_handler.Parent = v153
					local box_outline = objects3.box_outline
					v155 = v155 and t84.cache or objects3.holder
					box_outline.Parent = v155
				else
					objects3.corners.Parent = t84.cache
					objects3.box_handler.Parent = t84.cache
					objects3.box_outline.Parent = t84.cache
				end
				objects3.box_color.Color = t56.Box_Color.Color
				local f60 = new15
				local v157 = (table.create(1))
				new16(0, t56.Box_Color.Color)
				local f61 = new16
				local Color6 = t56.Box_Gradient_Color.Color
				local v158 = (f60(v157))
				local v159 = (f53(objects3.box_color, "BoxGradient"))
				v159.Enabled = t56.Box_Gradient
				v159.Rotation = 90
				v159.Color = v158
				local v160, v161, f62
				f62, v161, v160 = objects3.corners:GetChildren()
				f61(1, Color6)
				while true do
					local t186
					v160, t186 = f62(v161, v160)
					if v160 == nil then
						break
					end
					t186.Frame.BackgroundColor3 = t56.Box_Color.Color
					local v162 = (f53(t186.Frame, "BoxGradient"))
					v162.Enabled = t56.Box_Gradient
					v162.Rotation = 90
					v162.Color = v158
				end
				local healthbar_holder = objects3.healthbar_holder
				local Healthbar3 = t56.Healthbar
				Healthbar3 = Healthbar3 and objects3.holder or t84.cache
				healthbar_holder.Parent = Healthbar3
				if not t56.Healthbar then
					local health_text = objects3.health_text
					local Health_Text = t56.Health_Text
					Health_Text = Health_Text and objects3.holder or t84.cache
					health_text.Parent = Health_Text
					objects3.health_text.AnchorPoint = (new13(1, 0))
					objects3.health_text.Position = (new14(0, -2, 0, -1))
				end
				if t185.health_changed and t185.info.humanoid then
					t185.health_changed(t185.info.humanoid.Health)
				end
				objects3.armorbar_holder.Position = (new14(1, 2, 0, -1))
				if t185.armor_changed then
					t185.armor_changed()
				elseif t185.update_health_text_offset then
					up11[nil] = nil
				end
				objects3.crouch_text.TextColor3 = t56.Crouch_Color.Color
				if not t56.Crouching then
					objects3.crouch_text.Parent = t84.cache
				end
				objects3.weapon.TextColor3 = t56.Weapon_Color.Color
				local weapon = objects3.weapon
				local Distance2 = t56.Distance
				Distance2 = Distance2 and new14(0, 0, 1, 19) or new14(0, 0, 1, 5)
				weapon.Position = Distance2
				objects3.distance.TextColor3 = t56.Distance_Color.Color
				local distance = objects3.distance
				local Distance3 = t56.Distance
				Distance3 = Distance3 and objects3.holder or t84.cache
				distance.Parent = Distance3
			end
		end
	end
end

local t187 = {
	Beretta = 2.25,
	["G-17"] = 2.25,
	["TEC-9"] = 3,
	M1911 = 2.5,
	["FNP-45"] = 2.25,
	Deagle = 3,
	Magnum = 3,
	["G-18"] = 2.25,
	Hawkeye = 3,
	["FM 1911"] = 2.5,
	Uzi = 3,
	["MAC-10"] = 3,
	MP7 = 3,
	["UMP 45"] = 3.25,
	["Tommy Gun"] = 4,
	MP5 = 3.25,
	["Sawn-Off"] = 2.5,
	["Super-Shorty"] = 1,
	["Ithaca-37"] = 1.25,
	["AKS-74U"] = 3.5,
	M4A1 = 3,
	["SCAR-H"] = 3.5,
	AKM = 3.85,
	SKS = 4,
	["FN-FAL"] = 3.5,
	M60 = 8,
	Scout = 4.5,
	Mare = 0.6,
	BFG = 4.5,
	["Firework Launcher"] = 4,
	M320 = 3.5,
	RPG = 6,
	["Ray Gun"] = 3,
	["Ray Gun V2"] = 3,
	Musket = 7
}
local v163 = (table.create(5))
v114 = "crouch_text"
level_text = "level_text"
f55 = "combat_zone_text"
v163[1] = "ff_text"
v163[2] = "downed_text"
v163[3] = v114
v163[4] = level_text
v163[5] = f55
v114 = {}
level_text = true
f55 = Players3.PlayerAdded
local v164 = f55
f55 = f55.Connect

local function f63()
	level_text = true
end

f55(v164, f63)
f55 = Players3.PlayerRemoving
local v165 = f55
f55 = f55.Connect

local function f64()
	level_text = true
end

f55(v165, f64)
f55 = 0

local function f65(p57)
	if not t56.Enabled then
		return
	end
	local v166 = 4 * p57
	local v167 = v114
	local v168 = 0
	local v169, v170, Lerp, v171, v172, Lerp2, v173
	while true do
		v168 = v168 + 1
		if not (v168 <= #v167) then
			break
		end
		local t188 = t84[v114[v168].Name]
		if t188 then
			local objects4 = t188.objects
			if objects4 and objects4.holder then
				if not (t188._hp_display == nil or t188._hp_target == nil) then
					if t188._hp_display ~= t188._hp_target then
						t188._hp_display = t188._hp_display + (t188._hp_target - t188._hp_display) * math.min(v166, 1)
						if math.abs(t188._hp_display - t188._hp_target) < 0.05 then
							t188._hp_display = t188._hp_target
						end
					end
					local _hp_max = t188._hp_max
					if not _hp_max then
						_hp_max = 100
					end
					local _ = math.clamp
					v173 = 0 < _hp_max
					v173 = v173 and t188._hp_display / _hp_max or 0
					local v174 = (math.clamp(v173, 0, 1))
					local Healthbar_Mode = t56.Healthbar_Mode
					local Color7 = t56.Health_High.Color
					local Color8 = t56.Health_Low.Color
					if Healthbar_Mode == "Static" then
						Lerp2 = Color7
					elseif Healthbar_Mode == "Dynamic" then
						Lerp2 = (Color8:Lerp(Color7, v174))
					else
						Lerp2 = (fromRGB(255, 255, 255))
					end
					if t56.Healthbar then
						local healthbar = objects4.healthbar
						local v175 = (UDim2.new(1, -2, v174, -2))
						local v176 = (UDim2.new(0, 1, 1 - v174, 1))
						if healthbar.Size ~= v175 then
							healthbar.Size = v175
						end
						if healthbar.Position ~= v176 then
							healthbar.Position = v176
						end
						if healthbar.BackgroundColor3 ~= Lerp2 then
							healthbar.BackgroundColor3 = Lerp2
						end
						local t189 = (f53(healthbar, "HealthGradient"))
						if Healthbar_Mode == "Gradient" then
							if not t189.Enabled then
								t189.Enabled = true
							end
							if t189.Rotation ~= 270 then
								t189.Rotation = 270
							end
							local f66 = new15
							local v177 = (table.create(2))
							new16(0, Color8)
							new16(v174, Color7:Lerp(Color8, 1 - v174))
							local f67 = new16
							t189.Color = (f66(v177))
							local Parent = t189.Parent
							f67(1, Color7)
							if Parent ~= healthbar then
								t189.Parent = healthbar
							end
						else
							if t189.Enabled then
								t189.Enabled = false
							end
							if t189.Parent ~= nil then
								t189.Parent = nil
							end
						end
					end
					if Healthbar_Mode == "Static" then
						v172 = t56.Health_Text_Color.Color
					else
						v172 = (Color8:Lerp(Color7, v174))
					end
					local health_text2 = objects4.health_text
					v171 = 9999 < math.floor(t188._hp_display)
					v171 = v171 and "inf" or tostring(math.floor(t188._hp_display))
					if health_text2.Text ~= v171 then
						health_text2.Text = v171
					end
					if health_text2.TextColor3 ~= v172 then
						health_text2.TextColor3 = v172
					end
					if t56.Healthbar then
						local v178 = (UDim2.new(0, -7, 1 - v174, -1))
						if health_text2.Position ~= v178 then
							health_text2.Position = v178
						end
					else
						local v179 = (UDim2.new(0, 0, 0, -1))
						if health_text2.Position ~= v179 then
							health_text2.Position = v179
						end
					end
				end
				if not (t188._armor_display == nil or t188._armor_target == nil) then
					if t188._armor_display ~= t188._armor_target then
						t188._armor_display = t188._armor_display + (t188._armor_target - t188._armor_display) * math.min(v166, 1)
						if math.abs(t188._armor_display - t188._armor_target) < 0.05 then
							t188._armor_display = t188._armor_target
						end
					end
					local _armor_display = t188._armor_display
					local v180 = (math.clamp(_armor_display / 100, 0, 1))
					local Armorbar_Mode2 = t56.Armorbar_Mode
					local Color9 = t56.Armor_High.Color
					local Color10 = t56.Armor_Low.Color
					if Armorbar_Mode2 == "Static" then
						Lerp = Color9
					elseif Armorbar_Mode2 == "Dynamic" then
						Lerp = (Color10:Lerp(Color9, v180))
					else
						Lerp = (fromRGB(255, 255, 255))
					end
					if Armorbar_Mode2 == "Static" then
						v170 = t56.Armor_Text_Color.Color
					else
						v170 = (Color10:Lerp(Color9, v180))
					end
					local armorbar = objects4.armorbar
					if t56.Armorbar and objects4.armorbar_holder.Parent == objects4.holder then
						local v181 = (UDim2.new(1, -2, v180, -2))
						local v182 = (UDim2.new(0, 1, 1 - v180, 1))
						if armorbar.Size ~= v181 then
							armorbar.Size = v181
						end
						if armorbar.Position ~= v182 then
							armorbar.Position = v182
						end
						if armorbar.BackgroundColor3 ~= Lerp then
							armorbar.BackgroundColor3 = Lerp
						end
						local t190 = (f53(armorbar, "ArmorGradient"))
						if Armorbar_Mode2 == "Gradient" then
							if not t190.Enabled then
								t190.Enabled = true
							end
							if t190.Rotation ~= 270 then
								t190.Rotation = 270
							end
							local f68 = new15
							local v183 = (table.create(2))
							new16(0, Color10)
							new16(v180, Color9:Lerp(Color10, 1 - v180))
							local f69 = new16
							t190.Color = (f68(v183))
							local Parent2 = t190.Parent
							f69(1, Color9)
							if Parent2 ~= armorbar then
								t190.Parent = armorbar
							end
						else
							if t190.Enabled then
								t190.Enabled = false
							end
							if t190.Parent ~= nil then
								t190.Parent = nil
							end
						end
					end
					local armor_text = objects4.armor_text
					v169 = 9999 < math.floor(_armor_display)
					v169 = v169 and "inf" or tostring(math.floor(_armor_display))
					if armor_text.Text ~= v169 then
						armor_text.Text = v169
					end
					if armor_text.TextColor3 ~= v170 then
						armor_text.TextColor3 = v170
					end
					if t56.Armorbar and objects4.armorbar_holder.Parent == objects4.holder then
						local v184 = (UDim2.new(1, 5, 1 - v180, 0))
						if armor_text.Position ~= v184 then
							armor_text.Position = v184
						end
					else
						local v185 = (UDim2.new(1, 5, 0, 0))
						if armor_text.Position ~= v185 then
							armor_text.Position = v185
						end
					end
				end
			end
		end
	end
end

t84.render_connection = (RunService2.RenderStepped:Connect(f65))
local v186 = Players3
local v187 = 0.011764705882352941
local v188 = 0.6
local v189 = 2

local function f70(...)
	if not t56.Enabled then
		return
	end
	local v190 = (tick())
	if t56.Limit_ESP_FPS then
		local ESP_FPS_Value = t56.ESP_FPS_Value
		if not ESP_FPS_Value then
			ESP_FPS_Value = 80
		end
		if ESP_FPS_Value < 144 and v190 - f55 < 1 / ESP_FPS_Value then
			return
		end
	end
	f55 = v190
	if level_text then
		v114 = (v186:GetPlayers())
		level_text = false
	end
	local CharStats = (ReplicatedStorage:FindFirstChild("CharStats"))
	local Characters = (workspace:FindFirstChild("Characters"))
	local v191 = v114
	local v192 = 0
	local v193, v194, v195, t191, t192, t193
	while true do
		v192 = v192 + 1
		if not (v192 <= #v191) then
			break
		end
		local t194 = v114[v192]
		local t195 = t84[t194.Name]
		if t195 then
			local ESP_Refresh_Rate = t56.ESP_Refresh_Rate
			ESP_Refresh_Rate = ESP_Refresh_Rate and 1 / t56.ESP_Refresh_Rate or v187
			local _last_refresh = t195._last_refresh
			if not _last_refresh then
				_last_refresh = 0
			end
			if not (v190 - _last_refresh < ESP_Refresh_Rate) then
				t195._last_refresh = v190
				local character2 = t195.info.character
				local humanoid3 = t195.info.humanoid
				if character2 and humanoid3 then
					local objects5 = t195.objects
					if objects5 then
						local holder2 = objects5.holder
						local RootPart = humanoid3.RootPart
						if RootPart then
							local v196, v197, t196, t197
							t197, t196, v197, v196 = t84:box_solve(RootPart)
							if not v197 then
								v197 = false
							end
							local v198 = 0
							local v199 = false
							if humanoid3.Health <= 0 then
								if t56.Smooth_Fade_Dead then
									v198 = 1
								else
									v199 = true
								end
							elseif t56.Max_Distance and t56.Max_Distance < v196 then
								if t56.Smooth_Fade_OOR then
									v198 = 1
								else
									v199 = true
								end
							end
							if v199 then
								v197 = false
								t195._fadeAmount = 1
								if holder2.Visible then
									holder2.Visible = false
								end
							else
								local _fadeAmount = t195._fadeAmount
								if not _fadeAmount then
									_fadeAmount = 0
								end
								t195._fadeAmount = _fadeAmount
								local _ = math.clamp
								local _last_tick = t195._last_tick
								if not _last_tick then
									_last_tick = v190
								end
								local v200 = (math.clamp(v190 - _last_tick, 0, 0.1))
								t195._last_tick = v190
								t195._fadeAmount = (math.clamp(
									t195._fadeAmount + (v198 - t195._fadeAmount) * v200 * 8,
									0,
									1
								))
								if math.abs(t195._fadeAmount - v198) < 0.01 then
									t195._fadeAmount = v198
								end
								if 0.99 <= t195._fadeAmount then
									if holder2.Visible then
										holder2.Visible = false
									end
									v197 = false
								elseif holder2.Visible ~= v197 then
									holder2.Visible = v197
								end
							end
							if t195._lastAppliedFade ~= t195._fadeAmount then
								t195._lastAppliedFade = t195._fadeAmount
								for v201, v202 in pairs(t195.objects) do
									if v202:IsA("TextLabel") then
										v202.TextTransparency = t195._fadeAmount
										v202.TextStrokeTransparency = t195._fadeAmount
									elseif v202:IsA("UIStroke") then
										v202.Transparency = t195._fadeAmount
									elseif v202:IsA("Frame") then
										if v201 == "healthbar" or v201 == "healthbar_holder" or
											(v201 == "armorbar" or v201 == "armorbar_holder") or
											(v201 == "reloadbar" or v201 == "reloadbar_holder") then
											v202.BackgroundTransparency = t195._fadeAmount
										elseif v201 == "corners" then
											for _, v203 in ipairs(v202:GetChildren()) do
												v203.BackgroundTransparency = t195._fadeAmount
											end
										end
									end
								end
							end
							local Skeleton = t56.Skeleton
							local Skeleton_Outline = t56.Skeleton_Outline
							if t195.skeleton then
								if Skeleton then
									Skeleton = v197
								end
								Skeleton = Skeleton and t84:get_boxy_skeleton(character2) or {}
								for v204, t198 in ipairs(t195.skeleton) do
									local t199 = Skeleton[v204]
									if t199 then
										local v205, t200
										t200, v205 = t84:get_screen_pos(t199[1])
										local v206, t201
										t201, v206 = t84:get_screen_pos(t199[2])
										if v205 or v206 then
											t198.in_line.Visible = true
											t198.in_line.From = (Vector2.new(t200.X, t200.Y))
											t198.in_line.To = (Vector2.new(t201.X, t201.Y))
											t198.in_line.Color = t56.Skeleton_Color.Color
											local in_line = t198.in_line
											local _fadeAmount2 = t195._fadeAmount
											if not _fadeAmount2 then
												_fadeAmount2 = 0
											end
											in_line.Transparency = 1 - _fadeAmount2
											if Skeleton_Outline then
												t198.out.Visible = true
												t198.out.From = (Vector2.new(t200.X, t200.Y))
												t198.out.To = (Vector2.new(t201.X, t201.Y))
												t198.out.Color = (Color3.new(0, 0, 0))
												local out = t198.out
												local _fadeAmount3 = t195._fadeAmount
												if not _fadeAmount3 then
													_fadeAmount3 = 0
												end
												out.Transparency = 1 - _fadeAmount3
											else
												t198.out.Visible = false
											end
										else
											t198.in_line.Visible = false
											t198.out.Visible = false
										end
									else
										t198.in_line.Visible = false
										t198.out.Visible = false
									end
								end
							end
							local Headdot = t56.Headdot
							if t195.headdot and t195.headdot_out then
								if Headdot and v197 then
									local Head3 = (character2:FindFirstChild("Head"))
									if Head3 then
										local v207, t202
										t202, v207 = t84:get_screen_pos(Head3.Position)
										if v207 then
											local Magnitude3 = (CurrentCamera2.CFrame.Position - Head3.Position).Magnitude
											local Headdot_Size = t56.Headdot_Size
											if not Headdot_Size then
												Headdot_Size = 1
											end
											local v208 = 800 / Magnitude3 * Headdot_Size
											t195.headdot.Visible = true
											t195.headdot.Position = (Vector2.new(t202.X, t202.Y))
											t195.headdot.Radius = v208
											local headdot = t195.headdot
											local Headdot_Color = t56.Headdot_Color
											Headdot_Color = Headdot_Color and
												t56.Headdot_Color.Color or Color3.new(1, 1, 1)
											headdot.Color = Headdot_Color
											local headdot2 = t195.headdot
											local _fadeAmount4 = t195._fadeAmount
											if not _fadeAmount4 then
												_fadeAmount4 = 0
											end
											headdot2.Transparency = 1 - _fadeAmount4
											if t56.Headdot_Outline then
												t195.headdot_out.Visible = true
												t195.headdot_out.Position = (Vector2.new(t202.X, t202.Y))
												t195.headdot_out.Radius = v208
												t195.headdot_out.Color = (Color3.new(0, 0, 0))
												local headdot_out = t195.headdot_out
												local _fadeAmount5 = t195._fadeAmount
												if not _fadeAmount5 then
													_fadeAmount5 = 0
												end
												headdot_out.Transparency = 1 - _fadeAmount5
											else
												t195.headdot_out.Visible = false
											end
										else
											t195.headdot.Visible = false
											t195.headdot_out.Visible = false
										end
									else
										t195.headdot.Visible = false
										t195.headdot_out.Visible = false
									end
								else
									t195.headdot.Visible = false
									t195.headdot_out.Visible = false
								end
							end
							if v197 then
								local v209 = (f26(t194))
								local Color11 = nil
								if v209 == "Enemy" then
									Color11 = t56.Enemy_Color.Color
								elseif v209 == "Friendly" then
									Color11 = t56.Friendly_Color.Color
								end
								local name3 = objects5.name
								if not Color11 then
									Color11 = t56.Name_Color.Color
								end
								name3.TextColor3 = Color11
								objects5.box_color.Color = t56.Box_Color.Color
								objects5.distance.TextColor3 = t56.Distance_Color.Color
								local ForceField = t56.ForceField
								if ForceField then
									ForceField = not (character2:FindFirstChildOfClass("ForceField") == nil)
								end
								if objects5.ff_text.Visible ~= ForceField then
									objects5.ff_text.Visible = ForceField
								end
								if ForceField then
									objects5.ff_text.TextColor3 = t56.ForceField_Color.Color
								end
								if CharStats then
									t193 = (CharStats:FindFirstChild(t194.Name))
								else
									t193 = CharStats
								end
								if t193 then
									t193 = (t193:FindFirstChild("Downed"))
								end
								local Downed = t56.Downed
								if Downed then
									Downed = not (t193 == nil)
								end
								if Downed then
									Downed = t193.Value == true
								end
								if objects5.downed_text.Visible ~= Downed then
									objects5.downed_text.Visible = Downed
								end
								if Downed then
									objects5.downed_text.TextColor3 = t56.Downed_Color.Color
								end
								local combat_zone_text = objects5.combat_zone_text
								local CombatZone = t56.CombatZone
								if CombatZone then
									CombatZone = not (getgenv().CurrentZones == nil)
								end
								if CombatZone then
									CombatZone = not (next(getgenv().CurrentZones) == nil)
								end
								local Visible = combat_zone_text.Visible
								local CombatZone2 = t56.CombatZone
								if CombatZone2 then
									CombatZone2 = CombatZone
								end
								if Visible ~= CombatZone2 then
									local CombatZone3 = t56.CombatZone
									if CombatZone3 then
										CombatZone3 = CombatZone
									end
									combat_zone_text.Visible = CombatZone3
								end
								if t56.CombatZone and CombatZone then
									combat_zone_text.TextColor3 = t56.CombatZone_Color.Color
								end
								if not t195._leaderstats then
									t195._leaderstats = (t194:FindFirstChild("leaderstats"))
								end
								local t203 = t195._leaderstats
								if t203 then
									t203 = (t195._leaderstats:FindFirstChild("Level"))
								end
								objects5.level_text.TextColor3 = t56.Level_Color.Color
								local Level = t56.Level
								if Level then
									Level = not (t203 == nil)
								end
								if objects5.level_text.Visible ~= Level then
									objects5.level_text.Visible = Level
								end
								if Level then
									local v210 = "L" .. tostring(t203.Value)
									if objects5.level_text.Text ~= v210 then
										objects5.level_text.Text = v210
									end
								end
								if t195.armor_changed then
									t195.armor_changed()
								end
								if CharStats then
									t192 = (CharStats:FindFirstChild(t194.Name))
								else
									t192 = CharStats
								end
								if t192 then
									t192 = (t192:FindFirstChild("Crouching"))
								end
								local Crouching = t56.Crouching
								if Crouching then
									Crouching = not (t192 == nil)
								end
								if Crouching then
									Crouching = t192.Value == true
								end
								local crouch_text = objects5.crouch_text
								if Crouching then
									if crouch_text.Parent ~= holder2 then
										crouch_text.Parent = holder2
									end
									if not crouch_text.Visible then
										crouch_text.Visible = true
									end
								else
									if crouch_text.Parent ~= t84.cache then
										crouch_text.Parent = t84.cache
									end
									if crouch_text.Visible then
										crouch_text.Visible = false
									end
								end
								if Characters then
									t191 = (Characters:FindFirstChild(t194.Name))
								else
									t191 = Characters
								end
								if t191 then
									t191 = (t191:FindFirstChildOfClass("Tool"))
								end
								local Weapon = t56.Weapon
								if Weapon then
									Weapon = not (t191 == nil)
								end
								local weapon2 = objects5.weapon
								if Weapon then
									if weapon2.Parent ~= holder2 then
										weapon2.Parent = holder2
									end
									local v211 = "[" .. t191.Name:lower() .. "]"
									if weapon2.Text ~= v211 then
										weapon2.Text = v211
									end
								elseif weapon2.Parent ~= t84.cache then
									weapon2.Parent = t84.cache
								end
								local distance2 = objects5.distance
								v195 = distance2.Parent == holder2
								if v195 then
									v195 = 0 < distance2.TextBounds.Y
								end
								v195 = v195 and distance2.TextBounds.Y + 2 or 0
								local v212 = (new14(0, 0, 1, 5 + v195))
								if weapon2.Position ~= v212 then
									weapon2.Position = v212
								end
								local t204 = nil
								if t191 then
									t204 = (t191:FindFirstChild("Reloading"))
									if not t204 then
										t204 = (t191:FindFirstChild("Values"))
										if t204 then
											t204 = (t204:FindFirstChild("Reloading"))
										end
									end
								end
								v194 = not (t204 == nil)
								if v194 then
									v194 = t204.Value == true
								end
								local _leave7 = false
								if t56.Reloadbar and v194 then
									local v213 = (tick())
									if not t195.reload_active then
										t195.reload_active = true
										t195.reload_start = v213
										t195.reload_tool_name = t191.Name
									end
									local v214 = v213 - t195.reload_start
									local reload_known = t187[t195.reload_tool_name]
									if not reload_known then
										reload_known = t195.reload_known
										if reload_known then
											reload_known = t195.reload_known[t195.reload_tool_name]
										end
									end
									local reloadbar_holder = objects5.reloadbar_holder
									local reload_text = objects5.reload_text
									if reloadbar_holder.Parent ~= holder2 then
										reloadbar_holder.Parent = holder2
									end
									if reload_text.Parent ~= holder2 then
										reload_text.Parent = holder2
									end
									local Color12 = t56.Reload_Color.Color
									objects5.reloadbar.BackgroundColor3 = Color12
									reload_text.TextColor3 = Color12
									if reload_known and 0.3 <= reload_known then
										local v215 = (math.clamp(reload_known - v214, 0, reload_known))
										objects5.reloadbar.Size = (UDim2.new(v215 / reload_known, 0, 1, -2))
										local v216 = (string.format("%.1fs", v215))
										if reload_text.Text ~= v216 then
											reload_text.Text = v216
										end
									else
										objects5.reloadbar.Size = (UDim2.new(1, 0, 1, -2))
										local v217 = (string.format("%.1fs", v214))
										if reload_text.Text ~= v217 then
											reload_text.Text = v217
										end
									end
								else
									if t195.reload_active then
										local v218 = tick() - t195.reload_start
										local reload_known2 = t187[t195.reload_tool_name]
										if not reload_known2 then
											reload_known2 = t195.reload_known
											if reload_known2 then
												reload_known2 = t195.reload_known[t195.reload_tool_name]
											end
										end
										if reload_known2 and v218 < reload_known2 - 0.15 then
											t195.reload_interrupted = true
											t195.reload_interrupted_at = (tick())
										elseif 0.3 <= v218 and not t187[t195.reload_tool_name] then
											local v219 = t195.reload_known
											if not v219 then
												v219 = {}
											end
											t195.reload_known = v219
											t195.reload_known[t195.reload_tool_name] = v218
										end
										t195.reload_active = false
									end
									local reloadbar_holder2 = objects5.reloadbar_holder
									local reload_text2 = objects5.reload_text
									if t195.reload_interrupted then
										local v220 = (tick())
										local reload_interrupted_at = t195.reload_interrupted_at
										if not reload_interrupted_at then
											reload_interrupted_at = 0
										end
										if v220 - reload_interrupted_at < v188 then
											if reloadbar_holder2.Parent ~= holder2 then
												reloadbar_holder2.Parent = holder2
											end
											if reload_text2.Parent ~= holder2 then
												reload_text2.Parent = holder2
											end
											local v221 = (Color3.fromRGB(220, 50, 50))
											objects5.reloadbar.BackgroundColor3 = v221
											reload_text2.TextColor3 = v221
											objects5.reloadbar.Size = (UDim2.new(0, 0, 1, -2))
											if reload_text2.Text == "stopped" then
												_leave7 = true
											else
												reload_text2.Text = "stopped"
												_leave7 = true
											end
										end
									end
									if not _leave7 then
										if t195.reload_interrupted then
											t195.reload_interrupted = false
										end
										if reloadbar_holder2.Parent ~= t84.cache then
											reloadbar_holder2.Parent = t84.cache
										end
										if reload_text2.Parent ~= t84.cache then
											reload_text2.Parent = t84.cache
										end
									end
								end
								local v222 = 0
								local armor_text2 = objects5.armor_text
								local _armor_mult = t195._armor_mult
								if not _armor_mult then
									_armor_mult = 0
								end
								if armor_text2 and armor_text2.Visible and
									(armor_text2.Parent == holder2 and 0.8 < _armor_mult) then
									v222 = armor_text2.TextBounds.Y + v189
								end
								local v223 = v163
								for v224 = 1, #v223 do
									local t205 = objects5[v163[v224]]
									if t205.Visible then
										local v225 = (new14(1, 6, 0, v222))
										if t205.Position ~= v225 then
											t205.Position = v225
										end
										v222 = v222 + t205.TextBounds.Y + v189
									end
								end
								local v226 = (fromOffset(t196.X, t196.Y))
								local v227 = (fromOffset(t197.X, t197.Y))
								if holder2.Position ~= v226 then
									holder2.Position = v226
								end
								if holder2.Size ~= v227 then
									holder2.Size = v227
								end
								if t56.ESPScaleText then
									local v228 = (math.floor(math.clamp(10 - v196 / 200 * 3, 7, 10)))
									local t206 = (table.create(11))
									t206[1] = "name"
									t206[2] = "distance"
									t206[3] = "weapon"
									t206[4] = "health_text"
									t206[5] = "armor_text"
									t206[6] = "ff_text"
									t206[7] = "downed_text"
									t206[8] = "crouch_text"
									t206[9] = "level_text"
									t206[10] = "combat_zone_text"
									t206[11] = "reload_text"
									for _, v229 in ipairs(t206) do
										local t207 = objects5[v229]
										if t207 and t207.TextSize ~= v228 then
											t207.TextSize = v228
										end
									end
								end
								if t56.Health_Text and t56.Healthbar and
									objects5.health_text.Parent == holder2 then
									local v230 = t197.Y
									local humanoid4 = t195.info.humanoid
									if humanoid4 then
										local _ = math.clamp
										v193 = 0 < humanoid4.MaxHealth
										v193 = v193 and
											humanoid4.Health / humanoid4.MaxHealth or 0
										humanoid4 = (math.clamp(v193, 0, 1))
									end
									if not humanoid4 then
										humanoid4 = 1
									end
									local v231 = (math.max(0, (1 - humanoid4) * v230))
									objects5.health_text.Position = (new14(0, -7, 0, v231))
								end
								if t56.Armor_Text and objects5.armor_text.Visible and
									objects5.armor_text.Parent == holder2 then
									local v232 = t197.Y
									local _armor_mult2 = t195._armor_mult
									if not _armor_mult2 then
										_armor_mult2 = 1
									end
									if 0.8 < _armor_mult2 then
										objects5.armor_text.AnchorPoint = (new13(0, 0))
										objects5.armor_text.Position = (new14(1, 6, 0, 0))
									else
										local v233 = (math.max(0, (1 - _armor_mult2) * v232))
										objects5.armor_text.AnchorPoint = (new13(0, 0))
										objects5.armor_text.Position = (new14(1, 6, 0, v233))
									end
								end
								local distance3 = objects5.distance
								local v234 = tostring(math.round(v196)) .. "st"
								if distance3.Text ~= v234 then
									distance3.Text = v234
								end
							end
						elseif holder2.Visible then
							holder2.Visible = false
						end
					end
				end
			end
		end
	end
end

t84.connection = (RunService2.Stepped:Connect(f70))
local v235 = Players3

function t84.unload()
	for _, v236 in v235:GetPlayers() do
		t84:remove_object(v236)
	end
	t84.connection:Disconnect()
	t84.player_added:Disconnect()
	t84.player_removed:Disconnect()
	t84.cache:Destroy()
	t84.screengui:Destroy()
	t84 = nil
end

if t56.Enabled then
	for _, v237 in Players3:GetPlayers() do
		if v237 ~= Players3.LocalPlayer then
			t84:create_object(v237)
		end
	end
end

local function f71(...)
	local _ = 5757 + (-180 + math.modf(3.141592653589793)) + -5494
	local v238 = ...
	if t56.Enabled then
		t84:create_object(v238)
		t84.refresh_elements()
	end
end

t84.player_added = (Players3.PlayerAdded:Connect(f71))

local function f72(p58)
	t84:remove_object(p58)
end

t84.player_removed = (Players3.PlayerRemoving:Connect(f72))
if t56.Enabled then
	t84.refresh_elements()
end
local t208 = {
	SafeEnabled = false,
	RegEnabled = false,
	ShowBox = true,
	ShowName = true,
	ShowDist = true,
	ShowBroken = true
}
local t209 = { Color = fromRGB(255, 255, 255) }
t208.NormalColor = t209
local t210 = { Color = fromRGB(255, 0, 0) }
t208.BrokenColor = t210
local t211 = { Color = fromRGB(255, 255, 255) }
t208.NameColor = t211
local t212 = { Color = fromRGB(255, 255, 255) }
t208.DistColor = t212
t208.MaxDist = 500
local v239 = Players3
local v240 = RunService2
local v241 = f1

local function f73(...)
	local f74, Connect4, CharacterAdded
	local t213 = v101
	local Section = t213.Section
	local t214 = { Name = "Combat", Side = "Left" }
	local t215 = (Section(t213, t214))
	local t216 = v101
	local Section2 = t216.Section
	local t217 = { Name = "Bullet Tracers", Side = "Right" }
	local t218 = (Section2(t216, t217))
	local t219 = v102
	local Section3 = t219.Section
	local t220 = { Name = "Aimbot", Side = "Right" }
	local t221 = (Section3(t219, t220))
	local t222 = {}
	local t223 = { Enabled = false, Active = false, SelectedMethod = "Mouse" }
	local v242 = (table.create(1))
	local v243 = "Head"
	v242[1] = v243
	t223.TargetParts = v242
	t223.DownedCheck = false
	t223.DeadCheck = true
	t223.FFCheck = true
	t223.SwitchDelay = 1.25
	t223.MaxDistance = 500
	t223.HitChance = 45
	v243 = 255
	t223.FOVColor = (Color3.fromRGB(v243, 0, 0))
	local t224 = {}
	v243 = {
		SmoothX = 5,
		SmoothY = 5,
		FOV = 40,
		FOVVis = false,
		PredictX = 0,
		PredictY = 0,
		AutoPred = false,
		VisCheck = true,
		Sort = "distance",
		Sticky = false,
		Easing = "linear"
	}
	t224.Mouse = v243
	v243 = {
		SmoothX = 50,
		SmoothY = 50,
		FOV = 40,
		FOVVis = false,
		PredictX = 0,
		PredictY = 0,
		AutoPred = false,
		VisCheck = true,
		Sort = "distance",
		Sticky = false,
		Easing = "linear"
	}
	t224.Camera = v243
	t223.Methods = t224
	t222.Aimbot = t223

	local function f75(p59)
		local v244 = t222.Aimbot.Methods[p59]
		local ConfigFlags = t5.ConfigFlags

		local function f76()
			if ConfigFlags.aim_sx then
				ConfigFlags.aim_sx(v244.SmoothX)
			end
			if ConfigFlags.aim_sy then
				ConfigFlags.aim_sy(v244.SmoothY)
			end
			if ConfigFlags.aim_fov then
				ConfigFlags.aim_fov(v244.FOV)
			end
			if ConfigFlags.aim_fvis then
				ConfigFlags.aim_fvis(v244.FOVVis)
			end
			if ConfigFlags.aim_predx then
				ConfigFlags.aim_predx(v244.PredictX)
			end
			if ConfigFlags.aim_predy then
				ConfigFlags.aim_predy(v244.PredictY)
			end
			if ConfigFlags.aim_apred then
				ConfigFlags.aim_apred(v244.AutoPred)
			end
			if ConfigFlags.aim_vis then
				ConfigFlags.aim_vis(v244.VisCheck)
			end
			if ConfigFlags.aim_sort then
				ConfigFlags.aim_sort(v244.Sort)
			end
			if ConfigFlags.aim_sticky then
				ConfigFlags.aim_sticky(v244.Sticky)
			end
			if ConfigFlags.aim_ease then
				ConfigFlags.aim_ease(v244.Easing)
			end
		end

		pcall(f76)
	end

	local function f77()
		local _ = 5418 + bit32.rrotate(511, 30) + -7427
		return Stats.Network.ServerStatsItem["Data Ping"]:GetValue() / 1000
	end

	v243 = nil

	local function f78()
		task.wait(3)
		if not getgc then
			return
		end
		local _ = next
		local v245, v246
		v246, v245 = getgc(true)
		while true do
			local v247
			v245, v247 = next(v246, v245)
			if v245 == nil then
				break
			end
			if type(v247) == "table" and type(rawget(v247, "trajectory")) == "function" and
				type(rawget(v247, "spring")) == "function" then
				v243 = v247
				break
			end
		end
	end

	task.spawn(f78)

	local function f79()
		local Character3 = LocalPlayer2.Character
		if not Character3 then
			return nil
		end
		local FindFirstChildOfClass2 = (Character3:FindFirstChildOfClass("Tool"))
		if not FindFirstChildOfClass2 then
			return nil
		end
		local v248 = (FindFirstChildOfClass2:FindFirstChild("Config"))
		if not v248 then
			v248 = (FindFirstChildOfClass2:FindFirstChild("BulletConfig"))
		end
		if not v248 then
			return nil
		end
		local v249, v250
		v250, v249 = pcall(require, v248)
		if v250 and type(v249) == "table" then
			return v249
		end
		return nil
	end

	local function f80()
		local t225 = (f79())
		if t225 and t225.BulletSettings and t225.BulletSettings.Velocity then
			return t225.BulletSettings.Velocity * 1.5
		end
		return 400
	end

	local function f81()
		local _ = bit32.band
		local v251 = true
		if v251 then
			v251 = 109
		end
		local _ = 8117 + bit32.band(v251) + -8191
		local t226 = (f79())
		if t226 and t226.BulletSettings and t226.BulletSettings.Acceleration then
			local Acceleration = t226.BulletSettings.Acceleration
			if typeof(Acceleration) == "Vector3" then
				return Acceleration.Y
			end
		end
		return -workspace.Gravity * 0.5
	end

	local function f82(p60)
		local Position20 = CurrentCamera.CFrame.Position
		local Position21 = p60.Position
		local Velocity = p60.Velocity
		local v252 = (f77())
		local v253 = (f80())
		local v254 = (f81())
		local t227 = Position21 + Velocity * v252
		if v243 and type(v243.trajectory) == "function" then
			local v255, t228, v256
			v256, t228, v255 = pcall(
				v243.trajectory,
				Position20.X,
				Position20.Y,
				Position20.Z,
				t227.X,
				t227.Y,
				t227.Z,
				Velocity.X,
				Velocity.Y,
				Velocity.Z,
				v253
			)
			if v256 and t228 and (typeof(t228) == "Vector3" and v255) and v255 == v255 then
				return Position20 + t228.Unit * 1000 + Vector3.new(0, 0.5 * math.abs(v254) * (v255 * v255), 0)
			end
		end
		local v257 = (t227 - Position20).Magnitude / v253
		local v258 = 0
		local v259 = t227
		while true do
			v258 = v258 + 1
			if not (v258 <= 4) then
				break
			end
			v259 = t227 + Velocity * v257
			v257 = (v259 - Position20).Magnitude / v253
		end
		return v259 + Vector3.new(0, 0.5 * math.abs(v254) * (v257 * v257), 0)
	end

	local function f83(p61, p62)
		local t229 = {}
		local GetMouseLocation = (UserInputService:GetMouseLocation())
		local _ = next
		local v260, v261
		v261, v260 = Players:GetPlayers()
		while true do
			local _continue9 = false
			local t230
			v260, t230 = next(v261, v260)
			if v260 == nil then
				break
			end
			if not (t230 == LocalPlayer2 or not t230.Character) then
				local Character4 = t230.Character
				local FindFirstChildOfClass3 = (Character4:FindFirstChildOfClass("Humanoid"))
				if FindFirstChildOfClass3 and not (FindFirstChildOfClass3.Health <= 0) and
					not (t222.Aimbot.DeadCheck and FindFirstChildOfClass3.Health <= 0) and
					not (t222.Aimbot.FFCheck and Character4:FindFirstChildOfClass("ForceField")) then
					if t222.Aimbot.DownedCheck then
						local t231 = (ReplicatedStorage:FindFirstChild("CharStats"))
						if t231 then
							t231 = (t231:FindFirstChild(t230.Name))
						end
						if t231 then
							t231 = (t231:FindFirstChild("Downed"))
						end
						if t231 and t231.Value == true then
							_continue9 = true
						end
					end
					if _continue9 then
						continue
					end
					local TargetParts = t222.Aimbot.TargetParts
					local t232, v262, v263, f84
					f84, v263, v262 = pairs(TargetParts)
					local v264 = p62
					while true do
						local _continue10 = false
						local v265
						v262, v265 = f84(v263, v262)
						if v262 == nil then
							break
						end
						local FindFirstChild6 = (Character4:FindFirstChild(v265))
						if FindFirstChild6 then
							if p61.VisCheck then
								local v266 = (Ray.new(
									CurrentCamera.CFrame.Position,
									(FindFirstChild6.Position - CurrentCamera.CFrame.Position).Unit * 1000
								))
								local workspace4 = workspace
								local FindPartOnRayWithIgnoreList3 = workspace4.FindPartOnRayWithIgnoreList
								local v267 = (table.create(2))
								v267[1] = LocalPlayer2.Character
								v267[2] = Character4
								if FindPartOnRayWithIgnoreList3(workspace4, v266, v267) then
									_continue10 = true
								end
							end
							if _continue10 then
								continue
							end
							local v268, t233
							t233, v268 = CurrentCamera:WorldToViewportPoint(FindFirstChild6.Position)
							if v268 then
								local Magnitude4 = (GetMouseLocation - Vector2.new(t233.X, t233.Y)).Magnitude
								if Magnitude4 < v264 then
									t232 = FindFirstChild6
									v264 = Magnitude4
								end
							end
						end
					end
					if t232 then
						local Magnitude5 = (LocalPlayer2.Character.HumanoidRootPart.Position - t232.Position).Magnitude
						if not (0 < t222.Aimbot.MaxDistance and
							t222.Aimbot.MaxDistance < Magnitude5) then
							local _ = table.insert
							local t234 = {
								plr = t230,
								part = t232,
								fovDist = v264,
								worldDist = Magnitude5,
								hp = FindFirstChildOfClass3.Health
							}
							table.insert(t229, t234)
						end
					end
				end
			end
		end
		if #t229 == 0 then
			return nil, nil
		end

		local function f85(p63, p64)
			local v269
			if p61.Sort == "fov" then
				v269 = p63.fovDist < p64.fovDist
				return v269
			end
			local v270
			if p61.Sort == "health" then
				v270 = p63.hp < p64.hp
				return v270
			end
			local v271
			v271 = p63.worldDist < p64.worldDist
			return v271
		end

		table.sort(t229, f85)
		return t229[1].plr, t229[1].part
	end

	local v272, v273
	local v274 = 0
	local t235 = {}

	local function f86(p65)
		return p65
	end

	t235.linear = f86

	f86 = function(p66)
		return p66 * p66
	end

	t235.easein = f86

	f86 = function(p67)
		return 1 - (1 - p67) * (1 - p67)
	end

	t235.easeout = f86

	f86 = function(p68)
		return p68 * p68 * (3 - 2 * p68)
	end

	t235.smoothstep = f86
	f86 = nil

	local function f87()
		if f86 then
			return
		end
		f86 = (Drawing.new("Circle"))
		f86.Thickness = 1
		f86.NumSides = 30
		f86.Color = (Color3.new(1, 0, 0))
		f86.Visible = false
	end

	local function f88(...)
		if not t222.Aimbot.Enabled then
			if f86 then
				f86.Visible = false
			end
			return
		end
		f87()
		local GetMouseLocation2 = (UserInputService:GetMouseLocation())
		local t236 = t222.Aimbot.Methods[t222.Aimbot.SelectedMethod]
		local v275 = t222.Aimbot.Enabled
		if v275 then
			v275 = t236.FOVVis
		end
		f86.Visible = v275
		f86.Color = t222.Aimbot.FOVColor
		f86.Position = GetMouseLocation2
		f86.Radius = t236.FOV
		if not (t222.Aimbot.Enabled and t222.Aimbot.Active) then
			v272 = nil
			return
		end
		if not (t236.Sticky and v272) then
			local v276, v277
			v277, v276 = f83(t236, t236.FOV)
			if v277 == v272 then
				v273 = v276
			else
				local v278 = (tick())
				if 0 < t222.Aimbot.SwitchDelay and v272 ~= nil and
					v278 - v274 < t222.Aimbot.SwitchDelay then
					local t237 = v272.Character
					if t237 then
						t237 = (t237:FindFirstChildOfClass("Humanoid"))
					end
					if not (t237 and t237 and 0 < t237.Health) then
						v272 = v277
						v273 = v276
						v274 = v278
					end
				else
					v272 = v277
					v273 = v276
					if v277 ~= nil then
						v274 = (tick())
					end
				end
			end
		end
		local v279, v280
		if v272 and v273 then
			local Position22 = v273.Position
			if t236.AutoPred then
				Position22 = (f82(v273))
			else
				local Velocity2 = v273.Velocity
				local PredictX = t236.PredictX
				if not PredictX then
					PredictX = 0
				end
				local PredictY = t236.PredictY
				if not PredictY then
					PredictY = 0
				end
				if not (PredictX == 0 and PredictY == 0) then
					local t238 = (Vector3.new(Velocity2.X, 0, Velocity2.Z))
					v280 = 0.01 < t238.Magnitude
					v280 = v280 and t238.Unit or Vector3.new(0, 0, 0)
					local new18 = Vector3.new
					v279 = 0 < Velocity2.Y
					v279 = v279 and PredictY or -PredictY
					Position22 = Position22 + v280 * PredictX + new18(0, v279, 0)
				end
			end
			if t222.Aimbot.SelectedMethod == "Mouse" then
				local v281, t239
				t239, v281 = CurrentCamera:WorldToViewportPoint(Position22)
				if v281 then
					local t240 = Vector2.new(t239.X, t239.Y) - GetMouseLocation2
					local v282 = (t235[t236.Easing](math.clamp(t240.Magnitude / t236.FOV, 0, 1)))
					local v283 = (math.clamp(t236.SmoothX / 100, 0.01, 1))
					local v284 = (math.clamp(t236.SmoothY / 100, 0.01, 1))
					if mousemoverel then
						mousemoverel(t240.X * v283 * v282, t240.Y * v284 * v282)
					end
				end
			else
				local v285 = (CFrame.new(CurrentCamera.CFrame.Position, Position22))
				local v286, v287
				v287, v286 = CurrentCamera.CFrame:ToOrientation()
				local v288, v289
				v289, v288 = v285:ToOrientation()
				CurrentCamera.CFrame = CFrame.new(CurrentCamera.CFrame.Position) * CFrame.fromOrientation(
					v287 + (v289 - v287) * math.pow(1 - t236.SmoothY / 105, 3),
					v286 + (v288 - v286) * math.pow(1 - t236.SmoothX / 105, 3),
					0
				)
			end
		end
	end

	RunService.Heartbeat:Connect(f88)
	local Toggle = t221.Toggle
	local t241 = { Name = "Enabled", Flag = "ab_en" }

	function t241.Callback(p69)
		t222.Aimbot.Enabled = p69
	end

	local t242 = (Toggle(t221, t241))
	local Keybind = t242.Keybind
	local t243 = { Flag = "ab_kb", Default = Enum.UserInputType.MouseButton2, Mode = "Hold" }

	function t243.Callback(p70)
		t222.Aimbot.Active = p70
	end

	Keybind(t242, t243)
	local Dropdown = t221.Dropdown
	local t244 = { Name = "Target Parts" }
	local v290 = (table.create(7))
	v290[1] = "Head"
	v290[2] = "Torso"
	v290[3] = "HumanoidRootPart"
	v290[4] = "Left Arm"
	v290[5] = "Right Arm"
	v290[6] = "Left Leg"
	v290[7] = "Right Leg"
	t244.Options = v290
	local v291 = (table.create(1))
	v291[1] = "Head"
	t244.Default = v291
	t244.Multi = true
	t244.Flag = "ab_parts"

	function t244.Callback(p71)
		t222.Aimbot.TargetParts = p71
	end

	Dropdown(t221, t244)
	local Dropdown2 = t221.Dropdown
	local t245 = { Name = "Method to Edit" }
	local v292 = (table.create(2))
	v292[1] = "Mouse"
	v292[2] = "Camera"
	t245.Options = v292
	t245.Default = "Mouse"
	t245.Flag = "method_selector"

	function t245.Callback(p72)
		t222.Aimbot.SelectedMethod = p72
		f75(p72)
	end

	Dropdown2(t221, t245)
	local Slider = t221.Slider
	local t246 = { Name = "Smooth X", Min = 1, Max = 100, Default = 5, Flag = "aim_sx" }

	function t218.Callback(p73)
		t222.Aimbot.Methods[t222.Aimbot.SelectedMethod].SmoothX = p73
	end

	Slider(t221, t246)
	local Slider2 = t221.Slider
	local t247 = { Name = "Smooth Y", Min = 1, Max = 100, Default = 5, Flag = "aim_sy" }

	function t247.Callback(p74)
		t222.Aimbot.Methods[t222.Aimbot.SelectedMethod].SmoothY = p74
	end

	Slider2(t221, t247)
	local Toggle2 = t221.Toggle
	local t248 = { Name = "Show FOV", Flag = "aim_fvis", Default = false }

	function t248.Callback(p75)
		t222.Aimbot.Methods[t222.Aimbot.SelectedMethod].FOVVis = p75
	end

	local t249 = (Toggle2(t221, t248))
	local Colorpicker = t249.Colorpicker
	local t250 = {
		Name = "FOV Color",
		Flag = "aim_fov_color",
		Color = Color3.fromRGB(255, 0, 0),
		Alpha = 0
	}

	function t250.Callback(...)
		local v293 = true
		if v293 then
			v293 = 4
		end
		local v294
		v294 = 1 < v293
		if v294 then
			v294 = (string.len("\2523\128+"))
		end
		local v295 = ...
		t222.Aimbot.FOVColor = v295
		if f86 then
			f86.Color = v295
		end
	end

	Colorpicker(t249, t250)
	local Slider3 = t221.Slider
	local t251 = {
		Name = "FOV",
		Min = 1,
		Max = 600,
		Default = 40,
		Decimal = 1,
		Suffix = "\176",
		Flag = "aim_fov"
	}

	function t251.Callback(p76)
		t222.Aimbot.Methods[t222.Aimbot.SelectedMethod].FOV = p76
	end

	Slider3(t221, t251)
	local Slider4 = t221.Slider
	local t252 = {
		Name = "Switch Delay",
		Flag = "aim_switch_delay",
		Min = 0,
		Max = 3000,
		Default = 1250,
		Decimal = 1,
		Suffix = "ms"
	}

	function t252.Callback(p77)
		t222.Aimbot.SwitchDelay = p77 / 1000
	end

	Slider4(t221, t252)
	local Slider5 = t221.Slider
	local t253 = {
		Name = "Max Distance",
		Flag = "aim_max_dist",
		Min = 0,
		Max = 4000,
		Default = 500,
		Decimal = 1,
		Suffix = "m"
	}

	function t253.Callback(p78)
		t222.Aimbot.MaxDistance = p78
	end

	Slider5(t221, t253)
	local Slider6 = t221.Slider
	local t254 = {
		Name = "Predict X",
		Flag = "aim_predx",
		Min = 0,
		Max = 50,
		Default = 0,
		Decimal = 0.1,
		Suffix = "st"
	}

	function t254.Callback(...)
		local _ = bit32.bxor
		local v296
		v296 = not false
		local v297
		v297 = v296 and 20 or 42
		local _ = 4350 + bit32.bxor(v297, 167, 67) + -4555
		local v298 = ...
		t222.Aimbot.Methods[t222.Aimbot.SelectedMethod].PredictX = v298
	end

	Slider6(t221, t254)
	local Slider7 = t221.Slider
	local t255 = {
		Name = "Predict Y",
		Flag = "aim_predy",
		Min = 0,
		Max = 50,
		Default = 0,
		Decimal = 0.1,
		Suffix = "st"
	}

	function t255.Callback(p79)
		t222.Aimbot.Methods[t222.Aimbot.SelectedMethod].PredictY = p79
	end

	Slider7(t221, t255)
	local Toggle3 = t221.Toggle
	local t256 = { Name = "Auto Prediction", Flag = "aim_apred" }

	function t256.Callback(p80)
		t222.Aimbot.Methods[t222.Aimbot.SelectedMethod].AutoPred = p80
	end

	Toggle3(t221, t256)
	local Toggle4 = t221.Toggle
	local t257 = { Name = "Visible Check", Flag = "aim_vis" }

	function t257.Callback(...)
		local v299 = ...
		t222.Aimbot.Methods[t222.Aimbot.SelectedMethod].VisCheck = v299
	end

	Toggle4(t221, t257)
	local Toggle5 = t221.Toggle
	local t258 = { Name = "Downed Check", Flag = "aim_downed" }

	function t258.Callback(p81)
		t222.Aimbot.DownedCheck = p81
	end

	Toggle5(t221, t258)
	local Toggle6 = t221.Toggle
	local t259 = { Name = "Dead Check", Flag = "aim_dead", Default = false }

	function t259.Callback(p82)
		t222.Aimbot.DeadCheck = p82
	end

	Toggle6(t221, t259)
	local Toggle7 = t221.Toggle
	local t260 = { Name = "Force Shield Check", Flag = "aim_ffcheck", Default = false }

	function t260.Callback(...)
		local v300 = ...
		t222.Aimbot.FFCheck = v300
	end

	Toggle7(t221, t260)
	local Dropdown3 = t221.Dropdown
	local t261 = { Name = "Sort Mode" }
	local v301 = (table.create(3))
	v301[1] = "distance"
	v301[2] = "fov"
	v301[3] = "health"
	t261.Options = v301
	t261.Default = "distance"
	t261.Flag = "aim_sort"

	function t261.Callback(p83)
		t222.Aimbot.Methods[t222.Aimbot.SelectedMethod].Sort = p83
	end

	Dropdown3(t221, t261)
	local Dropdown4 = t221.Dropdown
	local t262 = { Name = "Easing" }
	local v302 = (table.create(4))
	v302[1] = "linear"
	v302[2] = "easein"
	v302[3] = "easeout"
	v302[4] = "smoothstep"
	t262.Options = v302
	t262.Default = "linear"
	t262.Flag = "aim_ease"

	function t262.Callback(p84)
		t222.Aimbot.Methods[t222.Aimbot.SelectedMethod].Easing = p84
	end

	Dropdown4(t221, t262)
	local Toggle8 = t221.Toggle
	local t263 = { Name = "Sticky Aim", Flag = "aim_sticky" }

	function t263.Callback(p85)
		t222.Aimbot.Methods[t222.Aimbot.SelectedMethod].Sticky = p85
	end

	Toggle8(t221, t263)
	f75("Mouse")
	local t264 = {
		Enabled = false,
		Conn = nil,
		Hidden = {}
	}

	local function f89(p86)
		if not p86 then
			return
		end
		local FindFirstChildOfClass4 = (p86:FindFirstChildOfClass("Tool"))
		if not FindFirstChildOfClass4 then
			return
		end
		local _ = next
		local v303, v304
		v304, v303 = FindFirstChildOfClass4:GetDescendants()
		while true do
			local t265
			v303, t265 = next(v304, v303)
			if v303 == nil then
				break
			end
			if (t265:IsA("SpotLight") or t265:IsA("SurfaceLight") or t265:IsA("PointLight")) and
				t264.Hidden[t265] == nil then
				t264.Hidden[t265] = t265.Enabled
				t265.Enabled = false
			end
		end
	end

	local function f90()
		local _ = next
		local Hidden = t264.Hidden
		local v305 = nil
		while true do
			local v306
			v305, v306 = next(Hidden, v305)
			if v305 == nil then
				break
			end
			local v307 = v305
			local v308 = v306

			local function f91()
				v307.Enabled = v308
			end

			pcall(f91)
		end
		t264.Hidden = {}
	end

	local function f92()
		if t264.Enabled then
			return
		end
		t264.Enabled = true
		t264.Hidden = {}

		local function f93(p87)
			if not p87 then
				return
			end
			f89(p87)

			local function f94(...)
				local v309, v310, v311
				while true do
					v311 = not not true
					if v311 then
						v311 = 206
					end
					v309[29] = 20671 + v311 + -20609
					v310[77] = 52
					v310 = nil
					v309 = nil
					local t266 = ...
					if not t264.Enabled then
						return
					end
					local IsA2 = t266.IsA
					if nil <= nil then
						if IsA2 then
							task.wait(0.1)
							f89(p87)
						end
						return
					end
				end
			end

			p87.ChildAdded:Connect(f94)

			local function f95(p88)
				if not t264.Enabled then
					return
				end
				local _leave11 = false
				local v312
				if not p88:IsA("SpotLight") then
					v312 = not not false
					if not v312 then
						v312 = (string.len("\246\227"))
					end
					if not (p88.IsA or p88:IsA("PointLight")) then
						_leave11 = true
					end
				end
				if not _leave11 then
					task.wait()
					if t264.Hidden[p88] == nil then
						t264.Hidden[p88] = p88.Enabled
						p88.Enabled = false
					end
				end
			end

			p87.DescendantAdded:Connect(f95)
		end

		f93(LocalPlayer2.Character)

		local function f96(...)
			local _ = bit32.bnot
			local v313 = false
			if not v313 then
				v313 = 137
			end
			local _ = -4294956185 + bit32.bnot(v313) + -10971
			local v314 = ...
			if not t264.Enabled then
				return
			end
			t264.Hidden = {}
			task.wait(1)
			f93(v314)
		end

		t264.Conn = (LocalPlayer2.CharacterAdded:Connect(f96))
	end

	local function f97()
		local v315
		v315 = not not true
		local v316
		v316 = v315 and 363 or 271
		local v317
		v317 = v316 == 97
		if not v317 then
			v317 = (string.unpack("<i8", "N\0\0\0\0\0\0\0"))
		end
		if not t264.Enabled then
			return
		end
		t264.Enabled = false
		local checkcaller2 = checkcaller
		t264.Conn:Disconnect()
		t264.Conn = checkcaller2
		f90()
	end

	local t267 = {
		MasterEnabled = false,
		Enabled = false,
		Color = Color3.fromRGB(255, 255, 255),
		TargetColor = Color3.fromRGB(255, 255, 255),
		Alpha = 0.3,
		TargetAlpha = 0.3,
		LerpSpeed = 0.01,
		GlowEnabled = false,
		GlowSize = 1.75,
		ShadingEnabled = false,
		InlineShade = "Default",
		OutlineShade = "Default"
	}
	local t268 = {}
	local t269 = {
		MasterEnabled = false,
		Enabled = false,
		Color = Color3.fromRGB(255, 165, 0),
		TargetColor = Color3.fromRGB(255, 165, 0),
		Alpha = 0.3,
		TargetAlpha = 0.3,
		LerpSpeed = 0.01,
		GlowEnabled = false,
		GlowSize = 1.75,
		ShadingEnabled = false,
		InlineShade = "Default",
		OutlineShade = "Default"
	}
	local t270 = {}

	local function f98()
		return t267.Color
	end

	local function f99(p89)
		local t271 = t268[p89]
		if not t271 then
			return
		end
		if t271.folder and t271.folder.Parent then
			t271.folder:Destroy()
		end
		local _ = ipairs
		local t272 = t271.conns
		if not t272 then
			t272 = {}
		end
		for _, v318 in ipairs(t272) do
			local v319 = v318

			local function f100()
				v319:Disconnect()
			end

			pcall(f100)
		end
		t268[p89] = nil
	end

	local function f101(p90)
		local t273 = t270[p90]
		if not t273 then
			return
		end
		if t273.folder and t273.folder.Parent then
			t273.folder:Destroy()
		end
		local _ = ipairs
		local t274 = t273.conns
		if not t274 then
			t274 = {}
		end
		for _, v320 in ipairs(t274) do
			local v321 = v320

			local function f102()
				v321:Disconnect()
			end

			pcall(f102)
		end
		t270[p90] = nil
	end

	local f103 = nil

	local function f104(p91)
		if not (p91 and p91 ~= LocalPlayer2) then
			return
		end
		local Name2 = p91.Name
		f99(Name2)
		local Character5 = p91.Character
		local Character6 = Character5
		if not Character5 then
			return
		end

		local function f105()
			local v322 = (Character6:WaitForChild("HumanoidRootPart", 8))
			if v322 then
				v322 = (Character6:WaitForChild("Humanoid", 8))
			end
			return v322
		end

		local v323, v324
		v324, v323 = pcall(f105)
		if not (v324 and v323) then
			return
		end
		task.wait(0.1)
		if p91.Character ~= Character6 then
			return
		end
		Character6 = p91.Character
		if not (Character6 and Character6:FindFirstChildOfClass("Humanoid")) then
			return
		end
		local v325 = (Instance.new("Folder"))
		v325.Name = Name2 .. "_CHAMS"
		v325.Parent = (game:GetService("CoreGui"))
		local t275 = {
			folder = v325,
			conns = {},
			inners = {},
			outers = {}
		}
		t268[Name2] = t275
		local v326 = (f98())
		for _, t276 in ipairs(Character6:GetChildren()) do
			if t276:IsA("BasePart") and t276.Name ~= "HumanoidRootPart" then
				local v327 = (Instance.new("BoxHandleAdornment"))
				v327.Name = Name2 .. "_in"
				v327.Parent = v325
				v327.Adornee = t276
				v327.AlwaysOnTop = true
				v327.ZIndex = 1
				v327.Size = t276.Size + Vector3.new(-0.1, -0.1, -0.1)
				v327.Color3 = v326
				v327.Transparency = t267.Alpha
				table.insert(t275.inners, v327)
				local v328 = (Instance.new("BoxHandleAdornment"))
				v328.Name = Name2 .. "_out"
				v328.Parent = v325
				v328.Adornee = t276
				v328.AlwaysOnTop = t267.GlowEnabled
				v328.ZIndex = -1
				v328.Size = t276.Size + Vector3.new(0.1, 0.1, 0.1)
				v328.Color3 = v326
				local GlowEnabled = t267.GlowEnabled
				GlowEnabled = GlowEnabled and t267.Alpha / t267.GlowSize or t267.Alpha
				v328.Transparency = GlowEnabled
				table.insert(t275.outers, v328)
			end
		end
	end

	f103 = function(p92)
		if not (p92 and p92 ~= LocalPlayer2) then
			return
		end
		local Name3 = p92.Name
		f101(Name3)
		local Character7 = p92.Character
		local Character8 = Character7
		if not Character7 then
			return
		end

		local function f106()
			local v329 = (Character8:WaitForChild("HumanoidRootPart", 8))
			if v329 then
				v329 = (Character8:WaitForChild("Humanoid", 8))
			end
			return v329
		end

		local v330, v331
		v331, v330 = pcall(f106)
		if not (v331 and v330) then
			return
		end
		task.wait(0.1)
		if p92.Character ~= Character8 then
			return
		end
		Character8 = p92.Character
		if not (Character8 and Character8:FindFirstChildOfClass("Humanoid")) then
			return
		end
		local v332 = (Instance.new("Folder"))
		v332.Name = Name3 .. "_CHAMS2"
		v332.Parent = (game:GetService("CoreGui"))
		local t277 = {
			folder = v332,
			conns = {},
			inners = {},
			outers = {}
		}
		t270[Name3] = t277
		local Color13 = t269.Color
		for _, t278 in ipairs(Character8:GetChildren()) do
			if t278:IsA("BasePart") and t278.Name ~= "HumanoidRootPart" then
				local v333 = (Instance.new("BoxHandleAdornment"))
				v333.Name = Name3 .. "_in"
				v333.Parent = v332
				v333.Adornee = t278
				v333.AlwaysOnTop = false
				v333.ZIndex = 1
				v333.Size = t278.Size + Vector3.new(0, 0, 0)
				v333.Color3 = Color13
				v333.Transparency = t269.Alpha
				table.insert(t277.inners, v333)
				local v334 = (Instance.new("BoxHandleAdornment"))
				v334.Name = Name3 .. "_out"
				v334.Parent = v332
				v334.Adornee = t278
				v334.AlwaysOnTop = false
				v334.ZIndex = 1
				v334.Size = t278.Size + Vector3.new(0.2, 0.2, 0.2)
				v334.Color3 = Color13
				local GlowEnabled2 = t269.GlowEnabled
				GlowEnabled2 = GlowEnabled2 and t269.Alpha / t269.GlowSize or t269.Alpha
				v334.Transparency = GlowEnabled2
				table.insert(t277.outers, v334)
			end
		end

		local function f107(p93)
			local function f108()
				local function f109()
					p93:WaitForChild("HumanoidRootPart", 8)
					p93:WaitForChild("Humanoid", 8)
				end

				if not pcall(f109) then
					return
				end
				task.wait(0.15)
				if t269.Enabled then
					f103(p92)
				end
			end

			task.spawn(f108)
		end

		local Connect5 = (p92.CharacterAdded:Connect(f107))
		table.insert(t277.conns, Connect5)
	end

	local function f110()
		for _, v335 in ipairs(v239:GetPlayers()) do
			if v335 ~= LocalPlayer2 then
				task.spawn(f104, v335)
			end
		end
	end

	local function f111()
		for v336, _ in pairs(t268) do
			f99(v336)
		end
	end

	local function f112()
		for _, v337 in ipairs(v239:GetPlayers()) do
			if v337 ~= LocalPlayer2 then
				task.spawn(f103, v337)
			end
		end
	end

	local function f113()
		for v338, _ in pairs(t270) do
			f101(v338)
		end
	end

	local t279 = {
		Enabled = false,
		FillColor = Color3.fromRGB(100, 255, 100),
		FillTarget = Color3.fromRGB(100, 255, 100),
		OutlineColor = Color3.fromRGB(255, 255, 255),
		OutlineTarget = Color3.fromRGB(255, 255, 255),
		FillAlpha = 0.5,
		FillTargetAlpha = 0.5,
		OutlineAlpha = 0,
		OutlineTargetAlpha = 0,
		LerpSpeed = 0.01
	}
	local t280 = {}
	local t281 = {
		Enabled = false,
		FillColor = Color3.fromRGB(255, 100, 100),
		FillTarget = Color3.fromRGB(255, 100, 100),
		OutlineColor = Color3.fromRGB(255, 255, 255),
		OutlineTarget = Color3.fromRGB(255, 255, 255),
		FillAlpha = 0.5,
		FillTargetAlpha = 0.5,
		OutlineAlpha = 0,
		OutlineTargetAlpha = 0,
		LerpSpeed = 0.01
	}
	local t282 = {}

	local function f114(...)
		local _ = 22443 + bit32.lrotate(32, 28) + -22442
		local v339 = ...
		local t283 = t280[v339]
		if t283 then
			if t283.hl then
				t283.hl:Destroy()
			end
			if t283.conn then
				t283.conn:Disconnect()
			end
			t280[v339] = nil
		end
		local t284 = t282[v339]
		if t284 then
			if t284.hl then
				t284.hl:Destroy()
			end
			if t284.conn then
				t284.conn:Disconnect()
			end
			t282[v339] = nil
		end
	end

	local f115

	f115 = function(p94)
		if not (p94 and p94 ~= LocalPlayer2) then
			return
		end
		local Name4 = p94.Name
		local t285 = t280[Name4]
		if t285 then
			if t285.hl then
				t285.hl:Destroy()
			end
			if t285.conn then
				t285.conn:Disconnect()
			end
			t280[Name4] = nil
		end
		local Character9 = p94.Character
		if not Character9 then
			return
		end
		local v340 = (Instance.new("Highlight"))
		v340.Name = "HChams_" .. Name4
		v340.Adornee = Character9
		v340.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		v340.FillColor = t279.FillColor
		v340.FillTransparency = t279.FillAlpha
		v340.OutlineColor = t279.OutlineColor
		v340.OutlineTransparency = t279.OutlineAlpha
		v340.Parent = t84.cache
		local t286 = { hl = v340, conn = nil }
		t280[Name4] = t286

		local function f116()
			task.wait(0.2)
			if t279.Enabled then
				f115(p94)
			end
		end

		t286.conn = (p94.CharacterAdded:Connect(f116))
	end

	local f117

	f117 = function(p95)
		if not (p95 and p95 ~= LocalPlayer2) then
			return
		end
		local Name5 = p95.Name
		local t287 = t282[Name5]
		if t287 then
			if t287.hl then
				t287.hl:Destroy()
			end
			if t287.conn then
				t287.conn:Disconnect()
			end
			t282[Name5] = nil
		end
		local Character10 = p95.Character
		if not Character10 then
			return
		end
		local v341 = (Instance.new("Highlight"))
		v341.Name = "HChams2_" .. Name5
		v341.Adornee = Character10
		v341.DepthMode = Enum.HighlightDepthMode.Occluded
		v341.FillColor = t281.FillColor
		v341.FillTransparency = t281.FillAlpha
		v341.OutlineColor = t281.OutlineColor
		v341.OutlineTransparency = t281.OutlineAlpha
		v341.Parent = t84.cache
		local t288 = { hl = v341, conn = nil }
		t282[Name5] = t288

		local function f118()
			task.wait(0.2)
			if t281.Enabled then
				f117(p95)
			end
		end

		t288.conn = (p95.CharacterAdded:Connect(f118))
	end

	local function f119()
		for _, v342 in ipairs(v239:GetPlayers()) do
			if v342 ~= LocalPlayer2 then
				task.spawn(f115, v342)
			end
		end
	end

	local function f120()
		for v343, _ in pairs(t280) do
			local t289 = t280[v343]
			if t289.hl then
				t289.hl:Destroy()
			end
			if t289.conn then
				t289.conn:Disconnect()
			end
			t280[v343] = nil
		end
	end

	local function f121()
		for _, v344 in ipairs(v239:GetPlayers()) do
			if v344 ~= LocalPlayer2 then
				task.spawn(f117, v344)
			end
		end
	end

	local function f122()
		local v345, v346, f123
		f123, v346, v345 = pairs(t282)
		local v347
		while true do
			local t290
			v345, t290 = f123(v346, v345)
			if v345 == nil then
				break
			end
			v347 = not not true
			if v347 then
				v347 = 144
			end
			if t290.hl then
				t290.hl:Destroy()
			end
			if t290.conn then
				t290.conn:Disconnect()
			end
			t282[v345] = nil
		end
	end

	local v348 = nil

	local function f124(p96, p97, p98)
		local v349 = 0
		local Smooth_Fade_OOR = t56.Smooth_Fade_OOR
		local Smooth_Fade_Dead = t56.Smooth_Fade_Dead
		local t291 = LocalPlayer2.Character
		if t291 then
			t291 = (LocalPlayer2.Character:FindFirstChild("HumanoidRootPart"))
		end
		if Smooth_Fade_OOR or Smooth_Fade_Dead then
			local FindFirstChild7 = (v239:FindFirstChild(p96))
			if FindFirstChild7 and FindFirstChild7.Character then
				local HumanoidRootPart2 = (FindFirstChild7.Character:FindFirstChild("HumanoidRootPart"))
				local Humanoid2 = (FindFirstChild7.Character:FindFirstChild("Humanoid"))
				if Smooth_Fade_Dead and Humanoid2 and Humanoid2.Health <= 0 then
					v349 = 1
				elseif Smooth_Fade_OOR and HumanoidRootPart2 and (t291 and t56.Max_Distance) and
					t56.Max_Distance < (HumanoidRootPart2.Position - t291.Position).Magnitude then
					v349 = 1
				end
			else
				v349 = 1
			end
		end
		local fadeAmount = p98.fadeAmount
		if not fadeAmount then
			fadeAmount = 0
		end
		p98.fadeAmount = fadeAmount
		if Smooth_Fade_OOR or Smooth_Fade_Dead then
			p98.fadeAmount = (math.clamp(
				p98.fadeAmount + (v349 - p98.fadeAmount) * p97 * 5,
				0,
				1
			))
			if math.abs(p98.fadeAmount - v349) < 0.01 then
				p98.fadeAmount = v349
			end
		else
			p98.fadeAmount = 0
		end
		return p98.fadeAmount
	end

	local function f125()
		if v348 then
			return
		end

		local function f126(p99)
			if not t267.MasterEnabled then
				for _, t292 in pairs(t280) do
					if t292.hl then
						t292.hl.Enabled = false
					end
				end
				for _, t293 in pairs(t282) do
					if t293.hl then
						t293.hl.Enabled = false
					end
				end
				return
			end
			if t279.Enabled then
				local v350 = (math.clamp(p99 / t279.LerpSpeed, 0, 1))
				t279.FillColor = (t279.FillColor:Lerp(t279.FillTarget, v350))
				t279.OutlineColor = (t279.OutlineColor:Lerp(t279.OutlineTarget, v350))
				t279.FillAlpha = t279.FillAlpha + (t279.FillTargetAlpha - t279.FillAlpha) * v350
				t279.OutlineAlpha = t279.OutlineAlpha + (t279.OutlineTargetAlpha - t279.OutlineAlpha) * v350
				pairs(t280)
			else
				for _, t294 in pairs(t280) do
					if t294.hl then
						t294.hl.Enabled = false
					end
				end
			end
			if t281.Enabled then
				local v351 = (math.clamp(p99 / t281.LerpSpeed, 0, 1))
				t281.FillColor = (t281.FillColor:Lerp(t281.FillTarget, v351))
				t281.OutlineColor = (t281.OutlineColor:Lerp(t281.OutlineTarget, v351))
				t281.FillAlpha = t281.FillAlpha + (t281.FillTargetAlpha - t281.FillAlpha) * v351
				t281.OutlineAlpha = t281.OutlineAlpha + (t281.OutlineTargetAlpha - t281.OutlineAlpha) * v351
				for v352, t295 in pairs(t282) do
					if t295.hl then
						local v353 = (f124(v352, p99, t295))
						if 0.99 <= v353 then
							t295.hl.Enabled = false
						else
							t295.hl.Enabled = true
							t295.hl.FillColor = t281.FillColor
							t295.hl.FillTransparency = t281.FillAlpha + v353 * (1 - t281.FillAlpha)
							t295.hl.OutlineColor = t281.OutlineColor
							t295.hl.OutlineTransparency = t281.OutlineAlpha + v353 * (1 - t281.OutlineAlpha)
						end
					end
				end
			else
				pairs(t282)
			end
		end

		v348 = (v240.RenderStepped:Connect(f126))
	end

	local v354 = nil

	local function f127()
		local _
		_ = not not true
		local v355 = v354
		if v355 then
			return
		end

		local function f128(p100)
			if not (t267.Enabled or t269.Enabled) then
				return
			end
			if not t267.MasterEnabled then
				for _, t296 in pairs(t268) do
					if t296.folder and t296.folder.Parent then
						local inners = t296.inners
						for v356 = 1, #inners do
							t296.inners[v356].Visible = false
						end
						local outers = t296.outers
						for v357 = 1, #outers do
							t296.outers[v357].Visible = false
						end
					end
				end
				for _, t297 in pairs(t270) do
					if t297.folder and t297.folder.Parent then
						local inners2 = t297.inners
						for v358 = 1, #inners2 do
							t297.inners[v358].Visible = false
						end
						local outers2 = t297.outers
						for v359 = 1, #outers2 do
							t297.outers[v359].Visible = false
						end
					end
				end
				return
			end
			local v360 = (math.clamp(p100 / t267.LerpSpeed, 0, 1))
			t267.Color = (t267.Color:Lerp(t267.TargetColor, v360))
			t267.Alpha = t267.Alpha + (t267.TargetAlpha - t267.Alpha) * v360
			local v361 = (math.clamp(p100 / t269.LerpSpeed, 0, 1))
			t269.Color = (t269.Color:Lerp(t269.TargetColor, v361))
			t269.Alpha = t269.Alpha + (t269.TargetAlpha - t269.Alpha) * v361
			local v362, v363, Alpha
			if t267.Enabled then
				local Color14 = t267.Color
				local Alpha2 = t267.Alpha
				local GlowEnabled3 = t267.GlowEnabled
				if GlowEnabled3 then
					Alpha = t267.Alpha / t267.GlowSize
				else
					Alpha = GlowEnabled3
				end
				if not Alpha then
					Alpha = t267.Alpha
				end
				local ShadingEnabled = t267.ShadingEnabled
				ShadingEnabled = ShadingEnabled and t267.InlineShade or "Default"
				local ShadingEnabled2 = t267.ShadingEnabled
				ShadingEnabled2 = ShadingEnabled2 and t267.OutlineShade or "Default"
				for v364, t298 in pairs(t268) do
					if t298.folder and t298.folder.Parent then
						local inners3 = t298.inners
						if inners3 then
							inners3 = t298.inners[1]
						end
						if inners3 and
							not (inners3.Parent and inners3.Adornee and inners3.Adornee.Parent) then
							local FindFirstChild8 = (v239:FindFirstChild(v364))
							if FindFirstChild8 then
								task.spawn(f104, FindFirstChild8)
							end
						else
							local inners4 = t298.inners
							local v365 = (f124(v364, p100, t298))
							v363 = v365 < 0.99
							for v366 = 1, #inners4 do
								local v367 = inners4[v366]
								v367.Visible = v363
								v367.Color3 = Color14
								v367.Transparency = Alpha2 + v365 * (1 - Alpha2)
								v367.Shading = ShadingEnabled
							end
							local outers3 = t298.outers
							for v368 = 1, #outers3 do
								local t299 = outers3[v368]
								if v363 then
									v362 = GlowEnabled3
								else
									v362 = v363
								end
								t299.Visible = v362
								if t299.Visible and t299.Adornee then
									local GlowSize = t267.GlowSize
									t299.Size = t299.Adornee.Size + Vector3.new(
										0.1 * GlowSize,
										0.1 * GlowSize,
										0.1 * GlowSize
									)
								end
								t299.Color3 = Color14
								t299.AlwaysOnTop = GlowEnabled3
								t299.Transparency = Alpha + v365 * (1 - Alpha)
								t299.Shading = ShadingEnabled2
							end
						end
					else
						local FindFirstChild9 = (v239:FindFirstChild(v364))
						if FindFirstChild9 then
							task.spawn(f104, FindFirstChild9)
						end
					end
				end
			end
			local v369, v370, Alpha3
			if t269.Enabled then
				local Color15 = t269.Color
				local Alpha4 = t269.Alpha
				local GlowEnabled4 = t269.GlowEnabled
				if GlowEnabled4 then
					Alpha3 = (math.max(0, t269.Alpha / t269.GlowSize))
				else
					Alpha3 = GlowEnabled4
				end
				if not Alpha3 then
					Alpha3 = t269.Alpha
				end
				local ShadingEnabled3 = t269.ShadingEnabled
				ShadingEnabled3 = ShadingEnabled3 and t269.InlineShade or "Default"
				local ShadingEnabled4 = t269.ShadingEnabled
				ShadingEnabled4 = ShadingEnabled4 and t269.OutlineShade or "Default"
				for v371, t300 in pairs(t270) do
					if t300.folder and t300.folder.Parent then
						local inners5 = t300.inners
						if inners5 then
							inners5 = t300.inners[1]
						end
						if inners5 and
							not (inners5.Parent and inners5.Adornee and inners5.Adornee.Parent) then
							local FindFirstChild10 = (v239:FindFirstChild(v371))
							if FindFirstChild10 then
								task.spawn(f103, FindFirstChild10)
							end
						else
							local inners6 = t300.inners
							local v372 = (f124(v371, p100, t300))
							v370 = v372 < 0.99
							for v373 = 1, #inners6 do
								local v374 = inners6[v373]
								v374.Visible = v370
								v374.Color3 = Color15
								v374.Transparency = Alpha4 + v372 * (1 - Alpha4)
								v374.Shading = ShadingEnabled3
							end
							local outers4 = t300.outers
							for v375 = 1, #outers4 do
								local t301 = outers4[v375]
								if v370 then
									v369 = GlowEnabled4
								else
									v369 = v370
								end
								t301.Visible = v369
								if t301.Visible and t301.Adornee then
									local GlowSize2 = t269.GlowSize
									t301.Size = t301.Adornee.Size + Vector3.new(
										0.1 * GlowSize2,
										0.1 * GlowSize2,
										0.1 * GlowSize2
									)
								end
								t301.Color3 = Color15
								t301.AlwaysOnTop = false
								t301.Transparency = Alpha3 + v372 * (1 - Alpha3)
								t301.Shading = ShadingEnabled4
							end
						end
					else
						local FindFirstChild11 = (v239:FindFirstChild(v371))
						if FindFirstChild11 then
							task.spawn(f103, FindFirstChild11)
						end
					end
				end
			end
		end

		v354 = (v355:Connect(f128))
	end

	local function f129()
		if v354 then
			v354:Disconnect()
			v354 = nil
		end
	end

	local function f130(p101)
		f99(p101.Name)
		f101(p101.Name)
		f114(p101.Name)
	end

	v239.PlayerRemoving:Connect(f130)

	local function f131(p102)
		local function f132(p103)
			local function f133()
				local function f134()
					p103:WaitForChild("HumanoidRootPart", 8)
					p103:WaitForChild("Humanoid", 8)
				end

				if not pcall(f134) then
					return
				end
				task.wait(0.15)
				if t267.Enabled then
					f104(p102)
				end
				if t269.Enabled then
					f103(p102)
				end
				if t279.Enabled then
					f115(p102)
				end
				if t281.Enabled then
					f117(p102)
				end
			end

			task.spawn(f133)
		end

		p102.CharacterAdded:Connect(f132)
		if p102.Character then
			f132(p102.Character)
		end
	end

	v239.PlayerAdded:Connect(f131)
	local v376, v377, f135
	f135, v377, v376 = ipairs(v239:GetPlayers())
	local HideBody, f136, t302, f137, t303, t304
	while true do
		local t305
		v376, t305 = f135(v377, v376)
		t304 = f74
		t303 = Connect4
		f137 = CharacterAdded
		t302 = nil
		f136 = nil
		HideBody = nil
		if v376 == nil then
			break
		end
		local v378 = t305

		f74 = function(...)
			local v379 = ...

			local function f138()
				local function f139()
					v379:WaitForChild("HumanoidRootPart", 8)
					v379:WaitForChild("Humanoid", 8)
				end

				if not pcall(f139) then
					return
				end
				task.wait(0.15)
				if t267.Enabled then
					f104(v378)
				end
				local _ = 11250 + (bit32.lrotate(17, 10) + math.modf(3.141592653589793)) + -28659
				if t269.Enabled then
					f103(v378)
				end
				if t279.Enabled then
					f115(v378)
				end
				if t281.Enabled then
					f117(v378)
				end
			end

			task.spawn(f138)
		end

		CharacterAdded = t305.CharacterAdded
		Connect4 = CharacterAdded.Connect
		Connect4(CharacterAdded, f74)
	end
	local t306 = v103
	local Section4 = t306.Section
	local t307 = { Name = "Visuals", Side = "Left" }
	local v380 = (Section4(t306, t307))
	local t308 = v103
	local Section5 = t308.Section
	t304 = { Name = "Chams", Side = "Right" }
	local v381 = (Section5(t308, t304))
	local t309 = v105
	t304 = t309
	local Section6 = t309.Section
	t303 = { Name = "Misc", Side = "Left" }
	local t310 = (Section6(t304, t303))
	t304 = false
	t303 = nil
	f137 = nil

	local function f140(p104)
		if not (p104 and p104:FindFirstChild("Head")) then
			return
		end
		local v382 = (ReplicatedStorage:FindFirstChild("Events"))
		local FindFirstChild12
		if v382 then
			FindFirstChild12 = (v382:FindFirstChild("XMHH.2"))
		else
			FindFirstChild12 = v382
		end
		if v382 then
			v382 = (v382:FindFirstChild("XMHH2.2"))
		end
		if not (FindFirstChild12 and v382) then
			return
		end
		local t311 = { "??", (tick()) }
		local v383 = LocalPlayer2.Character
		if v383 then
			v383 = (LocalPlayer2.Character:FindFirstChildOfClass("Tool"))
		end
		t311[3] = v383
		t311[4] = "43TRFWX"
		t311[5] = "Normal"
		t311[6] = (tick())
		t311[7] = true
		local InvokeServer = (FindFirstChild12:InvokeServer(unpack(t311)))
		task.wait(0.3)
		local v384 = LocalPlayer2.Character
		if v384 then
			v384 = (LocalPlayer2.Character:FindFirstChildOfClass("Tool"))
		end
		if v384 then
			local v385 = (v384:FindFirstChild("WeaponHandle"))
			if not v385 then
				v385 = (v384:FindFirstChild("Handle"))
			end
			if not v385 then
				v385 = (LocalPlayer2.Character:FindFirstChild("Right Arm"))
			end
			if v385 and p104:FindFirstChild("Head") then
				local t312 = {
					"??",
					tick(),
					v384,
					"2389ZFX34",
					InvokeServer,
					false,
					v385,
					p104:FindFirstChild("Head"),
					p104,
					LocalPlayer2.Character:FindFirstChild("HumanoidRootPart").Position,
					p104:FindFirstChild("Head").Position
				}
				v382:FireServer(unpack(t312))
			end
		end
	end

	local v386 = 20

	f137 = function()
		local function f141()
			if not t304 then
				return
			end
			local t313 = LocalPlayer2.Character
			if t313 then
				t313 = (t313:FindFirstChild("HumanoidRootPart"))
			end
			local FindFirstChildOfClass5, HumanoidRootPart3
			if t313 then
				for _, t314 in ipairs(Players:GetPlayers()) do
					if t314 ~= LocalPlayer2 then
						local Character11 = t314.Character
						if Character11 then
							HumanoidRootPart3 = (Character11:FindFirstChild("HumanoidRootPart"))
						else
							HumanoidRootPart3 = Character11
						end
						if Character11 then
							FindFirstChildOfClass5 = (Character11:FindFirstChildOfClass("Humanoid"))
						else
							FindFirstChildOfClass5 = Character11
						end
						if HumanoidRootPart3 and FindFirstChildOfClass5 and
							((t313.Position - HumanoidRootPart3.Position).Magnitude < v386 and
								15 < FindFirstChildOfClass5.Health) and
							not Character11:FindFirstChildOfClass("ForceField") then
							f140(Character11)
						end
					end
				end
			end
		end

		return RunService.RenderStepped:Connect(f141)
	end

	local function f142()
		if t304 then
			return
		end
		local _ = bit32.bxor
		local v387
		v387 = not not false
		if not v387 then
			v387 = 468
		end
		local _ = 11725 + bit32.bxor(v387, 58, 361) + -11859
		t304 = true
		t303 = (f137())
	end

	local function f143()
		if not t304 then
			return
		end
		t304 = false
		if t303 then
			t303:Disconnect()
			t303 = nil
		end
	end

	local Toggle9 = t310.Toggle
	local t315 = { Name = "Melee Aura", Flag = "MiscMeleeAura", Default = false }

	function t315.Callback(p105)
		if p105 then
			f142()
		else
			f143()
		end
	end

	Toggle9(t310, t315)
	local t316 = { Enabled = false, Connection = nil, Range = 7 }

	local function f144()
		if not (v37 and v37.Players) then
			return false
		end
		for _, t317 in pairs(v37.Players) do
			if t317.Priority and t317.Priority.Text == "Enemy" then
				return true
			end
		end
		return false
	end

	local function f145(p106, p107)
		local v388 = (f26(p106))
		local v389
		if p107 then
			v389 = v388 == "Enemy"
			return v389
		end
		local v390
		v390 = not (v388 == "Friendly")
		return v390
	end

	local function f146()
		if t316.Enabled then
			return
		end
		t316.Enabled = true

		local function f147()
			if not t316.Enabled then
				return
			end
			local Character12 = LocalPlayer2.Character
			local HumanoidRootPart4
			if Character12 then
				HumanoidRootPart4 = (Character12:FindFirstChild("HumanoidRootPart"))
			else
				HumanoidRootPart4 = Character12
			end
			local FindFirstChildOfClass6
			if Character12 then
				FindFirstChildOfClass6 = (Character12:FindFirstChildOfClass("Tool"))
			else
				FindFirstChildOfClass6 = Character12
			end
			if not (HumanoidRootPart4 and FindFirstChildOfClass6) then
				return
			end
			local v391 = (ReplicatedStorage:FindFirstChild("Events"))
			local FindFirstChild13
			if v391 then
				FindFirstChild13 = (v391:FindFirstChild("XMHH.2"))
			else
				FindFirstChild13 = v391
			end
			if v391 then
				v391 = (v391:FindFirstChild("XMHH2.2"))
			end
			if not (FindFirstChild13 and v391) then
				return
			end
			local v392 = (f144())
			local v393, v394, f148
			f148, v394, v393 = ipairs(Players:GetPlayers())
			local FindFirstChildOfClass7, Head4, HumanoidRootPart5
			while true do
				local t318
				v393, t318 = f148(v394, v393)
				if v393 == nil then
					break
				end
				if not (t318 == LocalPlayer2 or not f145(t318, v392)) then
					local Character13 = t318.Character
					if Character13 then
						HumanoidRootPart5 = (Character13:FindFirstChild("HumanoidRootPart"))
					else
						HumanoidRootPart5 = Character13
					end
					if Character13 then
						Head4 = (Character13:FindFirstChild("Head"))
					else
						Head4 = Character13
					end
					if Character13 then
						FindFirstChildOfClass7 = (Character13:FindFirstChildOfClass("Humanoid"))
					else
						FindFirstChildOfClass7 = Character13
					end
					local t319 = (ReplicatedStorage:FindFirstChild("CharStats"))
					if t319 then
						t319 = (t319:FindFirstChild(t318.Name))
					end
					if t319 then
						t319 = (t319:FindFirstChild("Downed"))
					end
					if HumanoidRootPart5 and Head4 and (FindFirstChildOfClass7 and t319) and
						((HumanoidRootPart4.Position - HumanoidRootPart5.Position).Magnitude <= t316.Range and
							0 < FindFirstChildOfClass7.Health and t319.Value == true) then
						local InvokeServer2 = (FindFirstChild13:InvokeServer("🍞", tick(), FindFirstChildOfClass6, "EXECQX"))
						task.wait(0.25)
						v391:FireServer(
							"🍞",
							tick(),
							FindFirstChildOfClass6,
							"2389ZFX34",
							InvokeServer2,
							false,
							Character12:FindFirstChild("Right Leg"),
							Head4,
							Character13,
							Head4.Position,
							Head4.Position
						)
					end
				end
			end
		end

		t316.Connection = (RunService.RenderStepped:Connect(f147))
	end

	local function f149()
		if not t316.Enabled then
			return
		end
		t316.Enabled = false
		if t316.Connection then
			t316.Connection:Disconnect()
			t316.Connection = nil
		end
	end

	local Toggle10 = t310.Toggle
	local t320 = { Name = "No Scope Glint", Flag = "aim_noscope_glint", Default = false }

	function t320.Callback(p108)
		if p108 then
			f92()
		else
			f97()
		end
	end

	Toggle10(t310, t320)
	local Toggle11 = t310.Toggle
	local t321 = { Name = "Finish Aura", Flag = "MiscFinishAura", Default = false }

	function t321.Callback(p109)
		if p109 then
			f146()
		else
			f149()
		end
	end

	Toggle11(t310, t321)
	local t322 = { Enabled = false, Conn = nil, ConfigTable = nil, Scanned = false }

	local function f150(...)
		if t322.Scanned then
			return
		end
		t322.Scanned = true
		if not (getgc and isreadonly) then
			return
		end
		for _, v395 in pairs(getgc(true)) do
			if type(v395) == "table" and not isreadonly(v395) and
				not (rawget(v395, "CameraBobbing") == nil and rawget(v395, "Bobbing") == nil) then
				t322.ConfigTable = v395
				break
			end
		end
	end

	local function f151()
		f150()
		local ConfigTable = t322.ConfigTable
		if not ConfigTable then
			return
		end
		if rawget(ConfigTable, "CameraBobbing") ~= nil then
			ConfigTable.CameraBobbing = false
		end
		if rawget(ConfigTable, "Bobbing") ~= nil then
			ConfigTable.Bobbing = false
		end
		if t322.Conn then
			t322.Conn:Disconnect()
			t322.Conn = nil
		end

		local function f152()
			if not t322.Enabled then
				return
			end
			if rawget(ConfigTable, "CameraBobbing") ~= nil then
				ConfigTable.CameraBobbing = false
			end
			if rawget(ConfigTable, "Bobbing") ~= nil then
				ConfigTable.Bobbing = false
			end
		end

		t322.Conn = (RunService.Heartbeat:Connect(f152))
	end

	local function f153()
		if t322.Conn then
			t322.Conn:Disconnect()
			t322.Conn = nil
		end
	end

	t302 = {}
	local t323 = { Enabled = false }

	local function f154()
		if not (getgc and debug.getupvalues and debug.setupvalue) then
			return
		end
		local t324
		if t323.Enabled then
			local t325 = {}
			for _, v396 in pairs(getgc(true)) do
				if type(v396) == "table" and rawget(v396, "EquipTime") then
					local v397 = (rawget(v396, "Spread"))
					local v398 = (rawget(v396, "Recoil"))
					if type(v397) == "number" and 0 < v397 and (type(v398) == "number" and 0 < v398) then
						local _ = table.insert
						local t326 = { Spread = v397, Recoil = v398 }
						table.insert(t325, t326)
					end
				end
			end
			for _, v399 in pairs(getgc(true)) do
				if type(v399) == "function" then
					local t327, v400
					v400, t327 = pcall(debug.getupvalues, v399)
					if v400 and type(t327) == "table" then
						local v401, v402, f155
						f155, v402, v401 = ipairs(t325)
						while true do
							v401, t324 = f155(v402, v401)
							if v401 == nil then
								break
							end
							pairs(t327)
						end
						t324 = nil
						if t324 then
							for v403, v404 in pairs(t327) do
								if type(v404) == "number" and v404 == t324.Spread then
									local _ = table.insert
									local t328 = { closure = v399, index = v403, original = v404 }
									table.insert(t302, t328)
									pcall(debug.setupvalue, v399, v403, 0)
								end
							end
						end
					end
				end
			end
		else
			pairs(t302)
			t302 = {}
		end
	end

	local t329 = { Enabled = false, Value = 128, Conn = nil }

	local function f156()
		if t329.Enabled then
			if not t329.Conn then
				local function f157()
					if LocalPlayer2.CameraMaxZoomDistance ~= t329.Value then
						LocalPlayer2.CameraMaxZoomDistance = t329.Value
					end
				end

				t329.Conn = (RunService.Heartbeat:Connect(f157))
			end
		elseif t329.Conn then
			t329.Conn:Disconnect()
			t329.Conn = nil
		end
	end

	local Toggle12 = t310.Toggle
	f136 = { Name = "Custom Max Zoom", Flag = "MiscCustomMaxZoom", Default = false }

	function f136.Callback()
		local v405
		v405 = not not true
		if v405 then
			v405 = 368
		end
		f156()
	end

	Toggle12(t310, f136)
	local Slider8 = t310.Slider
	f136 = {
		Name = "Max Zoom Distance",
		Flag = "MiscCustomMaxZoomValue",
		Min = 10,
		Max = 10000,
		Default = 128
	}

	function f136.Callback(p110)
		t329.Value = p110
	end

	Slider8(t310, f136)
	local Toggle13 = t310.Toggle
	f136 = { Name = "No Spread", Flag = "MiscNoSpreadUpv", Default = false }

	function f136.Callback(p111)
		t323.Enabled = p111
		f154()
	end

	Toggle13(t310, f136)
	local Toggle14 = t310.Toggle
	f136 = { Name = "No Camera Bobbing", Flag = "MiscNoShakeCam", Default = false }

	function f136.Callback(p112)
		t322.Enabled = p112
		if p112 then
			f151()
		else
			f153()
		end
	end

	Toggle14(t310, f136)

	local function f158()
		if t23.NoFallDamageFF then
			local function f159()
				t23.NoFallDamageFF:Destroy()
			end

			pcall(f159)
			t23.NoFallDamageFF = nil
		end
	end

	local function f160(p113)
		f158()
		if not p113 then
			return
		end
		local v406 = (Instance.new("ForceField"))
		v406.Visible = false
		v406.Parent = p113
		t23.NoFallDamageFF = v406
	end

	f136 = RunService.Heartbeat
	local v407 = f136
	f136 = f136.Connect

	local function f161()
		if not (t23.NoFallDamage and t23.NoFallDamageMethod == "ForceField") then
			return
		end
		local Character14 = LocalPlayer2.Character
		if Character14 then
			local FindFirstChildOfClass8 = (Character14:FindFirstChildOfClass("ForceField"))
			if not (FindFirstChildOfClass8 and FindFirstChildOfClass8 == t23.NoFallDamageFF) then
				f160(Character14)
			end
			return
		end
		local v408
		v408 = not false
		if v408 then
			v408 = 168
		end
	end

	f136(v407, f161)
	f136 = nil

	local function f162()
		local _ = 12983 + bit32.lrotate(0, 24) + -12761
		if f136 then
			return
		end
		if not (hookmetamethod and getnamecallmethod) then
			return
		end

		local function f163()
			local _ = -9000542 + bit32.rrotate(275, 17) + -10657
			local Events3 = (ReplicatedStorage:FindFirstChild("Events"))
			local __RZDONL
			if Events3 then
				__RZDONL = (Events3:FindFirstChild("__RZDONL"))
			else
				__RZDONL = Events3
			end
			if not (__RZDONL or not Events3) then
				__RZDONL = (Events3:WaitForChild("__RZDONL", 10))
			end
			if not __RZDONL then
				return
			end
			local v409 = __RZDONL
			if f136 then
				return
			end

			local function f164(p114)
				if getnamecallmethod() == "FireServer" and p114 == v409 then
					local _ = bit32.lrotate
					local v410 = false
					if not v410 then
						v410 = (string.unpack("<i8", "U\1\0\0\0\0\0\0"))
					end
					local t330 = {}
					if t23.NoFallDamage and t23.NoFallDamageMethod == "Block Remote" and
						(t330[1] == "FlllD" or t330[1] == "FllH") then
						return
					end
				end
				return f136()
			end

			f136 = (hookmetamethod(game, "__namecall", f164))
		end

		task.spawn(f163)
	end

	local Toggle15 = t310.Toggle
	local t331 = { Name = "No Fall Damage", Flag = "MiscNoFallDamage", Default = false }

	function t331.Callback(p115)
		t23.NoFallDamage = p115
		f162()
		if p115 and t23.NoFallDamageMethod == "ForceField" then
			f160(LocalPlayer2.Character)
			if t23.NoFallDamageCharConn then
				t23.NoFallDamageCharConn:Disconnect()
			end

			local function f165()
				local v411
				v411 = not not true
				if v411 then
					v411 = 3
				end
				if t23.NoFallDamage and t23.NoFallDamageMethod == "ForceField" then
				end
			end

			t23.NoFallDamageCharConn = (LocalPlayer2.CharacterAdded:Connect(f165))
		else
			f158()
			if t23.NoFallDamageCharConn then
				t23.NoFallDamageCharConn:Disconnect()
				t23.NoFallDamageCharConn = nil
			end
		end
	end

	Toggle15(t310, t331)
	local Dropdown5 = t310.Dropdown
	local t332 = { Name = "Method", Flag = "MiscNoFallDamageMethod" }
	local v412 = (table.create(2))
	v412[1] = "Block Remote"
	v412[2] = "ForceField"
	t332.Options = v412
	t332.Default = "Block Remote"
	t332.Multi = false

	function t332.Callback(p116)
		t23.NoFallDamageMethod = p116
		if t23.NoFallDamage then
			f162()
		end
		local _ = 912 + bit32.lrotate(0, 3) + -826
		if not t23.NoFallDamage then
			return
		end
		if p116 == "ForceField" then
			f160(LocalPlayer2.Character)
			if t23.NoFallDamageCharConn then
				t23.NoFallDamageCharConn:Disconnect()
			end

			local function f166(p117)
				if t23.NoFallDamage and t23.NoFallDamageMethod == "ForceField" then
					f160(p117)
				end
			end

			t23.NoFallDamageCharConn = (LocalPlayer2.CharacterAdded:Connect(f166))
		else
			f158()
			if t23.NoFallDamageCharConn then
				t23.NoFallDamageCharConn:Disconnect()
				t23.NoFallDamageCharConn = nil
			end
		end
	end

	Dropdown5(t310, t332)
	local t333 = { Enabled = false, Connection = nil }

	local function f167()
		local t334 = LocalPlayer2.Character
		if t334 then
			t334 = (t334:FindFirstChild("HumanoidRootPart"))
		end
		if not t334 then
			return nil
		end
		local v413, v414
		for _, t335 in ipairs(Players:GetPlayers()) do
			if not (t335 == LocalPlayer2 or f26(t335) ~= "Enemy") then
				local t336 = t335.Character
				if t336 then
					t336 = (t336:FindFirstChild("HumanoidRootPart"))
				end
				if t336 then
					local Magnitude6 = (t334.Position - t336.Position).Magnitude
					if not (v414 and not (Magnitude6 < v414)) then
						v413 = t335
						v414 = Magnitude6
					end
				end
			end
		end
		return v413
	end

	local t337 = v105
	local Section7 = t337.Section
	local t338 = { Name = "Movement", Side = "Right" }
	local t339 = (Section7(t337, t338))
	local t340 = {
		TPWalkOn = false,
		TPWalkSpeed = 16,
		TPWalkConn = nil,
		SpeedOn = false,
		SpeedMethod = "CFrame",
		SpeedValue = 16,
		SpeedConn = nil
	}

	local function f168()
		local CFrame9 = CurrentCamera.CFrame
		local t341 = (Vector3.new(CFrame9.LookVector.X, 0, CFrame9.LookVector.Z))
		if t341.Magnitude == 0 then
			t341 = (Vector3.new(0, 0, -1))
		end
		local Unit = t341.Unit
		local Unit2 = Vector3.new(CFrame9.RightVector.X, 0, CFrame9.RightVector.Z).Unit
		local v415 = (Vector3.new())
		if UserInputService:IsKeyDown(Enum.KeyCode.W) then
			v415 = v415 + Unit
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.S) then
			v415 = v415 - Unit
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.D) then
			v415 = v415 + Unit2
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.A) then
			v415 = v415 - Unit2
		end
		return v415
	end

	local Toggle16 = t339.Toggle
	local t342 = { Name = "TPWalk", Flag = "MiscTPWalk", Default = false }

	function t342.Callback(p118)
		t340.TPWalkOn = p118
		if t340.TPWalkConn then
			t340.TPWalkConn:Disconnect()
			t340.TPWalkConn = nil
		end
		if p118 then
			local function f169(p119)
				local t343 = LocalPlayer2.Character
				local HumanoidRootPart6
				if t343 then
					HumanoidRootPart6 = (t343:FindFirstChild("HumanoidRootPart"))
				else
					HumanoidRootPart6 = t343
				end
				if t343 then
					t343 = (t343:FindFirstChildOfClass("Humanoid"))
				end
				if not (HumanoidRootPart6 and t343) then
					return
				end
				local MoveDirection = t343.MoveDirection
				if 0 < MoveDirection.Magnitude then
					HumanoidRootPart6.CFrame = HumanoidRootPart6.CFrame + MoveDirection.Unit * t340.TPWalkSpeed * p119
				end
			end

			t340.TPWalkConn = (RunService.RenderStepped:Connect(f169))
		end
	end

	Toggle16(t339, t342)
	local Slider9 = t339.Slider
	local t344 = {
		Name = "TPWalk Speed",
		Flag = "MiscTPWalkSpeed",
		Min = 1,
		Max = 200,
		Default = 16,
		Decimal = 1,
		Suffix = "st/s"
	}

	function t344.Callback(p120)
		t340.TPWalkSpeed = p120
	end

	Slider9(t339, t344)
	local Toggle17 = t339.Toggle
	local t345 = { Name = "Speed", Flag = "MiscSpeed", Default = false }

	function t345.Callback(p121)
		t340.SpeedOn = p121
		if t340.SpeedConn then
			t340.SpeedConn:Disconnect()
			t340.SpeedConn = nil
		end
		if p121 then
			local function f170(p122)
				local t346 = LocalPlayer2.Character
				if t346 then
					t346 = (t346:FindFirstChild("HumanoidRootPart"))
				end
				if not t346 then
					return
				end
				local Unit3 = (f168())
				local v416
				v416 = 0 < Unit3.Magnitude
				if v416 then
					Unit3 = Unit3.Unit
				end
				if t340.SpeedMethod == "Velocity" then
					local t347 = Unit3 * t340.SpeedValue
					local AssemblyLinearVelocity = t346.AssemblyLinearVelocity
					t346.AssemblyLinearVelocity = (Vector3.new(
						t347.X,
						AssemblyLinearVelocity.Y,
						t347.Z
					))
				elseif v416 then
					t346.CFrame = t346.CFrame + Unit3 * t340.SpeedValue * p122
				end
			end

			t340.SpeedConn = (RunService.RenderStepped:Connect(f170))
		end
	end

	Toggle17(t339, t345)
	local Dropdown6 = t339.Dropdown
	local t348 = { Name = "Method", Flag = "MiscSpeedMethod" }
	local v417 = (table.create(2))
	v417[1] = "CFrame"
	v417[2] = "Velocity"
	t348.Options = v417
	t348.Default = "CFrame"
	t348.Multi = false

	function t348.Callback(p123)
		t340.SpeedMethod = p123
	end

	Dropdown6(t339, t348)
	local Slider10 = t339.Slider
	local t349 = {
		Name = "Speed Value",
		Flag = "MiscSpeedValue",
		Min = 1,
		Max = 200,
		Default = 16,
		Decimal = 1,
		Suffix = "st/s"
	}

	function t349.Callback(p124)
		t340.SpeedValue = p124
	end

	Slider10(t339, t349)
	local t350 = { On = false, Conn = nil, Speed = 50, Mode = "Normal" }

	local function f171(p125)
		local v418 = (ReplicatedStorage:FindFirstChild("Events"))
		if v418 then
			v418 = (v418:FindFirstChild("__RZDONL"))
		end
		if t350.On then
			if t350.Conn then
				t350.Conn:Disconnect()
			end
			local v419 = v418

			local function f172()
				if not (t350.On and p125 and p125.Parent) then
					if t350.Conn then
						t350.Conn:Disconnect()
					end
					return
				end
				local v420 = (Vector3.new(0, 0, 0))
				if UserInputService:IsKeyDown(Enum.KeyCode.W) then
					v420 = v420 + CurrentCamera.CFrame.LookVector * t350.Speed
				end
				if UserInputService:IsKeyDown(Enum.KeyCode.S) then
					v420 = v420 - CurrentCamera.CFrame.LookVector * t350.Speed
				end
				if UserInputService:IsKeyDown(Enum.KeyCode.A) then
					v420 = v420 - CurrentCamera.CFrame.RightVector * t350.Speed
				end
				if UserInputService:IsKeyDown(Enum.KeyCode.D) then
					v420 = v420 + CurrentCamera.CFrame.RightVector * t350.Speed
				end
				p125.Velocity = v420
				if t350.Mode == "Bypass" and v419 then
					v419:FireServer("__---r", Vector3.new(0, 0, 0), p125.CFrame, false)
				end
			end

			t350.Conn = (RunService.RenderStepped:Connect(f172))
			task.spawn(f172)
		elseif p125 then
			p125.Velocity = (Vector3.new(0, 0, 0))
		end
	end

	local function f173(...)
		local HumanoidRootPart7 = nil
		local v421 = true
		if v421 then
			v421 = 25
		end
		t350.On = true
		local Character15 = LocalPlayer2.Character
		if HumanoidRootPart7 then
			HumanoidRootPart7 = (Character15:FindFirstChild("HumanoidRootPart"))
		end
		if HumanoidRootPart7 then
			f171(HumanoidRootPart7)
		end
	end

	local function f174()
		t350.On = false
		local v422 = LocalPlayer2.Character
		if v422 then
			v422 = (v422:FindFirstChild("HumanoidRootPart"))
		end
		f171(v422)
	end

	local Toggle18 = t339.Toggle
	local t351 = { Name = "Fly", Flag = "MiscFly", Default = false }

	function t351.Callback(p126)
		if p126 then
			f173()
		else
			f174()
		end
	end

	local t352 = (Toggle18(t339, t351))
	local Keybind2 = t352.Keybind
	local t353 = { Flag = "MiscFlyKey", Default = false, Mode = "Toggle" }

	function t353.Callback(p127)
		t352.Set(p127)
	end

	Keybind2(t352, t353)
	local Dropdown7 = t339.Dropdown
	local t354 = { Name = "Fly Mode", Flag = "MiscFlyMode" }
	local v423 = (table.create(2))
	v423[1] = "Normal"
	v423[2] = "Bypass"
	t354.Options = v423
	t354.Default = "Normal"
	t354.Multi = false

	function t354.Callback(p128)
		t350.Mode = p128
	end

	Dropdown7(t339, t354)
	local Slider11 = t339.Slider
	local t355 = {
		Name = "Fly Speed",
		Flag = "MiscFlySpeed",
		Min = 10,
		Max = 200,
		Default = 50,
		Decimal = 1,
		Suffix = "st/s"
	}

	function t355.Callback(...)
		local v424
		v424 = not (0 == math.modf(3.141592653589793))
		if v424 then
			v424 = 9
		end
		local v425 = ...
		t350.Speed = v425
	end

	Slider11(t339, t355)

	local function f175(...)
		local t356 = { Bhop = false, CSBhop = false }
		local v426
		v426 = not not false
		if not v426 then
			v426 = 348
		end
		local v427
		v427 = v426 <= 425
		if v427 then
			v427 = 1
		end
		local f176 = nil
		t356.NoCD = false
		t356.MaxSpeed = 100
		t356.Conn = nil
		f176 = Vector3
		f176 = f176.new
		f176 = (f176())

		local function f177()
			local v428
			v428 = bit32.rrotate(373, 12) < 453
			if not v428 then
				v428 = 169
			end
			if t356.Bhop or t356.NoCD or t356.CSBhop then
				if not t356.Conn then
					local function f178(p129)
						local t357 = LocalPlayer2.Character
						local FindFirstChildOfClass9
						if t357 then
							FindFirstChildOfClass9 = (t357:FindFirstChildOfClass("Humanoid"))
						else
							FindFirstChildOfClass9 = t357
						end
						if t357 then
							t357 = (t357:FindFirstChild("HumanoidRootPart"))
						end
						if not (FindFirstChildOfClass9 and t357) then
							return
						end
						if t356.NoCD then
							FindFirstChildOfClass9:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
						end
						local GetState = (FindFirstChildOfClass9:GetState())
						local v429
						v429 = GetState == Enum.HumanoidStateType.Freefall
						if not v429 then
							v429 = GetState == Enum.HumanoidStateType.Jumping
						end
						if (t356.Bhop or t356.CSBhop) and
							(UserInputService:IsKeyDown(Enum.KeyCode.Space) and not v429) and
							GetState ~= Enum.HumanoidStateType.FallingDown then
							FindFirstChildOfClass9:ChangeState(Enum.HumanoidStateType.Jumping)
							FindFirstChildOfClass9.Jump = true
							if t356.CSBhop then
								t357.AssemblyLinearVelocity = (Vector3.new(
									f176.X,
									t357.AssemblyLinearVelocity.Y,
									f176.Z
								))
							end
							v429 = true
						end
						local t358
						if t356.CSBhop and v429 then
							local CurrentCamera3 = workspace.CurrentCamera
							local LookVector = CurrentCamera3.CFrame.LookVector
							local RightVector = CurrentCamera3.CFrame.RightVector
							local t359 = (Vector3.new())
							local IsKeyDown = (UserInputService:IsKeyDown(Enum.KeyCode.W))
							local IsKeyDown2 = (UserInputService:IsKeyDown(Enum.KeyCode.S))
							local IsKeyDown3 = (UserInputService:IsKeyDown(Enum.KeyCode.A))
							local IsKeyDown4 = (UserInputService:IsKeyDown(Enum.KeyCode.D))
							if IsKeyDown then
								t359 = t359 + LookVector
							end
							if IsKeyDown2 then
								t359 = t359 - LookVector
							end
							if IsKeyDown3 then
								t359 = t359 - RightVector
							end
							if IsKeyDown4 then
								t359 = t359 + RightVector
							end
							if not (IsKeyDown or IsKeyDown2 or not (IsKeyDown3 or IsKeyDown4)) then
								t359 = t359 + LookVector * 0.15
							end
							local t360 = (Vector3.new(t359.X, 0, t359.Z))
							if 0.01 < t360.Magnitude then
								t358 = t360.Unit
							else
								t358 = Vector3.zero
							end
							local t361 = t357.AssemblyLinearVelocity
							if not (t361.X == t361.X and t361.Y == t361.Y and t361.Z == t361.Z) then
								t357.AssemblyLinearVelocity = Vector3.zero
								t361 = Vector3.zero
							end
							if not (f176.X == f176.X and f176.Y == f176.Y and f176.Z == f176.Z) then
								f176 = Vector3.zero
							end
							local v430 = (Vector3.new(t361.X, 0, t361.Z))
							local t362 = (Vector3.new(f176.X, 0, f176.Z))
							if 2 < (v430 - t362).Magnitude then
								t362 = v430
							end
							if 0 < t358.Magnitude then
								local v431 = 3.5 - t362:Dot(t358)
								if 0 < v431 then
									local v432 = 700 * p129
									if v431 < v432 then
										v432 = v431
									end
									t362 = t362 + t358 * v432
								end
							end
							if t356.MaxSpeed < t362.Magnitude then
								t362 = t362.Unit * t356.MaxSpeed
							end
							t357.AssemblyLinearVelocity = (Vector3.new(t362.X, t361.Y, t362.Z))
							f176 = t357.AssemblyLinearVelocity
						else
							f176 = t357.AssemblyLinearVelocity
						end
					end

					t356.Conn = (RunService.Heartbeat:Connect(f178))
				end
			elseif t356.Conn then
				t356.Conn:Disconnect()
				t356.Conn = nil
			end
		end

		local t363 = t339
		local Toggle19 = t363.Toggle
		local t364 = { Name = "Bunny Hop", Flag = "MiscBhop", Default = false }

		function t364.Callback(p130)
			t356.Bhop = p130
			f177()
		end

		Toggle19(t363, t364)
		local t365 = t339
		local Toggle20 = t365.Toggle
		local t366 = { Name = "csgo strafes ( real )", Flag = "MiscCSBhop", Default = false }

		function t366.Callback(p131)
			t356.CSBhop = p131
			f177()
		end

		Toggle20(t365, t366)
		local t367 = t339
		local Slider12 = t367.Slider
		local t368 = {
			Name = "Bhop Max Speed",
			Flag = "MiscBhopMaxSpeed",
			Min = 16,
			Max = 300,
			Default = 100,
			Suffix = "st/s"
		}

		function t368.Callback(p132)
			t356.MaxSpeed = p132
		end

		Slider12(t367, t368)
		local t369 = t339
		local Toggle21 = t369.Toggle
		local t370 = { Name = "No Jump Cooldown", Flag = "MiscNoJumpCD", Default = false }

		function t370.Callback(p133)
			t356.NoCD = p133
			f177()
		end

		Toggle21(t369, t370)
	end

	f175()
	local t371 = v105
	local Section8 = t371.Section
	local t372 = { Name = "Other", Side = "Left" }
	local t373 = (Section8(t371, t372))
	local t374 = { Enabled = false, Conn = nil, Track = nil, VerticalOffset = -2.6 }

	local function f179(p134, p135)
		if not p134 then
			return
		end
		for _, v433 in ipairs(p134:GetDescendants()) do
			if v433:IsA("BasePart") or v433:IsA("Decal") then
				v433.LocalTransparencyModifier = p135
			end
		end
	end

	local function f180()
		t374.Enabled = true
		local Character16 = LocalPlayer2.Character
		if not Character16 then
			return
		end
		local Humanoid3 = (Character16:FindFirstChild("Humanoid"))
		if not Humanoid3 then
			Humanoid3 = (Character16:WaitForChild("Humanoid", 3))
		end
		if not Humanoid3 then
			return
		end
		f179(Character16, 1)
		if t374.Track then
			local function f181()
				t374.Track:Stop()
				t374.Track:Destroy()
			end

			pcall(f181)
			t374.Track = nil
		end
		local v434 = (Instance.new("Animation"))
		v434.AnimationId = "rbxassetid://282574440"
		t374.Track = (Humanoid3:LoadAnimation(v434))
		t374.Track.Looped = true
		t374.Track.Priority = Enum.AnimationPriority.Action4
		t374.Track:Play(0.1, 1, 0)
		if t374.Conn then
			t374.Conn:Disconnect()
		end

		local function f182(...)
			local v435
			v435.CFrame = nil
			v435.AssemblyLinearVelocity = nil
			if t374.Enabled then
				f179(nil, 1)
			end
		end

		t374.Conn = (RunService.Heartbeat:Connect(f182))
	end

	local function f183()
		t374.Enabled = false
		if t374.Track then
			local function f184()
				t374.Track:Stop()
				t374.Track:Destroy()
			end

			pcall(f184)
			t374.Track = nil
		end
		if t374.Conn then
			t374.Conn:Disconnect()
			t374.Conn = nil
		end
		if not t333.Enabled then
			f179(LocalPlayer2.Character, 0)
		end
		local v436
		while true do
			v436 = not not false
			if not v436 then
				v436 = 345
			end
		end
	end

	local function f185(...)
		local f186 = v241
		local t375, f187, v437
		if not f186 then
			f186 = function()
				while true do
				end
			end

			t375 = nil
			f187 = nil
			v437 = nil
		end
		local _ = setmetatable
		t375 = {}
		local v438 = f186

		f187 = function(_, p136)
			return v438(game:GetService(p136))
		end

		t375.__index = f187
		local LocalPlayer3 = setmetatable({}, t375).Players.LocalPlayer
		t375 = nil
		f187 = nil
		v437 = nil

		local function f188()
			t375 = LocalPlayer3.Character
			if t375 then
				v437 = (t375:FindFirstChild("HumanoidRootPart"))
				f187 = (t375:FindFirstChildOfClass("Humanoid"))
			else
				v437 = nil
				f187 = nil
			end
		end

		f188()
		local Heartbeat = game:GetService("RunService").Heartbeat
		local RenderStepped = game:GetService("RunService").RenderStepped
		local StarterGui = "StarterGui"
		local GetService = (game:GetService(StarterGui))
		local v439 = true
		local v440 = StarterGui
		local Animation = nil
		if t375 then
			local Torso2 = "Torso"
			local FindFirstChild14 = (t375:FindFirstChild(Torso2))
			v439 = true
			v440 = FindFirstChild14
			Animation = Torso2
			if not FindFirstChild14 then
				v439 = false
				v440 = FindFirstChild14
				Animation = Torso2
			end
		end
		v440 = false
		Animation = "Animation"
		local v441 = (Instance.new(Animation))
		v441.AnimationId = "rbxassetid://215384594"
		Animation = nil

		local function f189()
			if Animation then
				local function f190()
					Animation:Stop()
				end

				pcall(f190)
				Animation = nil
			end
			if f187 then
				local function f191()
					return f187:LoadAnimation(v441)
				end

				local v442, v443
				v443, v442 = pcall(f191)
				if v443 then
					Animation = v442
					Animation.Priority = Enum.AnimationPriority.Action4
				else
					Animation = nil
				end
			else
				Animation = nil
			end
		end

		local function f192()
			local v444
			v444 = not not false
			if not v444 then
				v444 = 11
			end
			local _ = 29355 + (v444 - string.byte("\210\154_\157", 2, 3)) + -29211
			if not v440 then
				return
			end
			v440 = false
			if Animation then
				local function f193()
					Animation:Stop()
				end

				pcall(f193)
			end
			if f187 then
				workspace.CurrentCamera.CameraSubject = f187
			end
			if t375 then
				for _, t376 in pairs(t375:GetDescendants()) do
					if t376:IsA("BasePart") and t376.Transparency == 0.5 then
						t376.Transparency = 0
					end
				end
			end
		end

		local function f194()
			if v440 or not v439 then
				return
			end
			f188()
			if not (t375 and f187 and v437) then
				return
			end
			if not t375:FindFirstChild("Torso") then
				local function f195()
					local t377 = GetService
					local SetCore = t377.SetCore
					local t378 = {}
					local v445
					v445 = not not false
					if not v445 then
						v445 = (string.byte("\252\31k!", 1, 1))
					end
					t378.Title = "Невидимость НЕ РАБОТАЕТ"
					t378.Duration = 5
					SetCore(t377, "SendNotification", t378)
				end

				pcall(f195)
				return
			end
			v440 = true
			workspace.CurrentCamera.CameraSubject = v437
			f189()
		end

		local function f196(p137)
			if Animation then
				local function f197()
					Animation:Stop()
				end

				pcall(f197)
				Animation = nil
			end

			local function f198()
				if v440 then
					f192()
				end
			end

			local Humanoid4 = (p137:WaitForChild("Humanoid", 5))
			if Humanoid4 then
				Humanoid4.Died:Connect(f198)
			end
			task.wait()
			f188()
			if not f187 then
				task.wait(0.5)
				f188()
			end
			if not f187 then
				v439 = false
				if v440 then
					f192()
				end
				return
			end
			if f187.RigType == Enum.HumanoidRigType.R6 then
				v439 = true
			else
				v439 = false
				if v440 then
					f192()
				end
			end
			if v440 then
				if v437 then
					workspace.CurrentCamera.CameraSubject = v437
				end
				f189()
			end
		end

		LocalPlayer3.CharacterAdded:Connect(f196)
		if t375 then
			local Humanoid5 = (t375:WaitForChild("Humanoid", 5))
			if Humanoid5 then
				local function f199()
					if v440 then
						f192()
					end
				end

				Humanoid5.Died:Connect(f199)
			end
		end

		local function f200()
			local _ = bit32.lrotate
			local v446
			v446 = not not false
			if not v446 then
				v446 = 472
			end
			local _ = 25203 + bit32.lrotate(v446, 2) + -26886
			if Animation then
				local function f201()
					local _ = -3461 + (6144 + math.modf(3.141592653589793)) + -2685
					Animation:Stop()
				end

				pcall(f201)
				Animation = nil
			end
		end

		LocalPlayer3.CharacterRemoving:Connect(f200)

		local function f202(p138)
			if not (v440 and v439) then
				if not (v440 or not t375) then
					for _, t379 in pairs(t375:GetDescendants()) do
						if t379:IsA("BasePart") and t379.Transparency == 0.5 then
							t379.Transparency = 0
						end
					end
				end
				return
			end
			if not (t375 and f187 and (v437 and f187:IsDescendantOf(workspace)) and not (f187.Health <= 0)) then
				return
			end
			if 0 < f187.MoveDirection.Magnitude then
				local MoveDirection2 = f187.MoveDirection
				v437.CFrame = v437.CFrame + MoveDirection2 * 12 * p138
			end
			local CFrame10 = v437.CFrame
			local CameraOffset = f187.CameraOffset
			local v447, _
			_, v447 = workspace.CurrentCamera.CFrame:ToOrientation()
			v437.CFrame = CFrame.new(v437.CFrame.Position) * CFrame.fromOrientation(0, v447, 0)
			v437.CFrame = v437.CFrame * CFrame.Angles(math.rad(90), 0, 0)
			f187.CameraOffset = (Vector3.new(0, 1.44, 0))
			if Animation then
				local function f203()
					if not Animation.IsPlaying then
						Animation:Play()
						Animation:AdjustSpeed(0)
					end
					Animation.TimePosition = 0.3
				end

				if not pcall(f203) then
					f189()
				end
			elseif f187 and 0 < f187.Health and v440 then
				f189()
			end
			RenderStepped:Wait()
			if f187 and f187:IsDescendantOf(workspace) then
				f187.CameraOffset = CameraOffset
			end
			if v437 and v437:IsDescendantOf(workspace) then
				v437.CFrame = CFrame10
			end
			if Animation then
				local function f204()
					local v448
					v448 = not not true
					if v448 then
						v448 = (string.len("\233X\151"))
					end
					Animation:Stop()
				end

				pcall(f204)
			end
			if v437 and v437:IsDescendantOf(workspace) then
				local LookVector2 = workspace.CurrentCamera.CFrame.LookVector
				local Unit4 = Vector3.new(LookVector2.X, 0, LookVector2.Z).Unit
				if 0.1 < Unit4.Magnitude then
					v437.CFrame = (CFrame.new(v437.Position, v437.Position + Unit4))
				end
			end
			if t375 then
				for _, t380 in pairs(t375:GetDescendants()) do
					if t380:IsA("BasePart") and t380.Transparency ~= 1 then
						t380.Transparency = 0.5
					end
				end
			end
		end

		Heartbeat:Connect(f202)
		local t381 = { Enable = f194, Disable = f192 }

		function t381.IsActive()
			return v440
		end

		return t381
	end

	HideBody = "HideBody"
	local v449 = (f185())

	local function f205(p139)
		if HideBody == "Anim" then
			if p139 then
				v449.Enable()
			else
				v449.Disable()
			end
		elseif p139 then
			f180()
		else
			f183()
		end
	end

	local Toggle22 = t373.Toggle
	local t382 = { Name = "Invisible", Flag = "MiscInvisible", Default = false, Callback = nil }
	local t383 = (Toggle22(t373, t382))
	local Keybind3 = t383.Keybind
	local t384 = { Flag = "MiscInvisibleKey", Default = false, Mode = "Toggle" }

	function t384.Callback(p140)
		t383.Set(p140)
	end

	Keybind3(t383, t384)
	local Dropdown8 = t373.Dropdown
	local t385 = { Name = "Method", Flag = "MiscInvisMethod" }
	local v450 = (table.create(2))
	v450[1] = "HideBody"
	v450[2] = "Anim"
	t385.Options = v450
	t385.Default = "HideBody"

	function t385.Callback(p141)
		local MiscInvisible = t5.Flags.MiscInvisible
		if MiscInvisible then
			f205(false)
		end
		HideBody = p141
		if MiscInvisible then
			f205(true)
		end
	end

	Dropdown8(t373, t385)

	local function f206(p142)
		if not p142 then
			return
		end
		local Humanoid6 = (p142:WaitForChild("Humanoid", 5))
		if Humanoid6 then
			Humanoid6.Died:Connect(f183)
		end
	end

	local Keybind4, f207, v451
	if LocalPlayer2.Character then
		f206(LocalPlayer2.Character)
		Keybind4 = nil
		f207 = nil
		v451 = nil
	end

	local function f208(p143)
		f206(p143)
		if t374.Enabled then
			if not p143 then
				return
			end
			task.wait(3)
			f180()
		end
	end

	LocalPlayer2.CharacterAdded:Connect(f208)
	LocalPlayer2.CharacterRemoving:Connect(f183)

	local function f209()
		local v452 = LocalPlayer2.Character
		if v452 then
			v452 = (LocalPlayer2.Character:FindFirstChildOfClass("Humanoid"))
		end
		if v452 then
			CurrentCamera.CameraSubject = v452
		end
	end

	local function f210(...)
		local v453
		v453 = not not true
		if v453 then
			v453 = (string.unpack("<i8", "z\0\0\0\0\0\0\0"))
		end
		local v454 = ...
		if v454 then
			f179(LocalPlayer2.Character, 1)
		elseif not t374.Enabled then
			f179(LocalPlayer2.Character, nil)
		end
	end

	local function f211()
		local Enabled2 = t333.Enabled
		local f212 = Enabled2
		if Enabled2 then
			return
		end
		t333.Enabled = true
		f212 = f210
		f212(true)
		f212 = nil

		local function f213()
			if not t333.Enabled then
				return
			end
			f210(true)
			local t386 = (f167())
			local v455
			if t386 then
				v455 = t386.Character
			else
				v455 = t386
			end
			if v455 then
				v455 = (t386.Character:FindFirstChildOfClass("Humanoid"))
			end
			if v455 then
				if f212 ~= v455 then
					CurrentCamera.CameraSubject = v455
					f212 = v455
				end
			elseif f212 ~= nil then
				f209()
				f212 = nil
			end
		end

		t333.Connection = (RunService.RenderStepped:Connect(f213))
	end

	local function f214()
		local v456
		if not t333.Enabled then
			v456 = not true
			if not v456 then
				v456 = 502
			end
			return
		end
		t333.Enabled = false
		if t333.Connection then
			t333.Connection:Disconnect()
			t333.Connection = nil
		end
		f209()
		f210(false)
	end

	Keybind4 = t310
	local Toggle23 = t310.Toggle
	local t387 = { Name = "Spectate Target", Flag = "MiscSpectateTarget", Default = false }

	function t387.Callback(p144)
		if p144 then
			f211()
		else
			f214()
		end
	end

	local t388 = (Toggle23(Keybind4, t387))
	Keybind4 = t388.Keybind
	local t389 = { Flag = "MiscSpectateTargetKey", Default = false, Mode = "Toggle" }

	function t389.Callback(p145)
		t388.Set(p145)
	end

	Keybind4(t388, t389)
	Keybind4 = false

	local function f215(...)
		for _, v457 in pairs(workspace:GetDescendants()) do
			if v457:IsA(nil) then
				v457.HoldDuration = 0
			end
		end
	end

	local function f216()
		Keybind4 = true
		f215()

		local function f217(p146)
			if Keybind4 then
				p146.HoldDuration = 0
			end
		end

		game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(f217)
	end

	local function f218()
		Keybind4 = false
	end

	local Toggle24 = t373.Toggle
	f207 = { Name = "Instant Pickup", Flag = "MiscInstantPickup", Default = false }

	v451 = function()
		local v458
		v458 = not not false
		if not v458 then
			v458 = (string.unpack(">i8", "\0\0\0\0\0\0\1T"))
		end
		f216()
	end

	f207.Callback = v451
	Toggle24(t373, f207)
	local t390 = { Enabled = false, Hook = nil, CharConn = nil }

	local function f219()
		if getrenv then
			if hookfunction and debug and debug.getupvalue then
				local function f220()
					local S_Get = getrenv()._G.S_Get
					local v459 = (debug.getupvalue(S_Get, 1))

					local function f221()
						return 100, 100
					end

					t390.Hook = (hookfunction(v459, f221))
				end

				pcall(f220)
				return
			end
		end
	end

	v451 = t373
	f207 = t373.Toggle
	local t391 = { Name = "Infinity Stamina", Flag = "MiscInfStamina", Default = false }

	function t391.Callback(p147)
		t390.Enabled = p147
		if p147 then
			f219()
			if t390.CharConn then
				t390.CharConn:Disconnect()
			end

			local function f222()
				local _ = 12823 + (bit32.rrotate(346, 0) + 322) + -13286
				if t390.Enabled then
					task.wait(1)
					f219()
				end
			end

			t390.CharConn = (LocalPlayer2.CharacterAdded:Connect(f222))
		else
			if t390.CharConn then
				t390.CharConn:Disconnect()
				t390.CharConn = nil
			end
			if t390.Hook then
				local function f223()
					local S_Get2 = getrenv()._G.S_Get
					local v460 = (debug.getupvalue(S_Get2, 1))
					hookfunction(v460, t390.Hook)
				end

				pcall(f223)
				t390.Hook = nil
			end
		end
	end

	f207(v451, t391)
	f207 = nil
	v451 = {}
	local Toggle25 = t373.Toggle
	local t392 = { Name = "Noclip", Flag = "MiscNoclip", Default = false }

	function t392.Callback(p148)
		if f207 then
			f207:Disconnect()
			f207 = nil
		end
		if p148 then
			local function f224()
				local Character17 = LocalPlayer2.Character
				if not Character17 then
					return
				end
				local FindFirstChildOfClass10 = (Character17:FindFirstChildOfClass("Humanoid"))
				if not (FindFirstChildOfClass10 and 15 < FindFirstChildOfClass10.Health) then
					return
				end
				for _, t393 in ipairs(Character17:GetDescendants()) do
					if t393:IsA("BasePart") and t393.CanCollide == true then
						t393.CanCollide = false
						v451[t393] = true
					end
				end
			end

			f207 = (RunService.RenderStepped:Connect(f224))
		else
			for t394, _ in pairs(v451) do
				if t394 and t394.Parent then
					t394.CanCollide = true
				end
			end
			v451 = {}
		end
	end

	local t395 = (Toggle25(t373, t392))
	local Keybind5 = t395.Keybind
	local t396 = { Flag = "MiscNoclipKey", Default = false, Mode = "Toggle" }

	function t396.Callback(p149)
		t395.Set(p149)
	end

	Keybind5(t395, t396)
	local t397 = { Enabled = false }

	local function f225(p150)
		for _, t398 in ipairs(p150:GetDescendants()) do
			if t398:IsA("ImageLabel") and t398.Name == "Bar" and
				t398.Parent.Name ~= "Attempts" then
				local v461 = t398
				local Size = t398.Size

				local function f226()
					if t397.Enabled then
						v461.Size = (UDim2.new(0, 280, 0, 280))
					else
						v461.Size = Size
					end
				end

				RunService.RenderStepped:Connect(f226)
			end
		end
	end

	local Toggle26 = t373.Toggle
	local t399 = { Name = "No Fail Lockpick", Flag = "MiscNoFailLockpick", Default = false }

	function t399.Callback(p151)
		t397.Enabled = p151

		local function f227(p152)
			if p152:IsA("ScreenGui") then
				if p152.Name == "LockpickGUI" then
					f225(p152)
				end
			end
		end

		LocalPlayer2.PlayerGui.ChildAdded:Connect(f227)
	end

	Toggle26(t373, t399)
	local t400 = { Enabled = false, Conn = nil }
	local Toggle27 = t373.Toggle
	local t401 = { Name = "Auto Pickup Money", Flag = "MiscAutoPickupMoney", Default = false }

	function t401.Callback(p153)
		t400.Enabled = p153
		if t400.Conn then
			t400.Conn:Disconnect()
			t400.Conn = nil
		end
		if not p153 then
			return
		end
		local CZDPZUS = (ReplicatedStorage.Events:FindFirstChild("CZDPZUS"))
		local v462 = workspace
		local _ = bit32.rshift
		local v463 = false
		if not v463 then
			v463 = (string.byte("PLF+", 4, 4))
		end
		local v464 = "Filter"
		local FindFirstChild15 = (v462:FindFirstChild(v464))
		if FindFirstChild15 then
			v462 = workspace.Filter
			v464 = "SpawnedBread"
			FindFirstChild15 = (v462:FindFirstChild(v464))
		end
		if CZDPZUS then
			local v465 = v462
			local tick2 = v464
			if FindFirstChild15 then
				v465 = true
				tick2 = tick
				tick2 = (tick2())
				local v466 = FindFirstChild15

				local function f228()
					if not t400.Enabled then
						return
					end
					local t402 = LocalPlayer2.Character
					if t402 then
						t402 = (t402:FindFirstChild("HumanoidRootPart"))
					end
					if not t402 then
						return
					end
					if not v465 then
						if not (1 <= tick() - tick2) then
							return
						end
						v465 = true
						tick2 = (tick())
					end
					local v467
					v467 = not not true
					if v467 then
						v467 = (string.len("\\\220"))
					end
					local v468 = nil
					local v469 = 5
					for _, t403 in pairs(v466:GetChildren()) do
						local Magnitude7 = (t402.Position - t403.Position).Magnitude
						if Magnitude7 < v469 then
							v468 = t403
							v469 = Magnitude7
						end
					end
					if v468 and v465 then
						CZDPZUS:FireServer(v468)
						v465 = false
						tick2 = (tick())
					end
				end

				t400.Conn = (RunService.RenderStepped:Connect(f228))
				return
			end
		end
	end

	Toggle27(t373, t401)
	local Toggle28 = t373.Toggle
	local t404 = { Name = "No Barriers", Flag = "MiscNoBarriers", Default = false }

	function t404.Callback(p154)
		local v470 = (workspace:FindFirstChild("Filter"))
		if v470 then
			v470 = (workspace.Filter:FindFirstChild("Parts"))
		end
		if v470 then
			v470 = (workspace.Filter.Parts:FindFirstChild("F_Parts"))
		end
		if not v470 then
			return
		end
		for _, v471 in ipairs(v470:GetDescendants()) do
			if v471:IsA("Part") or v471:IsA("MeshPart") then
				v471.CanTouch = not p154
			end
		end
	end

	Toggle28(t373, t404)
	local t405 = {
		Enabled = false,
		Conn = nil,
		LastRefill = 0,
		MaxStored = {},
		MaxCurrent = {}
	}
	local Toggle29 = t373.Toggle
	local t406 = { Name = "Auto Refill Ammo", Flag = "MiscAutoRefillAmmo", Default = false }
	local t407 = { Name = "Auto refill ammo", Description = "Simply but helpful" }
	t406.ToolTip = t407

	function t406.Callback(p155)
		t405.Enabled = p155
		if t405.Conn then
			t405.Conn:Disconnect()
			t405.Conn = nil
		end
		if not p155 then
			return
		end

		local function f229()
			if not t405.Enabled then
				return
			end
			if tick() - t405.LastRefill < 0.5 then
				return
			end
			local Character18 = LocalPlayer2.Character
			if not Character18 then
				return
			end
			local HumanoidRootPart8 = (Character18:FindFirstChild("HumanoidRootPart"))
			if not HumanoidRootPart8 then
				return
			end
			local FindFirstChildOfClass11 = (Character18:FindFirstChildOfClass("Tool"))
			if not FindFirstChildOfClass11 then
				return
			end
			local Name6 = FindFirstChildOfClass11.Name

			local function f230()
				local v472 = (LocalPlayer2.PlayerGui:FindFirstChild("GunGUI"))
				if v472 then
					v472 = (v472:FindFirstChild("Frame"))
				end
				if v472 then
					v472 = (v472:FindFirstChild("Main"))
				end
				if not v472 then
					return nil, nil
				end
				local v473
				v473 = math.modf(3.141592653589793) - 477 == 172
				if not v473 then
					v473 = 40
				end
				local Current = (v472:FindFirstChild("Current"))
				local Stored = (v472:FindFirstChild("Stored"))
				if Current then
					Current = (tonumber(tostring(Current.Text):match("%-?%d+")))
				end
				if Stored then
					Stored = (tonumber(tostring(Stored.Text):match("%-?%d+")))
				end
				return Current, Stored
			end

			local v474, v475, v476
			v476, v475, v474 = pcall(f230)
			if v476 and (v475 or v474) then
				local v477 = false
				if v475 then
					local v478 = t405.MaxCurrent[Name6]
					if v478 and not (v478 < v475) then
						if 1 <= v478 - v475 then
							v477 = true
						end
					else
						t405.MaxCurrent.HumanoidRootPart = v475
					end
				end
				if v474 then
					local v479 = t405.MaxStored[Name6]
					if v479 and not (v479 < v474) then
						if 1 <= v479 - v474 then
							v477 = true
						end
					else
						t405.MaxStored[Name6] = v474
					end
				end
				if not v477 then
					return
				end
			end
			local BYZERSPROTEC = (ReplicatedStorage.Events:FindFirstChild("BYZERSPROTEC"))
			local SSHPRMTE1 = (ReplicatedStorage.Events:FindFirstChild("SSHPRMTE1"))
			if not (BYZERSPROTEC and SSHPRMTE1) then
				return
			end
			local v480 = (workspace:FindFirstChild("Map"))
			if v480 then
				v480 = (workspace.Map:FindFirstChild("Shopz"))
			end
			if not v480 then
				return
			end
			local t408 = nil
			local v481 = 15
			for _, t409 in ipairs(v480:GetChildren()) do
				local MainPart = (t409:FindFirstChild("MainPart"))
				if MainPart then
					local Magnitude8 = (HumanoidRootPart8.Position - MainPart.Position).Magnitude
					if Magnitude8 < v481 then
						local v482 = "IllegalStore"
						if t409.Name:lower():find("armor") or t409.Name:lower():find("legal") then
							v482 = "LegalStore"
						end
						t408 = {
							name = v482,
							main_part = MainPart,
							dist = Magnitude8,
							folder = t409.Name
						}
						v481 = Magnitude8
					end
				end
			end
			local v483 = t408
			if t408 then
				local function f231()
					BYZERSPROTEC:FireServer()
					SSHPRMTE1:InvokeServer(
						v483.name,
						"Guns",
						Name6,
						v483.main_part,
						"ResupplyAmmo",
						true
					)
					t405.LastRefill = (tick())
					task.wait(0.1)
					local FindFirstChild16 = (LocalPlayer2.Backpack:FindFirstChild(Name6))
					if FindFirstChild16 and Character18:FindFirstChild("Humanoid") then
						Character18.Humanoid:EquipTool(FindFirstChild16)
					end
				end

				pcall(f231)
			end
		end

		t405.Conn = (RunService.Heartbeat:Connect(f229))
	end

	Toggle29(t373, t406)
	local t410 = { Enabled = false, Conn = nil, Item = "Beretta", LastBuy = 0 }
	local Dropdown9 = t373.Dropdown
	local t411 = { Name = "Auto Buy Item", Flag = "MiscAutoBuyItem" }
	local v484 = (table.create(2))
	v484[1] = "Beretta"
	v484[2] = "TEC-9"
	t411.Options = v484
	t411.Default = "Beretta"
	t411.Multi = false
	local t412 = { Name = "Auto buy", Description = "Simple good for HvH" }
	t411.ToolTip = t412

	function t411.Callback(p156)
		t410.Item = p156
	end

	Dropdown9(t373, t411)
	local Toggle30 = t373.Toggle
	local t413 = { Name = "Auto Buy", Flag = "MiscAutoBuy", Default = false }

	function t413.Callback(...)
		local _ = 21044 + bit32.rrotate(195, 29) + -22530
		local v485 = ...
		t410.Enabled = v485
		if t410.Conn then
			t410.Conn:Disconnect()
			t410.Conn = nil
		end
		if not v485 then
			return
		end

		local function f232()
			if not t410.Enabled then
				return
			end
			if tick() - t410.LastBuy < 1 then
				return
			end
			local Character19 = LocalPlayer2.Character
			if not Character19 then
				return
			end
			local HumanoidRootPart9 = (Character19:FindFirstChild("HumanoidRootPart"))
			if not HumanoidRootPart9 then
				return
			end
			local SSHPRMTE12 = (ReplicatedStorage.Events:FindFirstChild("SSHPRMTE1"))
			if not SSHPRMTE12 then
				return
			end
			local v486 = (workspace:FindFirstChild("Map"))
			if v486 then
				v486 = (workspace.Map:FindFirstChild("Shopz"))
			end
			if not v486 then
				return
			end
			local v487 = nil
			local v488 = 15
			for _, v489 in ipairs(v486:GetChildren()) do
				local MainPart2 = (v489:FindFirstChild("MainPart"))
				if MainPart2 then
					local Magnitude9 = (HumanoidRootPart9.Position - MainPart2.Position).Magnitude
					if Magnitude9 < v488 then
						v487 = MainPart2
						v488 = Magnitude9
					end
				end
			end
			local v490 = v487
			if v487 then
				local Item = t410.Item
				local t414 = (table.create(4))
				t414[1] = "Melees"
				t414[2] = "Guns"
				t414[3] = "Throwables"
				t414[4] = "Misc"
				local t415 = (table.create(2))
				t415[1] = "IllegalStore"
				t415[2] = "LegalStore"
				local v491 = false
				local v492, v493, f233
				f233, v493, v492 = ipairs(t415)
				v490 = v487
				while true do
					local v494
					v492, v494 = f233(v493, v492)
					if v492 == nil then
						break
					end
					for _, v495 in ipairs(t414) do
						local v496 = v494
						local v497 = v495

						local function f234()
							return SSHPRMTE12:InvokeServer(v496, v497, Item, v490)
						end

						local _, v498
						v498, _ = pcall(f234)
						if v498 then
							v491 = true
							break
						end
					end
					if v491 then
						break
					end
				end
				t410.LastBuy = (tick())
			end
		end

		t410.Conn = (RunService.Heartbeat:Connect(f232))
	end

	Toggle30(t373, t413)
	local t416 = { Enabled = false, Conn = nil }

	local function f235(...)
		local _ = nil
		return nil
	end

	local Toggle31 = t373.Toggle
	local t417 = { Name = "Auto Claim Allowance", Flag = "MiscAutoClaimAllowance", Default = false }

	function t417.Callback(p157)
		t416.Enabled = p157
		if t416.Conn then
			t416.Conn:Disconnect()
			t416.Conn = nil
		end
		local _ = bit32.bor
		local v499
		v499 = not not false
		if not v499 then
			v499 = 446
		end
		local _ = 11303 + bit32.bor(v499, 149) + -11664
		if not p157 then
			return
		end

		local function f236()
			local _ = bit32.rrotate
			local v500
			v500 = true and 10 or 202
			local _ = 7860 + bit32.rrotate(v500, 29) + -7819
			if not t416.Enabled then
				return
			end
			local t418 = (ReplicatedStorage:FindFirstChild("PlayerbaseData2"))
			if t418 then
				t418 = (t418:FindFirstChild(LocalPlayer2.Name))
			end
			if t418 then
				t418 = (t418:FindFirstChild("NextAllowance"))
			end
			if not (t418 and t418.Value == 0) then
				return
			end
			local v501 = (f235(math.huge))
			if v501 then
				ReplicatedStorage.Events.CLMZALOW:InvokeServer(v501)
			end
		end

		t416.Conn = (RunService.Heartbeat:Connect(f236))
	end

	Toggle31(t373, t417)
	local t419 = {
		Enabled = false,
		Blocking = false,
		LastTrigger = 0,
		BlockCache = {},
		Conn = nil
	}

	local function f237()
		local v502 = (ReplicatedStorage:FindFirstChild("Events"))
		if v502 then
			v502 = (v502:FindFirstChild("XMHH.2"))
		end
		return v502
	end

	local function f238()
		local _ = bit32.lrotate
		local v503
		v503 = not not true
		if v503 then
			v503 = 437
		end
		local _ = -1832894719 + bit32.lrotate(v503, 22) + -16024
		local v504 = (ReplicatedStorage:FindFirstChild("Values"))
		if v504 then
			v504 = (v504:FindFirstChild("ServerTick"))
		end
		return v504
	end

	local function f239(...)
		local _ = -3758071752 + bit32.rrotate(-265, 6) + -24625
		local v505 = ...
		local v506 = (f237())
		local v507 = (f238())
		if v506 and v507 then
			local function f240()
				v506:InvokeServer("🍞", math.floor(v507.Value - 81919), v505, "BZLZSTI2")
			end

			pcall(f240)
		end
		t419.Blocking = false
	end

	local function f241()
		if t419.Conn then
			t419.Conn:Disconnect()
		end

		local function f242(...)
			if not t419.Enabled then
				return
			end
			local Character20 = LocalPlayer2.Character
			local HumanoidRootPart10
			if Character20 then
				HumanoidRootPart10 = (Character20:FindFirstChild("HumanoidRootPart"))
			else
				HumanoidRootPart10 = Character20
			end
			local FindFirstChildOfClass12
			if Character20 then
				FindFirstChildOfClass12 = (Character20:FindFirstChildOfClass("Tool"))
			else
				FindFirstChildOfClass12 = Character20
			end
			if not (FindFirstChildOfClass12 and HumanoidRootPart10) then
				if t419.Blocking then
					f239(nil)
				end
				return
			end
			local v508 = t419.BlockCache[FindFirstChildOfClass12]
			local f243 = v508
			if v508 == nil then
				f243 = false
				local v509 = FindFirstChildOfClass12

				local function f244()
					local t420 = (require(v509:FindFirstChild("Config")))
					if t420 and t420.BlockSettings and t420.BlockSettings.Enabled then
						f243 = true
					end
				end

				pcall(f244)
				if not (f243 or not FindFirstChildOfClass12:FindFirstChild("AnimsFolder") or
					not FindFirstChildOfClass12.AnimsFolder:FindFirstChild("BlockStart")) then
					f243 = true
				end
				if FindFirstChildOfClass12:GetAttribute("CanBlock") == false then
					f243 = false
				end
				t419.BlockCache[FindFirstChildOfClass12] = f243
			end
			f243 = t419.BlockCache
			f243 = f243[FindFirstChildOfClass12]
			if not f243 then
				f243 = t419.Blocking
				if f243 then
					f243 = f239
					f243(FindFirstChildOfClass12)
				end
				return
			end
			f243 = false
			for _, t421 in ipairs(Players:GetPlayers()) do
				if not (t421 == LocalPlayer2 or not t421.Character or
					not (t421.Character:FindFirstChild("HumanoidRootPart") and
						(t421.Character.HumanoidRootPart.Position - HumanoidRootPart10.Position).Magnitude <= 15)) then
					local FindFirstChildOfClass13 = (t421.Character:FindFirstChildOfClass("Tool"))
					if FindFirstChildOfClass13 and
						not FindFirstChildOfClass13:GetAttribute("Unblockable") and
						not FindFirstChildOfClass13:GetAttribute("IgnoreBlock") then
						local v510 = false
						local Values = (FindFirstChildOfClass13:FindFirstChild("Values"))
						if Values then
							if Values:FindFirstChild("Slashing1") and Values.Slashing1.Value or
								Values:FindFirstChild("Attacking") and Values.Attacking.Value then
								v510 = true
							else
								for _, t422 in ipairs(Values:GetChildren()) do
									if t422.Name:find("Slashing") and t422.Value == true then
										v510 = true
										break
									end
								end
							end
						end
						if not v510 then
							local FindFirstChildOfClass14 = (t421.Character:FindFirstChildOfClass("Humanoid"))
							if FindFirstChildOfClass14 then
								for _, t423 in ipairs(FindFirstChildOfClass14:GetPlayingAnimationTracks()) do
									local lower = (t423.Name:lower())
									if lower:find("slash") or lower:find("swing") or
										(lower:find("attack") or lower:find("lunge")) or lower:find("heavy") then
										v510 = true
										break
									end
								end
							end
						end
						if v510 then
							f243 = true
							break
						end
					end
				end
			end
			if f243 then
				t419.LastTrigger = (tick())
				if not t419.Blocking then
					t419.Blocking = true
					local v511 = FindFirstChildOfClass12

					local function f245()
						local v512 = (f237())
						local v513 = (f238())
						local t424 = v511
						while t419.Blocking and t419.Enabled and
							(Character20 and t424.Parent == Character20) do
							if v512 and v513 then
								local function f246()
									local _ = 1614 + (math.modf(3.141592653589793) - 449 - 103) + -944
									v512:InvokeServer(
										"🍞",
										math.floor(v513.Value - 81919),
										t424,
										"BLSTAX1"
									)
								end

								pcall(f246)
							end
							task.wait(0.1)
							if 0.2 < tick() - t419.LastTrigger then
								break
							end
						end
						if t419.Blocking then
							f239(t424)
						end
					end

					task.spawn(f245)
				end
			elseif t419.Blocking and 0.2 < tick() - t419.LastTrigger then
				f239(FindFirstChildOfClass12)
			end
		end

		t419.Conn = (RunService.Heartbeat:Connect(f242))
	end

	local function f247()
		t419.Enabled = false
		local v514, v515
		if t419.Conn then
			v515 = not false
			if v515 then
				v515 = 489
			end
			v514 = not (v515 == 342)
			if v514 then
				v514 = (string.len("\213\4V"))
			end
			t419.Conn:Disconnect()
			t419.Conn = nil
		end
		local v516 = LocalPlayer2.Character
		if v516 then
			v516 = (v516:FindFirstChildOfClass("Tool"))
		end
		if t419.Blocking then
			f239(v516)
		end
		t419.BlockCache = {}
	end

	local Toggle32 = t373.Toggle
	local t425 = { Name = "Auto Block", Flag = "MiscAutoBlock", Default = false }

	function t425.Callback(p158)
		if p158 then
			t419.Enabled = true
			f241()
		else
			f247()
		end
	end

	Toggle32(t373, t425)
	local t426 = v105
	local Section9 = t426.Section
	local t427 = { Name = "Security", Side = "Right" }
	local t428 = (Section9(t426, t427))
	local t429 = {
		Enabled = false,
		FakeName = LocalPlayer2.Name,
		FakeDisplay = LocalPlayer2.DisplayName,
		Conns = {}
	}

	local function f248()
		return t429.FakeDisplay
	end

	local function f249()
		return t429.FakeName
	end

	local function f250(p159)
		if not (p159:IsA("TextLabel") or p159:IsA("TextButton") or p159:IsA("TextBox")) then
			return
		end

		local function f251()
			local v517 = p159.Text
			if v517 == "" then
				return
			end
			local v518 = (f248())
			local v519 = (f249())
			local DisplayName = LocalPlayer2.DisplayName
			local Name7 = LocalPlayer2.Name
			if v517:find(v518, 1, true) then
				return
			end
			if v517:find(DisplayName, 1, true) then
				v517 = (v517:gsub(DisplayName, v518))
			end
			if v517:find(Name7, 1, true) then
				v517 = (v517:gsub(Name7, v519))
			end
			if v517 ~= p159.Text then
				p159.Text = v517
			end
		end

		f251()
		local Connect6 = (p159:GetPropertyChangedSignal("Text"):Connect(f251))
		table.insert(t429.Conns, Connect6)
	end

	local function f252(...)
		local v520
		v520 = not not false
		if not v520 then
			v520 = 364
		end
		local t430 = ...
		for _, v521 in ipairs(t430:GetDescendants()) do
			if v521:IsA("TextLabel") then
				local v522 = v521
				local v523 = (f248())

				local function f253()
					if v522.Text ~= v523 then
						v522.Text = v523
					end
				end

				f253()
				local Connect7 = (v521:GetPropertyChangedSignal("Text"):Connect(f253))
				table.insert(t429.Conns, Connect7)
			end
		end

		local function f254(p160)
			if p160:IsA("TextLabel") then
				p160.Text = (f248())

				local function f255()
					if p160.Text ~= f248() then
						p160.Text = (f248())
					end
				end

				local Connect8 = (p160:GetPropertyChangedSignal("Text"):Connect(f255))
				table.insert(t429.Conns, Connect8)
			end
		end

		local Connect9 = (t430.DescendantAdded:Connect(f254))
		table.insert(t429.Conns, Connect9)
	end

	local function f256(p161)
		local v524 = (p161:FindFirstChildOfClass("Humanoid"))
		if not v524 then
			v524 = (p161:WaitForChild("Humanoid", 5))
		end
		if v524 then
			local v525 = v524

			local function f257()
				local v526 = (f248())
				if v525.DisplayName ~= v526 then
					v525.DisplayName = v526
				end
			end

			f257()
			local Connect10 = (v524:GetPropertyChangedSignal("DisplayName"):Connect(f257))
			table.insert(t429.Conns, Connect10)
		end
		task.wait(0.3)
		for _, v527 in ipairs(p161:GetDescendants()) do
			if v527:IsA("BillboardGui") then
				f252(v527)
			end
		end
	end

	local function f258()
		t429.Enabled = true
		for _, v528 in ipairs(LocalPlayer2.PlayerGui:GetDescendants()) do
			f250(v528)
		end
		local Connect11 = (LocalPlayer2.PlayerGui.DescendantAdded:Connect(f250))
		table.insert(t429.Conns, Connect11)

		local function f259()
			local CoreGui2 = (game:GetService("CoreGui"))
			for _, v529 in ipairs(CoreGui2:GetDescendants()) do
				f250(v529)
			end
			local Connect12 = (CoreGui2.DescendantAdded:Connect(f250))
			table.insert(t429.Conns, Connect12)
		end

		pcall(f259)
		if LocalPlayer2.Character then
			f256(LocalPlayer2.Character)
		end

		local function f260(p162)
			if not t429.Enabled then
				return
			end
			task.wait(0.5)
			f256(p162)
		end

		local Connect13 = (LocalPlayer2.CharacterAdded:Connect(f260))
		table.insert(t429.Conns, Connect13)

		local function f261(...)
			local t431, v530, v531, f262, v532, v533
			while true do
				local _continue30 = false
				local _leave29 = false
				if t431:IsA("TextLabel") then
					local Text = t431.Text
					if Text:find(nil, 1, true) or Text:find(nil, 1, true) then
						f252(v530)
						_leave29 = true
					end
				end
				if not _leave29 then
					v533, t431 = f262(v532, v533)
					if v533 ~= nil then
						_continue30 = true
					end
				end
				if _continue30 then
					continue
				end
				while true do
					v531, v530 = (nil)(nil, v531)
					if v531 == nil then
						break
					end
					if v530:IsA("BillboardGui") then
						f262, v532, v533 = ipairs(v530:GetDescendants())
						v533, t431 = f262(v532, v533)
						if v533 ~= nil then
							_continue30 = true
							break
						end
					end
				end
				if _continue30 then
					continue
				end

				local function f263(p163)
					local v534
					if p163:IsA("BillboardGui") then
						task.wait(0.3)
						local _ = bit32.countlz
						v534 = not not false
						if not v534 then
							v534 = 39
						end
						local _ = 6090 + bit32.countlz(v534) + -6111
						for _, t432 in ipairs(p163:GetDescendants()) do
							if t432:IsA("TextLabel") then
								local Text2 = t432.Text
								if Text2:find(LocalPlayer2.Name, 1, true) or
									Text2:find(LocalPlayer2.DisplayName, 1, true) then
									f252(p163)
									break
								end
							end
						end
					end
				end

				local Connect14 = (workspace.DescendantAdded:Connect(f263))
				table.insert(t429.Conns, Connect14)
				return
			end
		end

		pcall(f261)

		local function f264()
			local TextChatService = (game:GetService("TextChatService"))
			if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
				function TextChatService.OnIncomingMessage(p164)
					local v535 = (Instance.new("TextChatMessageProperties"))
					if p164.TextSource and p164.TextSource.UserId == LocalPlayer2.UserId then
						v535.PrefixText = (f248())
					end
					return v535
				end
			end
		end

		pcall(f264)
	end

	local function f265()
		local _ = bit32.countrz
		local v536
		v536 = not not false
		if not v536 then
			v536 = 40
		end
		local _ = 22308 + bit32.countrz(v536) + -22310
		t429.Enabled = false
		for _, v537 in ipairs(t429.Conns) do
			local v538 = v537

			local function f266()
				v538:Disconnect()
			end

			pcall(f266)
		end
		t429.Conns = {}

		local function f267()
			local v539
			v539 = bit32.lrotate(501, 21) < 47
			if not v539 then
				v539 = 338
			end
			local v540 = LocalPlayer2.Character
			if nil then
				v540 = (v540:FindFirstChildOfClass("Humanoid"))
			end
			if v540 then
				v540.DisplayName = LocalPlayer2.DisplayName
			end
		end

		pcall(f267)

		local function f268()
			local TextChatService2 = (game:GetService("TextChatService"))
			if TextChatService2.ChatVersion == Enum.ChatVersion.TextChatService then
				TextChatService2.OnIncomingMessage = nil
			end
		end

		pcall(f268)
	end

	local Toggle33 = t428.Toggle
	local t433 = { Name = "Public Name Spoof", Flag = "SecPublicNameSpoof", Default = false }

	function t433.Callback(p165)
		if p165 then
			f258()
		else
			f265()
		end
	end

	Toggle33(t428, t433)
	local Textbox = t428.Textbox
	local t434 = {
		Name = "Fake Name",
		Flag = "SecPublicFakeName",
		PlaceHolder = LocalPlayer2.Name,
		Default = LocalPlayer2.Name
	}

	function t434.Callback(p166)
		local v541
		v541 = not (p166 == "")
		v541 = v541 and p166 or LocalPlayer2.Name
		t429.FakeName = v541
	end

	Textbox(t428, t434)
	local Textbox2 = t428.Textbox
	local t435 = {
		Name = "Fake Display Name",
		Flag = "SecPublicFakeDisplay",
		PlaceHolder = LocalPlayer2.DisplayName,
		Default = LocalPlayer2.DisplayName
	}

	function t435.Callback(p167)
		local v542
		v542 = not (p167 == "")
		v542 = v542 and p167 or LocalPlayer2.DisplayName
		t429.FakeDisplay = v542
	end

	Textbox2(t428, t435)

	local function f269(p168, p169, p170, p171, p172)
		if p172[p168] then
			p172[p168]:Disconnect()
			p172[p168] = nil
		end
		p172[p168 .. "_active"] = true
		p172[p168 .. "_get"] = p169
		p172[p168 .. "_prop"] = p170

		local function f270()
			if p172[p168 .. "_orig"] ~= nil then
				return
			end

			local function f271()
				local t436 = (p169())
				if t436 then
					p172[p168 .. "_orig"] = t436[p170]
				end
			end

			pcall(f271)
		end

		local function f272()
			local function f273()
				local _
				_ = not not false
				local t437 = p169
				;(nil)()
				if not t437 then
					return
				end
				if p172[p168 .. "_orig"] == nil then
					p172[p168 .. "_orig"] = t437[p170]
				end
				local v543 = (p171())
				if t437[p170] ~= v543 then
					t437[p170] = v543
				end
			end

			pcall(f273)
		end

		f270()
		f272()

		local function f274()
			local v544 = (p169())
			if v544 then
				p172[p168] = (v544:GetPropertyChangedSignal(p170):Connect(f272))
			end
		end

		pcall(f274)

		local function f275()
			while p172[p168 .. "_active"] do
				task.wait(0.5)
				if not p172[p168 .. "_active"] then
					break
				end
				f272()
				if not p172[p168] then
					local function f276()
						local v545 = (p169())
						if v545 then
							p172[p168] = (v545:GetPropertyChangedSignal(p170):Connect(f272))
						end
					end

					pcall(f276)
				end
			end
		end

		task.spawn(f275)
	end

	local function f277(...)
		local _ = 17599 + (23 - string.byte("\140\3\15\215\176", 1, 5)) + -17482
		local t438, v546
		v546, t438 = ...
		t438[v546 .. "_active"] = nil
		if t438[v546] then
			t438[v546]:Disconnect()
			t438[v546] = nil
		end
		local v547 = t438[v546 .. "_get"]
		local v548 = t438[v546 .. "_prop"]
		local v549 = t438[v546 .. "_orig"]
		if v547 and v548 and v549 ~= nil then
			local function f278()
				local v550 = (v547())
				if v550 then
					v550[v548] = v549
				end
			end

			pcall(f278)
		end
		t438[v546 .. "_orig"] = nil
		t438[v546 .. "_get"] = nil
		t438[v546 .. "_prop"] = nil
	end

	local t439 = {}
	local t440 = { Enabled = false, Text = "99999 / 99999 XP" }
	local Toggle34 = t428.Toggle
	local t441 = { Name = "Spoof XP Bar", Flag = "SecSpoofXP", Default = false }

	function t441.Callback(p173)
		t440.Enabled = p173
		if p173 then
			local function f279(...)
				local v551
				v551 = not not false
				if not v551 then
					v551 = 493
				end
				local v552 = (LocalPlayer2.PlayerGui:FindFirstChild("CoreGUI"))
				if v552 then
					v552 = (LocalPlayer2.PlayerGui.CoreGUI:FindFirstChild("LevelFrame"))
				end
				if v552 then
					v552 = (LocalPlayer2.PlayerGui.CoreGUI.LevelFrame:FindFirstChild("Bar"))
				end
				if v552 then
					v552 = (LocalPlayer2.PlayerGui.CoreGUI.LevelFrame.Bar:FindFirstChild("Stat"))
				end
				return v552
			end

			local function f280()
				return t440.Text
			end

			f269("xp", f279, "Text", f280, t439)
		else
			f277("xp", t439)
		end
	end

	Toggle34(t428, t441)
	local Textbox3 = t428.Textbox
	local t442 = {
		Name = "XP Text",
		Flag = "SecSpoofXPText",
		PlaceHolder = "99999 / 99999 XP",
		Default = "99999 / 99999 XP"
	}

	function t442.Callback(p174)
		t440.Text = p174
	end

	Textbox3(t428, t442)
	local t443 = { Enabled = false, Text = "999" }
	local Toggle35 = t428.Toggle
	local t444 = { Name = "Spoof Level HUD", Flag = "SecSpoofLevelHUD", Default = false }

	function t444.Callback(p175)
		t443.Enabled = p175
		if p175 then
			local function f281()
				local v553 = (LocalPlayer2.PlayerGui:FindFirstChild("CoreGUI"))
				if v553 then
					v553 = (LocalPlayer2.PlayerGui.CoreGUI:FindFirstChild("LevelFrame"))
				end
				if v553 then
					v553 = (LocalPlayer2.PlayerGui.CoreGUI.LevelFrame:FindFirstChild("LevelBox"))
				end
				if v553 then
					v553 = (LocalPlayer2.PlayerGui.CoreGUI.LevelFrame.LevelBox:FindFirstChild("LevelNumber"))
				end
				return v553
			end

			local function f282()
				return t443.Text
			end

			f269("lvl_hud", f281, "Text", f282, t439)
		else
			f277("lvl_hud", t439)
		end
	end

	Toggle35(t428, t444)
	local Textbox4 = t428.Textbox
	local t445 = {
		Name = "Level Text",
		Flag = "SecSpoofLevelHUDText",
		PlaceHolder = "999",
		Default = "999"
	}

	function t445.Callback(p176)
		t443.Text = p176
	end

	Textbox4(t428, t445)
	local t446 = { Enabled = false, Value = 999, conn = nil }

	local function f283(...)
		local Level2
		Level2 = (Level2:FindFirstChild("Level"))
		return Level2
	end

	local function f284()
		local v554 = (f283())
		if not v554 then
			return
		end

		local function f285()
			v554.Value = t446.Value
		end

		pcall(f285)
	end

	local function f286()
		local _ = bit32.bxor
		local v555 = false
		if not v555 then
			v555 = 258
		end
		local _ = 29918 + bit32.bxor(v555, 88, 365) + -29972
		f284()
		local v556 = (f283())
		if v556 then
			local function f287()
				if t446.Enabled then
					task.defer(f284)
				end
			end

			t446.conn = (v556:GetPropertyChangedSignal("Value"):Connect(f287))
		end
	end

	local function f288()
		if t446.conn then
			t446.conn:Disconnect()
			t446.conn = nil
		end
	end

	local Toggle36 = t428.Toggle
	local t447 = { Name = "Leaderboard Level", Flag = "SecLBLevel", Default = false }

	function t447.Callback(p177)
		t446.Enabled = p177
		if p177 then
			f286()
		else
			f288()
		end
	end

	Toggle36(t428, t447)
	local Textbox5 = t428.Textbox
	local t448 = {
		Name = "Level Value",
		Flag = "SecLBLevelValue",
		PlaceHolder = "999",
		Default = "999"
	}

	function t448.Callback(p178)
		local v557 = (tonumber(p178))
		if v557 then
			t446.Value = (math.floor(v557))
			if t446.Enabled then
				f284()
			end
		end
	end

	Textbox5(t428, t448)
	v37 = (v106:PlayerList({}))

	local function f289()
		local t449 = {}
		for _, t450 in Players:GetPlayers() do
			t449[t450.Name] = true
			if not v37.Players[t450.Name] then
				v37.AddPlayer(t450)
			end
		end
		for v558, t451 in pairs(v37.Players) do
			if not t449[v558] then
				if t451.Background then
					t451.Background:Destroy()
				end
				v37.Players[v558] = nil
			end
		end
	end

	local function f290(p179)
		if not v37.Players[p179.Name] then
			v37.AddPlayer(p179)
		end
	end

	Players.PlayerAdded:Connect(f290)

	local function f291(p180)
		local t452 = v37.Players[p180.Name]
		if t452 then
			if t452.Background then
				t452.Background:Destroy()
			end
			v37.Players[p180.Name] = nil
		end
	end

	Players.PlayerRemoving:Connect(f291)
	local Items = v37.Items
	local v559 = Items
	local f292 = f291
	local t453, v560, f293, v561, Random, f294, f295, Gamesense
	if Items then
		local Refresh = v37.Items.Refresh
		v559 = Refresh
		f292 = f291
		t453 = nil
		v560 = nil
		f293 = nil
		v561 = nil
		Random = nil
		f294 = nil
		f295 = nil
		Gamesense = nil
		if Refresh then
			local MouseButton1Click = v37.Items.Refresh.MouseButton1Click
			local Connect15 = MouseButton1Click.Connect
			Connect15(MouseButton1Click, f289)
			v559 = Connect15
			f292 = f289
			t453 = nil
			v560 = nil
			f293 = nil
			v561 = nil
			Random = nil
			f294 = nil
			f295 = nil
			Gamesense = nil
		end
	end
	v559 = nil
	f292 = t215
	local Toggle37 = t215.Toggle
	t453 = {
		Name = "Enable Rage Bot discord.gg/shieldgang",
		Flag = "RageBotToggle",
		Default = false
	}
	v560 = { Name = "Rage Bot", Description = "Automatically shoots at enemies in FOV" }
	t453.ToolTip = v560

	v560 = function(p181)
		t23.Enabled = p181
		local v562 = (ReplicatedStorage:FindFirstChild("Events"))
		local GNX_S2
		if v562 then
			GNX_S2 = (v562:FindFirstChild("GNX_S"))
		else
			GNX_S2 = v562
		end
		if v562 then
			v562 = (v562:FindFirstChild("ZFKLF__H"))
		end
		if t23.Enabled and not (GNX_S2 and v562) then
			t23.Enabled = false
			f51("Rage Bot", "Required remotes not found, cannot enable", 3)
			return
		end
		if t23.Enabled then
			if t23.FovCircle then
				t23.FovCircle:Remove()
			end
			if t23.TargetLineObj then
				t23.TargetLineObj:Remove()
			end
			t23.TargetLineObj = (Drawing.new("Line"))
			t23.TargetLineObj.Thickness = 1
			local TargetLineObj = t23.TargetLineObj
			local TargetLineColor = t23.TargetLineColor
			TargetLineObj.Color = TargetLineColor
			t23.FovCircle = (Drawing.new("Circle"))
			t23.FovCircle.Thickness = 1
			t23.FovCircle.Filled = false
			local FovCircle = t23.FovCircle
			local ShowFov = t23.ShowFov
			ShowFov = ShowFov and t23.FovLimit or false
			FovCircle.Visible = ShowFov
			t23.FovCircle.NumSides = 64
			local FovCircle2 = t23.FovCircle
			local FovRadius = t23.FovRadius
			if not FovRadius then
				FovRadius = 150
			end
			FovCircle2.Radius = FovRadius
			local FovCircle3 = t23.FovCircle
			local FovColor = t23.FovColor
			if not FovColor then
				FovColor = (Color3.new(1, 1, 1))
			end
			FovCircle3.Color = FovColor
			local GetMouseLocation3 = (UserInputService:GetMouseLocation())
			t23.FovCircle.Position = (Vector2.new(GetMouseLocation3.X, GetMouseLocation3.Y))
			if t23.FovUpdateConn then
				t23.FovUpdateConn:Disconnect()
			end

			local function f296()
				if t23.FovCircle then
					local GetMouseLocation4 = (UserInputService:GetMouseLocation())
					t23.FovCircle.Position = (Vector2.new(GetMouseLocation4.X, GetMouseLocation4.Y))
					local FovCircle4 = t23.FovCircle
					local FovRadius2 = t23.FovRadius
					if not FovRadius2 then
						FovRadius2 = 150
					end
					FovCircle4.Radius = FovRadius2
					local FovCircle5 = t23.FovCircle
					local FovColor2 = t23.FovColor
					if not FovColor2 then
						FovColor2 = (Color3.new(1, 1, 1))
					end
					FovCircle5.Color = FovColor2
					local FovCircle6 = t23.FovCircle
					local ShowFov2 = t23.ShowFov
					ShowFov2 = ShowFov2 and t23.FovLimit or false
					FovCircle6.Visible = ShowFov2
				end
			end

			t23.FovUpdateConn = (RunService.RenderStepped:Connect(f296))

			local function f297(p182)
				local v563 = ""
				for _ = 1, p182 do
					v563 = v563 .. string.char(math.random(97, 122))
				end
				return v563
			end

			local function f298()
				local v564
				v564 = not false
				if v564 then
					v564 = (string.byte("\185\210\26", 3, 3))
				end
				local v565
				v565 = v564 <= 393
				if v565 then
					v565 = 302
				end
				if not (v37 and v37.Players) then
					return false
				end
				for _, t454 in pairs(v37.Players) do
					if t454.Priority and t454.Priority.Text == "Enemy" then
						return true
					end
				end
				return false
			end

			local function f299(...)
				local v566 = LocalPlayer2.Character
				if v566 then
					v566 = (LocalPlayer2.Character:FindFirstChild("HumanoidRootPart"))
				end
				if not v566 then
					return nil
				end
				local v567 = (f298())
				local GetMouseLocation5 = (UserInputService:GetMouseLocation())

				local function f300(p183)
					local Character21 = p183.Character
					if not Character21 then
						return false
					end
					local FindFirstChildOfClass15 = (Character21:FindFirstChildOfClass("Humanoid"))
					if not FindFirstChildOfClass15 then
						return false
					end
					if t23.CheckDead and FindFirstChildOfClass15.Health <= 0 then
						return false
					end
					if Character21:FindFirstChildOfClass("ForceField") then
						return false
					end
					if t23.CheckDowned then
						local t455 = (ReplicatedStorage:FindFirstChild("CharStats"))
						if t455 then
							t455 = (t455:FindFirstChild(p183.Name))
						end
						if t455 then
							t455 = (t455:FindFirstChild("Downed"))
						end
						if t455 and t455.Value == true then
							return false
						end
					end
					return true
				end

				local v568, HumanoidRootPart11
				if v567 then
					local LockedEnemyTarget = t23.LockedEnemyTarget
					if LockedEnemyTarget and LockedEnemyTarget.Parent and
						(Players:FindFirstChild(LockedEnemyTarget.Name) == LockedEnemyTarget and
							f26(LockedEnemyTarget) == "Enemy") and f300(LockedEnemyTarget) then
						return LockedEnemyTarget
					end
					t23.LockedEnemyTarget = nil
					local t456 = {}
					for _, t457 in ipairs(Players:GetPlayers()) do
						if not (t457 == LocalPlayer2 or f26(t457) ~= "Enemy") then
							local t458 = t457.Character
							if t458 then
								HumanoidRootPart11 = (t458:FindFirstChild("HumanoidRootPart"))
							else
								HumanoidRootPart11 = t458
							end
							if t458 then
								t458 = (t458:FindFirstChild("Head"))
							end
							if HumanoidRootPart11 and t458 then
								f300(t457)
								local v569, t459
								t459, v569 = CurrentCamera:WorldToViewportPoint(t458.Position)
								if v569 then
									v568 = (Vector2.new(t459.X, t459.Y) - GetMouseLocation5).Magnitude
								else
									v568 = v569
								end
								if not v568 then
									v568 = math.huge
								end
								local _ = table.insert
								local string2 = string
								string2.scrDist = v568
								string2.on = v569
								table.insert(t456, string2)
							end
						end
					end

					local function f301(p184, p185)
						local function f302(...)
							local _ = bit32.countrz
							local v570
							v570 = 135 < math.modf(3.141592653589793)
							if not v570 then
								v570 = (string.unpack("<i8", "t\1\0\0\0\0\0\0"))
							end
							local _ = 12140 + bit32.countrz(v570) + -12140
							local t460 = ...
							if not t460.hittable then
								return 2
							end
							local v571
							v571 = t460.on and 0 or 1
							return v571
						end

						local v572 = (f302(p184))
						local v573 = (f302(p185))
						local v574
						if v572 == v573 then
							v574 = p184.worldDist < p185.worldDist
							return v574
						end
						local v575
						v575 = v572 < v573
						return v575
					end

					table.sort(t456, f301)
					for _, t461 in ipairs(t456) do
						if t461.hittable then
							t23.LockedEnemyTarget = t461.player
							return t461.player
						end
					end
					return nil
				end
				t23.LockedEnemyTarget = nil
				local v576 = nil
				local huge = math.huge
				local v577, v578, f303
				f303, v578, v577 = ipairs(Players:GetPlayers())
				local Head5, HumanoidRootPart12, FindFirstChildOfClass16
				while true do
					local _continue31 = false
					local t462
					v577, t462 = f303(v578, v577)
					if v577 == nil then
						break
					end
					if t462 ~= LocalPlayer2 then
						local Character22 = t462.Character
						if Character22 then
							FindFirstChildOfClass16 = (Character22:FindFirstChildOfClass("Humanoid"))
						else
							FindFirstChildOfClass16 = Character22
						end
						if Character22 then
							HumanoidRootPart12 = (Character22:FindFirstChild("HumanoidRootPart"))
						else
							HumanoidRootPart12 = Character22
						end
						if Character22 then
							Head5 = (Character22:FindFirstChild("Head"))
						else
							Head5 = Character22
						end
						local v579 = (f26(t462))
						local t463 = (ReplicatedStorage:FindFirstChild("CharStats"))
						if t463 then
							t463 = (t463:FindFirstChild(t462.Name))
						end
						if t463 then
							t463 = (t463:FindFirstChild("Downed"))
						end
						if t463 then
							t463 = t463.Value == true
						end
						if HumanoidRootPart12 then
							HumanoidRootPart12 = FindFirstChildOfClass16
						end
						if HumanoidRootPart12 then
							HumanoidRootPart12 = Head5
						end
						if HumanoidRootPart12 then
							HumanoidRootPart12 = not t23.CheckDead
							if not HumanoidRootPart12 then
								HumanoidRootPart12 = 0 < FindFirstChildOfClass16.Health
							end
						end
						if HumanoidRootPart12 then
							HumanoidRootPart12 = not t23.CheckDowned
							if not HumanoidRootPart12 then
								HumanoidRootPart12 = not t463
							end
						end
						if HumanoidRootPart12 then
							HumanoidRootPart12 = not Character22:FindFirstChildOfClass("ForceField")
						end
						if HumanoidRootPart12 then
							HumanoidRootPart12 = not t23.CheckTeam
							if not HumanoidRootPart12 then
								HumanoidRootPart12 = not (LocalPlayer2.Team == t462.Team)
							end
						end
						if HumanoidRootPart12 then
							HumanoidRootPart12 = not (v579 == "Friendly")
						end
						if HumanoidRootPart12 then
							local v580, t464
							t464, v580 = CurrentCamera:WorldToViewportPoint(Head5.Position)
							if v580 then
								local Magnitude10 = (Vector2.new(t464.X, t464.Y) - GetMouseLocation5).Magnitude
								if t23.FovLimit then
									local FovRadius3 = t23.FovRadius
									if not FovRadius3 then
										FovRadius3 = 150
									end
									if not (Magnitude10 <= FovRadius3) then
										_continue31 = true
									end
								end
								if _continue31 then
									continue
								end
								if Magnitude10 < huge then
									v576 = t462
									huge = Magnitude10
								end
							end
						end
					end
				end
				return v576
			end

			local function f304(p186, p187)
				local t465 = {}
				local pi = math.pi
				for v581 = 1, p186 do
					local v582 = p187 * math.random() ^ 0.3333333333333333
					local v583 = math.random() * 2 - 1
					local v584 = v582 * (1 - v583 * v583) ^ 0.5
					local v585 = math.random() * (pi * 2)
					t465[v581] = (Vector3.new(
						v584 * math.cos(v585),
						v584 * math.sin(v585),
						v582 * v583
					))
				end
				return t465
			end

			local v586 = (table.create(5))
			Vector3.new(0, 1, 0)
			Vector3.new(0, -1, 0)
			Vector3.new(0, 0, 1)
			Vector3.new(0, 0, -1)
			Vector3.new(1, 0, 0)
			local new19 = Vector3.new

			local function f305(p188, p189)
				local t466 = {}
				local v587 = 1
				for v588 = 1, p188 do
					t466[v588] = v586[v587] * p189
					v587 = v587 % 6 + 1
				end
				return t466
			end

			local function f306(p190, p191)
				local t467 = { Vector3.new(0, 0, 0) }
				local pi2 = math.pi
				for v589 = 1, p190 do
					local v590 = 0.5
					local v591 = 0
					local v592 = v589
					while 0 < v592 do
						if v592 % 2 == 1 then
							v591 = v591 + v590
						end
						v592 = (math.floor(v592 / 2))
						v590 = v590 * 0.5
					end
					local v593 = pi2 * 2 * v591
					local v594 = (math.acos(1 - 2 * (v589 / p190)))
					local v595 = (math.sin(v594))
					t467[#t467 + 1] = (Vector3.new(
						p191 * v595 * math.cos(v593),
						p191 * math.cos(v594),
						p191 * v595 * math.sin(v593)
					))
				end
				return t467
			end

			local function f307(p192, p193)
				local t468 = {}
				local v596 = (1 + math.sqrt(5)) / 2
				local v597 = math.pi * 2
				local v598 = -1
				local v599
				while true do
					v598 = v598 + 1
					if not (v598 <= p193 - 1) then
						break
					end
					v599 = not not false
					if not v599 then
						v599 = 370
					end
					local v600 = (math.acos(1 - 2 * (v598 / p193)))
					local v601 = v597 * v596 * v598
					local v602 = (math.sin(v600))
					local v603 = (math.cos(v601))
					local v604 = (math.sin(v600))
					local v605 = (math.sin(v601))
					local v606 = (math.cos(v600))
					t468[#t468 + 1] = (Vector3.new(
						v602 * v603 * p192,
						v604 * v605 * p192,
						v606 * p192
					))
				end
				return t468
			end

			local function f308(p194, p195, p196)
				local t469 = p195 - p194
				local v607 = (RaycastParams.new())
				v607.FilterType = Enum.RaycastFilterType.Exclude
				v607.FilterDescendantsInstances = p196
				v607.IgnoreWater = true
				local v608
				v608 = workspace:Raycast(p194, t469.Unit * t469.Magnitude, v607) == nil
				return v608
			end

			local function f309(p197, p198)
				local v609 = (RaycastParams.new())
				v609.FilterType = Enum.RaycastFilterType.Exclude
				local v610 = (table.create(2))
				local v611 = CurrentCamera
				local Character23 = LocalPlayer2.Character
				local _ = -1119870409 + bit32.lrotate(267, 22) + -8466
				v610[1] = v611
				v610[2] = Character23
				v609.FilterDescendantsInstances = v610
				v609.IgnoreWater = true
				return workspace:Raycast(p197, p198, v609)
			end

			local function f310(...)
				local v612, v613
				while t23.Enabled do
					if t23.TPHit then
						local t470 = (f299())
						local v614 = LocalPlayer2.Character
						if v614 then
							v614 = (v614:FindFirstChild("HumanoidRootPart"))
						end
						if t470 and t470.Character and v614 then
							local Character24 = t470.Character
							local HumanoidRootPart13 = (Character24:FindFirstChild("HumanoidRootPart"))
							if HumanoidRootPart13 and
								not Character24:FindFirstChildOfClass("ForceField") then
								v614.CFrame = (CFrame.new(
									HumanoidRootPart13.Position - HumanoidRootPart13.CFrame.LookVector * 3,
									HumanoidRootPart13.Position
								))
							end
						end
						RunService.RenderStepped:Wait()
					else
						v613 = string.byte("\180\252z", 2, 3) <= 200
						if not v613 then
							v613 = 4
						end
						v612 = v612 * RunService.RenderStepped.Wait
					end
				end
			end

			task.spawn(f310)

			local function f311()
				local v615, v616
				while t23.Enabled do
					if t23.SkyboxBullet then
						local t471 = (f299())
						local v617 = LocalPlayer2.Character
						if v617 then
							v617 = (v617:FindFirstChild("HumanoidRootPart"))
						end
						if t471 and t471.Character and v617 then
							local HumanoidRootPart14 = (t471.Character:FindFirstChild("HumanoidRootPart"))
							if HumanoidRootPart14 and
								not t471.Character:FindFirstChildOfClass("ForceField") then
								local LookVector3 = HumanoidRootPart14.CFrame.LookVector
								local RightVector2 = HumanoidRootPart14.CFrame.RightVector
								if t23.SkyboxBulletMode == "Custom" then
									v616 = RightVector2 * t23.SkyboxBulletCustomRight + Vector3.new(0, t23.SkyboxBulletCustomHeight, 0) + LookVector3 * t23.SkyboxBulletCustomForward
								elseif t23.SkyboxBulletMode == "Random" then
									local v618 = (tick())
									if t23.SkyboxBulletInterval <= v618 - t23.SkyboxBulletLastSwitch then
										t23.SkyboxBulletLastSwitch = v618
										t23.SkyboxBulletRandomOffset = (Vector3.new(
											math.random(-100, 100) / 100,
											math.random(-100, 100) / 100,
											math.random(-100, 100) / 100
										))
									end
									local SkyboxBulletHeight = t23.SkyboxBulletHeight
									local SkyboxBulletOffset = t23.SkyboxBulletOffset
									local SkyboxBulletRandomOffset = t23.SkyboxBulletRandomOffset
									v616 = RightVector2 * SkyboxBulletOffset * SkyboxBulletRandomOffset.X + LookVector3 * SkyboxBulletOffset * SkyboxBulletRandomOffset.Z + Vector3.new(
										0,
										SkyboxBulletHeight * (0.5 + SkyboxBulletRandomOffset.Y * 0.5),
										0
									)
								else
									local v619 = (tick())
									if t23.SkyboxBulletInterval <= v619 - t23.SkyboxBulletLastSwitch then
										t23.SkyboxBulletLastSwitch = v619
										v615 = math.random(0, 1) == 0
										v615 = v615 and -1 or 1
										t23.SkyboxBulletSide = v615
									end
									local SkyboxBulletHeight2 = t23.SkyboxBulletHeight
									v616 = RightVector2 * t23.SkyboxBulletOffset * t23.SkyboxBulletSide + Vector3.new(0, SkyboxBulletHeight2 * 0.5, 0)
								end
								v617.CFrame = (CFrame.new(
									HumanoidRootPart14.Position + v616,
									HumanoidRootPart14.Position
								))
							end
						end
						RunService.RenderStepped:Wait()
					else
						RunService.RenderStepped:Wait()
					end
				end
			end

			task.spawn(f311)
			local v620 = GNX_S2
			local v621 = v562

			local function f312(...)
				local v622
				while t23.Enabled do
					local t472 = (f299())
					if t472 then
						local Character25 = t472.Character
						if Character25 then
							local Head6 = (Character25:FindFirstChild("Head"))
							local FindFirstChildOfClass17 = (Character25:FindFirstChildOfClass("Humanoid"))
							if Head6 and FindFirstChildOfClass17 and
								not (t23.CheckDead and not (0 < FindFirstChildOfClass17.Health)) then
								local Character26 = LocalPlayer2.Character
								if Character26 then
									local HumanoidRootPart15 = (Character26:FindFirstChild("HumanoidRootPart"))
									local FindFirstChildOfClass18 = (Character26:FindFirstChildOfClass("Tool"))
									if HumanoidRootPart15 and FindFirstChildOfClass18 then
										local Values2 = (FindFirstChildOfClass18:FindFirstChild("Values"))
										if Values2 and
											FindFirstChildOfClass18:FindFirstChild("Hitmarker") then
											local SERVER_Ammo = (Values2:FindFirstChild("SERVER_Ammo"))
											if SERVER_Ammo and
												Values2:FindFirstChild("SERVER_StoredAmmo") and 0 < SERVER_Ammo.Value then
												local _ = ipairs
												local t473 = (table.create(4))
												t473[1] = "Head"
												t473[2] = "UpperTorso"
												t473[3] = "HumanoidRootPart"
												t473[4] = "Torso"
												for _, v623 in ipairs(t473) do
													local FindFirstChild17 = (Character25:FindFirstChild(v623))
													if FindFirstChild17 then
														table.insert({}, FindFirstChild17)
													end
												end
												local Position23 = HumanoidRootPart15.Position
												if t23.SphereMode == "Femboy Fibonacci" then
													local _ = math.clamp
													local SphereRadius = t23.SphereRadius
													if not SphereRadius then
														SphereRadius = 19
													end
													local t474 = (f307(math.clamp(SphereRadius, 1, 19), 40))
													table.insert(t474, 1, Vector3.new(0, 0, 0))
													local v624 = (table.create(3))
													local Character27 = LocalPlayer2.Character
													v624[1] = CurrentCamera
													v624[2] = Character27
													v624[3] = Character25
													ipairs(t474)
												else
													local function f313()
														local _ = math.clamp
														local SphereRadius2 = t23.SphereRadius
														if not SphereRadius2 then
															SphereRadius2 = 19
														end
														local v625 = (math.clamp(SphereRadius2, 1, 19))
														if t23.SphereMode == "Vector" then
															local t475 = {}
															for _ = 1, 19 do
																t475[#t475 + 1] = (Vector3.new(
																	math.random(-18, 18),
																	math.random(-18, 18),
																	math.random(-18, 18)
																))
															end
															return t475
														end
														if t23.SphereMode == "Random" then
															local v626 = (table.create(1))
															Vector3.new(0, 0, 0)
															local new20 = Vector3.new
															local _ = ipairs
															local f314 = f304
															new20(0, v625, 0)
															for _, v627 in ipairs(f314(19, v625)) do
																v626[#v626 + 1] = v627
															end
															return v626
														end
														if t23.SphereMode == "Cardinals" then
															local v628 = (table.create(1))
															Vector3.new(0, 0, 0)
															local new21 = Vector3.new
															local _ = ipairs
															local f315 = f305
															new21(0, v625, 0)
															for _, v629 in ipairs(f315(19, v625)) do
																v628[#v628 + 1] = v629
															end
															return v628
														end
														if t23.SphereMode == "Hammersley" then
															return f306(19, v625)
														end
														local v630 = (1 + math.sqrt(5)) * 0.5
														local v631 = math.pi * 2
														local t476 = {}
														for v632 = 0, 18 do
															local v633 = 1 - (v632 + 0.5) / 19
															local v634 = (math.sqrt(1 - v633 * v633))
															local v635 = v631 * v632 / v630
															local v636 = (math.cos(v635))
															local v637 = (math.sin(v635))
															local t477 = {
																pos = Vector3.new(
																	v634 * v636 * v625,
																	v633 * v625,
																	v634 * v637 * v625
																),
																r = v634
															}
															t476[#t476 + 1] = t477
														end

														local function f316(...)
															local t478, t479
															t479, t478 = ...
															local v638
															v638 = t478.r < t479.r
															return v638
														end

														table.sort(t476, f316)
														local v639 = (table.create(1))
														Vector3.new(0, 0, 0)
														local new22 = Vector3.new
														local v640, v641, f317
														f317, v641, v640 = ipairs(t476)
														new22(0, v625, 0)
														while true do
															local t480
															v640, t480 = f317(v641, v640)
															if v640 == nil then
																break
															end
															v639[#v639 + 1] = t480.pos
														end
														local t481 = {}
														for v642 = 0, 18 do
															local v643 = -(1 - (v642 + 0.5) / 19)
															local v644 = (math.sqrt(1 - v643 * v643))
															local v645 = v631 * v642 / v630
															local v646 = (math.cos(v645))
															local v647 = (math.sin(v645))
															local t482 = {
																pos = Vector3.new(
																	v644 * v646 * v625,
																	v643 * v625,
																	v644 * v647 * v625
																),
																r = v644
															}
															t481[#t481 + 1] = t482
														end

														local function f318(...)
															local _ = bit32.bxor
															local v648
															v648 = not not false
															if not v648 then
																v648 = 354
															end
															local _ = 7569 + bit32.bxor(v648) + -7919
															local t483, t484
															t484, t483 = ...
															local v649
															v649 = t483.r < t484.r
															return v649
														end

														table.sort(t481, f318)
														v639[#v639 + 1] = (Vector3.new(0, -v625, 0))
														for _, t485 in ipairs(t481) do
															v639[#v639 + 1] = t485.pos
														end
														return v639
													end

													local t486 = (f313())
													ipairs(t486)
												end
												if false then
													local v650 = f297(30) .. 0
													local t487 = v620
													local FireServer = t487.FireServer
													local v651 = (tick())
													local v652 = (table.create(1))
													v652[1] = nil
													FireServer(
														t487,
														v651,
														v650,
														FindFirstChildOfClass18,
														"FDS9I83",
														Position23,
														v652,
														false
													)
													v622 = t23.SphereMode == "Femboy Fibonacci"
													v622 = v622 and nil or Head6.Position
													if t24.On then
														f44(Position23, v622, t24.Col)
													end
													local FireRate = t23.FireRate
													if not FireRate then
														FireRate = 50
													end
													task.wait((1 - FireRate / 100) * 0.2)
													v621:FireServer(
														"🧈",
														FindFirstChildOfClass18,
														v650,
														1,
														Head6,
														v622,
														nil
													)
													ReplicatedStorage.Events.GNX_R:FireServer(tick(), "KLWE89U0", FindFirstChildOfClass18)
													if t20.On and
														t20.MinInterval <= tick() - t20.LastLogTime then
														t20.LastLogTime = (tick())
														local Magnitude11 = (HumanoidRootPart15.Position - Head6.Position).Magnitude
														local v653 = (string.format(
															"[%s] hit %s | HP: %d | Dist: %dst",
															"Body",
															t472.Name,
															math.max(FindFirstChildOfClass17.Health, 0),
															math.round(Magnitude11)
														))
														if t20.Method == "Library" then
															f51("Hit Log", v653, 2)
														else
															t19:Notify(v653)
														end
													end
												else
													RunService.RenderStepped:Wait()
												end
											end
										end
									end
								end
							end
						end
					end
					;(nil).Wait(nil)
				end
			end

			task.spawn(f312)
			local TargetLineConn = t23.TargetLineConn
			new19(-1, 0, 0)
			if TargetLineConn then
				t23.TargetLineConn:Disconnect()
			end

			local function f319()
				if t23.TargetLine and t23.TargetLineObj then
					local t488 = (f299())
					if t488 and t488.Character and
						t488.Character:FindFirstChild("HumanoidRootPart") then
						local v654, t489
						t489, v654 = CurrentCamera:WorldToViewportPoint(t488.Character.HumanoidRootPart.Position)
						if v654 then
							local GetMouseLocation6 = (UserInputService:GetMouseLocation())
							t23.TargetLineObj.From = (Vector2.new(GetMouseLocation6.X, GetMouseLocation6.Y))
							t23.TargetLineObj.To = (Vector2.new(t489.X, t489.Y))
							local TargetLineObj2 = t23.TargetLineObj
							local TargetLineColor2 = t23.TargetLineColor
							if not TargetLineColor2 then
								TargetLineColor2 = (Color3.new(1, 0, 0))
							end
							TargetLineObj2.Color = TargetLineColor2
							t23.TargetLineObj.Visible = true
						else
							t23.TargetLineObj.Visible = false
						end
					else
						t23.TargetLineObj.Visible = false
					end
				elseif t23.TargetLineObj then
					t23.TargetLineObj.Visible = false
				end
			end

			t23.TargetLineConn = (RunService.RenderStepped:Connect(f319))
			f51("Rage Bot", "Rage Bot enabled", 2)
		else
			if t23.FovUpdateConn then
				t23.FovUpdateConn:Disconnect()
				t23.FovUpdateConn = nil
			end
			if t23.FovCircle then
				t23.FovCircle:Remove()
				t23.FovCircle = nil
			end
			if t23.TargetLineConn then
				t23.TargetLineConn:Disconnect()
				t23.TargetLineConn = nil
			end
			if t23.TargetLineObj then
				t23.TargetLineObj:Remove()
				t23.TargetLineObj = nil
			end
			local v655 = LocalPlayer2.Character
			if v655 then
				v655 = (LocalPlayer2.Character:FindFirstChildOfClass("Humanoid"))
			end
			if v655 then
				CurrentCamera.CameraSubject = v655
			end
			f51("Rage Bot", "Rage Bot disabled", 2)
		end
	end

	t453.Callback = v560
	local t490 = (Toggle37(f292, t453))
	t453 = t490
	f292 = t490.Keybind
	v560 = { Flag = "RageBotKey", Default = false, Mode = "Toggle" }

	f293 = function(p199)
		t490.Set(p199)
	end

	v560.Callback = f293
	f292(t453, v560)
	t453 = t215
	f292 = t215.Dropdown
	v560 = { Name = "Sphere Algorithm", Flag = "RageSphereMode" }
	f293 = (table.create(5))
	v561 = "discord.gg/shieldgang"
	Random = "Random"
	f293[1] = v561
	f293[2] = Random
	f293[3] = "Cardinals"
	f293[4] = "Vector"
	f293[5] = "Hammersley"
	v560.Options = f293
	v560.Default = "Fibonacci"
	v560.Multi = false

	f293 = function(p200)
		t23.SphereMode = p200
	end

	v560.Callback = f293
	f292(t453, v560)
	t453 = t215
	f292 = t215.Slider
	v560 = {
		Name = "Sphere Radius discord.gg/shieldgang",
		Flag = "RageSphereRadius",
		Min = 1,
		Max = 19,
		Default = 19,
		Decimal = 1,
		Suffix = "st"
	}

	f293 = function(p201)
		t23.SphereRadius = p201
	end

	v560.Callback = f293
	f292(t453, v560)
	t453 = t215
	f292 = t215.Slider
	v560 = {
		Name = "Fire Rate discord.gg/shieldgang",
		Flag = "RageFireRate",
		Min = 0,
		Max = 100,
		Default = 50,
		Decimal = 1,
		Suffix = "%"
	}

	f293 = function(p202)
		t23.FireRate = p202
	end

	v560.Callback = f293
	f292(t453, v560)
	t453 = t215
	f292 = t215.Toggle
	v560 = { Name = "FOV Limit", Flag = "RageFovLimit", Default = false }

	f293 = function()
		local v656
		v656 = not not true
		if v656 then
			v656 = 466
		end
	end

	v560.Callback = f293
	f292 = (f292(t453, v560))
	v559 = f292
	t453 = t215
	f292 = t215.Slider
	v560 = {
		Name = "FOV Radius",
		Flag = "RageFovRadius",
		Min = 10,
		Max = 600,
		Default = 150,
		Decimal = 1,
		Suffix = "px"
	}

	f293 = function(p203)
		t23.FovRadius = p203
		if t23.FovCircle then
			t23.FovCircle.Radius = p203
		end
	end

	v560.Callback = f293
	f292(t453, v560)
	t453 = t215
	f292 = t215.Toggle
	v560 = { Name = "Show FOV circle", Flag = "RageShowFov", Default = false }

	f293 = function(p204)
		t23.ShowFov = p204
	end

	v560.Callback = f293
	f292 = (f292(t453, v560))
	t453 = f292
	f292 = f292.Colorpicker
	v560 = { Name = "FOV Color", Flag = "RageFovColor" }
	f293 = Color3
	f293 = f293.new
	v561 = 1
	Random = 1
	f293 = (f293(v561, Random, 1))
	v560.Color = f293
	v560.Alpha = 0

	f293 = function(p205)
		t23.FovColor = p205
		if t23.FovCircle then
			t23.FovCircle.Color = p205
		end
	end

	v560.Callback = f293
	f292(t453, v560)
	t453 = t215
	f292 = t215.Toggle
	v560 = { Name = "Target Line", Flag = "RageTargetLine", Default = false }

	f293 = function(p206)
		t23.TargetLine = p206
	end

	v560.Callback = f293
	f292 = (f292(t453, v560))
	t453 = f292
	f292 = f292.Colorpicker
	v560 = { Name = "Target Line Color", Flag = "RageTargetLineColor" }
	f293 = Color3
	f293 = f293.new
	v561 = 1
	Random = 0
	f293 = (f293(v561, Random, 0))
	v560.Color = f293
	v560.Alpha = 0

	f293 = function(...)
		local v657 = ...
		t23.TargetLineColor = v657
		if t23.TargetLineObj then
			t23.TargetLineObj.Color = v657
		end
	end

	v560.Callback = f293
	f292(t453, v560)
	t453 = t215
	f292 = t215.Toggle
	v560 = { Name = "Check downed", Flag = "RageCheckDowned", Default = false }

	f293 = function(p207)
		t23.CheckDowned = p207
	end

	v560.Callback = f293
	f292(t453, v560)
	t453 = t215
	f292 = t215.Toggle
	v560 = { Name = "Check dead", Flag = "RageCheckDead", Default = false }

	f293 = function(p208)
		t23.CheckDead = p208
	end

	v560.Callback = f293
	f292(t453, v560)
	t453 = t215
	f292 = t215.Toggle
	v560 = { Name = "Check team", Flag = "RageCheckTeam", Default = false }

	f293 = function(p209)
		t23.CheckTeam = p209
	end

	v560.Callback = f293
	f292(t453, v560)
	t453 = t215
	f292 = t215.Toggle
	v560 = { Name = "TP Hit", Flag = "RageTPHit", Default = false }

	f293 = function()
		local v658
		v658 = not not true
		if v658 then
			v658 = 208
		end
		local v659
		v659 = nil <= nil
		t23.TPHit = v659
		if v659 then
			t23.TPHitPrevFovLimit = t23.FovLimit
			t23.FovLimit = false
			if v559 then
				v559.Set(false)
			end
		elseif t23.TPHitPrevFovLimit ~= nil then
			t23.FovLimit = t23.TPHitPrevFovLimit
			if v559 then
				v559.Set(t23.TPHitPrevFovLimit)
			end
			t23.TPHitPrevFovLimit = nil
		end
	end

	v560.Callback = f293
	f292(t453, v560)
	t453 = t215
	f292 = t215.Toggle
	v560 = { Name = "Skybox Bullet", Flag = "RageSkyboxBullet", Default = false }

	f293 = function(p210)
		t23.SkyboxBullet = p210
		if p210 then
			local Character28 = LocalPlayer2.Character
			if Character28 then
				t23.SkyboxBulletSavedCFrame = Character28.CFrame
			end
			t23.SkyboxBulletPrevFovLimit = t23.FovLimit
			t23.FovLimit = false
			if v559 then
				v559.Set(false)
			end
		else
			local v660 = LocalPlayer2.Character
			if v660 then
				v660 = (v660:FindFirstChild("HumanoidRootPart"))
			end
			if v660 and t23.SkyboxBulletSavedCFrame then
				v660.CFrame = t23.SkyboxBulletSavedCFrame
			end
			t23.SkyboxBulletSavedCFrame = nil
			if t23.SkyboxBulletPrevFovLimit ~= nil then
				t23.FovLimit = t23.SkyboxBulletPrevFovLimit
				if v559 then
					v559.Set(t23.SkyboxBulletPrevFovLimit)
				end
				t23.SkyboxBulletPrevFovLimit = nil
			end
		end
	end

	v560.Callback = f293
	f292(t453, v560)
	f292 = nil
	t453 = nil
	v560 = nil
	f293 = nil
	v561 = nil
	Random = nil

	local function f320(...)
		local v661, t491
		t491, v661 = ...
		if t491 and t491.Items and t491.Items.Slider then
			t491.Items.Slider.Visible = v661
		end
	end

	local function f321()
		local v662
		v662 = t23.SkyboxBulletMode == "Custom"
		f320(f292, not v662)
		f320(t453, not v662)
		f320(v560, not v662)
		f320(f293, v662)
		f320(v561, v662)
		f320(Random, v662)
	end

	f294 = t215
	local Dropdown10 = t215.Dropdown
	local t492 = { Name = "Skybox Location", Flag = "RageSkyboxLocation" }
	local v663 = (table.create(3))
	v663[1] = "Left+Right"
	v663[2] = "Random"
	v663[3] = "Custom"
	t492.Options = v663
	t492.Default = "Left+Right"
	t492.Multi = false

	function t492.Callback(p211)
		t23.SkyboxBulletMode = p211
		f321()
	end

	Dropdown10(f294, t492)
	f294 = t215
	local Slider13 = t215.Slider
	local t493 = {
		Name = "Skybox Height",
		Flag = "RageSkyboxHeight",
		Min = 4,
		Max = 30,
		Default = 12,
		Decimal = 1,
		Suffix = "st"
	}

	function t493.Callback(p212)
		t23.SkyboxBulletHeight = p212
	end

	f292 = (Slider13(f294, t493))
	f294 = t215
	local Slider14 = t215.Slider
	local t494 = {
		Name = "Skybox Offset",
		Flag = "RageSkyboxOffset",
		Min = 2,
		Max = 15,
		Default = 6,
		Decimal = 1,
		Suffix = "st"
	}

	function t494.Callback(...)
		local v664
		v664 = not not false
		if not v664 then
			v664 = 396
		end
		local v665 = ...
		t23.SkyboxBulletOffset = v665
	end

	t453 = (Slider14(f294, t494))
	f294 = t215
	local Slider15 = t215.Slider
	local t495 = {
		Name = "Skybox Switch Speed",
		Flag = "RageSkyboxInterval",
		Min = 0.01,
		Max = 0.3,
		Default = 0.01,
		Decimal = 0.01,
		Suffix = "s"
	}

	function t495.Callback(p213)
		t23.SkyboxBulletInterval = p213
	end

	v560 = (Slider15(f294, t495))
	f294 = t215
	local Slider16 = t215.Slider
	local t496 = {
		Name = "Skybox Custom Right",
		Flag = "RageSkyboxCustomRight",
		Min = -30,
		Max = 30,
		Default = 0,
		Decimal = 1,
		Suffix = "st"
	}

	function t496.Callback(p214)
		t23.SkyboxBulletCustomRight = p214
	end

	f293 = (Slider16(f294, t496))
	f294 = t215
	local Slider17 = t215.Slider
	local t497 = {
		Name = "Skybox Custom Height",
		Flag = "RageSkyboxCustomHeight",
		Min = -30,
		Max = 30,
		Default = 12,
		Decimal = 1,
		Suffix = "st"
	}

	function t497.Callback(p215)
		t23.SkyboxBulletCustomHeight = p215
	end

	v561 = (Slider17(f294, t497))
	f294 = t215
	local Slider18 = t215.Slider
	local t498 = {
		Name = "Skybox Custom Forward",
		Flag = "RageSkyboxCustomForward",
		Min = -30,
		Max = 30,
		Default = 0,
		Decimal = 1,
		Suffix = "st"
	}

	function t498.Callback(...)
		local v666 = false
		if not v666 then
			v666 = (string.unpack("<i8", "\139\0\0\0\0\0\0\0"))
		end
		local v667 = ...
		t23.SkyboxBulletCustomForward = v667
	end

	Random = (Slider18(f294, t498))
	f321()
	local t499 = v101
	f294 = t499
	local Section10 = t499.Section
	local t500 = { Name = "Hit Sounds & Logs", Side = "Right" }
	local t501 = (Section10(f294, t500))
	f294 = t501.Toggle
	local t502 = { Name = "Enable hitsounds", Flag = "RageSoundsToggle", Default = false }

	function t502.Callback(p216)
		t34.On = p216
		if p216 then
			f34()
		end
	end

	f294(t501, t502)
	f294 = t501.Dropdown
	local t503 = { Name = "Hitsound Method", Flag = "RageSoundMethod" }
	local v668 = (table.create(2))
	v668[1] = "Hit Check"
	v668[2] = "ID Swap"
	t503.Options = v668
	t503.Default = "Hit Check"
	t503.Multi = false

	function t503.Callback(p217)
		t34.Method = p217
		f34()
	end

	f294(t501, t503)
	f294 = t501.Toggle
	local t504 = { Name = "Hit Log", Flag = "RageHitLogToggle", Default = false }

	function t504.Callback(p218)
		t20.On = p218
	end

	f294(t501, t504)
	f294 = t501.Dropdown
	local t505 = { Name = "Hit Log Method", Flag = "RageHitLogMethod" }
	local v669 = (table.create(2))
	v669[1] = "Middle"
	v669[2] = "Library"
	t505.Options = v669
	t505.Default = "Middle"
	t505.Multi = false

	function t505.Callback(p219)
		t20.Method = p219
	end

	f294(t501, t505)
	f294 = t501.Dropdown
	local t506 = { Name = "Sound type", Flag = "RageSoundType" }
	local v670 = (table.create(14))
	f295 = "Neverlose"
	Gamesense = "Gamesense"
	v670[1] = "Rust"
	v670[2] = "CODE200"
	v670[3] = "Minecraft"
	v670[4] = f295
	v670[5] = Gamesense
	v670[6] = "Bonk"
	v670[7] = "Bat"
	v670[8] = "Laser Beam"
	v670[9] = "Fatality"
	v670[10] = "Bow"
	v670[11] = "koch"
	v670[12] = "golda"
	v670[13] = "agpa1"
	v670[14] = "agpa2"
	t506.Options = v670
	t506.Default = "Rust"
	t506.Multi = false

	function t506.Callback(...)
		local v671 = ...
		local Rust = t33[v671]
		if not Rust then
			Rust = t33.Rust
		end
		t34.SoundId = Rust
		f34()
	end

	f294(t501, t506)
	f294 = t501.Slider
	local t507 = {
		Name = "Volume",
		Flag = "RageSoundVolume",
		Min = 0,
		Max = 10,
		Default = 1,
		Decimal = 1,
		Suffix = ""
	}

	function t507.Callback(p220)
		t34.Vol = p220
		f34()
	end

	f294(t501, t507)
	f294 = nil
	local Toggle38 = t501.Toggle
	local t508 = { Name = "Preview Hitsound", Flag = "RagePreviewHitsound", Default = false }

	function t508.Callback(...)
		local _ = bit32.countlz
		local v672
		v672 = not not false
		if not v672 then
			v672 = (string.unpack("<i8", "\170\1\0\0\0\0\0\0"))
		end
		local _ = 11547 + bit32.countlz(v672) + -11501
		local v673 = ...
		if v673 then
			f27()

			local function f322()
				if f294 then
					f294.Set(false)
				end
			end

			task.delay(0.1, f322)
		end
	end

	f294 = (Toggle38(t501, t508))
	local v674 = (table.create(6))
	f295 = "Right Leg"
	v674[1] = "Head"
	v674[2] = "Torso"
	v674[3] = "Left Arm"
	v674[4] = "Right Arm"
	v674[5] = "Left Leg"
	v674[6] = f295
	local t509 = {
		Enabled = false,
		Method = "Raycast",
		HitPart = "Head",
		HitChance = 100,
		WallCheck = true,
		CheckDown = false,
		DeadCheck = true,
		CheckForceShield = true,
		CheckFriendly = false,
		FOVRadius = 150,
		DrawFOV = true,
		FOVCenterOnly = false,
		FOVFilled = false,
		FOVColor = Color3.fromRGB(255, 255, 255),
		FOVFillColor = Color3.fromRGB(175, 86, 86),
		target = nil,
		RandomPart = false,
		SwitchDelay = 0,
		_lastSwitchTime = 0,
		_lastTargetPlayer = nil,
		MaxDistance = 4000
	}
	local v675 = (Drawing.new("Circle"))
	v675.Visible = false
	v675.Filled = false
	v675.Thickness = 1
	v675.NumSides = 64
	v675.Radius = t509.FOVRadius
	v675.Color = t509.FOVColor
	v675.ZIndex = 10
	local v676 = (Drawing.new("Circle"))
	v676.Visible = false
	v676.Filled = true
	v676.Thickness = 1
	v676.NumSides = 64
	v676.Radius = t509.FOVRadius
	v676.Color = t509.FOVFillColor
	v676.Transparency = 0.85
	v676.ZIndex = 9

	f295 = function()
		local GetMouseLocation7
		if t509.FOVCenterOnly then
			GetMouseLocation7 = (Vector2.new(
				CurrentCamera.ViewportSize.X * 0.5,
				CurrentCamera.ViewportSize.Y * 0.5
			))
		else
			GetMouseLocation7 = (UserInputService:GetMouseLocation())
		end
		v675.Position = GetMouseLocation7
		v675.Radius = t509.FOVRadius
		v675.Color = t509.FOVColor
		local v677 = t509.Enabled
		if v677 then
			v677 = t509.DrawFOV
		end
		v675.Visible = v677
		v676.Position = GetMouseLocation7
		v676.Radius = t509.FOVRadius
		v676.Color = t509.FOVFillColor
		local v678 = t509.Enabled
		if v678 then
			v678 = t509.FOVFilled
		end
		v676.Visible = v678
	end

	RunService.RenderStepped:Connect(f295)

	local function f323(p221)
		if not (p221 and p221 ~= LocalPlayer2) then
			return true
		end
		local Character29 = p221.Character
		local FindFirstChildOfClass19
		if Character29 then
			FindFirstChildOfClass19 = (Character29:FindFirstChildOfClass("Humanoid"))
		else
			FindFirstChildOfClass19 = Character29
		end
		if not (Character29 and FindFirstChildOfClass19 and
			not (FindFirstChildOfClass19.Health <= 0)) then
			return true
		end
		if t509.DeadCheck and FindFirstChildOfClass19.Health <= 0 then
			return true
		end
		if t509.CheckForceShield and Character29:FindFirstChildOfClass("ForceField") then
			return true
		end
		if t509.CheckDown then
			local t510 = (ReplicatedStorage:FindFirstChild("CharStats"))
			if t510 then
				t510 = (t510:FindFirstChild(p221.Name))
			end
			if t510 then
				t510 = (t510:FindFirstChild("Downed"))
			end
			if t510 and t510.Value == true then
				return true
			end
		end
		if t509.CheckFriendly and f24(p221) then
			return true
		end
		return false
	end

	local function f324(p222)
		if not t509.WallCheck then
			return true
		end
		local Character30 = LocalPlayer2.Character
		if not (Character30 and p222) then
			return false
		end
		local v679 = (RaycastParams.new())
		v679.FilterType = Enum.RaycastFilterType.Exclude
		local v680 = (table.create(3))
		local Parent3 = p222.Parent
		v680[1] = Character30
		v680[2] = CurrentCamera
		v680[3] = Parent3
		v679.FilterDescendantsInstances = v680
		v679.IgnoreWater = true
		local v681
		v681 = workspace:Raycast(
			CurrentCamera.CFrame.Position,
			p222.Position - CurrentCamera.CFrame.Position,
			v679
		) == nil
		return v681
	end

	f295 = RunService.Heartbeat
	Gamesense = f295
	f295 = f295.Connect

	local function f325(...)
		if not t509.Enabled then
			t509.target = nil
			return
		end
		local GetMouseLocation8
		if t509.FOVCenterOnly then
			GetMouseLocation8 = (Vector2.new(
				CurrentCamera.ViewportSize.X * 0.5,
				CurrentCamera.ViewportSize.Y * 0.5
			))
		else
			GetMouseLocation8 = (UserInputService:GetMouseLocation())
		end
		local v682 = nil
		local huge2 = math.huge
		local v683 = nil
		local t511 = LocalPlayer2.Character
		if t511 then
			t511 = (LocalPlayer2.Character:FindFirstChild("HumanoidRootPart"))
		end
		local v684, v685, f326
		f326, v685, v684 = ipairs(Players:GetPlayers())
		while true do
			local _continue32 = false
			local t512
			v684, t512 = f326(v685, v684)
			if v684 == nil then
				break
			end
			if not f323(t512) then
				local Character31 = t512.Character
				if 0 < t509.MaxDistance and t511 then
					local HumanoidRootPart16 = (Character31:FindFirstChild("HumanoidRootPart"))
					if not (HumanoidRootPart16 and
						not (t509.MaxDistance < (t511.Position - HumanoidRootPart16.Position).Magnitude)) then
						_continue32 = true
					end
				end
				if _continue32 then
					continue
				end
				local FindFirstChild18 = nil
				if t509.RandomPart then
					local t513 = {}
					for _, v686 in ipairs(v674) do
						local FindFirstChild19 = (Character31:FindFirstChild(v686))
						if FindFirstChild19 then
							t513[#t513 + 1] = FindFirstChild19
						end
					end
					if 0 < #t513 then
						FindFirstChild18 = t513[math.random(1, #t513)]
					end
				else
					FindFirstChild18 = (Character31:FindFirstChild(t509.HitPart))
					if not FindFirstChild18 then
						for _, v687 in ipairs(v674) do
							local FindFirstChild20 = (Character31:FindFirstChild(v687))
							if FindFirstChild20 then
								FindFirstChild18 = FindFirstChild20
								break
							end
						end
					end
				end
				if FindFirstChild18 then
					local v688, t514
					t514, v688 = CurrentCamera:WorldToViewportPoint(FindFirstChild18.Position)
					if v688 then
						local Magnitude12 = (Vector2.new(t514.X, t514.Y) - GetMouseLocation8).Magnitude
						if Magnitude12 <= t509.FOVRadius and Magnitude12 < huge2 and f324(FindFirstChild18) then
							v682 = FindFirstChild18
							v683 = t512
							huge2 = Magnitude12
						end
					end
				end
			end
		end
		if v683 == t509._lastTargetPlayer then
			t509.target = v682
		else
			local v689 = (tick())
			if 0 < t509.SwitchDelay and t509._lastTargetPlayer ~= nil and
				v689 - t509._lastSwitchTime < t509.SwitchDelay then
				local t515 = t509._lastTargetPlayer.Character
				if t515 then
					t515 = (t515:FindFirstChild(t509.HitPart))
				end
				if t515 and t515.Parent then
					t509.target = t515
				else
					t509.target = v682
					t509._lastTargetPlayer = v683
					t509._lastSwitchTime = v689
				end
			else
				t509.target = v682
				if v683 ~= t509._lastTargetPlayer then
					t509._lastSwitchTime = (tick())
					t509._lastTargetPlayer = v683
				end
			end
		end
	end

	f295(Gamesense, f325)
	f295 = nil
	Gamesense = false

	local function f327()
		if Gamesense then
			return
		end
		if not (hookmetamethod and newcclosure and getnamecallmethod) then
			return
		end
		Gamesense = true

		local function f328(p223)
			local t516 = {}
			local f329 = nil
			if getnamecallmethod() == "Raycast" then
				local Enabled3 = t509.Enabled
				f329 = Enabled3
				if Enabled3 then
					local Method = t509.Method
					f329 = Method
					if Method == "Raycast" then
						f329 = Method
						if t509.target then
							f329 = Method
							if math.random(1, 100) <= t509.HitChance then
								f329 = true

								local function f330()
									f329 = not checkcaller()
								end

								pcall(f330)
								if f329 and p223 == workspace and
									(t516[1] and typeof(t516[1]) == "Vector3") then
									t516[2] = (t509.target.Position - t516[1]).Unit * 9999
									return f295(p223, table.unpack(t516))
								end
							end
						end
					end
				end
			end
			f329 = f295
			return f329()
		end

		f295 = (hookmetamethod(game, "__namecall", newcclosure(f328)))
	end

	local t517 = (ReplicatedStorage:FindFirstChild("Events2"))
	if t517 then
		t517 = (t517:FindFirstChild("Visualize"))
	end
	local v690 = (ReplicatedStorage:FindFirstChild("Events"))
	if v690 then
		v690 = (v690:FindFirstChild("ZFKLF__H"))
	end
	if t517 and t517.Event and v690 then
		local v691 = v690

		local function f331(_, p224, _, p225, _, p226, p227)
			if not (t509.Enabled and p225) then
				return
			end
			local Character32 = LocalPlayer2.Character
			if not (Character32 and not Character32:FindFirstChildOfClass("ForceField")) then
				return
			end
			if Character32:FindFirstChildOfClass("Tool") ~= p225 then
				return
			end
			local target = t509.target
			if not (target and target.Parent) then
				return
			end
			if typeof(p226) ~= "Vector3" then
				p226 = (p225:FindFirstChild("WeaponHandle", true))
				if not p226 then
					p226 = (p225:FindFirstChild("Handle", true))
				end
				if p226 then
					local FirePoint = (p226:FindFirstChild("FirePoint", true))
					if FirePoint then
						p226 = FirePoint
					else
						p226 = (p226:FindFirstChild("Muzzle", true))
					end
				end
				if p226 then
					local v692 = (p226:IsA("Attachment"))
					if v692 then
						v692 = p226.WorldPosition
					end
					if v692 then
						p226 = v692
					else
						p226 = p226.Position
					end
				end
				if not p226 then
					p226 = CurrentCamera.CFrame.Position
				end
			end
			local v693, v694
			if t509.Method == "Raycast" then
				if t509.HitChance < math.random(1, 100) then
					return
				end
				v694 = type(p227) == "table"
				v694 = v694 and math.max(1, #p227) or 1
				local LookVector4 = CFrame.new(p226, target.Position).LookVector
				task.wait()
				for v695 = 1, v694 do
					local v696 = v695

					local function f332()
						v691:FireServer(
							utf8.char(129480),
							p225,
							p224,
							v696,
							target,
							target.Position,
							LookVector4
						)
					end

					pcall(f332)
				end
				local Hitmarker = (p225:FindFirstChild("Hitmarker"))
				if Hitmarker and Hitmarker:IsA("BindableEvent") then
					Hitmarker:Fire(target)
				end
			elseif t509.Method == "Remote" then
				if t509.HitChance < math.random(1, 100) then
					return
				end
				v693 = type(p227) == "table"
				v693 = v693 and math.clamp(#p227, 1, 100) or 1
				local LookVector5 = CFrame.new(p226, target.Position).LookVector
				local Position24 = target.Position
				local t518 = {}
				for v697 = 1, v693 do
					local _ = table.insert
					local t519 = { index = v697, dir = LookVector5, pos = Position24 }
					table.insert(t518, t519)
				end
				task.wait(0.005)
				for _, v698 in ipairs(t518) do
					local v699 = v698

					local function f333()
						v691:FireServer(
							"🧈",
							p225,
							p224,
							v699.index,
							target,
							v699.pos,
							v699.dir
						)
					end

					pcall(f333)
				end
				local Hitmarker2 = (p225:FindFirstChild("Hitmarker"))
				if Hitmarker2 and Hitmarker2:IsA("BindableEvent") then
					Hitmarker2:Fire(target)
				end
			end
		end

		t517.Event:Connect(f331)
	end
	local t520 = v102
	local Section11 = t520.Section
	local t521 = { Name = "Silent Aim", Side = "Left" }
	local t522 = (Section11(t520, t521))
	local Toggle39 = t522.Toggle
	local t523 = { Name = "Enable Silent Aim", Flag = "SAEnabled", Default = false }

	function t523.Callback(p228)
		if p228 and t509.Method == "Raycast" and not hookmetamethod then
			local t524 = v20
			local Create4 = t524.Create
			local t525 = {
				Name = "Silent Aim: Raycast method requires hookmetamethod which your executor doesn't support. Switch to Remote.",
				LifeTime = 5
			}
			Create4(t524, t525)
		end
		t509.Enabled = p228
		if p228 then
			f327()
		end
		if not p228 then
			t509.target = nil
		end
		local f334 = f51
		local v700
		v700 = p228 and "enabled" or "disabled"
		f334("Silent Aim", v700, 2)
	end

	Toggle39(t522, t523)
	local Dropdown11 = t522.Dropdown
	local t526 = { Name = "Method", Flag = "SAMethod" }
	local v701 = (table.create(2))
	v701[1] = "Raycast"
	v701[2] = "Remote"
	t526.Options = v701
	local hookmetamethod2 = hookmetamethod
	hookmetamethod2 = hookmetamethod2 and "Raycast" or "Remote"
	t526.Default = hookmetamethod2
	t526.Multi = false

	function t526.Callback(p229)
		t509.Method = p229
		if p229 == "Raycast" and not hookmetamethod then
			local t527 = v20
			local Create5 = t527.Create
			local t528 = {
				Name = "Silent Aim: Raycast won't work on your executor, use Remote instead",
				LifeTime = 5
			}
			Create5(t527, t528)
		end
		f51("Silent Aim", "Method: " .. p229, 2)
	end

	Dropdown11(t522, t526)
	local Dropdown12 = t522.Dropdown
	local t529 = { Name = "Target Bone", Flag = "SATargetBone" }
	local v702 = (table.create(7))
	v702[1] = "Random"
	v702[2] = "Head"
	v702[3] = "Torso"
	v702[4] = "Left Arm"
	v702[5] = "Right Arm"
	v702[6] = "Left Leg"
	v702[7] = "Right Leg"
	t529.Options = v702
	t529.Default = "Head"
	t529.Multi = false

	function t529.Callback(p230)
		if p230 == "Random" then
			t509.RandomPart = true
		else
			t509.RandomPart = false
			t509.HitPart = p230
		end
	end

	Dropdown12(t522, t529)
	local Slider19 = t522.Slider
	local t530 = {
		Name = "Switch Delay",
		Flag = "SASwitchDelay",
		Min = 0,
		Max = 3000,
		Default = 0,
		Decimal = 1,
		Suffix = "ms"
	}

	function t530.Callback(p231)
		t509.SwitchDelay = p231 / 1000
	end

	Slider19(t522, t530)
	local Slider20 = t522.Slider
	local t531 = {
		Name = "FOV",
		Flag = "SAFovRadius",
		Min = 1,
		Max = 600,
		Default = 40,
		Decimal = 1,
		Suffix = "\176"
	}

	function t531.Callback(p232)
		t509.FOVRadius = p232
	end

	Slider20(t522, t531)
	local Slider21 = t522.Slider
	local t532 = {
		Name = "Max Distance",
		Flag = "SAMaxDistance",
		Min = 0,
		Max = 4000,
		Default = 500,
		Decimal = 1,
		Suffix = "m"
	}

	function t532.Callback(p233)
		t509.MaxDistance = p233
	end

	Slider21(t522, t532)
	local Slider22 = t522.Slider
	local t533 = {
		Name = "Hit Chance",
		Flag = "SAHitChance",
		Min = 1,
		Max = 100,
		Default = 45,
		Suffix = "%"
	}

	function t533.Callback(...)
		local _ = -2684331521 + (bit32.rrotate(116, 5) + 2) + -23009
		local v703 = ...
		t509.HitChance = (math.floor(v703))
	end

	Slider22(t522, t533)
	local Toggle40 = t522.Toggle
	local t534 = { Name = "Show FOV Circle", Flag = "SAShowFov", Default = false }

	function t534.Callback(p234)
		t509.DrawFOV = p234
	end

	local t535 = (Toggle40(t522, t534))
	local Colorpicker2 = t535.Colorpicker
	local t536 = { Name = "FOV Color", Flag = "SAFovColor", Color = Color3.new(1, 1, 1), Alpha = 0 }

	function t536.Callback(p235)
		t509.FOVColor = p235
	end

	Colorpicker2(t535, t536)
	local Toggle41 = t522.Toggle
	local t537 = { Name = "Wall Check", Flag = "SAWallCheck", Default = false }

	function t537.Callback(p236)
		t509.WallCheck = p236
	end

	Toggle41(t522, t537)
	local Toggle42 = t522.Toggle
	local t538 = { Name = "Check Downed", Flag = "SACheckDowned", Default = false }

	function t538.Callback()
		local v704 = true
		if v704 then
			v704 = 189
		end
	end

	Toggle42(t522, t538)
	local Toggle43 = t522.Toggle
	local t539 = { Name = "Dead Check", Flag = "SADeadCheck", Default = false }

	function t539.Callback(p237)
		t509.DeadCheck = p237
	end

	Toggle43(t522, t539)
	local Toggle44 = t522.Toggle
	local t540 = { Name = "Force Shield Check", Flag = "SAFFCheck", Default = false }

	function t540.Callback(p238)
		t509.CheckForceShield = p238
	end

	Toggle44(t522, t540)
	local Toggle45 = t522.Toggle
	local t541 = { Name = "Check Friendly", Flag = "SACheckFriendly", Default = false }

	function t541.Callback(p239)
		t509.CheckFriendly = p239
	end

	Toggle45(t522, t541)
	local t542 = v102
	local Section12 = t542.Section
	local t543 = { Name = "Gun Adjustment", Side = "Left" }
	local t544 = (Section12(t542, t543))
	local t545 = {
		Enabled = false,
		Mode = "No Recoil",
		ReducePct = 100,
		weapons = {},
		originals = {},
		connections = {},
		CFHook = nil
	}

	local function f335()
		t545.weapons = {}
		if not getgc then
			return
		end
		for _, t546 in pairs(getgc(true)) do
			if type(t546) == "table" and rawget(t546, "EquipTime") then
				table.insert(t545.weapons, t546)
				if not t545.originals[t546] then
					local originals = t545.originals
					local t547 = {
						Recoil = t546.Recoil,
						CameraRecoilingEnabled = t546.CameraRecoilingEnabled,
						AngleX_Min = t546.AngleX_Min,
						AngleX_Max = t546.AngleX_Max,
						AngleY_Min = t546.AngleY_Min,
						AngleY_Max = t546.AngleY_Max,
						AngleZ_Min = t546.AngleZ_Min,
						AngleZ_Max = t546.AngleZ_Max,
						Spread = t546.Spread
					}
					originals[t546] = t547
				end
			end
		end
	end

	local function f336()
		f335()
		local v705, v706, f337
		f337, v706, v705 = ipairs(t545.weapons)
		while true do
			local v707
			v705, v707 = f337(v706, v705)
			if v705 == nil then
				break
			end
			local v708 = v707

			local function f338()
				local v709
				if t545.Mode == "No Recoil" then
					v708.Recoil = 0
					v708.CameraRecoilingEnabled = false
					v708.AngleX_Min = 0
					v708.AngleX_Max = 0
					v708.AngleY_Min = 0
					v708.AngleY_Max = 0
					v708.AngleZ_Min = 0
					v708.AngleZ_Max = 0
					v708.Spread = 0
				elseif t545.Mode == "Reduce Recoil" then
					local t548 = t545.originals[v708]
					if t548 then
						local v710 = (100 - t545.ReducePct) / 100
						local Recoil = t548.Recoil
						if not Recoil then
							Recoil = 0
						end
						v708.Recoil = Recoil * v710
						local AngleX_Min = t548.AngleX_Min
						if not AngleX_Min then
							AngleX_Min = 0
						end
						v708.AngleX_Min = AngleX_Min * v710
						local AngleX_Max = t548.AngleX_Max
						if not AngleX_Max then
							AngleX_Max = 0
						end
						v708.AngleX_Max = AngleX_Max * v710
						local AngleY_Min = t548.AngleY_Min
						if not AngleY_Min then
							AngleY_Min = 0
						end
						v708.AngleY_Min = AngleY_Min * v710
						local AngleY_Max = t548.AngleY_Max
						if not AngleY_Max then
							AngleY_Max = 0
						end
						v708.AngleY_Max = AngleY_Max * v710
						local AngleZ_Min = t548.AngleZ_Min
						if not AngleZ_Min then
							AngleZ_Min = 0
						end
						v708.AngleZ_Min = AngleZ_Min * v710
						local AngleZ_Max = t548.AngleZ_Max
						if not AngleZ_Max then
							AngleZ_Max = 0
						end
						v708.AngleZ_Max = AngleZ_Max * v710
						local Spread = t548.Spread
						if not Spread then
							Spread = 0
						end
						v708.Spread = Spread * v710
						v709 = 0.01 < v710
						v708.CameraRecoilingEnabled = v709
					end
				end
			end

			pcall(f338)
		end
	end

	local function f339()
		for v711, v712 in pairs(t545.originals) do
			local v713 = v711
			local v714 = v712

			local function f340()
				v713.Recoil = v714.Recoil
				v713.CameraRecoilingEnabled = v714.CameraRecoilingEnabled
				v713.AngleX_Min = v714.AngleX_Min
				v713.AngleX_Max = v714.AngleX_Max
				v713.AngleY_Min = v714.AngleY_Min
				v713.AngleY_Max = v714.AngleY_Max
				v713.AngleZ_Min = v714.AngleZ_Min
				local AngleZ_Max2 = v714.AngleZ_Max
				local _ = true
				v713.AngleZ_Max = AngleZ_Max2
				v713.Spread = v714.Spread
			end

			pcall(f340)
		end
	end

	local function f341(p240)
		for _, v715 in ipairs(p240:GetChildren()) do
			if v715:IsA("Tool") and t545.Enabled then
				task.wait(0.15)
				f336()
			end
		end

		local function f342(...)
			local _
			_ = not not true
			local v716 = ...
			if v716:IsA("Tool") and t545.Enabled then
				task.wait(0.15)
				f336()
			end
		end

		table.insert(t545.connections, p240.ChildAdded:Connect(f342))
		local Humanoid7 = (p240:WaitForChild("Humanoid", 3))
		if Humanoid7 then
			local function f343()
				if t545.Enabled then
					task.wait(2)
					f336()
				end
			end

			table.insert(t545.connections, Humanoid7.Died:Connect(f343))
		end
	end

	local function f344(p241)
		task.wait(0.5)
		f341(p241)
	end

	table.insert(t545.connections, LocalPlayer2.CharacterAdded:Connect(f344))
	if LocalPlayer2.Character then
		f341(LocalPlayer2.Character)
	end

	local function f345()
		if t545.CFHook then
			return
		end
		if not (hookmetamethod and checkcaller) then
			return
		end
		local hookmetamethod3 = hookmetamethod
		local game3 = game

		local function f346(p242, p243, p244)
			if checkcaller() then
				return t545.CFHook(p242, p243, p244)
			end
			if t545.Enabled and t545.Mode == "No Recoil" and p242 == CurrentCamera and
				(p243 == "CoordinateFrame" or p243 == "coordinateFrame") then
				return t545.CFHook(p242, p243, CurrentCamera.CFrame)
			end
			return t545.CFHook(p242, p243, p244)
		end

		t545.CFHook = (hookmetamethod3(game3, "__newindex", newcclosure(f346)))
	end

	local t549 = v102
	local Section13 = t549.Section
	local t550 = { Name = "Reduce Settings", Side = "Left" }
	local t551 = (Section13(t549, t550))
	t551.Items.Section.Visible = false
	local Toggle46 = t544.Toggle
	local t552 = { Name = "No Recoil", Flag = "GunNoRecoil", Default = false }

	function t552.Callback(p245)
		t545.Enabled = p245
		if p245 then
			f336()
			if t545.Mode == "No Recoil" then
				f345()
			end
		else
			f339()
		end
	end

	Toggle46(t544, t552)
	local Dropdown13 = t544.Dropdown
	local t553 = { Name = "Mode", Flag = "GunNoRecoilMode" }
	local v717 = (table.create(2))
	v717[1] = "No Recoil"
	v717[2] = "Reduce Recoil"
	t553.Options = v717
	t553.Default = "No Recoil"
	t553.Multi = false

	function t553.Callback(p246)
		t545.Mode = p246
		local Section14 = t551.Items.Section
		local v718
		v718 = p246 == "Reduce Recoil"
		Section14.Visible = v718
		if t545.Enabled then
			f336()
		end
		if p246 == "No Recoil" then
			f345()
		end
	end

	Dropdown13(t544, t553)
	local Slider23 = t551.Slider
	local t554 = {
		Name = "Reduce %",
		Flag = "GunReducePct",
		Min = 0,
		Max = 100,
		Default = 100,
		Decimal = 1,
		Suffix = "%"
	}

	function t554.Callback(p247)
		t545.ReducePct = p247
		if t545.Enabled and t545.Mode == "Reduce Recoil" then
			f336()
		end
	end

	Slider23(t551, t554)
	local Toggle47 = t218.Toggle
	local t555 = { Name = "Enable Bullet Beam", Flag = "BulletBeamToggle", Default = false }

	function t555.Callback(p248)
		f50(p248)
	end

	local t556 = (Toggle47(t218, t555))
	local Colorpicker3 = t556.Colorpicker
	local t557 = {
		Name = "Beam Color",
		Flag = "BBColor",
		Color = Color3.fromRGB(230, 160, 70),
		Alpha = 0.7
	}

	function t557.Callback(p249, p250)
		t24.Col = p249
		if p250 then
			t24.Trans = p250
		end
	end

	Colorpicker3(t556, t557)
	local Dropdown14 = t218.Dropdown
	local t558 = { Name = "Texture", Flag = "BBTexture" }
	local v719 = (table.create(7))
	v719[1] = "Obelus"
	v719[2] = "Lightning"
	v719[3] = "DNA"
	v719[4] = "Straight"
	v719[5] = "Taser"
	v719[6] = "Edge"
	v719[7] = "Energy"
	t558.Options = v719
	t558.Default = "DNA"
	t558.Multi = false

	function t558.Callback(p251)
		t24.CurTex = p251
	end

	Dropdown14(t218, t558)
	local Dropdown15 = t218.Dropdown
	local t559 = { Name = "Type", Flag = "BBType" }
	local v720 = (table.create(3))
	v720[1] = "Beam"
	v720[2] = "Line"
	v720[3] = "Part"
	t559.Options = v720
	t559.Default = "Beam"
	t559.Multi = false

	function t559.Callback(p252)
		t24.Type = p252
	end

	Dropdown15(t218, t559)
	local Slider24 = t218.Slider
	local t560 = {
		Name = "Thickness",
		Flag = "BBThickness",
		Min = 0.01,
		Max = 5,
		Default = 0.1,
		Decimal = 0.01,
		Suffix = ""
	}

	function t560.Callback(p253)
		t24.Thick = p253
	end

	Slider24(t218, t560)
	local Slider25 = t218.Slider
	local t561 = {
		Name = "Lifetime",
		Flag = "BBLife",
		Min = 0.1,
		Max = 10,
		Default = 2,
		Decimal = 0.1,
		Suffix = "s"
	}

	function t561.Callback(p254)
		t24.Life = p254
	end

	Slider25(t218, t561)
	local Slider26 = t218.Slider
	local t562 = {
		Name = "Transparency",
		Flag = "BBTransparency",
		Min = 0,
		Max = 1,
		Default = 0.7,
		Decimal = 0.01,
		Suffix = ""
	}

	function t562.Callback(...)
		local _ = 26482 + bit32.lrotate(20, 31) + -26491
		local v721 = ...
		t24.Trans = v721
	end

	Slider26(t218, t562)
	local Dropdown16 = t218.Dropdown
	local t563 = { Name = "Material (Part)", Flag = "BBPartMaterial" }
	local v722 = (table.create(4))
	v722[1] = "ForceField"
	v722[2] = "Neon"
	v722[3] = "SmoothPlastic"
	v722[4] = "Glass"
	t563.Options = v722
	t563.Default = "ForceField"
	t563.Multi = false

	function t563.Callback(p255)
		t24.Mat = p255
	end

	Dropdown16(t218, t563)
	local Toggle48 = t218.Toggle
	local t564 = { Name = "Smooth Fade", Flag = "BBSmoothFade", Default = false }

	function t564.Callback(p256)
		t24.SmoothFade = p256
	end

	Toggle48(t218, t564)
	local Slider27 = t218.Slider
	local t565 = { Name = "Fade Speed", Min = 0.1, Max = 5, Default = 1, Decimal = 1, Suffix = "s" }

	function t565.Callback(p257)
		local v723 = (tonumber(p257))
		if not v723 then
			v723 = 1
		end
		t24.FadeSpeed = v723
	end

	Slider27(t218, t565)
	local t566 = v104
	local Section15 = t566.Section
	local t567 = { Name = "Local", Side = "Right" }
	local t568 = (Section15(t566, t567))
	local t569 = {
		CustomFovEnabled = false,
		CustomFovValue = 90,
		DisableOnAim = true,
		SmoothTransition = true,
		Smoothness = 10,
		ZoomEnabled = false,
		ZoomMultiplier = 1,
		_zoomActive = false,
		_aimDownConn = nil,
		_currentInternalFov = 70,
		_isForcing = false,
		_savedGameFov = 70
	}

	local function f347()
		if not t569._aimDownConn then
			t569._currentInternalFov = CurrentCamera.FieldOfView

			local function f348(p258)
				local v724 = nil
				local v725 = false
				if t569._zoomActive then
					v724 = 20 / t569.ZoomMultiplier
					v725 = true
				elseif t569.CustomFovEnabled then
					local v726 = false
					if t569.DisableOnAim then
						local v727 = LocalPlayer2.Character
						if v727 then
							v727 = (v727:FindFirstChildOfClass("Tool"))
						end
						if v727 then
							local t570 = (v727:FindFirstChild("Values"))
							if t570 then
								t570 = (t570:FindFirstChild("AimDown"))
							end
							if t570 and t570.Value == true then
								v726 = true
							end
						end
					end
					if not v726 then
						v724 = t569.CustomFovValue
						v725 = true
					end
				end
				if v725 then
					if not t569._isForcing then
						t569._savedGameFov = CurrentCamera.FieldOfView
						t569._isForcing = true
					end
				else
					local v728 = LocalPlayer2.Character
					if v728 then
						v728 = (v728:FindFirstChildOfClass("Tool"))
					end
					local v729 = false
					if v728 then
						local t571 = (v728:FindFirstChild("Values"))
						if t571 then
							t571 = (t571:FindFirstChild("AimDown"))
						end
						if t571 and t571.Value == true then
							v729 = true
						end
					end
					if v729 then
						t569._isForcing = false
						t569._currentInternalFov = CurrentCamera.FieldOfView
						return
					end
					if not t569._isForcing then
						t569._currentInternalFov = CurrentCamera.FieldOfView
						return
					end
					if not (0.5 < math.abs(t569._currentInternalFov - t569._savedGameFov)) then
						t569._isForcing = false
						t569._currentInternalFov = CurrentCamera.FieldOfView
						return
					end
					v724 = t569._savedGameFov
				end
				if v724 then
					if t569.SmoothTransition then
						local v730 = (math.clamp(21 - t569.Smoothness, 1, 20))
						local v731 = v724 - t569._currentInternalFov
						if 0.05 < math.abs(v731) then
							t569._currentInternalFov = t569._currentInternalFov + v731 * math.min(p258 * (v730 * 1.5), 1)
						else
							t569._currentInternalFov = v724
						end
					else
						t569._currentInternalFov = v724
					end
					CurrentCamera.FieldOfView = t569._currentInternalFov
				end
			end

			t569._aimDownConn = (RunService.RenderStepped:Connect(f348))
		end
	end

	local function f349(p259)
		t569.CustomFovEnabled = p259
		f347()
	end

	local function f350(p260)
		t569._zoomActive = p260
		f347()
	end

	local Toggle49 = t568.Toggle
	local t572 = { Name = "Custom Camera FOV", Flag = "LocalCustomFov", Default = false }

	function t572.Callback(...)
		local _
		_ = not (bit32.lrotate(465, 23) == 157)
		local v732 = ...
		f349(v732)
	end

	Toggle49(t568, t572)
	local Toggle50 = t568.Toggle
	local t573 = { Name = "Disable On Aim", Flag = "LocalFovDisableOnAim", Default = false }

	function t573.Callback(p261)
		t569.DisableOnAim = p261
	end

	Toggle50(t568, t573)
	local Toggle51 = t568.Toggle
	local t574 = { Name = "Smooth FOV Transition", Flag = "LocalFovSmooth", Default = false }

	function t574.Callback(p262)
		t569.SmoothTransition = p262
	end

	Toggle51(t568, t574)
	local Slider28 = t568.Slider
	local t575 = {
		Name = "Transition Speed",
		Flag = "LocalFovSmoothnessValue",
		Min = 1,
		Max = 20,
		Default = 10,
		Decimal = 1
	}

	function t575.Callback(p263)
		t569.Smoothness = p263
	end

	Slider28(t568, t575)
	local Slider29 = t568.Slider
	local t576 = {
		Name = "FOV",
		Flag = "LocalFovValue",
		Min = 50,
		Max = 120,
		Default = 90,
		Decimal = 1,
		Suffix = "\176"
	}

	function t576.Callback(p264)
		t569.CustomFovValue = p264
	end

	Slider29(t568, t576)
	local Toggle52 = t568.Toggle
	local t577 = { Name = "Zoom", Flag = "LocalZoom", Default = false }

	function t577.Callback(p265)
		f350(p265)
	end

	local t578 = (Toggle52(t568, t577))
	local Keybind6 = t578.Keybind
	local t579 = { Flag = "LocalZoomKey", Default = false, Mode = "Hold" }

	function t579.Callback(p266)
		t578.Set(p266)
	end

	Keybind6(t578, t579)
	local Slider30 = t568.Slider
	local t580 = {
		Name = "Zoom Multiplier",
		Flag = "LocalZoomMultiplier",
		Min = 1,
		Max = 20,
		Default = 1,
		Decimal = 0.1,
		Suffix = "x"
	}

	function t580.Callback(...)
		local v733
		v733 = not not false
		if not v733 then
			v733 = 17
		end
		local v734 = ...
		t569.ZoomMultiplier = v734
	end

	Slider30(t568, t580)

	local function f351()
		task.wait(1)
		f347()
	end

	LocalPlayer2.CharacterAdded:Connect(f351)

	local function f352()
		local t581 = v104
		local Section16 = t581.Section
		local t582 = { Name = "Custom ViewModel", Side = "Right" }
		local t583 = (Section16(t581, t582))
		local t584 = { Enabled = false, SelectedState = "Default", Speed = 0.3 }
		local t585 = {}
		local f353 = { X = 0, Y = 0, Z = 0, Pitch = 0, Yaw = 0, Roll = 0 }
		t585.Default = f353
		f353 = { X = 0, Y = 0, Z = 0, Pitch = 0, Yaw = 0, Roll = 0 }
		t585.Aiming = f353
		t584.States = t585
		local t586 = { X = 0, Y = 0, Z = 0, Pitch = 0, Yaw = 0, Roll = 0 }
		t584.Current = t586
		f353 = t583
		local Toggle53 = t583.Toggle
		local t587 = { Name = "Enable Custom ViewModel", Flag = "VM_Enabled", Default = false }

		function t587.Callback(p267)
			t584.Enabled = p267
		end

		Toggle53(f353, t587)
		local t588 = {}
		f353 = t583.Dropdown
		local t589 = { Name = "State", Flag = "VM_State" }
		local v735 = (table.create(2))
		v735[1] = "Default"
		v735[2] = "Aiming"
		t589.Options = v735
		t589.Default = "Default"
		t589.Multi = false

		function t589.Callback(p268)
			t584.SelectedState = p268
			local t590 = t584.States[p268]
			if t588.X then
				t588.X.Set(t590.X)
				t588.Y.Set(t590.Y)
				t588.Z.Set(t590.Z)
				t588.Pitch.Set(t590.Pitch)
				t588.Yaw.Set(t590.Yaw)
				t588.Roll.Set(t590.Roll)
			end
		end

		f353(t583, t589)
		f353 = t583.Slider
		local t591 = {
			Name = "Offset X",
			Flag = "VM_X",
			Min = -5,
			Max = 5,
			Default = 0,
			Decimal = 0.1
		}

		function t591.Callback(p269)
			t584.States[t584.SelectedState].X = p269
		end

		f353 = (f353(t583, t591))
		t588.X = f353
		f353 = t583.Slider
		local t592 = {
			Name = "Offset Y",
			Flag = "VM_Y",
			Min = -5,
			Max = 5,
			Default = 0,
			Decimal = 0.1
		}

		function t592.Callback(...)
			local v736 = ...
			t584.States[t584.SelectedState].Y = v736
		end

		f353 = (f353(t583, t592))
		t588.Y = f353
		f353 = t583.Slider
		local t593 = {
			Name = "Offset Z",
			Flag = "VM_Z",
			Min = -5,
			Max = 5,
			Default = 0,
			Decimal = 0.1
		}

		function t593.Callback(p270)
			t584.States[t584.SelectedState].Z = p270
		end

		f353 = (f353(t583, t593))
		t588.Z = f353
		f353 = t583.Slider
		local t594 = {
			Name = "Pitch",
			Flag = "VM_Pitch",
			Min = -180,
			Max = 180,
			Default = 0,
			Decimal = 1
		}

		function t594.Callback(p271)
			t584.States[t584.SelectedState].Pitch = p271
		end

		f353 = (f353(t583, t594))
		t588.Pitch = f353
		f353 = t583.Slider
		local t595 = {
			Name = "Yaw",
			Flag = "VM_Yaw",
			Min = -180,
			Max = 180,
			Default = 0,
			Decimal = 1
		}

		function t595.Callback(p272)
			t584.States[t584.SelectedState].Yaw = p272
		end

		f353 = (f353(t583, t595))
		t588.Yaw = f353
		f353 = t583.Slider
		local t596 = {
			Name = "Roll",
			Flag = "VM_Roll",
			Min = -180,
			Max = 180,
			Default = 0,
			Decimal = 1
		}

		function t596.Callback(p273)
			t584.States[t584.SelectedState].Roll = p273
		end

		f353 = (f353(t583, t596))
		t588.Roll = f353
		f353 = nil

		local function f354()
			if f353 then
				local ViewModel = (workspace.CurrentCamera:FindFirstChild("ViewModel"))
				if ViewModel then
					ViewModel:PivotTo(f353)
				end
				f353 = nil
			end
		end

		RunService:BindToRenderStep("Antigravity_ViewModel_Restore", 100, f354)

		local function f355(p274)
			if t584.Enabled then
				local v737 = LocalPlayer2.Character
				if v737 then
					v737 = (v737:FindFirstChildOfClass("Tool"))
				end
				local t597 = false
				if v737 then
					local t598 = (v737:FindFirstChild("Values"))
					if t598 then
						t598 = (t598:FindFirstChild("AimDown"))
					end
					if t598 and t598.Value == true then
						t597 = true
					end
				end
				t597 = t597 and t584.States.Aiming or t584.States.Default
				local v738 = 1
				if 0 < t584.Speed then
					v738 = 1 - math.pow(0.001, p274 / t584.Speed)
				end
				t584.Current.X = t584.Current.X + (t597.X - t584.Current.X) * v738
				t584.Current.Y = t584.Current.Y + (t597.Y - t584.Current.Y) * v738
				t584.Current.Z = t584.Current.Z + (t597.Z - t584.Current.Z) * v738
				t584.Current.Pitch = t584.Current.Pitch + (t597.Pitch - t584.Current.Pitch) * v738
				t584.Current.Yaw = t584.Current.Yaw + (t597.Yaw - t584.Current.Yaw) * v738
				t584.Current.Roll = t584.Current.Roll + (t597.Roll - t584.Current.Roll) * v738
				local ViewModel2 = (workspace.CurrentCamera:FindFirstChild("ViewModel"))
				if ViewModel2 then
					f353 = (ViewModel2:GetPivot())
					local CFrame11 = workspace.CurrentCamera.CFrame
					ViewModel2:PivotTo(CFrame11 * (CFrame.new(
						t584.Current.X,
						t584.Current.Y,
						t584.Current.Z
					) * CFrame.Angles(
						math.rad(t584.Current.Pitch),
						math.rad(t584.Current.Yaw),
						math.rad(t584.Current.Roll)
					)) * CFrame11:ToObjectSpace(f353))
				end
			else
				f353 = nil
			end
		end

		RunService:BindToRenderStep("Antigravity_ViewModel_Custom", 3000, f355)
	end

	f352()

	local function f356()
		local t599 = v380
		local Toggle54 = t599.Toggle
		local t600 = { Name = "Enable", Flag = "ESPEnabled", Default = false }

		function t600.Callback(...)
			local v739
			if not v739 then
				v739 = 492
			end
			local v740 = ...
			t56.Enabled = v740
			if v740 then
				for _, t601 in v239:GetPlayers() do
					if not (t601 == v239.LocalPlayer or t84[t601.Name]) then
						t84:create_object(t601)
					end
				end
			end
			t84.refresh_elements()
		end

		Toggle54(t599, t600)
		local t602 = v380
		local Toggle55 = t602.Toggle
		local t603 = { Name = "Names", Flag = "ESPNames", Default = false }

		function t603.Callback(p275)
			t56.Names = p275
			t84.refresh_elements()
		end

		local t604 = (Toggle55(t602, t603))
		local Colorpicker4 = t604.Colorpicker
		local t605 = {
			Name = "Name Color",
			Flag = "ESPNameColor",
			Color = Color3.fromRGB(255, 255, 255),
			Alpha = 0
		}

		function t605.Callback(p276)
			t56.Name_Color.Color = p276
			t84.refresh_elements()
		end

		Colorpicker4(t604, t605)
		local t606 = v380
		local Dropdown17 = t606.Dropdown
		local t607 = { Name = "Name Display", Flag = "ESPNameMode" }
		local v741 = (table.create(3))
		v741[1] = "Both"
		v741[2] = "DisplayName"
		v741[3] = "Username"
		t607.Options = v741
		t607.Default = "DisplayName"
		t607.Multi = false

		function t607.Callback(p277)
			t56.Name_Mode = p277
			t84.refresh_elements()
		end

		Dropdown17(t606, t607)
		local t608 = v380
		local Toggle56 = t608.Toggle
		local t609 = { Name = "Boxes", Flag = "ESPNames", Default = false }

		function t609.Callback(p278)
			t56.Boxes = p278
			t84.refresh_elements()
		end

		local t610 = (Toggle56(t608, t609))
		local Colorpicker5 = t610.Colorpicker
		local t611 = {
			Name = "Box Color",
			Flag = "ESPBoxColor",
			Color = Color3.fromRGB(255, 255, 255),
			Alpha = 0
		}

		function t611.Callback(p279)
			t56.Box_Color.Color = p279
			t84.refresh_elements()
		end

		Colorpicker5(t610, t611)
		local t612 = v380
		local Toggle57 = t612.Toggle
		local t613 = { Name = "Box Gradient", Flag = "ESPBoxGradient", Default = false }

		function t613.Callback(p280)
			t56.Box_Gradient = p280
			t84.refresh_elements()
		end

		local t614 = (Toggle57(t612, t613))
		local Colorpicker6 = t614.Colorpicker
		local t615 = {
			Name = "Box Gradient Color",
			Flag = "ESPBoxGradientColor",
			Color = Color3.fromRGB(128, 128, 128),
			Alpha = 0
		}

		function t615.Callback(p281)
			t56.Box_Gradient_Color.Color = p281
			t84.refresh_elements()
		end

		Colorpicker6(t614, t615)
		local t616 = v380
		local Dropdown18 = t616.Dropdown
		local t617 = { Name = "Box Type", Flag = "ESPBoxType" }
		local v742 = (table.create(2))
		v742[1] = "Corner"
		v742[2] = "Normal"
		t617.Options = v742
		t617.Default = "Normal"
		t617.Multi = false

		function t617.Callback(p282)
			t56.Box_Type = p282
			t84.refresh_elements()
		end

		Dropdown18(t616, t617)
		local t618 = v381
		local Toggle58 = t618.Toggle
		local t619 = { Name = "Enabled", Flag = "ChamsAllEnabled", Default = false }

		function t619.Callback(p283)
			t267.MasterEnabled = p283
			t269.MasterEnabled = p283
			if p283 and (t267.Enabled or t269.Enabled) then
				f127()
			end
			if p283 and (t279.Enabled or t281.Enabled) then
				f125()
			end
		end

		Toggle58(t618, t619)
		local t620 = v381
		local Toggle59 = t620.Toggle
		local t621 = { Name = "Chams", Flag = "ChamsEnabled", Default = false }

		function t621.Callback(p284)
			t267.Enabled = p284
			if p284 then
				f110()
				f127()
			else
				f111()
				if not t269.Enabled then
					f129()
				end
			end
		end

		local t622 = (Toggle59(t620, t621))
		local Colorpicker7 = t622.Colorpicker
		local t623 = {
			Name = "Chams Color",
			Flag = "ChamsColor",
			Color = Color3.fromRGB(255, 255, 255),
			Alpha = 0.3
		}

		function t623.Callback(p285, p286)
			t267.TargetColor = p285
			t267.TargetAlpha = p286
			if not t267.Enabled then
				t267.Color = p285
				t267.Alpha = p286
			end
		end

		Colorpicker7(t622, t623)
		local t624 = v381
		local Toggle60 = t624.Toggle
		local t625 = { Name = "Chams Glow", Flag = "ChamsGlowEnabled", Default = false }

		function t625.Callback(p287)
			t267.GlowEnabled = p287
			local v743
			if p287 then
				local _ = bit32.lrotate
				v743 = not not false
				if not v743 then
					v743 = 347
				end
				local _ = 1288 + bit32.lrotate(v743, 0) + -1633
				f110()
			end
		end

		Toggle60(t624, t625)
		local t626 = v381
		local Slider31 = t626.Slider
		local t627 = {
			Name = "Chams Glow Size",
			Flag = "ChamsGlowSize",
			Min = 1,
			Max = 2.5,
			Default = 1.75,
			Decimal = 0.01
		}

		function t627.Callback(p288)
			t267.GlowSize = p288
		end

		Slider31(t626, t627)
		local t628 = v381
		local Toggle61 = t628.Toggle
		local t629 = { Name = "Chams Shading", Flag = "ChamsShadingEnabled", Default = false }

		function t629.Callback(p289)
			t267.ShadingEnabled = p289

			local function f357()
				if setfflag then
					local setfflag2 = setfflag
					local True = p289
					if True then
						True = "True"
					end
					setfflag2("AdornShadingAPI", True)
				end
			end

			pcall(f357)
		end

		Toggle61(t628, t629)
		local t630 = v381
		local Dropdown19 = t630.Dropdown
		local t631 = { Name = "Chams Inline Shade", Flag = "ChamsInlineShade" }
		local v744 = (table.create(3))
		v744[1] = "Default"
		v744[2] = "XRay"
		v744[3] = "XRayShaded"
		t631.Options = v744
		t631.Default = "Default"

		function t631.Callback(...)
			local v745
			v745 = not not false
			if not v745 then
				v745 = 100
			end
			local v746
			v746 = v745 == 441
			if not v746 then
				v746 = 137
			end
			local v747 = ...
			t267.InlineShade = v747
		end

		Dropdown19(t630, t631)
		local t632 = v381
		local Dropdown20 = t632.Dropdown
		local t633 = { Name = "Chams Outline Shade", Flag = "ChamsOutlineShade" }
		local v748 = (table.create(4))
		v748[1] = "Default"
		v748[2] = "Shaded"
		v748[3] = "XRay"
		v748[4] = "XRayShaded"
		t633.Options = v748
		t633.Default = "Default"

		function t633.Callback(p290)
			t267.OutlineShade = p290
		end

		Dropdown20(t632, t633)
		local t634 = v381
		local Toggle62 = t634.Toggle
		local t635 = { Name = "Visible Chams", Flag = "Chams2Enabled", Default = false }

		function t635.Callback(p291)
			t269.Enabled = p291
			if p291 then
				f112()
				f127()
			else
				f113()
				if not t267.Enabled then
					f129()
				end
			end
		end

		local t636 = (Toggle62(t634, t635))
		local Colorpicker8 = t636.Colorpicker
		local t637 = {
			Name = "Visible Chams Color",
			Flag = "Chams2Color",
			Color = Color3.fromRGB(255, 165, 0),
			Alpha = 0.3
		}

		function t637.Callback(p292, p293)
			t269.TargetColor = p292
			t269.TargetAlpha = p293
			if not t269.Enabled then
				t269.Color = p292
				t269.Alpha = p293
			end
		end

		Colorpicker8(t636, t637)
		local t638 = v381
		local Toggle63 = t638.Toggle
		local t639 = { Name = "Visible Chams Glow", Flag = "Chams2GlowEnabled", Default = false }

		function t639.Callback(p294)
			t269.GlowEnabled = p294
			if p294 then
				f112()
			end
		end

		Toggle63(t638, t639)
		local t640 = v381
		local Slider32 = t640.Slider
		t639.Name = "Visible Chams Glow Size"
		t639.Flag = "Chams2GlowSize"
		t639.Min = 1
		t639.Max = 2.5
		t639.Default = 1.75
		t639.Decimal = 0.01

		function t639.Callback(p295)
			t269.GlowSize = p295
		end

		Slider32(t640, t639)
		local t641 = v381
		local Toggle64 = t641.Toggle
		local t642 = {
			Name = "Visible Chams Shading",
			Flag = "Chams2ShadingEnabled",
			Default = false
		}

		function t642.Callback(p296)
			t269.ShadingEnabled = p296

			local function f358()
				if setfflag then
					local setfflag3 = setfflag
					local v749 = p296
					v749 = v749 and "True" or "False"
					setfflag3("AdornShadingAPI", v749)
				end
			end

			pcall(f358)
		end

		Toggle64(t641, t642)
		local t643 = v381
		local Dropdown21 = t643.Dropdown
		local t644 = { Name = "Visible Chams Inline Shade", Flag = "Chams2InlineShade" }
		local v750 = (table.create(2))
		v750[1] = "Default"
		v750[2] = "Shaded"
		t644.Options = v750
		t644.Default = "Default"

		function t644.Callback(p297)
			t269.InlineShade = p297
		end

		Dropdown21(t643, t644)
		local t645 = v381
		local Dropdown22 = t645.Dropdown
		local t646 = { Name = "Visible Chams Outline Shade", Flag = "Chams2OutlineShade" }
		local v751 = (table.create(2))
		v751[1] = "Default"
		v751[2] = "Shaded"
		t646.Options = v751
		t646.Default = "Default"

		function t646.Callback(p298)
			t269.OutlineShade = p298
		end

		Dropdown22(t645, t646)
		local t647 = v381
		local Toggle65 = t647.Toggle
		local t648 = { Name = "Highlight Chams", Flag = "HChamsEnabled", Default = false }

		function t648.Callback(p299)
			t279.Enabled = p299
			if p299 then
				if t281.Enabled then
					local ConfigFlags2 = t5.ConfigFlags
					if ConfigFlags2 and ConfigFlags2.HChams2Enabled then
						ConfigFlags2.HChams2Enabled(false)
					end
				end
				f119()
				f125()
			else
				f120()
			end
		end

		local t649 = (Toggle65(t647, t648))
		local Colorpicker9 = t649.Colorpicker
		local t650 = {
			Name = "Fill Color",
			Flag = "HChamsFillColor",
			Color = Color3.fromRGB(100, 255, 100),
			Alpha = 0.5
		}

		function t650.Callback(p300, p301)
			t279.FillTarget = p300
			t279.FillColor = p300
			if p301 then
				t279.FillTargetAlpha = p301
				t279.FillAlpha = p301
			end
		end

		Colorpicker9(t649, t650)
		local t651 = v381
		local Toggle66 = t651.Toggle
		local t652 = { Name = "Outline", Flag = "HChamsOutlineToggle", Default = false }

		function t652.Callback(...)
			local v752
			v752 = 376 == math.modf(3.141592653589793)
			if not v752 then
				v752 = 311
			end
			local v753
			v753 = v752 < 94
			if not v753 then
				v753 = 151
			end
			local v754 = ...
			if v754 then
				local _savedOutlineAlpha = t279._savedOutlineAlpha
				if not _savedOutlineAlpha then
					_savedOutlineAlpha = 0
				end
				t279.OutlineTargetAlpha = _savedOutlineAlpha
				t279.OutlineAlpha = 0
			else
				t279.OutlineTargetAlpha = 1
				t279.OutlineAlpha = 1
			end
		end

		local t653 = (Toggle66(t651, t652))
		local Colorpicker10 = t653.Colorpicker
		local t654 = {
			Name = "Outline Color",
			Flag = "HChamsOutlineColor",
			Color = Color3.fromRGB(255, 255, 255),
			Alpha = 0
		}

		function t654.Callback(p302, p303)
			t279.OutlineTarget = p302
			t279.OutlineColor = p302
			if p303 then
				t279._savedOutlineAlpha = p303
				if t5.Flags.HChamsOutlineToggle then
					t279.OutlineTargetAlpha = p303
					t279.OutlineAlpha = p303
				end
			end
		end

		Colorpicker10(t653, t654)
		local t655 = v381
		local Toggle67 = t655.Toggle
		local t656 = { Name = "Visible Highlight Chams", Flag = "HChams2Enabled", Default = false }

		function t656.Callback(p304)
			t281.Enabled = p304
			if p304 then
				if t279.Enabled then
					local ConfigFlags3 = t5.ConfigFlags
					if ConfigFlags3 and ConfigFlags3.HChamsEnabled then
						ConfigFlags3.HChamsEnabled(false)
					end
				end
				f121()
				f125()
			else
				f122()
			end
		end

		local t657 = (Toggle67(t655, t656))
		local Colorpicker11 = t657.Colorpicker
		local t658 = {
			Name = "Fill Color",
			Flag = "HChams2FillColor",
			Color = Color3.fromRGB(255, 100, 100),
			Alpha = 0.5
		}

		function t658.Callback(...)
			local _ = bit32.bor
			local v755
			v755 = 21 <= string.byte("G\244", 1, 2)
			if v755 then
				v755 = (string.unpack(">i8", "\0\0\0\0\0\0\0\135"))
			end
			local _ = 7184 + bit32.bor(v755, 389) + -7573
			local v756, v757
			v757, v756 = ...
			t281.FillTarget = v757
			t281.FillColor = v757
			if v756 then
				t281.FillTargetAlpha = v756
				t281.FillAlpha = v756
			end
		end

		Colorpicker11(t657, t658)
		local t659 = v381
		local Toggle68 = t659.Toggle
		local t660 = { Name = "Visible Outline", Flag = "HChams2OutlineToggle", Default = false }

		function t660.Callback(p305)
			if p305 then
				local _savedOutlineAlpha2 = t281._savedOutlineAlpha
				if not _savedOutlineAlpha2 then
					_savedOutlineAlpha2 = 0
				end
				t281.OutlineTargetAlpha = _savedOutlineAlpha2
				local _savedOutlineAlpha3 = t281._savedOutlineAlpha
				if not _savedOutlineAlpha3 then
					_savedOutlineAlpha3 = 0
				end
				t281.OutlineAlpha = _savedOutlineAlpha3
			else
				t281.OutlineTargetAlpha = 1
				t281.OutlineAlpha = 1
			end
		end

		local t661 = (Toggle68(t659, t660))
		local Colorpicker12 = t661.Colorpicker
		local t662 = {
			Name = "Outline Color",
			Flag = "HChams2OutlineColor",
			Color = Color3.fromRGB(255, 255, 255),
			Alpha = 0
		}

		function t662.Callback(p306, p307)
			t281.OutlineTarget = p306
			t281.OutlineColor = p306
			if p307 then
				t281._savedOutlineAlpha = p307
				if t5.Flags.HChams2OutlineToggle then
					t281.OutlineTargetAlpha = p307
					t281.OutlineAlpha = p307
				end
			end
		end

		Colorpicker12(t661, t662)
		local t663 = v380
		local Toggle69 = t663.Toggle
		local t664 = { Name = "Healthbar", Flag = "ESPHealthbar", Default = false }

		function t664.Callback(p308)
			t56.Healthbar = p308
			t84.refresh_elements()
		end

		local t665 = (Toggle69(t663, t664))
		local Colorpicker13 = t665.Colorpicker
		local t666 = {
			Name = "Health High Color",
			Flag = "ESPHealthHigh",
			Color = Color3.fromRGB(0, 255, 0),
			Alpha = 0,
			LayoutOrder = 1
		}

		function t666.Callback(p309)
			t56.Health_High.Color = p309
			t84.refresh_elements()
		end

		Colorpicker13(t665, t666)
		local Colorpicker14 = t665.Colorpicker
		local t667 = {
			Name = "Health Low Color",
			Flag = "ESPHealthLow",
			Color = Color3.fromRGB(255, 0, 0),
			Alpha = 0,
			LayoutOrder = 2
		}

		function t667.Callback(p310)
			t56.Health_Low.Color = p310
			t84.refresh_elements()
		end

		Colorpicker14(t665, t667)
		local t668 = v380
		local Dropdown23 = t668.Dropdown
		local t669 = { Name = "Healthbar Mode", Flag = "ESPHealthbarMode" }
		local v758 = (table.create(3))
		v758[1] = "Static"
		v758[2] = "Dynamic"
		v758[3] = "Gradient"
		t669.Options = v758
		t669.Default = "Dynamic"
		t669.Multi = false

		function t669.Callback(p311)
			t56.Healthbar_Mode = p311
			t84.refresh_elements()
		end

		Dropdown23(t668, t669)
		local t670 = v380
		local Toggle70 = t670.Toggle
		local t671 = { Name = "Health Text", Flag = "ESPHealthText", Default = false }

		function t671.Callback(p312)
			t56.Health_Text = p312
			t84.refresh_elements()
		end

		local t672 = (Toggle70(t670, t671))
		local Colorpicker15 = t672.Colorpicker
		local t673 = {
			Name = "Health Text Color",
			Flag = "ESPHealthTextColor",
			Color = Color3.fromRGB(0, 255, 0),
			Alpha = 0
		}

		function t673.Callback(p313)
			t56.Health_Text_Color.Color = p313
			t84.refresh_elements()
		end

		Colorpicker15(t672, t673)
		local t674 = v380
		local Toggle71 = t674.Toggle
		local t675 = { Name = "Armor Bar", Flag = "ESPArmorbar", Default = false }

		function t675.Callback(p314)
			t56.Armorbar = p314
			t84.refresh_elements()
		end

		local t676 = (Toggle71(t674, t675))
		local Colorpicker16 = t676.Colorpicker
		local t677 = {
			Name = "Armor High Color",
			Flag = "ESPArmorHighColor",
			Color = Color3.fromRGB(100, 149, 237),
			Alpha = 0
		}

		function t677.Callback(...)
			local v759
			v759 = not not true
			if v759 then
				v759 = 6
			end
			local v760 = ...
			t56.Armor_High.Color = v760
			t84.refresh_elements()
		end

		Colorpicker16(t676, t677)
		local Colorpicker17 = t676.Colorpicker
		local t678 = {
			Name = "Armor Low Color",
			Flag = "ESPArmorLowColor",
			Color = Color3.fromRGB(200, 80, 80),
			Alpha = 0
		}

		function t678.Callback(p315)
			t56.Armor_Low.Color = p315
			t84.refresh_elements()
		end

		Colorpicker17(t676, t678)
		local t679 = v380
		local Dropdown24 = t679.Dropdown
		local t680 = { Name = "Armorbar Mode", Flag = "ESPArmorbarMode" }
		local v761 = (table.create(3))
		v761[1] = "Static"
		v761[2] = "Dynamic"
		v761[3] = "Gradient"
		t680.Options = v761
		t680.Default = "Dynamic"
		t680.Multi = false

		function t680.Callback(p316)
			t56.Armorbar_Mode = p316
			t84.refresh_elements()
		end

		Dropdown24(t679, t680)
		local t681 = v380
		local Toggle72 = t681.Toggle
		local t682 = { Name = "Armor Text", Flag = "ESPArmorText", Default = false }

		function t682.Callback(...)
			local _
			_ = not false
			local v762 = ...
			t56.Armor_Text = v762
			t84.refresh_elements()
		end

		local t683 = (Toggle72(t681, t682))
		local Colorpicker18 = t683.Colorpicker
		local t684 = {
			Name = "Armor Text Color",
			Flag = "ESPArmorTextColor",
			Color = Color3.fromRGB(100, 149, 237),
			Alpha = 0
		}

		function t684.Callback(p317)
			t56.Armor_Text_Color.Color = p317
			t84.refresh_elements()
		end

		Colorpicker18(t683, t684)
		local t685 = v380
		local Toggle73 = t685.Toggle
		local t686 = { Name = "Reload Bar", Flag = "ESPReloadbar", Default = false }

		function t686.Callback(...)
			local _
			_ = bit32.lrotate(509, 24) < 296
			local v763 = ...
			t56.Reloadbar = v763
		end

		local t687 = (Toggle73(t685, t686))
		local Colorpicker19 = t687.Colorpicker
		local t688 = {
			Name = "Reload Color",
			Flag = "ESPReloadColor",
			Color = Color3.fromRGB(255, 255, 255),
			Alpha = 0
		}

		function t688.Callback(p318)
			t56.Reload_Color.Color = p318
		end

		Colorpicker19(t687, t688)
		local t689 = v380
		local Toggle74 = t689.Toggle
		local t690 = { Name = "Distance", Flag = "ESPDistance", Default = false }

		function t690.Callback(p319)
			t56.Distance = p319
			t84.refresh_elements()
		end

		local t691 = (Toggle74(t689, t690))
		local Colorpicker20 = t691.Colorpicker
		local t692 = {
			Name = "Distance Color",
			Flag = "ESPDistanceColor",
			Color = Color3.fromRGB(255, 255, 255),
			Alpha = 0
		}

		function t692.Callback(...)
			local v764
			v764 = not not true
			if v764 then
				v764 = 53
			end
			;(nil)[52] = 7538 + v764 + -7386
			;(nil)[51] = 51
			local v765 = ...
			t56.Distance_Color.Color = v765
			t84.refresh_elements()
		end

		Colorpicker20(t691, t692)
		local t693 = v380
		local Slider33 = t693.Slider
		local t694 = {
			Name = "Distance",
			Flag = "ESPMaxDistance",
			Min = 50,
			Max = 5000,
			Default = 1000,
			Decimal = 1,
			Suffix = "st"
		}

		function t694.Callback(p320)
			t56.Max_Distance = p320
		end

		Slider33(t693, t694)
		local t695 = v380
		local Toggle75 = t695.Toggle
		local t696 = { Name = "Limit ESP FPS", Flag = "ESPLimitFPS", Default = false }

		function t696.Callback(p321)
			t56.Limit_ESP_FPS = p321
		end

		Toggle75(t695, t696)
		local t697 = v380
		local Slider34 = t697.Slider
		local t698 = {
			Name = "ESP FPS Value",
			Flag = "ESPFPSValue",
			Min = 10,
			Max = 144,
			Default = 80
		}

		function t698.Callback(...)
			local _
			_ = not not true
			local v766 = ...
			t56.ESP_FPS_Value = v766
		end

		Slider34(t697, t698)
		local t699 = v380
		local Toggle76 = t699.Toggle
		local t700 = { Name = "Smooth Fade OOR", Flag = "ESPSmoothFadeOOR", Default = false }

		function t700.Callback(p322)
			t56.Smooth_Fade_OOR = p322
		end

		Toggle76(t699, t700)
		local t701 = v380
		local Toggle77 = t701.Toggle
		local t702 = { Name = "Smooth Fade Dead", Flag = "ESPSmoothFadeDead", Default = false }

		function t702.Callback(p323)
			t56.Smooth_Fade_Dead = p323
		end

		Toggle77(t701, t702)
		local t703 = v380
		local Toggle78 = t703.Toggle
		local t704 = { Name = "Skeleton", Flag = "ESPSkeleton", Default = false }

		function t704.Callback(p324)
			t56.Skeleton = p324
		end

		local t705 = (Toggle78(t703, t704))
		local Colorpicker21 = t705.Colorpicker
		local t706 = {
			Name = "Skeleton Color",
			Flag = "ESPSkeletonColor",
			Color = Color3.fromRGB(255, 255, 255),
			Alpha = 0
		}

		function t706.Callback(p325)
			t56.Skeleton_Color.Color = p325
		end

		Colorpicker21(t705, t706)
		local t707 = v380
		local Toggle79 = t707.Toggle
		local t708 = { Name = "Skeleton Outline", Flag = "ESPSkeletonOutline", Default = false }

		function t708.Callback(p326)
			t56.Skeleton_Outline = p326
		end

		Toggle79(t707, t708)
		local t709 = v380
		local Toggle80 = t709.Toggle
		local t710 = { Name = "Headdot", Flag = "ESPHeaddot", Default = false }

		function t710.Callback(p327)
			t56.Headdot = p327
		end

		local t711 = (Toggle80(t709, t710))
		local Colorpicker22 = t711.Colorpicker
		local t712 = {
			Name = "Headdot Color",
			Flag = "ESPHeaddotColor",
			Color = Color3.fromRGB(255, 255, 255),
			Alpha = 0
		}

		function t712.Callback(...)
			local _ = bit32.band
			local v767 = false
			if not v767 then
				v767 = 3
			end
			local _ = 2109 + bit32.band(v767, 205, 435) + -2109
			local v768 = ...
			local t713 = { Color = v768 }
			t56.Headdot_Color = t713
		end

		Colorpicker22(t711, t712)
		local t714 = v380
		local Toggle81 = t714.Toggle
		local t715 = { Name = "Headdot Outline", Flag = "ESPHeaddotOutline", Default = false }

		function t715.Callback(p328)
			t56.Headdot_Outline = p328
		end

		Toggle81(t714, t715)
		local t716 = v380
		local Slider35 = t716.Slider
		local t717 = {
			Name = "Headdot Size",
			Flag = "ESPHeaddotSize",
			Min = 0.1,
			Max = 5,
			Default = 1,
			Decimal = 1
		}

		function t717.Callback(p329)
			t56.Headdot_Size = p329
		end

		Slider35(t716, t717)
		local t718 = v380
		local Toggle82 = t718.Toggle
		local t719 = { Name = "Weapon", Flag = "ESPWeapon", Default = false }

		function t719.Callback(p330)
			t56.Weapon = p330
			local refresh_elements = t84.refresh_elements
			local _ = 11823 + (bit32.lrotate(6, 3) + 244) + -11979
			refresh_elements()
		end

		local t720 = (Toggle82(t718, t719))
		local Colorpicker23 = t720.Colorpicker
		local t721 = {
			Name = "Weapon Color",
			Flag = "ESPWeaponColor",
			Color = Color3.fromRGB(100, 149, 237),
			Alpha = 0
		}

		function t721.Callback(p331)
			t56.Weapon_Color.Color = p331
			t84.refresh_elements()
		end

		Colorpicker23(t720, t721)
		local t722 = v380
		local Label = t722.Label
		local t723 = { Name = "Enemy Color" }
		local t724 = (Label(t722, t723))
		local Colorpicker24 = t724.Colorpicker
		local t725 = {
			Name = "Enemy Color",
			Flag = "ESPEnemyColor2",
			Color = fromRGB(255, 255, 255),
			Alpha = 0
		}

		function t725.Callback(p332)
			t56.Enemy_Color.Color = p332
			t84.refresh_elements()
		end

		Colorpicker24(t724, t725)
		local t726 = v380
		local Label2 = t726.Label
		local t727 = { Name = "Friendly Color" }
		local t728 = (Label2(t726, t727))
		local Colorpicker25 = t728.Colorpicker
		local t729 = {
			Name = "Friendly Color",
			Flag = "ESPFriendlyColor2",
			Color = fromRGB(0, 200, 80),
			Alpha = 0
		}

		function t729.Callback(...)
			local v769
			v769 = not false
			if v769 then
				v769 = 8
			end
			local v770 = ...
			;(nil).Color = v770
			t84.refresh_elements()
		end

		Colorpicker25(t728, t729)
		local Toggle83 = Colorpicker25.Toggle
		local t730 = { Name = "Crouch", Flag = "ESPCrouching", Default = false }

		function t730.Callback(p333)
			t56.Crouching = p333
			t84.refresh_elements()
		end

		local t731 = (Toggle83(Colorpicker25, t730))
		local Colorpicker26 = t731.Colorpicker
		local t732 = {
			Name = "Crouch Color",
			Flag = "ESPCrouchColor",
			Color = Color3.fromRGB(255, 255, 255),
			Alpha = 0
		}

		function t732.Callback(...)
			local _ = bit32.lshift
			local v771
			v771 = not false
			local v772
			v772 = v771 and 186 or 160
			local _ = 30876 + bit32.lshift(v772, 2) + -31551
			local v773 = ...
			t56.Crouch_Color.Color = v773
			t84.refresh_elements()
		end

		Colorpicker26(t731, t732)
		local t733 = v380
		local Toggle84 = t733.Toggle
		local t734 = { Name = "Downed", Flag = "ESPDowned", Default = false }

		function t734.Callback(p334)
			t56.Downed = p334
			t84.refresh_elements()
		end

		local t735 = (Toggle84(t733, t734))
		local Colorpicker27 = t735.Colorpicker
		local t736 = {
			Name = "Downed Color",
			Flag = "ESPDownedColor",
			Color = Color3.fromRGB(255, 0, 0),
			Alpha = 0
		}

		function t736.Callback(p335)
			t56.Downed_Color.Color = p335
			t84.refresh_elements()
		end

		Colorpicker27(t735, t736)
		local t737 = v380
		local Toggle85 = t737.Toggle
		local t738 = { Name = "ForceField", Flag = "ESPForceField", Default = false }

		function t738.Callback(p336)
			t56.ForceField = p336
			t84.refresh_elements()
		end

		local t739 = (Toggle85(t737, t738))
		local Colorpicker28 = t739.Colorpicker
		local t740 = {
			Name = "ForceField Color",
			Flag = "ESPForceFieldColor",
			Color = Color3.fromRGB(100, 149, 237),
			Alpha = 0
		}

		function t740.Callback(p337)
			t56.ForceField_Color.Color = p337
			t84.refresh_elements()
		end

		Colorpicker28(t739, t740)
		local t741 = v380
		local Toggle86 = t741.Toggle
		local t742 = { Name = "Level", Flag = "ESPLevel", Default = false }

		function t742.Callback(p338)
			t56.Level = p338
			t84.refresh_elements()
		end

		local t743 = (Toggle86(t741, t742))
		local Colorpicker29 = t743.Colorpicker
		local t744 = {
			Name = "Level Color",
			Flag = "ESPLevelColor",
			Color = Color3.fromRGB(255, 255, 255),
			Alpha = 0
		}

		function t744.Callback(p339)
			t56.Level_Color.Color = p339
			t84.refresh_elements()
		end

		Colorpicker29(t743, t744)
		local t745 = v380
		local Toggle87 = t745.Toggle
		local t746 = { Name = "Combat Zone", Flag = "ESPCombatZone", Default = false }

		function t746.Callback(p340)
			t56.CombatZone = p340
			if p340 and not getgenv().CurrentZones then
				getgenv().CurrentZones = {}
			end
			if p340 then
				if not getgenv()._cz_esp_conn then
					local t747 = (ReplicatedStorage:FindFirstChild("Events"))
					if t747 then
						t747 = (t747:FindFirstChild("CombatZone"))
					end
					if t747 then
						local function f359(p341, _, Unknown)
							if not Unknown then
								Unknown = "Unknown"
							end
							if p341 == "Leaving" then
								if getgenv().CurrentZones then
									getgenv().CurrentZones[Unknown] = nil
								end
							else
								local v774 = (getgenv())
								local v775 = getgenv().CurrentZones
								if not v775 then
									v775 = {}
								end
								v774.CurrentZones = v775
								getgenv().CurrentZones[Unknown] = (tick())
							end
						end

						getgenv()._cz_esp_conn = (t747.OnClientEvent:Connect(f359))
					end
				end
			else
				if getgenv()._cz_esp_conn then
					getgenv()._cz_esp_conn:Disconnect()
					getgenv()._cz_esp_conn = nil
				end
				getgenv().CurrentZones = {}
			end
			t84.refresh_elements()
		end

		local t748 = (Toggle87(t745, t746))
		local Colorpicker30 = t748.Colorpicker
		local t749 = {
			Name = "Combat Zone Color",
			Flag = "ESPCombatZoneColor",
			Color = Color3.fromRGB(255, 80, 80),
			Alpha = 0
		}

		function t749.Callback(p342)
			t56.CombatZone_Color.Color = p342
			t84.refresh_elements()
		end

		Colorpicker30(t748, t749)
		local t750 = v380
		local Toggle88 = t750.Toggle
		local t751 = { Name = "Scale Text by Distance", Flag = "ESPScaleText", Default = false }

		function t751.Callback(p343)
			t56.ESPScaleText = p343
			if not p343 then
				for _, t752 in ipairs(v239:GetPlayers()) do
					local t753 = t84[t752.Name]
					if t753 and t753.objects then
						local _ = ipairs
						local t754 = (table.create(11))
						t754[1] = "name"
						t754[2] = "distance"
						t754[3] = "weapon"
						t754[4] = "health_text"
						t754[5] = "armor_text"
						t754[6] = "ff_text"
						t754[7] = "downed_text"
						t754[8] = "crouch_text"
						t754[9] = "level_text"
						t754[10] = "combat_zone_text"
						t754[11] = "reload_text"
						for _, v776 in ipairs(t754) do
							local v777 = t753.objects[v776]
							if v777 then
								v777.TextSize = 10
							end
						end
					end
				end
			end
		end

		Toggle88(t750, t751)
	end

	f356()

	local function f360()
		local t755 = v103
		local Section17 = t755.Section
		local t756 = { Name = "Safe", Side = "Right" }
		local t757 = (Section17(t755, t756))
		local v778 = (table.create(3))
		local MediumSafe = "MediumSafe"
		local Register = "Register"
		v778[1] = "SmallSafe"
		v778[2] = MediumSafe
		v778[3] = Register
		local t758 = {}
		MediumSafe = nil
		Register = nil
		local v779 = nil

		local function f361(p344)
			for _, v780 in ipairs(v778) do
				if p344:find(v780) then
					return true
				end
			end
			return false
		end

		local function f362(...)
			if (nil).find(nil, "Register") then
				return t208.RegEnabled
			end
			return t208.SafeEnabled
		end

		local function f363()
			local v781 = t208.SafeEnabled
			if not v781 then
				v781 = t208.RegEnabled
			end
			return v781
		end

		local function f364(p345)
			local Parts = "Parts"
			local v782
			if p345:FindFirstChild(Parts) then
				v782 = not not false
				if not v782 then
					v782 = 125
				end
				local v783 = (p345(Parts, "BasePart"))
				if v783 then
					return v783
				end
			end
			return p345:FindFirstChildWhichIsA("BasePart")
		end

		local function f365(p346)
			local Values3 = (p346:FindFirstChild("Values"))
			if not Values3 then
				return false
			end
			local Broken = (Values3:FindFirstChild("Broken"))
			local v784
			v784 = not (Broken == nil)
			if v784 then
				v784 = Broken.Value == true
			end
			return v784
		end

		local function f366(p347)
			local Name8 = p347.Name
			if Name8:find("MediumSafe") then
				return "MedSafe"
			end
			if Name8:find("SmallSafe") then
				return "SmSafe"
			end
			if Name8:find("Register") then
				return "Reg"
			end
			return Name8:sub(1, 8)
		end

		function t84:box_solve_part(p348)
			if not p348 then
				return nil, nil, nil, nil
			end
			local Size2 = p348.Size
			local CFrame12 = p348.CFrame
			local t759 = (table.create(8))
			local v785 = (Vector3.new(Size2.X / 2, Size2.Y / 2, Size2.Z / 2))
			local v786 = (Vector3.new(-Size2.X / 2, Size2.Y / 2, Size2.Z / 2))
			local v787 = (Vector3.new(Size2.X / 2, Size2.Y / 2, -Size2.Z / 2))
			local v788 = (Vector3.new(-Size2.X / 2, Size2.Y / 2, -Size2.Z / 2))
			local v789 = (Vector3.new(Size2.X / 2, -Size2.Y / 2, Size2.Z / 2))
			local v790 = (Vector3.new(-Size2.X / 2, -Size2.Y / 2, Size2.Z / 2))
			local v791 = (Vector3.new(Size2.X / 2, -Size2.Y / 2, -Size2.Z / 2))
			local v792 = (Vector3.new(
				-Size2.X / 2,
				-Size2.Y / 2,
				-Size2.Z / 2
			))
			t759[1] = CFrame12 * v785
			t759[2] = CFrame12 * v786
			t759[3] = CFrame12 * v787
			t759[4] = CFrame12 * v788
			t759[5] = CFrame12 * v789
			t759[6] = CFrame12 * v790
			t759[7] = CFrame12 * v791
			t759[8] = CFrame12 * v792
			local huge3 = math.huge
			local huge4 = math.huge
			local v793 = -math.huge
			local v794 = -math.huge
			local v795 = false
			for _, v796 in ipairs(t759) do
				local v797, t760
				t760, v797 = t84:get_screen_pos(v796)
				if v797 then
					v795 = true
					if t760.X < huge3 then
						huge3 = t760.X
					end
					if t760.Y < huge4 then
						huge4 = t760.Y
					end
					if v793 < t760.X then
						v793 = t760.X
					end
					if v794 < t760.Y then
						v794 = t760.Y
					end
				end
			end
			if not v795 then
				return nil, nil, nil, nil
			end
			local v798 = (math.max(math.floor(v793 - huge3), 6))
			local v799 = (math.max(math.floor(v794 - huge4), 6))
			local Magnitude13 = (p348.Position - CurrentCamera2.CFrame.p).Magnitude
			return 
				Vector2.new(v798, v799),
				Vector2.new(math.floor(huge3), math.floor(huge4)),
				true,
				Magnitude13
			
		end

		local function f367(p349)
			if t758[p349] then
				return
			end
			local Color16 = t208.NormalColor.Color
			local t761 = {}
			local t762 = t84
			local create41 = t762.create
			local t763 = {
				Parent = t84.cache,
				Name = "\0",
				BackgroundTransparency = 1,
				Position = new14(0, 0, 0, 0),
				BorderColor3 = fromRGB(0, 0, 0),
				Size = new14(0, 0, 0, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = fromRGB(255, 255, 255)
			}
			t761.holder = (create41(t762, "Frame", t763))
			local t764 = t84
			local create42 = t764.create
			local t765 = {}
			local ShowBox = t208.ShowBox
			ShowBox = ShowBox and t761.holder or t84.cache
			t765.Parent = ShowBox
			t765.Name = "\0"
			t765.BackgroundTransparency = 1
			t765.Position = (new14(0, 1, 0, 1))
			t765.BorderColor3 = (fromRGB(0, 0, 0))
			t765.Size = (new14(1, -2, 1, -2))
			t765.BorderSizePixel = 0
			t765.BackgroundColor3 = (fromRGB(255, 255, 255))
			t761.box_handler = (create42(t764, "Frame", t765))
			local t766 = t84
			local create43 = t766.create
			local t767 = {}
			local ShowBox2 = t208.ShowBox
			ShowBox2 = ShowBox2 and t761.holder or t84.cache
			t767.Parent = ShowBox2
			t767.LineJoinMode = Enum.Miter
			t761.box_outline = (create43(t766, "UIStroke", t767))
			local t768 = t84
			local create44 = t768.create
			local t769 = {
				Color = Color16,
				LineJoinMode = Enum.LineJoinMode.Miter,
				Name = "\0",
				Parent = t761.box_handler
			}
			t761.box_color = (create44(t768, "UIStroke", t769))
			local t770 = t84
			local create45 = t770.create
			local t771 = {
				Parent = t761.box_handler,
				Name = "\0",
				BackgroundTransparency = 1,
				Position = new14(0, 1, 0, 1),
				BorderColor3 = fromRGB(0, 0, 0),
				Size = new14(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = fromRGB(255, 255, 255)
			}
			t761.box_inner = (create45(t770, "Frame", t771))
			local t772 = t84
			local create46 = t772.create
			local t773 = { Parent = t761.box_inner, LineJoinMode = Enum.LineJoinMode.Miter }
			create46(t772, "UIStroke", t773)
			local t774 = t84
			local create47 = t774.create
			local t775 = { FontFace = v113.main }
			local ShowName = t208.ShowName
			ShowName = ShowName and t761.holder or t84.cache
			t775.Parent = ShowName
			t775.TextColor3 = t208.NameColor.Color
			t775.BorderColor3 = (fromRGB(0, 0, 0))
			t775.Text = (f366(p349))
			t775.Name = "\0"
			t775.TextStrokeTransparency = 0
			t775.AnchorPoint = (new13(0, 1))
			t775.Size = (new14(1, 0, 0, 0))
			t775.BackgroundTransparency = 1
			t775.Position = (new14(0, 0, 0, -5))
			t775.BorderSizePixel = 0
			t775.AutomaticSize = Enum.AutomaticSize.Y
			t775.TextSize = 10
			t761.name = (create47(t774, "TextLabel", t775))
			local t776 = t84
			local create48 = t776.create
			local t777 = {
				FontFace = v113.main,
				TextColor3 = t208.DistColor.Color,
				BorderColor3 = fromRGB(0, 0, 0),
				Text = ""
			}
			local ShowDist = t208.ShowDist
			ShowDist = ShowDist and t761.holder or t84.cache
			t777.Parent = ShowDist
			t777.TextStrokeTransparency = 0
			t777.Name = "\0"
			t777.Size = (new14(1, 0, 0, 0))
			t777.BackgroundTransparency = 1
			t777.Position = (new14(0, 0, 1, 5))
			t777.BorderSizePixel = 0
			t777.AutomaticSize = Enum.AutomaticSize.Y
			t777.TextSize = 10
			t761.distance = (create48(t776, "TextLabel", t777))
			local t778 = t84
			local create49 = t778.create
			local t779 = {
				FontFace = v113.main,
				Parent = t761.holder,
				TextColor3 = fromRGB(255, 80, 80),
				BorderColor3 = fromRGB(0, 0, 0),
				Text = "[BROKEN]",
				Name = "\0",
				TextStrokeTransparency = 0,
				AnchorPoint = new13(0, 0),
				Size = new14(1, 0, 0, 0),
				BackgroundTransparency = 1,
				Position = new14(0, 0, 1, 15),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.Y,
				TextSize = 10,
				Visible = false
			}
			t761.broken = (create49(t778, "TextLabel", t779))
			local t780 = { objects = t761, part = f364(p349) }
			t758[p349] = t780
		end

		local function f368(...)
			local v800
			v800 = not not false
			if not v800 then
				v800 = 58
			end
			if not nil then
				return
			end
			local v801 = (nil).objects
			if v801 then
				v801 = (nil).objects.holder
			end
			if v801 then
				local v802 = v801

				local function f369()
					local _ = bit32.rshift
					local v803
					v803 = not not false
					if not v803 then
						v803 = (string.unpack("<i8", "|\0\0\0\0\0\0\0"))
					end
					local _ = 5743 + bit32.rshift(v803, 20) + -5607
					v802:Destroy()
				end

				pcall(f369)
			end
		end

		local function f370()
			local _ = -78707 + bit32.rrotate(188, 23) + -17428
			for _, t781 in ipairs(workspace:GetDescendants()) do
				if t781:IsA("Model") and f361(t781.Name) and not t758[t781] then
					f367(t781)
				end
			end
		end

		local function f371()
			for _, t782 in pairs(t758) do
				local objects6 = t782.objects
				local Color17 = t208.NormalColor.Color
				objects6.name.TextColor3 = t208.NameColor.Color
				objects6.distance.TextColor3 = t208.DistColor.Color
				objects6.box_color.Color = Color17
				local name4 = objects6.name
				local ShowName2 = t208.ShowName
				ShowName2 = ShowName2 and objects6.holder or t84.cache
				name4.Parent = ShowName2
				local distance4 = objects6.distance
				local ShowDist2 = t208.ShowDist
				ShowDist2 = ShowDist2 and objects6.holder or t84.cache
				distance4.Parent = ShowDist2
				local box_handler2 = objects6.box_handler
				local ShowBox3 = t208.ShowBox
				ShowBox3 = ShowBox3 and objects6.holder or t84.cache
				box_handler2.Parent = ShowBox3
				local box_outline2 = objects6.box_outline
				local ShowBox4 = t208.ShowBox
				ShowBox4 = ShowBox4 and objects6.holder or t84.cache
				box_outline2.Parent = ShowBox4
			end
		end

		local function f372()
			f370()

			local function f373(p350)
				if p350:IsA("Model") and f361(p350.Name) and not t758[p350] then
					task.spawn(f367, p350)
				end
			end

			Register = (workspace.DescendantAdded:Connect(f373))

			local function f374(p351)
				if t758[p351] then
					f368(p351)
				end
			end

			v779 = (workspace.DescendantRemoving:Connect(f374))

			local function f375()
				if not f363() then
					return
				end
				local t783 = LocalPlayer2.Character
				if t783 then
					t783 = (t783:FindFirstChild("HumanoidRootPart"))
				end
				local t784, v804, f376
				f376, v804, t784 = pairs(t758)
				local Color18, Magnitude14
				while true do
					local t785
					t784, t785 = f376(v804, t784)
					if t784 == nil then
						break
					end
					if t784.Parent then
						local objects7 = t785.objects
						local holder3 = objects7.holder
						if f362(t784.Name) then
							local part = t785.part
							if not part then
								part = (f364(t784))
							end
							t785.part = part
							if part then
								if t783 then
									Magnitude14 = (t783.Position - part.Position).Magnitude
								else
									Magnitude14 = t783
								end
								if not Magnitude14 then
									Magnitude14 = 0
								end
								if t208.MaxDist < Magnitude14 then
									holder3.Visible = false
								else
									local v805, t786, t787
									t787, t786, v805 = t84:box_solve_part(part)
									if not v805 then
										v805 = false
									end
									if holder3.Visible ~= v805 then
										holder3.Visible = v805
									end
									if v805 then
										if holder3.Parent ~= t84.screengui then
											holder3.Parent = t84.screengui
										end
										holder3.Position = (fromOffset(t786.X, t786.Y))
										holder3.Size = (fromOffset(t787.X, t787.Y))
										local ShowBroken = (f365(t784))
										if ShowBroken then
											Color18 = t208.BrokenColor.Color
										else
											Color18 = ShowBroken
										end
										if not Color18 then
											Color18 = t208.NormalColor.Color
										end
										objects7.name.TextColor3 = Color18
										objects7.box_color.Color = Color18
										local broken = objects7.broken
										if ShowBroken then
											ShowBroken = t208.ShowBroken
										end
										broken.Visible = ShowBroken
										objects7.distance.Text = math.round(Magnitude14) .. "st"
									end
								end
							else
								holder3.Visible = false
							end
						else
							holder3.Visible = false
						end
					else
						f368(t784)
					end
				end
			end

			MediumSafe = (v240.RenderStepped:Connect(f375))
		end

		local function f377()
			if MediumSafe then
				MediumSafe:Disconnect()
				MediumSafe = nil
			end
			if Register then
				Register:Disconnect()
				Register = nil
			end
			if v779 then
				v779:Disconnect()
				v779 = nil
			end
			local t788 = {}
			for v806, _ in pairs(t758) do
				table.insert(t788, v806)
			end
			for _, v807 in ipairs(t788) do
				f368(v807)
			end
		end

		local function f378()
			if f363() then
				if not MediumSafe then
					f372()
				end
			elseif MediumSafe then
				f377()
			end
		end

		local Toggle89 = t757.Toggle
		local t789 = { Name = "Safe", Flag = "SafeESPEnabled", Default = false }

		function t789.Callback(p352)
			t208.SafeEnabled = p352
			f378()
		end

		Toggle89(t757, t789)
		local Toggle90 = t757.Toggle
		local t790 = { Name = "Reg", Flag = "RegESPEnabled", Default = false }

		function t790.Callback(p353)
			t208.RegEnabled = p353
			f378()
		end

		Toggle90(t757, t790)
		local Toggle91 = t757.Toggle
		local t791 = { Name = "Box", Flag = "SafeRegESPBox", Default = false }

		function t791.Callback(p354)
			t208.ShowBox = p354
			local v808, v809, f379
			f379, v809, v808 = pairs(t758)
			local v810, _, v811, v812
			while true do
				local t792
				v808, t792 = f379(v809, v808)
				if v808 == nil then
					break
				end
				local objects8 = t792.objects
				local box_handler3 = objects8.box_handler
				if p354 then
					v812 = objects8.holder
				else
					v812 = p354
				end
				if not v812 then
					v812 = t84.cache
				end
				local _ = bit32.bor
				v811 = not not true
				_ = v811 and 193 or 249
				box_handler3.Parent = v812
				local box_outline3 = objects8.box_outline
				if p354 then
					v810 = objects8.holder
				else
					v810 = p354
				end
				if not v810 then
					v810 = t84.cache
				end
				box_outline3.Parent = v810
			end
		end

		local t793 = (Toggle91(t757, t791))
		local Colorpicker31 = t793.Colorpicker
		local t794 = {
			Name = "Box Color",
			Flag = "SafeRegESPColor",
			Color = fromRGB(255, 255, 255),
			Alpha = 0
		}

		function t794.Callback(p355)
			t208.NormalColor.Color = p355
			f371()
		end

		Colorpicker31(t793, t794)
		local Toggle92 = t757.Toggle
		local t795 = { Name = "Name", Flag = "SafeRegESPName", Default = false }

		function t795.Callback(...)
			local _ = bit32.countlz
			local v813 = false
			if not v813 then
				v813 = 431
			end
			local _ = 18318 + bit32.countlz(v813) + -18176
			local v814 = ...
			t208.ShowName = v814
			local v815, v816, f380
			f380, v816, v815 = pairs(t758)
			local v817
			while true do
				local t796
				v815, t796 = f380(v816, v815)
				if v815 == nil then
					break
				end
				local name5 = t796.objects.name
				if v814 then
					v817 = t796.objects.holder
				else
					v817 = v814
				end
				if not v817 then
					v817 = t84.cache
				end
				name5.Parent = v817
			end
		end

		local t797 = (Toggle92(t757, t795))
		local Colorpicker32 = t797.Colorpicker
		local t798 = {
			Name = "Name Color",
			Flag = "SafeRegESPNameColor",
			Color = fromRGB(255, 255, 255),
			Alpha = 0
		}

		function t798.Callback(...)
			local _ = 7596 + (229 - math.modf(3.141592653589793) + 139) + -7796
			local v818 = ...
			t208.NameColor.Color = v818
			for _, t799 in pairs(t758) do
				t799.objects.name.TextColor3 = v818
			end
		end

		Colorpicker32(t797, t798)
		local Toggle93 = t757.Toggle
		local t800 = { Name = "Distance", Flag = "SafeRegESPDistToggle", Default = false }

		function t800.Callback(...)
			local v819
			v819 = not not false
			if not v819 then
				v819 = 220
			end
			;(nil)[39] = 12561 + v819 + -12576
			;(nil)[11] = 33
			local v820 = ...
			t208.ShowDist = v820
			local v821, v822, f381
			f381, v822, v821 = pairs(t758)
			local v823
			while true do
				local t801
				v821, t801 = f381(v822, v821)
				if v821 == nil then
					break
				end
				local distance5 = t801.objects.distance
				if v820 then
					v823 = t801.objects.holder
				else
					v823 = v820
				end
				if not v823 then
					v823 = t84.cache
				end
				distance5.Parent = v823
			end
		end

		local t802 = (Toggle93(t757, t800))
		local Colorpicker33 = t802.Colorpicker
		local t803 = {
			Name = "Distance Color",
			Flag = "SafeRegESPDistColor",
			Color = fromRGB(255, 255, 255),
			Alpha = 0
		}

		function t803.Callback(p356)
			t208.DistColor.Color = p356
			for _, t804 in pairs(t758) do
				t804.objects.distance.TextColor3 = p356
			end
		end

		Colorpicker33(t802, t803)
		local Toggle94 = t757.Toggle
		local t805 = { Name = "Broken Tag", Flag = "SafeRegESPBrokenToggle", Default = false }

		function t805.Callback(p357)
			t208.ShowBroken = p357
		end

		local t806 = (Toggle94(t757, t805))
		local Colorpicker34 = t806.Colorpicker
		local t807 = {
			Name = "Broken Color",
			Flag = "SafeRegESPBroken",
			Color = fromRGB(255, 0, 0),
			Alpha = 0
		}

		function t807.Callback(p358)
			t208.BrokenColor.Color = p358
			for _, _ in pairs(t758) do
			end
		end

		Colorpicker34(t806, t807)
		local Slider36 = t757.Slider
		local t808 = {
			Name = "Max Distance",
			Flag = "SafeRegESPMaxDist",
			Min = 50,
			Max = 2000,
			Default = 500,
			Decimal = 1,
			Suffix = "st"
		}

		function t808.Callback(...)
			local v824
			v824 = not not false
			if not v824 then
				v824 = (string.unpack("<i8", "\207\0\0\0\0\0\0\0"))
			end
			local v825 = ...
			t208.MaxDist = v825
		end

		Slider36(t757, t808)
	end

	f360()

	local function f382()
		local t809 = v104
		local Section18 = t809.Section
		local t810 = { Name = "World", Side = "Left" }
		local v826 = (Section18(t809, t810))
		local t811 = v104
		local Section19 = t811.Section
		local t812 = { Name = "Visual FX", Side = "Left" }
		local v827 = (Section19(t811, t812))

		local function f383()
			local t813 = v105
			local Section20 = t813.Section
			local t814 = { Name = "Grenade Trajectory", Side = "Left" }
			local v828 = (Section20(t813, t814))
			if not game:IsLoaded() then
				game.Loaded:Wait()
			end
			local workspace5 = workspace
			local HttpService2 = (game:GetService("HttpService"))
			game:GetService("PhysicsService")
			local v829 = LocalPlayer2
			local GetMouse = (v829:GetMouse())
			local t815 = {
				DEFAULT_THROW_SPEED = 150,
				EFFECTIVE_GRAVITY_SCALE = 0.55,
				DEFAULT_FUSE_TIME = 2.5,
				MAX_PREDICT_TIME = 6,
				UNTIL_SLOW_MAX_TIME = 8,
				SIMULATION_DT = 0.011111111111111112,
				MAX_BOUNCES = 6,
				MAX_POINTS = 220,
				MIN_SPEED = 1.25,
				BASE_MIN_RESTITUTION = 0.012,
				BASE_MAX_RESTITUTION = 0.24,
				BASE_MIN_TANGENT_DAMPING = 0.45,
				BASE_MAX_TANGENT_DAMPING = 0.92,
				LOW_SPEED_RESTITUTION_CUTOFF = 22,
				LOW_SPEED_RESTITUTION_MULT = 0.35,
				THROW_DELAY_SAFETY = 0.55,
				PREVIEW_UPDATE_INTERVAL = 0.03333333333333333,
				PREVIEW_COLOR = Color3.fromRGB(255, 60, 60),
				PREVIEW_TRANSPARENCY = 0.15,
				PREVIEW_THICKNESS = 0.11,
				FIRST_PERSON_START_OFFSET = 0.35,
				CAMERA_NEAR_CLIP_DISTANCE = 1.4,
				LIVE_COLOR = Color3.fromRGB(255, 170, 120),
				LIVE_TRANSPARENCY = 0.2,
				LIVE_THICKNESS = 0.1,
				LIVE_SAMPLE_DT = 0.016666666666666666,
				LIVE_TTL = 0.55,
				MAX_LIVE_TIME = 6,
				FLIGHT_MIN_START_SPEED = 8
			}

			local function f384(p359)
				local function f385()
					return HttpService2:GenerateGUID(false)
				end

				local v830, v831
				v831, v830 = pcall(f385)
				if v831 and type(v830) == "string" then
					return string.format(
						"%s%s",
						p359,
						string.sub(string.gsub(v830, "%-", ""), 1, 12)
					)
				end
				return string.format("%s%d", p359, math.random(100000, 999999))
			end

			local Debris = (workspace5:FindFirstChild("Debris"))
			if not Debris then
				Debris = workspace5
			end
			local v832 = (f384("r_"))
			for _, v833 in ipairs(Debris:GetChildren()) do
				if v833:IsA("BasePart") and v833:GetAttribute("gt_line") == true then
					v833:Destroy()
				end
			end

			local function f386()
				return v829.Character
			end

			local function f387(p360)
				if p360 then
					return p360:FindFirstChild("Head")
				end
				return nil
			end

			local function f388()
				local v834 = (rawget(_G, "GetMousePoint"))
				if type(v834) == "function" then
					local v835, v836
					v836, v835 = pcall(v834)
					if v836 and typeof(v835) == "Vector3" then
						return v835
					end
				end
				if GetMouse and GetMouse.Hit then
					return GetMouse.Hit.Position
				end
				local CurrentCamera4 = workspace5.CurrentCamera
				if CurrentCamera4 then
					return CurrentCamera4.CFrame.Position + CurrentCamera4.CFrame.LookVector * 500
				end
				return Vector3.zero
			end

			local function f389(...)
				return false
			end

			local function f390(p361)
				local Handle = (p361:FindFirstChild("Handle"))
				if Handle and Handle:IsA("BasePart") then
					return Handle
				end
				local RightGrip = (p361:FindFirstChild("RightGrip"))
				if RightGrip and RightGrip:IsA("BasePart") then
					return RightGrip
				end
				return nil
			end

			local function f391(p362)
				for _, t816 in ipairs(p362:GetChildren()) do
					if t816:IsA("Script") and
						string.find(string.lower(t816.Name), "server", 1, true) then
						return t816
					end
				end
				return nil
			end

			local function f392(p363)
				if not p363 then
					return nil
				end

				local function f393()
					return p363.Source
				end

				local v837, v838
				v838, v837 = pcall(f393)
				local v839
				if v838 then
					local _ = bit32.lrotate
					v839 = string.byte("Y\199", 1, 2) < 44
					if not v839 then
						v839 = 126
					end
					local _ = -2049375 + bit32.lrotate(v839, 14) + -15005
					if type(v837) == "string" and 0 < #v837 then
						return v837
					end
				end
				return nil
			end

			local function f394(p364)
				local t817 = {}
				local v840 = (string.find(p364, "local Settings%s*=%s*{"))
				if not v840 then
					return t817
				end
				local v841 = (string.find(p364, "{", v840, true))
				if not v841 then
					return t817
				end
				local v842 = 0
				local v843 = v841 - 1
				local _leave37 = false
				while true do
					v843 = v843 + 1
					if not (v843 <= #p364) then
						break
					end
					local v844 = (string.sub(p364, v843, v843))
					if v844 == "{" then
						v842 = v842 + 1
					elseif v844 == "}" then
						v842 = v842 - 1
						if v842 == 0 then
							_leave37 = true
							break
						end
					end
				end
				if not _leave37 then
					v843 = nil
				end
				if not v843 then
					return t817
				end
				local v845 = (string.sub(p364, v841 + 1, v843 - 1))
				for v846, v847 in string.gmatch(v845, "([%a_][%w_]*)%s*=%s*([^;\n,]+)") do
					local v848 = (string.gsub(v847, "%-%-.*", ""))
					local v849 = (string.gsub(v848, "%s+", ""))
					local v850 = (tonumber(v849))
					if v850 then
						t817[v846] = v850
					end
				end
				return t817
			end

			local function f395(p365, p366)
				if not p365 then
					return nil
				end

				local function f396(p367)
					local v851 = p366[p367]
					v851 = v851 and tostring(v851) or "0"
					return v851
				end

				local v852 = (string.gsub(p365, "Settings%.([%a_][%w_]*)", f396))
				local v853 = (string.gsub(v852, "%s+", ""))
				if v853 == "" then
					return nil
				end
				local v854 = (tonumber(v853))
				if v854 then
					return v854
				end
				local v855, v856, v857
				v857, v856, v855 = string.match(v853, "^(%-?[%d%.]+)([%+%-%*/])(%-?[%d%.]+)$")
				local v858 = (tonumber(v857))
				local v859 = (tonumber(v855))
				if not (v858 and v859 and v856) then
					return nil
				end
				if v856 == "+" then
					return v858 + v859
				end
				if v856 == "-" then
					return v858 - v859
				end
				if v856 == "*" then
					return v858 * v859
				end
				if v856 ~= "/" then
					return nil
				end
				local v860
				v860 = not (v859 == 0)
				v860 = v860 and v858 / v859 or nil
				return v860
			end

			local function f397(p368)
				local t818 = {
					mode = "fallback",
					throwSpeed = t815.DEFAULT_THROW_SPEED,
					maxPredictTime = t815.MAX_PREDICT_TIME,
					throwFuse = t815.DEFAULT_FUSE_TIME,
					pullFuse = nil,
					minFlight = 0,
					stopSpeed = nil,
					touchFuseDelay = nil,
					explodeOnTouch = false
				}
				local v861 = (f390(p368))
				if p368:FindFirstChild("Lighter") then
					t818.explodeOnTouch = true
				end
				local v862 = nil
				local v863 = false
				local v864 = false
				local v865 = false
				local v866 = false
				local v867, v868, v869, v870
				if v861 then
					v870 = not (v861:FindFirstChild("X") == nil)
					v869 = not (v861:FindFirstChild("ClickDetector") == nil)
					v868 = not (v861:FindFirstChild("Bounce1") == nil)
					v867 = not (v861:FindFirstChild("Bounce") == nil)
					if v861:FindFirstChild("ExtinguishS") or v861:FindFirstChild("FireIdle") or
						(v861:FindFirstChild("Spark") or v861:FindFirstChild("CanForce")) then
						t818.explodeOnTouch = true
					end
					local Throw = (v861:FindFirstChild("Throw"))
					v862 = nil
					v863 = v870
					v864 = v869
					v865 = v868
					v866 = v867
					if Throw then
						v862 = nil
						v863 = v870
						v864 = v869
						v865 = v868
						v866 = v867
						if Throw:IsA("Sound") then
							local v871 = (tostring(Throw.SoundId))
							v862 = v871
							v863 = v870
							v864 = v869
							v865 = v868
							v866 = v867
							if string.find(v871, "1657151608", 1, true) then
								t818.explodeOnTouch = true
								v862 = v871
								v863 = v870
								v864 = v869
								v865 = v868
								v866 = v867
							end
						end
					end
				end

				local function f398()
					if t818.explodeOnTouch then
						t818.mode = "fixed_after_pull"
						local Lighter = (p368:FindFirstChild("Lighter"))
						Lighter = Lighter and 5 or 7
						t818.pullFuse = Lighter
						local Lighter2 = (p368:FindFirstChild("Lighter"))
						Lighter2 = Lighter2 and 3.5 or 6.25
						t818.maxPredictTime = Lighter2
						return
					end
					if v865 then
						t818.mode = "fixed_after_throw"
						if v863 or v864 then
							t818.throwFuse = 2.5
							t818.maxPredictTime = 2.5
						else
							t818.throwFuse = 1.8 + t815.THROW_DELAY_SAFETY
							t818.maxPredictTime = 1.8 + t815.THROW_DELAY_SAFETY
						end
						return
					end
					if v866 then
						if v862 and string.find(v862, "360521794", 1, true) then
							t818.mode = "until_slow"
							t818.minFlight = 0.75
							t818.stopSpeed = 4
							t818.maxPredictTime = 4.8
						else
							t818.mode = "fixed_after_throw"
							t818.throwFuse = 1.8 + t815.THROW_DELAY_SAFETY
							t818.maxPredictTime = 1.8 + t815.THROW_DELAY_SAFETY
						end
					end
				end

				local v872 = (f392((f391(p368))))
				if not v872 then
					f398()
					return t818
				end
				local t819 = (f394(v872))
				if t819.VELOCITY then
					t818.throwSpeed = t819.VELOCITY
				end
				if string.find(v872, "Explode(Handle.CFrame,true)", 1, true) or
					string.find(v872, "Explode(Handle.CFrame,\"Water\")", 1, true) or
					string.find(v872, "Explode(\"Water\")", 1, true) then
					t818.explodeOnTouch = true
				end
				if string.find(v872, "delay(Settings.ExplodeTime - Settings.PullTime", 1, true) and t819.ExplodeTime then
					t818.mode = "fixed_after_pull"
					t818.pullFuse = t819.ExplodeTime
					t818.maxPredictTime = (math.max(0.2, t819.ExplodeTime))
					return t818
				end
				if string.find(v872, "function DoTimer()", 1, true) and t819.ExplodeTime then
					t818.mode = "fixed_after_throw"
					t818.throwFuse = t819.ExplodeTime
					t818.maxPredictTime = (math.max(0.2, t819.ExplodeTime))
					return t818
				end
				local v873 = (string.match(
					v872,
					"fastWait%(([^%)]+)%)%s*[\r\n]+%s*repeat%s+fastWait"
				))
				local v874 = (tonumber(string.match(
					v872,
					"until%s+Handle%.Velocity%.Magnitude%s*<=%s*([%d%.]+)"
				)))
				local v875 = (f395(v873, t819))
				local v876
				if v874 and v875 then
					t818.mode = "until_slow"
					t818.minFlight = (math.max(0, v875))
					t818.stopSpeed = v874
					v876 = v874 <= 3
					v876 = v876 and 5.1 or 4.6
					t818.maxPredictTime = v876
					return t818
				end
				local v877, v878
				for v879, _ in string.gmatch(v872, "delay%(([^,]+),%s*function%s*%(") do
					local v880 = (f395(v879, t819))
					if v880 and 0 < v880 then
						if not (v877 and not (v877 < v880)) then
							v877 = v880
						end
						if not (v878 and not (v880 < v878)) then
							v878 = v880
						end
					end
				end
				if v877 then
					t818.mode = "fixed_after_throw"
					t818.throwFuse = v877 + t815.THROW_DELAY_SAFETY
					t818.maxPredictTime = (math.max(0.2, v877 + t815.THROW_DELAY_SAFETY))
					if v878 and v878 < v877 then
						t818.touchFuseDelay = v878
					end
				else
					f398()
				end
				return t818
			end

			getgenv()._GT_CONFIG = t815
			getgenv()._GT_getCharacter = f386
			getgenv()._GT_getHead = f387
			getgenv()._GT_getAimPoint = f388
			getgenv()._GT_isThrowableTool = f389
			getgenv()._GT_getGripPart = f390
			getgenv()._GT_analyzeToolProfile = f397
			getgenv()._GT_randomName = f384
			getgenv()._GT_runTag = v832
			getgenv()._GT_rootParent = Debris
			getgenv()._GT_previewParent = Debris
			getgenv()._GT_liveParent = Debris
			getgenv()._GT_Section = v828
		end

		f383()

		local function f399()
			local v881 = RunService
			local workspace6 = workspace
			local PhysicsService = (game:GetService("PhysicsService"))
			local t820 = LocalPlayer2
			local v882 = t820
			t820.GetMouse(v882)
			v882 = true
			local v883 = nil
			local _GT_CONFIG = getgenv()._GT_CONFIG
			local _GT_getCharacter = getgenv()._GT_getCharacter
			local _GT_getHead = getgenv()._GT_getHead
			local _GT_getAimPoint = getgenv()._GT_getAimPoint
			local _GT_isThrowableTool = getgenv()._GT_isThrowableTool
			local _GT_getGripPart = getgenv()._GT_getGripPart
			local _GT_analyzeToolProfile = getgenv()._GT_analyzeToolProfile
			local _GT_randomName = getgenv()._GT_randomName
			local _GT_runTag = getgenv()._GT_runTag
			local _ = getgenv()._GT_rootParent
			local _GT_previewParent = getgenv()._GT_previewParent
			local _GT_liveParent = getgenv()._GT_liveParent
			local _GT_Section = getgenv()._GT_Section

			local function f400(...)
				local v884
				v884 = not not true
				if v884 then
					v884 = (string.len("W\236\142"))
				end
				local t821 = ...
				local CurrentCamera5 = workspace6.CurrentCamera
				if not (CurrentCamera5 and t821) then
					return false
				end
				local v885
				v885 = (CurrentCamera5.CFrame.Position - t821.Position).Magnitude <= 1.1
				return v885
			end

			local function f401(p369, p370)
				local t822 = p369.profile
				if not t822 then
					t822 = {}
				end
				local v886 = t822.maxPredictTime
				if not v886 then
					v886 = _GT_CONFIG.MAX_PREDICT_TIME
				end
				local minFlight = 0
				local stopSpeed = nil
				local touchFuseDelay = t822.touchFuseDelay
				local v887
				v887 = t822.explodeOnTouch == true
				if t822.mode == "fixed_after_throw" then
					local _ = math.max
					local v888 = t822.throwFuse
					if not v888 then
						v888 = _GT_CONFIG.DEFAULT_FUSE_TIME
					end
					v886 = (math.max(0.05, v888))
				elseif t822.mode == "fixed_after_pull" then
					local pinPulledAt = p369.pinPulledAt
					pinPulledAt = pinPulledAt and p370 - p369.pinPulledAt or 0
					local _ = math.max
					local v889 = t822.pullFuse
					if not v889 then
						v889 = _GT_CONFIG.DEFAULT_FUSE_TIME
					end
					v886 = (math.max(0.05, v889 - pinPulledAt))
				elseif t822.mode == "until_slow" then
					minFlight = t822.minFlight
					if not minFlight then
						minFlight = 0
					end
					stopSpeed = t822.stopSpeed
					v886 = t822.maxPredictTime
					if not v886 then
						v886 = _GT_CONFIG.UNTIL_SLOW_MAX_TIME
					end
				end
				local timerValue = p369.timerValue
				if timerValue and 0 < timerValue then
					if p369.timerIsCountdown then
						v886 = (math.min(v886, math.max(0.05, timerValue)))
					elseif t822.mode == "fallback" then
						v886 = (math.min(v886, timerValue))
					end
				end
				return v886, minFlight, stopSpeed, touchFuseDelay, v887
			end

			local v890, v891

			local function f402(p371, p372, p373)
				local v892 = (Instance.new("Part"))
				v892.Name = (_GT_randomName("s_"))
				v892.Anchored = true
				v892.CanCollide = false
				v892.CanQuery = false
				v892.CanTouch = false
				v892.CastShadow = false
				v892.Material = Enum.Material.Neon
				v892.Color = p372
				v892.Transparency = p373
				v892.Size = (Vector3.new(0.08, 0.08, 0.08))
				v892:SetAttribute("gt_line", true)
				v892:SetAttribute("gt_run", _GT_runTag)
				v892.Parent = p371
				return v892
			end

			local function f403(p374)
				for v893 = 1, #p374 do
					if p374[v893] then
						p374[v893]:Destroy()
					end
				end
				table.clear(p374)
			end

			v890 = f403

			local function f404(p375, p376, p377, p378, p379, p380)
				local Magnitude15 = (p377 - p376).Magnitude
				if Magnitude15 < 0.001 then
					p375.Transparency = 1
					return
				end
				p375.Color = p379
				p375.Transparency = p380
				p375.Size = (Vector3.new(p378, p378, Magnitude15))
				p375.CFrame = (CFrame.lookAt((p376 + p377) * 0.5, p377))
			end

			local function f405(p381, p382, p383, p384, p385, p386, p387)
				local v894 = (math.max(0, #p381 - 1))
				p387 = p387 and workspace6.CurrentCamera or nil
				local v895 = 1
				if p387 then
					local Position25 = p387.CFrame.Position
					local CAMERA_NEAR_CLIP_DISTANCE = _GT_CONFIG.CAMERA_NEAR_CLIP_DISTANCE
					while v895 < #p381 and
						(p381[v895] - Position25).Magnitude <= CAMERA_NEAR_CLIP_DISTANCE do
						v895 = v895 + 1
					end
				end
				for v896 = 1, v894 do
					local t823 = p382[v896]
					if t823 then
						if t823.Parent ~= p383 then
							t823.Parent = p383
						end
					else
						t823 = (f402(p383, p384, p385))
						p382[v896] = t823
					end
					if v896 < v895 then
						t823.Parent = nil
					else
						f404(t823, p381[v896], p381[v896 + 1], p386, p384, p385)
					end
				end
				local v897 = v894 + 1 - 1
				while true do
					v897 = v897 + 1
					if not (v897 <= #p382) then
						break
					end
					if p382[v897] then
						p382[v897].Parent = nil
					end
				end
			end

			v891 = f405
			f405 = nil

			local function f406(p388)
				local v898 = (RaycastParams.new())
				v898.FilterType = Enum.RaycastFilterType.Exclude
				v898.IgnoreWater = false

				local function f407()
					v898.RespectCanCollide = true
				end

				pcall(f407)
				local v899 = (rawget(_G, "CG_NCC"))
				if type(v899) == "string" and v899 ~= "" then
					local function f408()
						local _ = 9430 + bit32.rrotate(0, 6) + -9294
						v898.CollisionGroup = v899
					end

					if not pcall(f408) then
						local function f409()
							return PhysicsService:GetRegisteredCollisionGroups()
						end

						local t824, v900
						v900, t824 = pcall(f409)
						if v900 and type(t824) == "table" then
							for _, t825 in ipairs(t824) do
								if t825 and t825.name == v899 then
									local function f410()
										v898.CollisionGroup = v899
									end

									pcall(f410)
									break
								end
							end
						end
					end
				end
				local t826 = {}
				local v901 = (_GT_getCharacter())
				if v901 then
					table.insert(t826, v901)
				end
				local Characters2 = (workspace6:FindFirstChild("Characters"))
				if Characters2 then
					table.insert(t826, Characters2)
				end
				if p388 then
					table.insert(t826, p388)
				end
				v898.FilterDescendantsInstances = t826
				return v898
			end

			local function f411(...)
				local _ = -4294953727 + bit32.lrotate(4294966922, 5) + -1359
				local v902, v903, v904, v905
				v905, v904, v903, v902 = ...
				if typeof(workspace6.Spherecast) == "function" then
					return workspace6:Spherecast(v905, v904, v903, v902)
				end
				return workspace6:Raycast(v905, v903, v902)
			end

			local function f412(p389, p390)
				local v906 = p389[#p389]
				if not v906 then
					p389[1] = p390
					return
				end
				if (v906 - p390).Magnitude <= 0.01 then
					p389[#p389] = p390
					return
				end
				table.insert(p389, p390)
			end

			local function f413(p391, p392, p393)
				local t827 = (_GT_getHead((_GT_getCharacter())))
				if not t827 then
					return {}
				end
				local Position26 = t827.Position
				local t828 = _GT_getAimPoint() - Position26
				if t828.Magnitude < 0.001 then
					return {}
				end
				local Unit5 = t828.Unit
				local v907
				if f400(t827) then
					v907 = Position26 + Unit5 * _GT_CONFIG.FIRST_PERSON_START_OFFSET
				else
					v907 = Position26
				end
				local handle = p392.handle
				if not (handle and handle.Parent) then
					return {}
				end
				local HB = (handle:FindFirstChild("HB"))
				local IsA3
				if HB then
					IsA3 = (HB:IsA("BasePart"))
				else
					IsA3 = HB
				end
				IsA3 = IsA3 and HB or handle
				local v908 = math.max(IsA3.Size.X, IsA3.Size.Y, IsA3.Size.Z) * 0.5
				local v909 = (f406(p391))
				local t829 = p392.profile
				if not t829 then
					t829 = {}
				end
				local v910 = p392.learnedSpeed
				if not v910 then
					v910 = t829.throwSpeed
				end
				if not v910 then
					v910 = _GT_CONFIG.DEFAULT_THROW_SPEED
				end
				local v911 = (Vector3.new(
					0,
					-workspace6.Gravity * _GT_CONFIG.EFFECTIVE_GRAVITY_SCALE,
					0
				))
				local v912, v913, v914, v915, v916
				v916, v915, v914, v913, v912 = f401(p392, p393)
				local v917 = (math.min(v916, _GT_CONFIG.UNTIL_SLOW_MAX_TIME))
				local v918 = (table.create(1))
				v918[1] = v907
				local t830 = Unit5 * v910
				local v919 = 0
				local v920 = 0
				local _leave40 = false
				local v921, v922, v923
				while v919 < v917 and #v918 < _GT_CONFIG.MAX_POINTS do
					local v924 = (math.min(_GT_CONFIG.SIMULATION_DT, v917 - v919))
					local t831 = t830 * v924 + 0.5 * v911 * v924 * v924
					local t832 = (f411(Position26, v908, t831, v909))
					if t832 and t832.Instance and
						not (t832.Instance == workspace6.Terrain or t832.Instance.CanCollide) then
						t832 = nil
					end
					if t832 then
						local Magnitude16 = t831.Magnitude
						v923 = 1e-05 < Magnitude16
						v923 = v923 and
							math.clamp(
								(t832.Position - Position26).Magnitude / Magnitude16,
								0,
								1
							) or 1
						local v925 = v924 * v923
						local v926 = t832.Position + t832.Normal * v908
						f412(v918, v926)
						local t833 = t830 + v911 * v925
						local Dot = (t833:Dot(t832.Normal))
						local v927 = t832.Normal * Dot
						if Dot < 0 then
							local surfaceFriction = p392.surfaceFriction
							if not surfaceFriction then
								surfaceFriction = 2
							end
							local surfaceElasticity = p392.surfaceElasticity
							if not surfaceElasticity then
								surfaceElasticity = 0
							end
							local v928 = (math.abs(t832.Normal:Dot(Vector3.yAxis)))
							local v929 = (math.clamp(
								1 - surfaceFriction * 0.15,
								_GT_CONFIG.BASE_MIN_TANGENT_DAMPING,
								_GT_CONFIG.BASE_MAX_TANGENT_DAMPING
							))
							local v930 = (math.clamp(
								_GT_CONFIG.BASE_MIN_RESTITUTION + surfaceElasticity * 0.85,
								_GT_CONFIG.BASE_MIN_RESTITUTION,
								_GT_CONFIG.BASE_MAX_RESTITUTION
							))
							if 0.75 < v928 then
								v922 = v929 * 0.9
								v921 = v930 * 0.62
							elseif v928 < 0.35 then
								v922 = v929 * 0.78
								v921 = v930 * 0.5
							else
								v922 = v929 * 0.84
								v921 = v930 * 0.75
							end
							if t833.Magnitude <= _GT_CONFIG.LOW_SPEED_RESTITUTION_CUTOFF then
								v921 = v921 * _GT_CONFIG.LOW_SPEED_RESTITUTION_MULT
							end
							t830 = (t833 - v927) * v922 - v927 * v921
						else
							local _ = math.clamp
							local surfaceFriction2 = p392.surfaceFriction
							if not surfaceFriction2 then
								surfaceFriction2 = 2
							end
							t830 = t833 * math.clamp(
								1 - surfaceFriction2 * 0.15,
								_GT_CONFIG.BASE_MIN_TANGENT_DAMPING,
								_GT_CONFIG.BASE_MAX_TANGENT_DAMPING
							)
						end
						Position26 = v926 + t832.Normal * 0.02
						if v912 then
							math.min(v917, v919 + v925 + 0.02)
							_leave40 = true
						else
							if v913 then
								local v931 = v919 + v925 + v913
								if v931 < v917 then
									v917 = v931
								end
							end
							v920 = v920 + 1
							if _GT_CONFIG.MAX_BOUNCES <= v920 then
								_leave40 = true
							end
						end
					else
						Position26 = Position26 + t831
						t830 = t830 + v911 * v924
						f412(v918, Position26)
					end
					if _leave40 then
						break
					end
					if t830.Magnitude <= _GT_CONFIG.MIN_SPEED or
						v914 and v915 <= v919 and t830.Magnitude <= v914 then
						break
					end
					v919 = v919 + v924
				end
				return v918
			end

			f405 = f413
			local t834 = {}
			local t835 = {}
			local t836 = {}
			local t837 = {}
			local v932 = nil
			local v933 = 0

			local function f414(p394)
				if t834[p394] or not _GT_isThrowableTool(p394) then
					return
				end
				local t838 = (p394:FindFirstChild("PinPulled"))
				local Timer
				if t838 then
					Timer = (t838:FindFirstChild("Timer"))
				else
					Timer = t838
				end
				local v934 = (_GT_getGripPart(p394))
				local HB2
				if v934 then
					HB2 = (v934:FindFirstChild("HB"))
				else
					HB2 = v934
				end
				local IsA4
				if HB2 then
					IsA4 = (HB2:IsA("BasePart"))
				else
					IsA4 = HB2
				end
				IsA4 = IsA4 and HB2 or v934
				local Friction = 2
				local Elasticity = 0
				if IsA4 and IsA4:IsA("BasePart") then
					local CustomPhysicalProperties = IsA4.CustomPhysicalProperties
					if CustomPhysicalProperties then
						Friction = CustomPhysicalProperties.Friction
						Elasticity = CustomPhysicalProperties.Elasticity
					end
				end
				local t839 = { tool = p394, handle = v934, pin = t838, timerObj = Timer }
				local IsA5
				if Timer then
					IsA5 = (Timer:IsA("NumberValue"))
				else
					IsA5 = Timer
				end
				IsA5 = IsA5 and Timer.Value or nil
				t839.timerValue = IsA5
				local IsA6
				if Timer then
					IsA6 = (Timer:IsA("NumberValue"))
				else
					IsA6 = Timer
				end
				IsA6 = IsA6 and Timer.Value or nil
				t839.lastTimerValue = IsA6
				t839.timerIsCountdown = false
				local Value
				if t838 then
					Value = t838.Value
				else
					Value = t838
				end
				if not Value then
					Value = false
				end
				t839.lastPin = Value
				if t838 then
					t838 = t838.Value
				end
				t838 = t838 and os.clock() or nil
				t839.pinPulledAt = t838
				t839.flightStarted = false
				t839.profile = (_GT_analyzeToolProfile(p394))
				t839.surfaceFriction = Friction
				t839.surfaceElasticity = Elasticity
				t839.learnedSpeed = nil
				if t839.profile and t839.profile.throwSpeed then
					t839.learnedSpeed = t839.profile.throwSpeed
				end
				t834[p394] = t839
			end

			local function f415(p395)
				local handle2 = p395.handle
				if not (handle2 and handle2:IsA("BasePart") and not t837[handle2]) then
					return
				end
				local t840 = {
					part = handle2,
					points = {},
					segments = {},
					lastSample = 0,
					startedAt = os.clock()
				}
				t837[handle2] = t840
				table.insert(t836, t840)
				local Magnitude17 = handle2.AssemblyLinearVelocity.Magnitude
				if 40 < Magnitude17 then
					local profile = p395.profile
					profile = profile and p395.profile.throwSpeed or
						_GT_CONFIG.DEFAULT_THROW_SPEED
					p395.learnedSpeed = (math.clamp(Magnitude17, profile * 0.85, profile * 1.2))
				end
			end

			local function f416(p396)
				local t841 = t836[p396]
				if not t841 then
					return
				end
				t837[t841.part] = nil
				v890(t841.segments)
				table.remove(t836, p396)
			end

			local function f417(p397)
				local v935 = (table.create(#p397))
				for v936 = 1, #p397 do
					v935[v936] = p397[v936].pos
				end
				return v935
			end

			local function f418()
				local v937 = (_GT_getCharacter())
				if not v937 then
					return nil
				end
				for _, v938 in ipairs(v937:GetChildren()) do
					if v938:IsA("Tool") and t834[v938] then
						return v938
					end
				end
				return nil
			end

			local function f419()
				local _ = bit32.bnot
				local v939 = true
				if v939 then
					v939 = 68
				end
				local _ = -4294948131 + bit32.bnot(v939) + -18991
				local FindFirstChildOfClass20 = (t820:FindFirstChildOfClass("Backpack"))
				if FindFirstChildOfClass20 then
					for _, v940 in ipairs(FindFirstChildOfClass20:GetChildren()) do
						f414(v940)
					end
				end
				local v941 = (_GT_getCharacter())
				if v941 then
					for _, v942 in ipairs(v941:GetChildren()) do
						f414(v942)
					end
				end
			end

			local Toggle95 = _GT_Section.Toggle
			local t842 = { Name = "Enabled", Flag = "GrenadeTrajectoryEnabled", Default = false }

			function t842.Callback(p398)
				v882 = p398
				if p398 then
					startGrenadeTrajectory()
				end
				local _
				_ = not not false
				if not p398 then
					v891(
						{},
						t835,
						nil,
						_GT_CONFIG.PREVIEW_COLOR,
						_GT_CONFIG.PREVIEW_TRANSPARENCY,
						_GT_CONFIG.PREVIEW_THICKNESS,
						true
					)
					local v943 = #t836 - -1
					while true do
						v943 = v943 + -1
						if not (1 <= v943) then
							break
						end
						f416(v943)
					end
				end
			end

			local t843 = (Toggle95(_GT_Section, t842))
			local Colorpicker35 = t843.Colorpicker
			local t844 = {
				Name = "Preview Color",
				Flag = "GrenadeTrajectoryPreviewColor",
				Color = _GT_CONFIG.PREVIEW_COLOR,
				Alpha = _GT_CONFIG.PREVIEW_TRANSPARENCY
			}

			function t844.Callback(...)
				local _ = bit32.bnot
				local v944
				v944 = not not false
				if not v944 then
					v944 = 150
				end
				local _ = -4294942072 + bit32.bnot(v944) + -24937
				local v945, v946
				v946, v945 = ...
				_GT_CONFIG.PREVIEW_COLOR = v946
				if v945 then
					_GT_CONFIG.PREVIEW_TRANSPARENCY = v945
				end
			end

			Colorpicker35(t843, t844)
			local Colorpicker36 = _GT_Section.Colorpicker
			local t845 = {
				Name = "Live Color",
				Flag = "GrenadeTrajectoryLiveColor",
				Color = _GT_CONFIG.LIVE_COLOR,
				Alpha = _GT_CONFIG.LIVE_TRANSPARENCY
			}

			function t845.Callback(p399, p400)
				_GT_CONFIG.LIVE_COLOR = p399
				if p400 then
					_GT_CONFIG.LIVE_TRANSPARENCY = p400
				end
			end

			Colorpicker36(_GT_Section, t845)
			local Slider37 = _GT_Section.Slider
			local t846 = {
				Name = "Line Thickness",
				Flag = "GrenadeTrajectoryThickness",
				Min = 0.02,
				Max = 0.4,
				Default = _GT_CONFIG.PREVIEW_THICKNESS,
				Decimal = 0.02
			}

			function t846.Callback(p401)
				_GT_CONFIG.PREVIEW_THICKNESS = p401
				_GT_CONFIG.LIVE_THICKNESS = p401
			end

			Slider37(_GT_Section, t846)
			local Slider38 = _GT_Section.Slider
			local t847 = {
				Name = "Prediction Time",
				Flag = "GrenadeTrajectoryPredictTime",
				Min = 1,
				Max = 8,
				Default = _GT_CONFIG.MAX_PREDICT_TIME,
				Decimal = 1
			}

			function t847.Callback(p402)
				_GT_CONFIG.MAX_PREDICT_TIME = p402
				_GT_CONFIG.UNTIL_SLOW_MAX_TIME = (math.max(p402, _GT_CONFIG.UNTIL_SLOW_MAX_TIME))
			end

			Slider38(_GT_Section, t847)
			v882 = false
		end

		f399()
		getgenv()._GT_CONFIG = nil
		getgenv()._GT_getCharacter = nil
		getgenv()._GT_getHead = nil
		getgenv()._GT_getAimPoint = nil
		getgenv()._GT_isThrowableTool = nil
		getgenv()._GT_getGripPart = nil
		getgenv()._GT_analyzeToolProfile = nil
		getgenv()._GT_randomName = nil
		getgenv()._GT_runTag = nil
		getgenv()._GT_rootParent = nil
		getgenv()._GT_previewParent = nil
		getgenv()._GT_liveParent = nil
		getgenv()._GT_Section = nil

		local function f420()
			local Lighting = (game:GetService("Lighting"))
			local t848 = {}
			local t849 = {}

			local function f421()
				if t848.saved then
					return
				end
				t848.saved = true
				t848.ClockTime = Lighting.ClockTime
				t848.Brightness = Lighting.Brightness
				t848.GlobalShadows = Lighting.GlobalShadows
				t848.Ambient = Lighting.Ambient
				t848.OutdoorAmbient = Lighting.OutdoorAmbient
				t848.ColorShift_Top = Lighting.ColorShift_Top
				t848.ColorShift_Bottom = Lighting.ColorShift_Bottom
				t848.ExposureCompensation = Lighting.ExposureCompensation
			end

			local function f422(p403, p404)
				if t849[p403] then
					t849[p403]:Disconnect()
					t849[p403] = nil
				end
				local match = (p403:match("^([^_]+)"))
				local v947, v948
				v948, v947 = pcall(Lighting.GetPropertyChangedSignal, Lighting, match)
				if v948 and v947 then
					t849[p403] = (v947:Connect(p404))
				end
			end

			local function f423(...)
				local v949 = false
				if not v949 then
					v949 = (math.modf(3.141592653589793))
				end
				local v950 = ...
				if t849[v950] then
					t849[v950]:Disconnect()
					t849[v950] = nil
				end
			end

			local t850 = { Enabled = false }

			local function f424()
				if t850.Enabled then
					Lighting.ClockTime = 14
				end
			end

			local function f425()
				if t850.Enabled then
					Lighting.Brightness = 5
				end
			end

			local function f426()
				if t850.Enabled then
					Lighting.GlobalShadows = false
				end
			end

			local function f427()
				if t850.Enabled then
					Lighting.Ambient = (Color3.fromRGB(178, 178, 178))
				end
			end

			local function f428()
				f421()
				Lighting.ClockTime = 14
				Lighting.Brightness = 5
				Lighting.GlobalShadows = false
				Lighting.Ambient = (Color3.fromRGB(178, 178, 178))
				local _ = ipairs
				local v951 = Lighting
				local _ = bit32.rrotate
				local v952 = false
				if not v952 then
					v952 = 439
				end
				local _ = 6849 + bit32.rrotate(v952, 0) + -7237
				for _, v953 in ipairs(v951:GetChildren()) do
					if v953:IsA("PostEffect") then
						local v954 = v953

						local function f429()
							v954.Enabled = false
						end

						pcall(f429)
					end
				end
				f422("ClockTime_fb", f424)
				f422("Brightness_fb", f425)
				f422("GlobalShadows_fb", f426)
				f422("Ambient_fb", f427)
			end

			local function f430(...)
				f423("ClockTime_fb")
				f423("Brightness_fb")
				local f431 = f423
				f431("GlobalShadows_fb")
				f431("Ambient_fb")
				if t848.ClockTime ~= nil then
					Lighting.ClockTime = t848.ClockTime
				end
				if t848.Brightness ~= nil then
					Lighting.Brightness = t848.Brightness
				end
				if t848.GlobalShadows ~= nil then
					Lighting.GlobalShadows = t848.GlobalShadows
				end
				if t848.Ambient ~= nil then
					Lighting.Ambient = t848.Ambient
				end
				for _, v955 in ipairs(Lighting:GetChildren()) do
					if v955:IsA("PostEffect") then
						local v956 = v955

						local function f432()
							v956.Enabled = true
						end

						pcall(f432)
					end
				end
			end

			local t851 = v826
			local Toggle96 = t851.Toggle
			local t852 = { Name = "Fullbright", Flag = "WorldFullbright", Default = false }

			function t852.Callback(p405)
				t850.Enabled = p405
				if p405 then
					f428()
				else
					f430()
				end
			end

			Toggle96(t851, t852)
			local t853 = {
				Enabled = false,
				Top = Color3.fromRGB(128, 128, 128),
				Bot = Color3.fromRGB(80, 80, 80)
			}

			local function f433()
				if t853.Enabled then
					Lighting.Ambient = t853.Top
				end
			end

			local function f434()
				if t853.Enabled then
					Lighting.OutdoorAmbient = t853.Bot
				end
			end

			local t854 = v826
			local Toggle97 = t854.Toggle
			local t855 = { Name = "Custom Ambience", Flag = "WorldCustomAmbience", Default = false }

			function t855.Callback(...)
				local v957 = ...
				t853.Enabled = v957
				if v957 then
					f421()
					Lighting.Ambient = t853.Top
					Lighting.OutdoorAmbient = t853.Bot
					f422("Ambient_ca", f433)
					f422("OutdoorAmbient_ca", f434)
				else
					f423("Ambient_ca")
					f423("OutdoorAmbient_ca")
					if t848.Ambient then
						Lighting.Ambient = t848.Ambient
					end
					if t848.OutdoorAmbient then
						Lighting.OutdoorAmbient = t848.OutdoorAmbient
					end
				end
			end

			local t856 = (Toggle97(t854, t855))
			local Colorpicker37 = t856.Colorpicker
			local t857 = { Name = "Ambient Color", Flag = "WorldAmbienceTop" }
			local f435 = 128
			local f436 = 128
			local v958 = 128
			t857.Color = (Color3.fromRGB(f435, f436, v958))
			t857.Alpha = 0
			t857.LayoutOrder = 1

			function t857.Callback(p406)
				t853.Top = p406
				if t853.Enabled then
					Lighting.Ambient = p406
				end
			end

			Colorpicker37(t856, t857)
			local Colorpicker38 = t856.Colorpicker
			local t858 = { Name = "Outdoor Ambient", Flag = "WorldAmbienceBot" }
			f435 = 80
			f436 = 80
			v958 = 80
			t858.Color = (Color3.fromRGB(f435, f436, v958))
			t858.Alpha = 0
			t858.LayoutOrder = 2

			function t858.Callback(p407)
				t853.Bot = p407
				if t853.Enabled then
					Lighting.OutdoorAmbient = p407
				end
			end

			Colorpicker38(t856, t858)
			local t859 = { Enabled = false }
			f435 = 255
			t859.Top = (Color3.fromRGB(255, 255, f435))
			f435 = 128
			t859.Bot = (Color3.fromRGB(128, 128, f435))
			local t860 = v826
			local Toggle98 = t860.Toggle
			local t861 = { Name = "Custom Colorshift", Flag = "WorldColorshift", Default = false }

			f435 = function(p408)
				t859.Enabled = p408
				if p408 then
					Lighting.ColorShift_Top = t859.Top
					Lighting.ColorShift_Bottom = t859.Bot
				else
					if t848.ColorShift_Top then
						Lighting.ColorShift_Top = t848.ColorShift_Top
					end
					if t848.ColorShift_Bottom then
						Lighting.ColorShift_Bottom = t848.ColorShift_Bottom
					end
				end
			end

			t861.Callback = f435
			local t862 = (Toggle98(t860, t861))
			local Colorpicker39 = t862.Colorpicker
			f435 = { Name = "Shift Top", Flag = "WorldShiftTop" }
			f436 = Color3
			f436 = f436.fromRGB
			v958 = 255
			local v959 = 255
			local f437 = 255
			f436 = (f436(v958, v959, f437))
			f435.Color = f436
			f435.Alpha = 0
			f435.LayoutOrder = 1

			f436 = function(p409)
				t859.Top = p409
				if t859.Enabled then
					Lighting.ColorShift_Top = p409
				end
			end

			f435.Callback = f436
			Colorpicker39(t862, f435)
			local Colorpicker40 = t862.Colorpicker
			f435 = { Name = "Shift Bottom", Flag = "WorldShiftBot" }
			f436 = Color3
			f436 = f436.fromRGB
			v958 = 128
			v959 = 128
			f437 = 128
			f436 = (f436(v958, v959, f437))
			f435.Color = f436
			f435.Alpha = 0
			f435.LayoutOrder = 2

			f436 = function(p410)
				t859.Bot = p410
				if t859.Enabled then
					Lighting.ColorShift_Bottom = p410
				end
			end

			f435.Callback = f436
			Colorpicker40(t862, f435)
			local t863 = { Enabled = false, Amount = -0.08 }
			local t864 = v826
			f435 = t864
			local Toggle99 = t864.Toggle
			f436 = { Name = "Custom Exposure", Flag = "WorldExposure", Default = false }

			v958 = function(p411)
				t863.Enabled = p411
				if p411 then
					Lighting.ExposureCompensation = t863.Amount
				elseif t848.ExposureCompensation ~= nil then
					Lighting.ExposureCompensation = t848.ExposureCompensation
				end
			end

			f436.Callback = v958
			Toggle99(f435, f436)
			local t865 = v826
			f435 = t865
			local Slider39 = t865.Slider
			f436 = {
				Name = "Exposure Amount",
				Flag = "WorldExposureAmt",
				Min = -5,
				Max = 5,
				Default = -0.08,
				Decimal = 0.01,
				Suffix = "%"
			}

			v958 = function(p412)
				t863.Amount = p412
				if t863.Enabled then
					Lighting.ExposureCompensation = p412
				end
			end

			f436.Callback = v958
			Slider39(f435, f436)
			local t866 = { Enabled = false, Time = 13 }
			f435 = RunService.RenderStepped
			f436 = f435
			f435 = f435.Connect

			v958 = function()
				if t866.Enabled then
					Lighting.ClockTime = t866.Time
				end
			end

			f435(f436, v958)
			f435 = v826
			f436 = f435
			f435 = f435.Toggle
			v958 = { Name = "Custom Time", Flag = "WorldCustomTime", Default = false }

			v959 = function(p413)
				t866.Enabled = p413
				if p413 then
					f421()
					Lighting.ClockTime = t866.Time
				elseif t848.ClockTime ~= nil then
					Lighting.ClockTime = t848.ClockTime
				end
			end

			v958.Callback = v959
			f435(f436, v958)
			f435 = v826
			f436 = f435
			f435 = f435.Slider
			v958 = {
				Name = "Time",
				Flag = "WorldTime",
				Min = 0,
				Max = 24,
				Default = 13,
				Decimal = 0.1,
				Suffix = "hr"
			}

			v959 = function(p414)
				t866.Time = p414
				if t866.Enabled then
					Lighting.ClockTime = p414
				end
			end

			v958.Callback = v959
			f435(f436, v958)
			f435 = false
			f436 = v826
			v958 = f436
			f436 = f436.Toggle
			v959 = { Name = "No Shadows", Flag = "WorldShadows", Default = false }

			f437 = function(p415)
				f435 = p415
				Lighting.GlobalShadows = not p415
			end

			v959.Callback = f437
			f436(v958, v959)
			f436 = false
			v958 = 56
			v959 = 4.1
			f437 = 90.2
			local v960 = nil

			local function f438()
				if v960 and v960.Parent then
					return v960
				end
				v960 = (Lighting:FindFirstChildWhichIsA("BloomEffect"))
				if not v960 then
					v960 = (Instance.new("BloomEffect"))
					v960.Name = "CustomBloom"
					v960.Enabled = false
					v960.Parent = Lighting
				end
				return v960
			end

			local f439 = v827
			local v961 = f439
			f439 = f439.Toggle
			local t867 = { Name = "Bloom", Flag = "WorldBloom", Default = false }

			local function v962(...)
				local _ = -41923623 + bit32.rrotate(5, 9) + -19415
				local v963 = ...
				f436 = v963
				local v964 = (f438())
				v964.Enabled = v963
				if v963 then
					v964.Intensity = v958
					v964.Size = v959
					v964.Threshold = f437
				end
			end

			t867.Callback = v962
			f439(v961, t867)
			f439 = v827
			local v965 = f439
			f439 = f439.Slider
			t867 = {
				Name = "Bloom Intensity",
				Flag = "WorldBloomIntensity",
				Min = 0,
				Max = 100,
				Default = 56,
				Decimal = 1
			}

			v962 = function(p416)
				v958 = p416
				if f436 then
					f438().Intensity = p416
				end
			end

			t867.Callback = v962
			f439(v965, t867)
			f439 = v827
			local v966 = f439
			f439 = f439.Slider
			t867 = {
				Name = "Bloom Size",
				Flag = "WorldBloomSize",
				Min = 0,
				Max = 56,
				Default = 4.1,
				Decimal = 0.1
			}

			v962 = function(p417)
				v959 = p417
				if f436 then
					f438().Size = p417
				end
			end

			t867.Callback = v962
			f439(v966, t867)
			f439 = v827
			local v967 = f439
			f439 = f439.Slider
			t867 = {
				Name = "Bloom Threshold",
				Flag = "WorldBloomThreshold",
				Min = 0,
				Max = 100,
				Default = 90.2,
				Decimal = 0.1
			}

			v962 = function(p418)
				f437 = p418
				if f436 then
					f438().Threshold = p418
				end
			end

			t867.Callback = v962
			f439(v967, t867)
			f439 = false
			local t868 = v827
			t867 = t868
			local f440 = t868.Toggle
			v962 = { Name = "Custom Light Tech", Flag = "WorldLightTechEnabled", Default = false }

			local function v968(p419)
				f439 = p419
			end

			v962.Callback = v968
			f440(t867, v962)
			local t869 = v827
			t867 = t869
			local Dropdown25 = t869.Dropdown
			v962 = { Name = "Lighting Technology", Flag = "WorldLightTech" }
			v968 = (table.create(4))
			local f441 = "Future"
			local Voxel = "Voxel"
			v968[1] = "Compatibility"
			v968[2] = "ShadowMap"
			v968[3] = f441
			v968[4] = Voxel
			v962.Options = v968
			v962.Default = "Future"
			v962.Multi = false

			v968 = function(p420)
				if f439 then
					local function f442()
						Lighting.Technology = Enum.Technology[p420]
					end

					pcall(f442)
				end
			end

			v962.Callback = v968
			Dropdown25(t867, v962)
			local t870 = {}
			t867 = {
				SkyboxLf = "rbxassetid://148943339",
				SkyboxBk = "rbxassetid://148943390",
				SkyboxDn = "rbxassetid://148943362",
				SkyboxFt = "rbxassetid://148943404",
				SkyboxRt = "rbxassetid://148943379",
				SkyboxUp = "rbxassetid://148943410"
			}
			t870.Default = t867
			t867 = {
				SkyboxLf = "rbxassetid://159454286",
				SkyboxBk = "rbxassetid://159454299",
				SkyboxDn = "rbxassetid://159454296",
				SkyboxFt = "rbxassetid://159454293",
				SkyboxRt = "rbxassetid://159454300",
				SkyboxUp = "rbxassetid://159454288"
			}
			t870.Nebula = t867
			t867 = {
				SkyboxBk = "rbxassetid://79187608916257",
				SkyboxDn = "rbxassetid://79187608916257",
				SkyboxFt = "rbxassetid://135345543970829",
				SkyboxLf = "rbxassetid://130684897818024",
				SkyboxRt = "rbxassetid://134117814265945",
				SkyboxUp = "rbxassetid://128019898265074"
			}
			t870["Blue Nebula"] = t867
			t867 = {
				SkyboxLf = "rbxassetid://264909758",
				SkyboxBk = "rbxassetid://264908339",
				SkyboxDn = "rbxassetid://264907909",
				SkyboxFt = "rbxassetid://264909420",
				SkyboxRt = "rbxassetid://264908886",
				SkyboxUp = "rbxassetid://264907379"
			}
			t870["Setting Hills"] = t867
			t867 = {
				SkyboxBk = "rbxassetid://12064107",
				SkyboxDn = "rbxassetid://12064152",
				SkyboxFt = "rbxassetid://12064121",
				SkyboxLf = "rbxassetid://12063984",
				SkyboxRt = "rbxassetid://12064115",
				SkyboxUp = "rbxassetid://12064131"
			}
			t870["Blue Aurora"] = t867
			t867 = {
				SkyboxBk = "rbxassetid://401664839",
				SkyboxDn = "rbxassetid://401664862",
				SkyboxFt = "rbxassetid://401664960",
				SkyboxLf = "rbxassetid://401664881",
				SkyboxRt = "rbxassetid://401664901",
				SkyboxUp = "rbxassetid://401664936"
			}
			t870["Red Aurora"] = t867
			t867 = {
				SkyboxBk = "rbxassetid://6593929026",
				SkyboxDn = "rbxassetid://6593930140",
				SkyboxFt = "rbxassetid://6593931249",
				SkyboxLf = "rbxassetid://6593932587",
				SkyboxRt = "rbxassetid://6593933789",
				SkyboxUp = "rbxassetid://6593935319"
			}
			t870["Pink Vision"] = t867
			t867 = {
				SkyboxBk = "rbxassetid://570557514",
				SkyboxDn = "rbxassetid://570557775",
				SkyboxFt = "rbxassetid://570557559",
				SkyboxLf = "rbxassetid://570557620",
				SkyboxRt = "rbxassetid://570557672",
				SkyboxUp = "rbxassetid://570557727"
			}
			t870.Twilight = t867
			t867 = {
				SkyboxBk = "rbxassetid://2240134413",
				SkyboxDn = "rbxassetid://2240136039",
				SkyboxFt = "rbxassetid://2240130790",
				SkyboxLf = "rbxassetid://2240133550",
				SkyboxRt = "rbxassetid://2240132643",
				SkyboxUp = "rbxassetid://2240135222"
			}
			t870.Distopia = t867
			t867 = {
				SkyboxBk = "rbxassetid://73252679982122",
				SkyboxDn = "rbxassetid://101074061181553",
				SkyboxFt = "rbxassetid://112572775732134",
				SkyboxLf = "rbxassetid://126931573973019",
				SkyboxRt = "rbxassetid://135908172504233",
				SkyboxUp = "rbxassetid://124514468649717"
			}
			t870.Peaceful = t867
			t867 = nil
			v962 = false
			v968 = "Peaceful"

			local function f443(p421)
				local t871 = t870[p421]
				if not t871 then
					return
				end
				if not (t867 and t867.Parent) then
					t867 = (Instance.new("Sky"))
					t867.Parent = Lighting
				end
				for v969, v970 in pairs(t871) do
					local v971 = v969
					local v972 = v970

					local function f444()
						t867[v971] = v972
					end

					pcall(f444)
				end
			end

			local function f445()
				if t867 then
					t867:Destroy()
					t867 = nil
				end
			end

			f441 = v827
			Voxel = f441
			f441 = f441.Toggle
			local t872 = { Name = "Custom Skybox", Flag = "WorldSkyboxEnabled", Default = false }

			local function f446(p422)
				v962 = p422
				if p422 then
					f443(v968)
				else
					f445()
				end
			end

			t872.Callback = f446
			f441(Voxel, t872)
			f441 = v827
			Voxel = f441
			f441 = f441.Dropdown
			t872 = { Name = "Skybox", Flag = "WorldSkyboxSelect" }
			f446 = (table.create(10))
			local f447 = "Default"
			local Nebula = "Nebula"
			local v973 = "Blue Nebula"
			local v974 = "Setting Hills"
			f446[1] = f447
			f446[2] = Nebula
			f446[3] = v973
			f446[4] = v974
			f446[5] = "Blue Aurora"
			f446[6] = "Red Aurora"
			f446[7] = "Pink Vision"
			f446[8] = "Twilight"
			f446[9] = "Distopia"
			f446[10] = "Peaceful"
			t872.Options = f446
			t872.Default = "Peaceful"
			t872.Multi = false

			f446 = function(p423)
				v968 = p423
				if v962 then
					f443(p423)
				end
			end

			t872.Callback = f446
			f441(Voxel, t872)
			f441 = false
			Voxel = 0.3
			t872 = 0
			f446 = Color3
			f446 = f446.fromRGB
			f447 = 192
			Nebula = 192
			v973 = 192
			f446 = (f446(f447, Nebula, v973))
			f447 = Color3
			f447 = f447.fromRGB
			Nebula = 106
			v973 = 127
			v974 = 153
			f447 = (f447(Nebula, v973, v974))
			Nebula = 0
			v973 = 10
			v974 = nil
			local FindFirstChildOfClass21 = (Lighting:FindFirstChildOfClass("Atmosphere"))

			local function f448()
				if v974 and v974.Parent then
					return v974
				end
				v974 = (Instance.new("Atmosphere"))
				v974.Name = "CustomFog"
				v974.Parent = Lighting
				return v974
			end

			local function f449()
				local v975 = (f448())
				v975.Density = Voxel
				v975.Offset = t872
				v975.Color = f446
				v975.Decay = f447
				v975.Glare = Nebula
				v975.Haze = v973
			end

			local function f450()
				if v974 and v974.Parent then
					v974:Destroy()
					v974 = nil
				end
			end

			local t873 = v104
			local Section21 = t873.Section
			local t874 = { Name = "Fog", Side = "Right" }
			local t875 = (Section21(t873, t874))
			local f451 = t875.Toggle
			local t876 = { Name = "Custom Fog", Flag = "WorldFogEnabled", Default = false }

			function t876.Callback(...)
				local v976 = ...
				f441 = v976
				if v976 then
					if FindFirstChildOfClass21 and FindFirstChildOfClass21.Parent then
						local function f452()
						end
						pcall(f452)
					end
					f449()
				else
					f450()
					if FindFirstChildOfClass21 then
						local function f453()
							local v977
							v977 = not not false
							if not v977 then
								v977 = 184
							end
						end

						pcall(f453)
					end
				end
			end

			local t877 = (f451(t875, t876))
			local Colorpicker41 = t877.Colorpicker
			local t878 = {
				Name = "Fog Color",
				Flag = "WorldFogColor",
				Color = Color3.fromRGB(192, 192, 192),
				Alpha = 0
			}

			function t878.Callback(p424)
				f446 = p424
				if f441 then
					f449()
				end
			end

			Colorpicker41(t877, t878)
			local Colorpicker42 = t875.Colorpicker
			local t879 = {
				Name = "Fog Decay",
				Flag = "WorldFogDecay",
				Color = Color3.fromRGB(106, 127, 153),
				Alpha = 0
			}

			function t879.Callback(p425)
				f447 = p425
				if f441 then
					f449()
				end
			end

			Colorpicker42(t875, t879)
			local Slider40 = t875.Slider
			local t880 = {
				Name = "Density",
				Flag = "WorldFogDensity",
				Min = 0,
				Max = 1,
				Default = 0.3,
				Decimal = 0.01
			}

			function t880.Callback(p426)
				Voxel = p426
				if f441 then
					f449()
				end
			end

			Slider40(t875, t880)
			local Slider41 = t875.Slider
			local t881 = {
				Name = "Offset",
				Flag = "WorldFogOffset",
				Min = 0,
				Max = 1,
				Default = 0,
				Decimal = 0.01
			}

			function t881.Callback(p427)
				t872 = p427
				if f441 then
					f449()
				end
			end

			Slider41(t875, t881)
			local Slider42 = t875.Slider
			local t882 = {
				Name = "Haze",
				Flag = "WorldFogHaze",
				Min = 0,
				Max = 10,
				Default = 10,
				Decimal = 0.1
			}

			function t882.Callback(p428)
				v973 = p428
				local v978
				if f441 then
					v978 = string.byte("\18\30:\237", 1, 4) <= 253
					if v978 then
						v978 = 18
					end
					local _ = 5101 + (v978 - math.modf(3.141592653589793)) + -5114
				end
			end

			Slider42(t875, t882)
			local Slider43 = t875.Slider
			local t883 = {
				Name = "Glare",
				Flag = "WorldFogGlare",
				Min = 0,
				Max = 10,
				Default = 0,
				Decimal = 0.1
			}

			function t883.Callback(p429)
				Nebula = p429
				if f441 then
					f449()
				end
			end

			Slider43(t875, t883)
		end

		f420()
	end

	f382()

	local function f454()
		local t884 = v104
		local Section22 = t884.Section
		local t885 = { Name = "Gun Chams", Side = "Left" }
		local t886 = (Section22(t884, t885))
		local t887 = {
			Enabled = false,
			Color = Color3.fromRGB(100, 149, 237),
			TargetColor = Color3.fromRGB(100, 149, 237),
			Alpha = 0,
			TargetAlpha = 0,
			Material = "Neon",
			NoTexture = true,
			Mode = "Material",
			HighlightOutlineColor = Color3.fromRGB(255, 255, 255),
			HighlightOutlineAlpha = 0,
			HighlightInstance = nil,
			originals = {},
			conn = nil,
			charConn = nil,
			toolConn = nil,
			tweenConn = nil,
			SkipTransparencyThreshold = 0.99,
			ColorLerpSpeed = 0.12
		}
		local v979 = (table.create(9))
		v979[1] = "Neon"
		v979[2] = "ForceField"
		v979[3] = "Glass"
		v979[4] = "SmoothPlastic"
		v979[5] = "Plastic"
		v979[6] = "Metal"
		v979[7] = "DiamondPlate"
		v979[8] = "Foil"
		v979[9] = "Ice"

		local function f455(p430)
			local t888 = {}
			if p430:IsA("BasePart") or p430:IsA("MeshPart") or p430:IsA("SpecialMesh") then
				table.insert(t888, p430)
			end
			for _, v980 in ipairs(p430:GetDescendants()) do
				if v980:IsA("BasePart") or v980:IsA("MeshPart") or v980:IsA("SpecialMesh") then
					table.insert(t888, v980)
				end
			end
			return t888
		end

		local function f456(p431)
			if t887.originals[p431] then
				return
			end
			local Transparency = nil
			local v981 = false
			if p431:IsA("BasePart") or p431:IsA("MeshPart") then
				Transparency = p431.Transparency
				if t887.SkipTransparencyThreshold <= Transparency then
					v981 = true
				end
			end
			local originals2 = t887.originals
			local t889 = {}
			local IsA7 = (p431:IsA("BasePart"))
			IsA7 = IsA7 and p431.Color or nil
			t889.Color = IsA7
			local IsA8 = (p431:IsA("BasePart"))
			IsA8 = IsA8 and p431.BrickColor or nil
			t889.BrickColor = IsA8
			local IsA9 = (p431:IsA("BasePart"))
			IsA9 = IsA9 and p431.Material or nil
			t889.Material = IsA9
			local v982 = (p431:IsA("MeshPart"))
			if v982 then
				v982 = p431.TextureID
			end
			if not v982 then
				v982 = (p431:IsA("SpecialMesh"))
				if v982 then
					v982 = p431.TextureId
				end
			end
			if not v982 then
				v982 = nil
			end
			t889.TextureID = v982
			t889.Transparency = Transparency
			t889.SkipTransparency = v981
			originals2[p431] = t889
		end

		local function f457(p432, p433)
			f456(p432)
			local v983 = t887.originals[p432]

			local function f458()
				if p432:IsA("BasePart") or p432:IsA("MeshPart") then
					p432.Color = t887.Color
					local Neon = Enum.Material[t887.Material]
					if not Neon then
						Neon = Enum.Material.Neon
					end
					p432.Material = Neon
					if not (v983 and v983.SkipTransparency) then
						if p433 then
							p432.Transparency = 1
						else
							p432.Transparency = t887.Alpha
						end
					end
				end
				if t887.NoTexture then
					if p432:IsA("MeshPart") then
						p432.TextureID = ""
					elseif p432:IsA("SpecialMesh") then
						p432.TextureId = ""
					end
				end
			end

			pcall(f458)
		end

		local function f459()
		end

		local function f460()
			if t887.tweenConn then
				t887.tweenConn:Disconnect()
				t887.tweenConn = nil
			end
		end

		local function f461(p434)
			local v984 = t887.originals[p434]
			if not v984 then
				return
			end

			local function f462()
				if p434:IsA("BasePart") or p434:IsA("MeshPart") then
					if v984.Color then
						p434.Color = v984.Color
					end
					if v984.Material then
						p434.Material = v984.Material
					end
					if not (v984.Transparency == nil or v984.SkipTransparency) then
						p434.Transparency = v984.Transparency
					end
				end
				if v984.TextureID then
					if p434:IsA("MeshPart") then
						p434.TextureID = v984.TextureID
					end
					if p434:IsA("SpecialMesh") then
						p434.TextureId = v984.TextureID
					end
				end
			end

			pcall(f462)
			t887.originals[p434] = nil
		end

		local function f463()
			local t890 = {}
			local Character33 = LocalPlayer2.Character
			if not Character33 then
				return t890
			end
			local t891 = {}
			for _, t892 in ipairs(Character33:GetChildren()) do
				if t892:IsA("Tool") then
					local _ = table.insert
					local t893 = { root = t892, forceInvisible = false }
					table.insert(t890, t893)
					t891[t892.Name] = true
				end
			end
			local DisplayItems = (Character33:FindFirstChild("DisplayItems"))
			local v985
			if DisplayItems then
				for _, t894 in ipairs(DisplayItems:GetChildren()) do
					local Parts2 = (t894:FindFirstChild("Parts"))
					if Parts2 then
						for _, v986 in ipairs(Parts2:GetChildren()) do
							local Model = (v986:FindFirstChild("Model"))
							if Model then
								local t895 = (Model:FindFirstChild("Handle"))
								if not t895 then
									t895 = (Model:FindFirstChildWhichIsA("BasePart"))
								end
								if t895 then
									local Parent4 = t895.Parent
									if not Parent4 then
										Parent4 = t895
									end
									v985 = t891[t894.Name] == true
									local _ = table.insert
									local t896 = { root = Parent4, forceInvisible = v985 }
									table.insert(t890, t896)
								end
							end
						end
					end
				end
			end
			return t890
		end

		local function f464()
			for v987, _ in pairs(t887.originals) do
				f461(v987)
			end
			t887.originals = {}
		end

		local function f465(...)
			local t897 = (f463())
			if t887.Mode == "Material" and t887.Enabled then
				for _, t898 in ipairs(t897) do
					for _, v988 in ipairs(f455(t898.root)) do
						f457(v988, t898.forceInvisible)
					end
				end
			else
				f464()
			end
			if t887.Mode == "Highlight" and t887.Enabled then
				if t887.HighlightInstance and not t887.HighlightInstance.Parent then
					local function f466()
						t887.HighlightInstance:Destroy()
					end

					pcall(f466)
					t887.HighlightInstance = nil
				end
				if not t887.HighlightInstance then
					t887.HighlightInstance = (Instance.new("Highlight"))
					t887.HighlightInstance.Name = "GunHighlight"
				end
				local HighlightInstance = t887.HighlightInstance
				HighlightInstance.FillColor = t887.Color
				HighlightInstance.FillTransparency = t887.Alpha
				HighlightInstance.OutlineColor = t887.HighlightOutlineColor
				HighlightInstance.OutlineTransparency = t887.HighlightOutlineAlpha
				HighlightInstance.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				local v989 = (workspace.CurrentCamera:FindFirstChild("ViewModel"))
				if v989 then
					v989 = (v989:FindFirstChild("Tool"))
				end
				if not v989 then
					v989 = t897[1]
					if v989 then
						v989 = t897[1].root
					end
				end
				if not v989 then
					v989 = nil
				end
				if v989 then
					local v990 = v989

					local function f467()
						HighlightInstance.Adornee = v990
						HighlightInstance.Parent = v990
					end

					pcall(f467)
				end
			elseif t887.HighlightInstance then
				local function f468()
					t887.HighlightInstance:Destroy()
				end

				pcall(f468)
				t887.HighlightInstance = nil
			end
		end

		local function f469()
			f465()
			f459()

			local function f470()
				if not t887.Enabled then
					return
				end
				f465()
			end

			t887.conn = (RunService.RenderStepped:Connect(f470))

			local function f471()
				task.wait(1)
				if t887.Enabled then
					f465()
				end
			end

			t887.charConn = (LocalPlayer2.CharacterAdded:Connect(f471))
		end

		local function f472()
			if t887.conn then
				t887.conn:Disconnect()
				t887.conn = nil
			end
			if t887.charConn then
				t887.charConn:Disconnect()
				t887.charConn = nil
			end
			f460()
			if t887.HighlightInstance then
				t887.HighlightInstance:Destroy()
				t887.HighlightInstance = nil
			end
			f464()
		end

		local t899 = nil
		local f473 = t886.Toggle
		local t900 = { Name = "Enabled", Flag = "GunChamsEnabled", Default = false }

		function t900.Callback(...)
			local _ = bit32.bnot
			local v991
			v991 = not not true
			if v991 then
				v991 = 506
			end
			local _ = -4294960813 + bit32.bnot(v991) + -5975
			local v992 = ...
			t887.Enabled = v992
			if v992 then
				f469()
			else
				f472()
			end
		end

		local t901 = (f473(t886, t900))
		local Colorpicker43 = t901.Colorpicker
		local t902 = {
			Name = "Color",
			Flag = "GunChamsColor",
			Color = Color3.fromRGB(100, 149, 237),
			Alpha = 0
		}

		function t902.Callback(...)
			local v993 = false
			if not v993 then
				v993 = 145
			end
			local v994, v995
			v995, v994 = ...
			t887.TargetColor = v995
			t887.Color = v995
			local v996
			if v994 then
				v996 = "TargetAlpha" <= nil
				t887.Alpha = v996
			end
			if t887.Enabled then
				f465()
			end
		end

		Colorpicker43(t901, t902)
		local Dropdown26 = t886.Dropdown
		local t903 = { Name = "Mode", Flag = "GunChamsMode" }
		local v997 = (table.create(2))
		v997[1] = "Material"
		v997[2] = "Highlight"
		t903.Options = v997
		t903.Default = "Material"
		t903.Multi = false

		function t903.Callback(...)
			local _
			_ = not not true
			local v998 = ...
			t887.Mode = v998
			local v999
			if t899 then
				local Section23 = t899.Items.Section
				v999 = v998 == "Highlight"
				Section23.Visible = v999
			end
			if t887.Enabled then
				f465()
			end
		end

		Dropdown26(t886, t903)
		local Dropdown27 = t886.Dropdown
		local t904 = {
			Name = "Material",
			Flag = "GunChamsMaterial",
			Options = v979,
			Default = "Neon",
			Multi = false
		}

		function t904.Callback(p435)
			t887.Material = p435
			if t887.Enabled then
				f465()
			end
		end

		Dropdown27(t886, t904)
		local t905 = v104
		local Section24 = t905.Section
		local t906 = { Name = "Gun Highlight Settings", Side = "Left" }
		t899 = (Section24(t905, t906))
		t899.Items.Section.Visible = false
		local f474 = t899.Toggle
		local t907 = { Name = "Outline", Flag = "GunChamsHLOutline", Default = false }

		function t907.Callback(p436)
			if p436 then
				local _savedOutlineAlpha4 = t887._savedOutlineAlpha
				if not _savedOutlineAlpha4 then
					_savedOutlineAlpha4 = 0
				end
				t887.HighlightOutlineAlpha = _savedOutlineAlpha4
			else
				t887.HighlightOutlineAlpha = 1
			end
			if t887.Enabled then
				f465()
			end
		end

		local t908 = (f474(t899, t907))
		local Colorpicker44 = t908.Colorpicker
		local t909 = {
			Name = "Outline Color",
			Flag = "GunChamsHighlightOutline",
			Color = Color3.fromRGB(255, 255, 255),
			Alpha = 0
		}

		function t909.Callback(...)
			local v1000, v1001
			v1001, v1000 = ...
			t887.HighlightOutlineColor = v1001
			if v1000 then
				t887._savedOutlineAlpha = v1000
				if t5.Flags.GunChamsHLOutline then
					t887.HighlightOutlineAlpha = v1000
				end
			end
			if t887.Enabled then
				f465()
			end
		end

		Colorpicker44(t908, t909)
	end

	f454()

	local function f475(...)
		local t910 = v104
		local Section25 = t910.Section
		local t911 = { Name = "Arms", Side = "Left" }
		local t912 = (Section25(t910, t911))
		local v1002 = (table.create(9))
		local v1003 = "ForceField"
		v1002[1] = "Neon"
		v1002[2] = v1003
		v1002[3] = "Glass"
		v1002[4] = "SmoothPlastic"
		v1002[5] = "Plastic"
		v1002[6] = "Metal"
		v1002[7] = "DiamondPlate"
		v1002[8] = "Foil"
		v1002[9] = "Ice"
		local t913 = {}
		v1003 = { Enabled = false }
		v1003.Color = (Color3.fromRGB(255, 200, 150))
		v1003.TargetColor = (Color3.fromRGB(255, 200, 150))
		v1003.Alpha = 0
		v1003.TargetAlpha = 0
		v1003.Material = "SmoothPlastic"
		v1003.origColor = nil
		v1003.origMat = nil
		v1003.origAlpha = nil
		v1003.partName = "Left Arm"
		t913.Left = v1003
		v1003 = { Enabled = false }
		v1003.Color = (Color3.fromRGB(255, 200, 150))
		v1003.TargetColor = (Color3.fromRGB(255, 200, 150))
		v1003.Alpha = 0
		v1003.TargetAlpha = 0
		v1003.Material = "SmoothPlastic"
		v1003.origColor = nil
		v1003.origMat = nil
		v1003.origAlpha = nil
		v1003.partName = "Right Arm"
		t913.Right = v1003
		v1003 = nil

		local function f476(p437)
			local ViewModel3 = (workspace.CurrentCamera:FindFirstChild("ViewModel"))
			if ViewModel3 then
				local FindFirstChild21 = (ViewModel3:FindFirstChild(p437.partName))
				if FindFirstChild21 then
					return FindFirstChild21, false
				end
			end
			local Character34 = LocalPlayer2.Character
			if Character34 then
				local FindFirstChild22 = (Character34:FindFirstChild(p437.partName))
				if FindFirstChild22 then
					return FindFirstChild22, true
				end
			end
			return nil, false
		end

		local function f477()
			local t914 = LocalPlayer2.Character
			if t914 then
				t914 = (LocalPlayer2.Character:FindFirstChild("HumanoidRootPart"))
			end
			if not t914 then
				return false
			end
			local v1004
			v1004 = 3 < (workspace.CurrentCamera.CFrame.Position - t914.Position).Magnitude
			return v1004
		end

		local function f478(p438)
			local _, v1005
			v1005, _ = f476(p438)
			if not v1005 then
				return
			end

			local function f479()
				if p438.origColor == nil then
					p438.origColor = v1005.Color
					p438.origMat = v1005.Material
					p438.origAlpha = v1005.Transparency
				end
				v1005.Color = p438.Color
				local SmoothPlastic = Enum.Material[p438.Material]
				if not SmoothPlastic then
					SmoothPlastic = Enum.Material.SmoothPlastic
				end
				v1005.Material = SmoothPlastic
				v1005.Transparency = p438.Alpha
			end

			pcall(f479)
		end

		local function f480(p439)
			local ViewModel4 = (workspace.CurrentCamera:FindFirstChild("ViewModel"))
			if ViewModel4 then
				local FindFirstChild23 = (ViewModel4:FindFirstChild(p439.partName))
				if FindFirstChild23 then
					local function f481()
						local v1006 = p439.origVMColor
						if not v1006 then
							v1006 = FindFirstChild23.Color
						end
						FindFirstChild23.Color = v1006
						local v1007 = p439.origVMMat
						if not v1007 then
							v1007 = FindFirstChild23.Material
						end
						FindFirstChild23.Material = v1007
						local v1008
						v1008 = not (p439.origVMAlpha == nil)
						v1008 = v1008 and p439.origVMAlpha or FindFirstChild23.Transparency
						FindFirstChild23.Transparency = v1008
						FindFirstChild23.LocalTransparencyModifier = 0
					end

					pcall(f481)
				end
			end
			local Character35 = LocalPlayer2.Character
			if Character35 then
				local FindFirstChild24 = (Character35:FindFirstChild(p439.partName))
				if FindFirstChild24 then
					local function f482()
						local v1009 = p439.origCharColor
						if not v1009 then
							v1009 = FindFirstChild24.Color
						end
						FindFirstChild24.Color = v1009
						local v1010 = p439.origCharMat
						if not v1010 then
							v1010 = FindFirstChild24.Material
						end
						FindFirstChild24.Material = v1010
						local v1011
						v1011 = not (p439.origCharAlpha == nil)
						v1011 = v1011 and p439.origCharAlpha or FindFirstChild24.Transparency
						FindFirstChild24.Transparency = v1011
						FindFirstChild24.LocalTransparencyModifier = 0
					end

					pcall(f482)
				end
			end
			p439.origVMColor = nil
			p439.origVMMat = nil
			p439.origVMAlpha = nil
			p439.origCharColor = nil
			p439.origCharMat = nil
			p439.origCharAlpha = nil
		end

		local function f483()
			local v1012 = (f477())
			local v1013, v1014, f484
			f484, v1014, v1013 = pairs(t913)
			local v1015
			while true do
				local t915
				v1013, t915 = f484(v1014, v1013)
				if v1013 == nil then
					break
				end
				if t915.Enabled then
					local ViewModel5 = (workspace.CurrentCamera:FindFirstChild("ViewModel"))
					if ViewModel5 then
						v1015 = not not false
						if not v1015 then
							v1015 = 15
						end
						local FindFirstChild25 = (ViewModel5:FindFirstChild(t915.partName))
						if FindFirstChild25 then
							local v1016 = t915
							local v1017 = FindFirstChild25

							local function f485()
								if v1016.origVMColor == nil then
									v1016.origVMColor = v1017.Color
									v1016.origVMMat = v1017.Material
									v1016.origVMAlpha = v1017.Transparency
								end
								local v1018 = v1012
								v1018 = v1018 and 1 or 0
								v1017.LocalTransparencyModifier = v1018
								if v1012 then
									v1017.Color = v1016.origVMColor
									v1017.Material = v1016.origVMMat
									v1017.Transparency = v1016.origVMAlpha
								else
									v1017.Color = v1016.Color
									local SmoothPlastic2 = Enum.Material[v1016.Material]
									if not SmoothPlastic2 then
										SmoothPlastic2 = Enum.Material.SmoothPlastic
									end
									v1017.Material = SmoothPlastic2
									v1017.Transparency = v1016.Alpha
								end
							end

							pcall(f485)
						end
					end
					local Character36 = LocalPlayer2.Character
					if Character36 then
						local FindFirstChild26 = (Character36:FindFirstChild(t915.partName))
						if FindFirstChild26 then
							local v1019 = t915
							local v1020 = FindFirstChild26

							local function f486()
								if v1019.origCharColor == nil then
									v1019.origCharColor = v1020.Color
									v1019.origCharMat = v1020.Material
									v1019.origCharAlpha = v1020.Transparency
								end
								local v1021 = v1012
								v1021 = v1021 and 0 or 1
								v1020.LocalTransparencyModifier = v1021
								if v1012 then
									v1020.Color = v1019.Color
									local SmoothPlastic3 = Enum.Material[v1019.Material]
									if not SmoothPlastic3 then
										SmoothPlastic3 = Enum.Material.SmoothPlastic
									end
									v1020.Material = SmoothPlastic3
									v1020.Transparency = v1019.Alpha
								else
									v1020.Color = v1019.origCharColor
									v1020.Material = v1019.origCharMat
									v1020.Transparency = v1019.origCharAlpha
								end
							end

							pcall(f486)
						end
					end
				end
			end
		end

		local function f487()
			local v1022
			v1022 = not not false
			if not v1022 then
				v1022 = 10
			end
			local v1023
			v1023 = 27 <= v1022
			if not v1023 then
				v1023 = 197
			end
			if not v1003 then
				local function f488()
					f483()
				end

				v1003 = (RunService.RenderStepped:Connect(f488))
			end
		end

		local function f489()
			if not (t913.Left.Enabled or t913.Right.Enabled or not v1003) then
				v1003:Disconnect()
				v1003 = nil
			end
		end

		local f490 = t912.Toggle
		local t916 = { Name = "Left Arm", Flag = "ArmsLeftEnabled", Default = false }

		function t916.Callback(p440)
			t913.Left.Enabled = p440
			if p440 then
				f487()
			else
				f480(t913.Left)
				f489()
			end
		end

		local t917 = (f490(t912, t916))
		local Colorpicker45 = t917.Colorpicker
		local t918 = {
			Name = "Left Arm Color",
			Flag = "ArmsLeftColor",
			Color = Color3.fromRGB(255, 200, 150),
			Alpha = 0
		}

		function t918.Callback(...)
			local v1024
			v1024 = not not false
			if not v1024 then
				v1024 = 281
			end
			local Alpha5, v1025
			v1025, Alpha5 = ...
			t913.Left.Color = v1025
			local Left = t913.Left
			local TargetAlpha
			if Alpha5 then
				TargetAlpha = Alpha5
			else
				TargetAlpha = t913.Left.TargetAlpha
			end
			Left.TargetAlpha = TargetAlpha
			local Left2 = t913.Left
			if not Alpha5 then
				Alpha5 = t913.Left.Alpha
			end
			Left2.Alpha = Alpha5
			if t913.Left.Enabled then
				f478(t913.Left)
			end
		end

		Colorpicker45(t917, t918)
		local Dropdown28 = t912.Dropdown
		local t919 = {
			Name = "Left Arm Material",
			Flag = "ArmsLeftMaterial",
			Options = v1002,
			Default = "SmoothPlastic",
			Multi = false
		}

		function t919.Callback(p441)
			t913.Left.Material = p441
			if t913.Left.Enabled then
				f478(t913.Left)
			end
		end

		Dropdown28(t912, t919)
		local t920 = t912.Toggle
		local Colorpicker46 = t920.Colorpicker
		local t921 = {
			Name = "Right Arm Color",
			Flag = "ArmsRightColor",
			Color = Color3.fromRGB(255, 200, 150),
			Alpha = 0
		}

		function t921.Callback(p442, Alpha6)
			t913.Right.TargetColor = p442
			t913.Right.Color = p442
			local Right = t913.Right
			local TargetAlpha2
			if Alpha6 then
				TargetAlpha2 = Alpha6
			else
				TargetAlpha2 = t913.Right.TargetAlpha
			end
			Right.TargetAlpha = TargetAlpha2
			local Right2 = t913.Right
			if not Alpha6 then
				Alpha6 = t913.Right.Alpha
			end
			Right2.Alpha = Alpha6
			if t913.Right.Enabled then
				f478(t913.Right)
			end
		end

		Colorpicker46(t920, t921)
		local Dropdown29 = t912.Dropdown
		local t922 = {
			Name = "Right Arm Material",
			Flag = "ArmsRightMaterial",
			Options = v1002,
			Default = "SmoothPlastic",
			Multi = false
		}

		function t922.Callback(p443)
			t913.Right.Material = p443
			if t913.Right.Enabled then
				f478(t913.Right)
			end
		end

		Dropdown29(t912, t922)
	end

	f475()
	t5:Configs(t44)
	local t923 = v20
	local Create6 = t923.Create
	local t924 = { Name = "Loaded! discord.gg/shieldgang loaded successfully", LifeTime = 5 }
	Create6(t923, t924)
end

f73()
