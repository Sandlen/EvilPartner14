-- Create Date : 03.01.2024 23:25:47

-- role
ROLS = {
	{name = "Танк", value = "tank"},
	{name = "Демагер", value = "dps"},
	{name = "Лекарь", value = "healer"}
};
ROLE_TEXT_SELECTED = ""
ROLE_VALUE_SELECTED = "";

-- class
CLASSES = {
	{name = "Воин", value = "warrior"},
	{name = "Паладин", value = "paladin"},
	{name = "Охотник", value = "hunter"},
	{name = "Разбойник", value = "rogue"},
	{name = "Жрец", value = "priest"},
	{name = "Шаман", value = "shaman"},
	{name = "Маг", value = "mage"},
	{name = "Чернокнижник", value = "warlock"},
	{name = "Друид", value = "druid"}
};
CLASS_TEXT_SELECTED = ""
CLASS_VALUE_SELECTED = "";

-- focus
MARKS = {
	{name = "Звезда", value = "star"},
	{name = "Круг", value = "circle"},
	{name = "Ромб", value = "diamond"},
	{name = "Треугольник", value = "triangle"},
	{name = "Луна", value = "moon"},
	{name = "Квадрат", value = "square"},
	{name = "Крест", value = "cross"},
	{name = "Череп", value = "skull"},
};
MARK_TEXT_SELECTED = ""
MARK_VALUE_SELECTED = "";

-- blessing
BLESSINGS = {
	{name = "Каска", value = "kings"},
	{name = "Кулак", value = "might"},
	{name = "Лайт", value = "light"},
	{name = "МП5", value = "wisdom"},
	{name = "Сальва", value = "salva"},
};
BLESSING_TEXT_SELECTED = ""
BLESSING_VALUE_SELECTED = "";

-- aura
AURAS = {
	{name = "Щит", value = "devo"},
	{name = "Ретри", value = "retr"},
	{name = "Сосред", value = "conc"},
	{name = "Святости", value = "sanc"},
	{name = "от тёмной", value = "shadow"},
	{name = "от льда", value = "frost"},
	{name = "от огня", value = "fire"},
};
AURA_TEXT_SELECTED = ""
AURA_VALUE_SELECTED = "";

-- air totem
ATOTEMS = {
	{name = "Лёгкости", value = "grac"},
	{name = "от природы", value = "natres"},
	{name = "Неистов", value = "windf"},
	{name = "Стены вет", value = "windw"},
	{name = "Безветрия", value = "tranq"},
};
ATOTEM_TEXT_SELECTED = ""
ATOTEM_VALUE_SELECTED = "";

-- earth totem
ETOTEMS = {
	{name = "Оков", value = "earthb"},
	{name = "Когтя", value = "stonec"},
	{name = "Кожи", value = "stones"},
	{name = "Силы", value = "strofe"},
	{name = "Трепета", value = "tremor"},
};
ETOTEM_TEXT_SELECTED = ""
ETOTEM_VALUE_SELECTED = "";

-- fire totem
FTOTEMS = {
	{name = "Кольцоогня", value = "firen"},
	{name = "Магмы", value = "magma"},
	{name = "Опаляющ", value = "sear"},
	{name = "Язык плам", value = "flame"},
	{name = "от льда", value = "frostr"},
};
FTOTEM_TEXT_SELECTED = ""
FTOTEM_VALUE_SELECTED = "";

-- water totem
WTOTEMS = {
	{name = "от огня", value = "fireres"},
	{name = "от болезн", value = "disclean"},
	{name = "Исцеляющ", value = "healstr"},
	{name = "Ист маны", value = "manaspr"},
	{name = "Противояд", value = "poisoncl"},
};
WTOTEM_TEXT_SELECTED = ""
WTOTEM_VALUE_SELECTED = "";

-- drop down
-- class
function ClassesnMenu_Build()
	for i, CLASS in ipairs(CLASSES) do		
		local info = {};
		info.text = CLASS.name;
		info.arg1 = CLASS.name;
		info.arg2 = CLASS.value;
		info.notCheckable = true;
		info.func = ClassSelect;

		UIDropDownMenu_AddButton(info);
	  end

	UIDropDownMenu_SetText(ClassesSet, (CLASS_TEXT_SELECTED ~= "" and CLASS_TEXT_SELECTED or "Class"));
end

function ClassSelect(self, name, value, checked) 
	CLASS_TEXT_SELECTED = name;
	CLASS_VALUE_SELECTED = value;
	ClassesSet:SetText(CLASS_TEXT_SELECTED);
end

-- role
function RoleMenu_Build()
	for i, ROLE in ipairs(ROLS) do		
		local info = {};
		info.text = ROLE.name;
		info.arg1 = ROLE.name;
		info.arg2 = ROLE.value;
		info.notCheckable = true;
		info.func = RoleSelect;

		UIDropDownMenu_AddButton(info);
	  end

	UIDropDownMenu_SetText(RoleSet, (ROLE_TEXT_SELECTED ~= "" and ROLE_TEXT_SELECTED or "Role"));
end

function RoleSelect(self, name, value, checked) 
	ROLE_TEXT_SELECTED = name;
	ROLE_VALUE_SELECTED = value;
	RoleSet:SetText(ROLE_TEXT_SELECTED);
end

-- mark
function MarksMenu_Build()
	for i, MARK in ipairs(MARKS) do		
		local info = {};
		info.text = MARK.name;
		info.arg1 = MARK.name;
		info.arg2 = MARK.value;
		info.notCheckable = true;
		info.func = MarkSelect;

		UIDropDownMenu_AddButton(info);
	  end

	UIDropDownMenu_SetText(MarksSet, (MARK_TEXT_SELECTED ~= "" and MARK_TEXT_SELECTED or "Marks"));
end

function MarkSelect(self, name, value, checked) 
	MARK_TEXT_SELECTED = name;
	MARK_VALUE_SELECTED = value;
	MarksSet:SetText(MARK_TEXT_SELECTED);
end

-- bless
function BlessingMenu_Build()
	for i, BLESSING in ipairs(BLESSINGS) do		
		local info = {};
		info.text = BLESSING.name;
		info.arg1 = BLESSING.name;
		info.arg2 = BLESSING.value;
		info.notCheckable = true;
		info.func = BlessingSelect;

		UIDropDownMenu_AddButton(info);
	  end

	UIDropDownMenu_SetText(BlessingSet, (BLESSING_TEXT_SELECTED ~= "" and BLESSING_TEXT_SELECTED or "Bless"));
end

function BlessingSelect(self, name, value, checked) 
	BLESSING_TEXT_SELECTED = name;
	BLESSING_VALUE_SELECTED = value;
	BlessingSet:SetText(BLESSING_TEXT_SELECTED);
end

-- aura
function AuraMenu_Build()
	for i, AURA in ipairs(AURAS) do		
		local info = {};
		info.text = AURA.name;
		info.arg1 = AURA.name;
		info.arg2 = AURA.value;
		info.notCheckable = true;
		info.func = AuraSelect;

		UIDropDownMenu_AddButton(info);
	  end

	UIDropDownMenu_SetText(AuraSet, (AURA_TEXT_SELECTED ~= "" and AURA_TEXT_SELECTED or "Aura"));
end

function AuraSelect(self, name, value, checked) 
	AURA_TEXT_SELECTED = name;
	AURA_VALUE_SELECTED = value;
	AuraSet:SetText(AURA_TEXT_SELECTED);
end

-- air totem
function AtotemMenu_Build()
	for i, ATOTEM in ipairs(ATOTEMS) do		
		local info = {};
		info.text = ATOTEM.name;
		info.arg1 = ATOTEM.name;
		info.arg2 = ATOTEM.value;
		info.notCheckable = true;
		info.func = AtotemSelect;

		UIDropDownMenu_AddButton(info);
	  end

	UIDropDownMenu_SetText(AtotemSet, (ATOTEM_TEXT_SELECTED ~= "" and ATOTEM_TEXT_SELECTED or "Air"));
end

function AtotemSelect(self, name, value, checked) 
	ATOTEM_TEXT_SELECTED = name;
	ATOTEM_VALUE_SELECTED = value;
	AtotemSet:SetText(ATOTEM_TEXT_SELECTED);
end

-- earth totem
function EtotemMenu_Build()
	for i, ETOTEM in ipairs(ETOTEMS) do		
		local info = {};
		info.text = ETOTEM.name;
		info.arg1 = ETOTEM.name;
		info.arg2 = ETOTEM.value;
		info.notCheckable = true;
		info.func = EtotemSelect;

		UIDropDownMenu_AddButton(info);
	  end

	UIDropDownMenu_SetText(EtotemSet, (ETOTEM_TEXT_SELECTED ~= "" and ETOTEM_TEXT_SELECTED or "Earth"));
end

function EtotemSelect(self, name, value, checked) 
	ETOTEM_TEXT_SELECTED = name;
	ETOTEM_VALUE_SELECTED = value;
	EtotemSet:SetText(ETOTEM_TEXT_SELECTED);
end

-- fire totem
function FtotemMenu_Build()
	for i, FTOTEM in ipairs(FTOTEMS) do		
		local info = {};
		info.text = FTOTEM.name;
		info.arg1 = FTOTEM.name;
		info.arg2 = FTOTEM.value;
		info.notCheckable = true;
		info.func = FtotemSelect;

		UIDropDownMenu_AddButton(info);
	  end

	UIDropDownMenu_SetText(FtotemSet, (FTOTEM_TEXT_SELECTED ~= "" and FTOTEM_TEXT_SELECTED or "Fire"));
end

function FtotemSelect(self, name, value, checked) 
	FTOTEM_TEXT_SELECTED = name;
	FTOTEM_VALUE_SELECTED = value;
	FtotemSet:SetText(FTOTEM_TEXT_SELECTED);
end

-- water totem
function WtotemMenu_Build()
	for i, WTOTEM in ipairs(WTOTEMS) do		
		local info = {};
		info.text = WTOTEM.name;
		info.arg1 = WTOTEM.name;
		info.arg2 = WTOTEM.value;
		info.notCheckable = true;
		info.func = WtotemSelect;

		UIDropDownMenu_AddButton(info);
	  end

	UIDropDownMenu_SetText(WtotemSet, (WTOTEM_TEXT_SELECTED ~= "" and WTOTEM_TEXT_SELECTED or "Water"));
end

function WtotemSelect(self, name, value, checked) 
	WTOTEM_TEXT_SELECTED = name;
	WTOTEM_VALUE_SELECTED = value;
	WtotemSet:SetText(WTOTEM_TEXT_SELECTED);
end
-- drop down

function AcceptPal()
    if UnitIsPlayer("target") then
        
        local _, targetClass = UnitClass("target")
        if targetClass ~= "PALADIN" then
            DEFAULT_CHAT_FRAME:AddMessage("Целью должен быть паладин")
            return
        end
        
        if BLESSING_VALUE_SELECTED == "" then
            SendChatMessage(".partybot chblessing kings")
            DEFAULT_CHAT_FRAME:AddMessage("Не выбрано благословление по умолчанию каска.")
        else
            SendChatMessage(".partybot chblessing " .. BLESSING_VALUE_SELECTED)
        end
        
        if AURA_VALUE_SELECTED == "" then
            SendChatMessage(".partybot chaura fire")
            DEFAULT_CHAT_FRAME:AddMessage("Не выбрана аура по умолчанию от огня.")
        else
            SendChatMessage(".partybot chaura " .. AURA_VALUE_SELECTED)
        end
    else
        DEFAULT_CHAT_FRAME:AddMessage("Не выбрана Цель")
    end
end

function AcceptSham()
    if UnitIsPlayer("target") then
        
        local _, targetClass = UnitClass("target")
        if targetClass ~= "SHAMAN" then
            DEFAULT_CHAT_FRAME:AddMessage("Целью должен быть шаман")
            return
        end

        if ATOTEM_VALUE_SELECTED == "" then
            SendChatMessage(".partybot chtotem air grac")
            DEFAULT_CHAT_FRAME:AddMessage("Не выбран тотем воздуха по умолчанию легкости воздуха.")
        else
            SendChatMessage(".partybot chtotem air " .. ATOTEM_VALUE_SELECTED)
        end
        
        if ETOTEM_VALUE_SELECTED == "" then
            SendChatMessage(".partybot chtotem earth strofe")
            DEFAULT_CHAT_FRAME:AddMessage("Не выбран тотем земли по умолчанию силы земли.")
        else
            SendChatMessage(".partybot chtotem earth " .. ETOTEM_VALUE_SELECTED)
        end
        
        if FTOTEM_VALUE_SELECTED == "" then
            SendChatMessage(".partybot chtotem fire sear")
            DEFAULT_CHAT_FRAME:AddMessage("Не выбран тотем огня по умолчанию опаляющий.")
        else
            SendChatMessage(".partybot chtotem fire " .. FTOTEM_VALUE_SELECTED)
        end
        
        if WTOTEM_VALUE_SELECTED == "" then
            SendChatMessage(".partybot chtotem water healstr")
            DEFAULT_CHAT_FRAME:AddMessage("Не выбран тотем воды по умолчанию исцеляющего потока.")
        else
            SendChatMessage(".partybot chtotem water " .. WTOTEM_VALUE_SELECTED)
        end
    else
        DEFAULT_CHAT_FRAME:AddMessage("Не выбрана Цель")
    end
end

function PartyBotAddBot()
	if (CLASS_VALUE_SELECTED == "" and ROLE_VALUE_SELECTED == "") then
		SendChatMessage(".partybot add warrior dps");
		DEFAULT_CHAT_FRAME:AddMessage("Не выбран класс или роль по умолчанию воин демагер.");
	else
		SendChatMessage(".partybot add " .. CLASS_VALUE_SELECTED .. " " .. ROLE_VALUE_SELECTED);
		--DEFAULT_CHAT_FRAME:AddMessage("Вспомогательный игрок добавлен.");
	end
end

function PartyBotRemove()
	if UnitIsPlayer("target") then
	   SendChatMessage(".partybot remove");
	else
       DEFAULT_CHAT_FRAME:AddMessage("Не выбрана Цель");
	end   	
end
-------
EvilPartner14DB = EvilPartner14DB or { live = false }
SLASH_EPLIVE1 = "/eplive"
SlashCmdList["EPLIVE"] = function(msg)
    if msg == "on" then
        EvilPartner14DB.live = true	
		ReloadUI();
		--print("Включено")
    elseif msg == "off" then
        EvilPartner14DB.live = false
		ReloadUI();
		--print("Отключено")
    elseif msg == "st" then
        print("Текущее состояние:", EvilPartner14DB.live and "ВКЛ" or "ВЫКЛ")
    else
        print("Использование: /eplive [on|off|st]")
    end
end

local function UpdateStatusIndicator()
    local textFrame = getglobal("EvilPartnerStatusFrame")
    if textFrame then
        if EvilPartner14DB.live then
            textFrame:Show() 
        else
            textFrame:Hide()
        end
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function()
    UpdateStatusIndicator()
end)

--[[
   --==test==--
function PartyBotClone()
	if (EvilPartner14DB.live == true) then
		print("Включено")
	else
		print("Отключено")
	end	
end
]]
-------
function PartyBotFreeLoot()
	SetLootMethod("freeforall");
end

function PartyBotChangeRole()
    if UnitIsPlayer("target") then
	   if ROLE_VALUE_SELECTED == "tank" then
	      SendChatMessage(".partybot setrole tank");	
	   end
	   if ROLE_VALUE_SELECTED == "healer" then
	      SendChatMessage(".partybot setrole healer");
	   end
	   if ROLE_VALUE_SELECTED == "dps" then
	      SendChatMessage(".partybot setrole dps");
	   end
	   if ROLE_VALUE_SELECTED == "" then
	      DEFAULT_CHAT_FRAME:AddMessage("Не выбрана Роль");	    
	   end
    else
        DEFAULT_CHAT_FRAME:AddMessage("Не выбрана Цель");
    end
end

function PartyBotRaid()
	ConvertToRaid();
end

function PartyBotClone()
	if EvilPartner14DB.live then
		local s,m,c = SendChatMessage, ".partybot clone"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot clone");
		--DEFAULT_CHAT_FRAME:AddMessage("Вспомогательный игрок добавлен.");
	end	
end

function PartyBotLeave()
	LeaveParty();
end

function PartyBotUseAltar()
	if EvilPartner14DB.live then
		local s,m,c = SendChatMessage, ".partybot usealtar"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot usealtar");
	end	
end

function PartyBotFocusAdd()
	SendChatMessage(".partybot focusmark " .. MARK_VALUE_SELECTED);
end

function PartyBotClearFocus()
	SendChatMessage(".partybot clearmarks");
end

function PartyBotControlsSelf()
	if EvilPartner14DB.live then
		local s,m,c = SendChatMessage, ".partybot controls self"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot controls self");
	end	
end

function PartyBotControlsAll()
	if EvilPartner14DB.live then
		local s,m,c = SendChatMessage, ".partybot controls all"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot controls all");
	end	
end

function PartyBotPause()
    if UnitIsPlayer("target") then
        if EvilPartner14DB.live then
            local s,m,c = SendChatMessage, ".partybot pause"
            if UnitInRaid("player") then 
                c = "RAID"
            elseif UnitExists("party1") then 
                c = "PARTY" 
            end
            s(m, c)
        else
            SendChatMessage(".partybot pause")
        end
    else
        if EvilPartner14DB.live then
            local s,m,c = SendChatMessage, ".partybot pause all"
            if UnitInRaid("player") then 
                c = "RAID"
            elseif UnitExists("party1") then 
                c = "PARTY" 
            end
            s(m, c)
        else
            SendChatMessage(".partybot pause all")
        end
    end
end

function PartyBotUnPause()
    if UnitIsPlayer("target") then
        if EvilPartner14DB.live then
            local s,m,c = SendChatMessage, ".partybot unpause"
            if UnitInRaid("player") then 
                c = "RAID"
            elseif UnitExists("party1") then 
                c = "PARTY" 
            end
            s(m, c)
        else
            SendChatMessage(".partybot unpause")
        end
    else
        if EvilPartner14DB.live then
            local s,m,c = SendChatMessage, ".partybot unpause all"
            if UnitInRaid("player") then 
                c = "RAID"
            elseif UnitExists("party1") then 
                c = "PARTY" 
            end
            s(m, c)
        else
            SendChatMessage(".partybot unpause all")
        end
    end
end

function PartyBotItl()
	SendChatMessage(".itl");
end

function PartyBotChLead()
	if EvilPartner14DB.live then
		local s,m,c = SendChatMessage, ".partybot chleader"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot chleader");
	end	
end

function PartyBotStay()
	if EvilPartner14DB.live then
		local s,m,c = SendChatMessage, ".partybot stay"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot stay");
	end	
end

function PartyBotMove()
	if EvilPartner14DB.live then
		local s,m,c = SendChatMessage, ".partybot move"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot move");
	end	
end

function PartyBotAOE()
	if EvilPartner14DB.live then
		local s,m,c = SendChatMessage, ".partybot aoe"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot aoe");
	end	
end

function PartyBotComeToMe()
	if EvilPartner14DB.live then
		local s,m,c = SendChatMessage, ".partybot cometome"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot cometome");
	end	
end

function PartyBotCloseFrame()
	evilFrame:Hide();
end

function PartyBotPauseDPS()
	if EvilPartner14DB.live then
		local s,m,c = SendChatMessage, ".partybot pause dps"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot pause dps");
	end	
end

function PartyBotPauseHeal()
	if EvilPartner14DB.live then
		local s,m,c = SendChatMessage, ".partybot pause healer"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot pause healer");
	end	
end

function PartyBotHold()
	if EvilPartner14DB.live then
		local s,m,c = SendChatMessage, ".partybot pause 18000"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot pause 18000");
		--DEFAULT_CHAT_FRAME:AddMessage("5 часов до выхода из игры вспомогательного игрока");
		--UninviteFromParty("target")
	end	
end

function ComeToMeHeal()
	if EvilPartner14DB.live then
		local s,m,c = SendChatMessage, ".partybot cometome healer"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot cometome healer");
	end	
end

function ComeToMeDPS()
	if EvilPartner14DB.live then
		local s,m,c = SendChatMessage, ".partybot cometome dps"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot cometome dps");
	end	
end

function ComeToMeTank()
	if EvilPartner14DB.live then
		local s,m,c = SendChatMessage, ".partybot cometome tank"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot cometome tank");
	end	
end

--more buttons
function PartyBotResetInstances()
	ResetInstances();
end

function PartyBotReloadUI()
	ReloadUI();
end

function PartyBotDeleteGray()
	ClearCursor()local g,i,j,s,a,b=gsub;
	for i=0,4 do for j=1,GetContainerNumSlots(i)do s=GetContainerItemLink(i,j)
		if(s)then a,b,s=GetItemInfo(g(g(s,".*\124H",""),"\124h.*",""))if(s==0)
			then PickupContainerItem(i,j)DeleteCursorItem()end;end;end;end
end

function PartyBotPlayed()
	RequestTimePlayed()
end

function PartyBotRoll()
	RandomRoll(1,100)
end

function PartyBotFPS()	
	ToggleFramerate();
end

--commands
--CastSpellByName("Healing Touch(Rank 1)");
--DoReadyCheck()
--ToggleFramerate()
--Logout()
--UninviteUnit()

-- minimap button
local evilFrameShown = true -- show frame by default
local evilButtonPosition = 0

function evilButtonFrame_OnClick()
	evilButtonFrame_Toggle();
end

function evilButtonFrame_Init()
    -- show frame by default
	if(evilFrameShown) then
		evilFrame:Show();
	else
		evilFrame:Hide();
	end
end

function evilButtonFrame_Toggle()
	if(evilFrame:IsVisible()) then
		evilFrame:Hide();
		evilFrameShown = false;
	else
		evilFrame:Show();
		evilFrameShown = true;
	end
	evilButtonFrame_Init();
end
--[[
function evilButtonFrame_OnEnter()
    GameTooltip:SetOwner(this, "ANCHOR_LEFT");
    GameTooltip:SetText("vmangos bot command, \n click to open/close, \n right mouse to drag me");
    GameTooltip:Show();
end
]]
function evilButtonFrame_UpdatePosition()
	evilButtonFrame:SetPoint(
		"TOPLEFT",
		"Minimap",
		"TOPLEFT",
		54 - (78 * cos(evilButtonPosition)),
		(78 * sin(evilButtonPosition)) - 55);
	evilButtonFrame_Init();
end

-- Thanks to Yatlas for this code
function evilButtonFrame_BeingDragged()
    -- Thanks to Gello for this code
    local xpos,ypos = GetCursorPosition() 
    local xmin,ymin = Minimap:GetLeft(), Minimap:GetBottom() 

    xpos = xmin-xpos/UIParent:GetScale()+70 
    ypos = ypos/UIParent:GetScale()-ymin-70

    evilButtonFrame_SetPosition(math.deg(math.atan2(ypos,xpos)));
end

function evilButtonFrame_SetPosition(v)
    if(v < 0) then
        v = v + 360;
    end

    evilButtonPosition = v;
    evilButtonFrame_UpdatePosition();
end
-------
function PartyBotMore()
	EvilPartner_OnClick();
end

function EvilPartner_OnClick()
	EvilPartner_Toogle();
end

function EvilPartner_Toogle()	
	if(EvilFrameMore:IsVisible()) then
		EvilFrameMore:Hide();
		EvilFrameMoreShown = false;
	else
		EvilFrameMore:Show();
		EvilFrameMoreShown = true;
	end	
end
-------
function PartyBotPS()
	EvilPartnerPS_OnClick();
end

function EvilPartnerPS_OnClick()
	EvilPartnerPS_Toogle();
end

function EvilPartnerPS_Toogle()	
	if(EvilFramePS:IsVisible()) then
		EvilFramePS:Hide();
		EvilFramePSShown = false;
	else
		EvilFramePS:Show();
		EvilFramePSShown = true;
	end	
end