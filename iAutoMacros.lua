local generalCancels = [[/cancelaura Blessing of Protection
/cancelaura Pterrordax Swoop
/cancelaura Goblin Glider
/cancelaura Gunshoes
/cancelaura Intervene]]
local classSpecificCancels = {
	DEATHKNIGHT = [[/cancelaura Abomination Limb]],
	DEMONHUNTER = [[/cancelaura Glide]],
	DRUID = false,
	HUNTER = [[/cancelaura Aspect of the Turtle]],
	MAGE = [[/cancelaura Ice Block
/cancelaura Invisibility]],
	MONK = false,
	PRIEST = [[/cancelaura Dispersion]],
	PALADIN = [[/cancelaura Divine Shield]],
	ROGUE = false,
	SHAMAN = false,
	WARLOCK = false,
	WARRIOR = [[/cancelaura Spell Reflection
/cancelaura Bladestorm]],
}
local racialMacros = {
	Human = [[/cast Will to Survive]],
	Orc = [[/cast Blood Fury]],
	Dwarf = [[/cast Stoneform]],
	NightElf = [[/cast Shadowmeld]],
	Scourge = [[/cast Will of the Forsaken]],
	Tauren = [[/cast War Stomp]],
	Gnome = [[/cast Escape Artist]],
	Troll = [[/cast Berserking]],
	Goblin = [[/cast Rocket Jump]],
	BloodElf = [[/cast Arcane Torrent]],
	Draenei = [[/cast Gift of the Naaru]],
	Worgen = [[/cast Darkflight]],
	Pandaren = [[/cast Quaking Palm]],
	Nightborne = [[/cast Arcane Pulse]],
	HighmountainTauren = [[/cast Bull Rush]],
	VoidElf = [[/cast Spatial Rift]],
	LightforgedDraenei = [[/cast Light's Judgment]],
	ZandalariTroll = [[/cast Regeneratin']],
	KulTiran = [[/cast Haymaker]],
	DarkIronDwarf = [[/cast Fireblood]],
	Vulpera = [[/cast [@target, help][@player] Bag of Tricks]],
	MagharOrc = [[/cast Ancestral Call]],
	Mechagnome = [[/cast Hyper Organic Light Originator]],
}
--[[
	1 = Kyrian
	2 = Venthyr
	3 = Night Fae
	4 = Necrolord
]]
local covenantSkillsClass = {
	DEATHKNIGHT = {
		{ -- Shackle the Unworthy, Kyrian
			spellID = 315443,
			text = "/cast Shackle the Unworthy"
		},
		{ -- Swarming Mist, Venthyr
			spellID = 311648,
			text = "/cast Swarming Mist"
		},
		{ -- Death's Due, Night Fae
			spellID = 324128,
			text = "/cast Death's Due"
		},
		{ -- Abomination Limb, Necrolord
			spellID = 315443,
			text = "/cast Abomination Limb"
		},
	},
	DEMONHUNTER = {
		{ -- Elysian Decree, Kyrian
			spellID = 306830,
			text = "/cast Elysian Decree"
		},
		{ -- Sinful Brand, Venthyr
			spellID = 317009,
			text = "/cast Sinful Brand"
		},
		{ -- The Hunt, Night Fae
			spellID = 323639,
			text = "/cast The Hunt"
		},
		{ -- Fodder to the Flame, Necrolord
			spellID = 350570,
			text = "/cast Fodder to the Flame"
		},
	},
	DRUID = {
		{ -- Kindred Spirits, Kyrian
			spellID = 326434,
			text = "/cast Kindred Spirits"
		},
		{ -- Ravenous Frenzy, Venthyr
			spellID = 323546,
			text = "/cast Ravenous Frenzy"
		},
		{ -- Convoke the Spirits, Night Fae
			spellID = 323764,
			text = "/cast Convoke the Spirits"
		},
		{ -- Adaptive Swarm, Necrolord
			spellID = 325727,
			text = "/cast Adaptive Swarm"
		},
	},
	HUNTER = {
		{ -- Resonating Arrow, Kyrian
			spellID = 308491,
			text = "/cast Resonating Arrow"
		},
		{ -- Flayed Shot, Venthyr
			spellID = 324149,
			text = "/cast Flayed Shot"
		},
		{ -- Wild Spirits, Night Fae
			spellID = 328231,
			text = "/cast Wild Spirits"
		},
		{ -- Death Chakram, Necrolord
			spellID = 325028,
			text = "/cast Death Chakram"
		},
	},
	MAGE = {
		{ -- Radiant Spark, Kyrian
			spellID = 307443,
			text = "/cast Radiant Spark"
		},
		{ -- Mirrors of Torment, Venthyr
			spellID = 314793,
			text = "/cast Mirrors of Torment"
		},
		{ -- Shifting Power, Night Fae
			spellID = 314791,
			text = "/cast Shifting Power"
		},
		{ -- Deathborne, Necrolord
			spellID = 324220,
			text = "/cast Deathborne"
		},
	},
	MONK = {
		{ -- Weapons of Order, Kyrian
			spellID = 310454,
			text = "/cast Weapons of Order"
		},
		{ -- Fallen Order, Venthyr
			spellID = 326860,
			text = "/cast Fallen Order"
		},
		{ -- Faeline Stomp, Night Fae
			spellID = 327104,
			text = "/cast Faeline Stomp"
		},
		{ -- Bonedust Brew, Necrolord
			spellID = 325216,
			text = "/cast Bonedust Brew"
		},
	},
	PALADIN = {
		{ -- Divine Toll, Kyrian
			spellID = 304971,
			text = "/cast Divine Toll"
		},
		{ -- Ashen Hallow, Venthyr
			spellID = 316958,
			text = "/cast Ashen Hallow"
		},
		{ -- Blessing of Summer, Night Fae
			spellID = 328620,
			text = "/cast Blessing of Summer"
		},
		{ -- Vanquisher's Hammer, Necrolord
			spellID = 328204,
			text = "/cast Vanquisher's Hammer"
		},
	},
	PRIEST = {
		{ -- Boon of the Ascended, Kyrian
			spellID = 325013,
			text = "/cast Boon of the Ascended"
		},
		{ -- Mindgames, Venthyr
			spellID = 323673,
			text = "/cast Mindgames"
		},
		{ -- Fae Guardians, Night Fae
			spellID = 327661,
			text = "/cast Fae Guardians"
		},
		{ -- Unholy Nova, Necrolord
			spellID = 324724,
			text = "/cast Unholy Nova"
		},
	},
	ROGUE = {
		{ -- Echoing Reprimand, Kyrian
			spellID = 323547,
			text = "/cast Echoing Reprimand"
		},
		{ -- Flagellation, Venthyr
			spellID = 323654,
			text = "/cast Flagellation"
		},
		{ -- Sepsis, Night Fae
			spellID = 328305,
			text = "/cast Sepsis"
		},
		{ -- Serrated Bone Spike, Necrolord
			spellID = 328547,
			text = "/cast Serrated Bone Spike"
		},
	},
	SHAMAN = {
		{ -- Vesper Totem, Kyrian
			spellID = 324386,
			text = "/cast Vesper Totem"
		},
		{ -- Chain Harvest, Venthyr
			spellID = 320674,
			text = "/cast Chain Harvest"
		},
		{ -- Fae Transfusion, Night Fae
			spellID = 328923,
			text = "/cast Fae Transfusion"
		},
		{ -- Primordial Wave, Necrolord
			spellID = 326059,
			text = "/cast Primordial Wave"
		},
	},
	WARLOCK = {
		{ -- Scouring Tithe, Kyrian
			spellID = 312321,
			text = "/cast Scouring Tithe"
		},
		{ -- Impending Catastrophe, Venthyr
			spellID = 321792,
			text = "/cast Impending Catastrophe"
		},
		{ -- Soul Rot, Night Fae
			spellID = 325640,
			text = "/cast Soul Rot"
		},
		{ -- Decimating Bolt, Necrolord
			spellID = 325289,
			text = "/cast Decimating Bolt"
		},
	},
	WARRIOR = {
		{ -- Spear of Bastion, Kyrian
			spellID = 307865,
			text = "/cast Spear of Bastion"
		},
		{ -- Condemn, Venthyr
			spellID = 317320,
			text = "/cast Condemn"
		},
		{ -- Ancient Aftershock, Night Fae
			spellID = 325886,
			text = "/cast Ancient Aftershock"
		},
		{ -- Conqueror's Banner, Necrolord
			spellID = 324143,
			text = "/cast Conqueror's Banner"
		},
	},
}
local covenantSkillsGeneral = {
	{ -- 1, Kyrian
		spellID = -177278,
		text = "/use item:177278"
	},
	{ -- 2, Venthyr
		spellID = 300728,
		text = "/cast Door of Shadows"
	},
	{ -- 3, Night Fae
		spellID = 310143,
		text = "/cast Soulshape"
	},
	{ -- 4, Necrolord
		spellID = 324631,
		text = "/cast Fleshcraft"
	},
}
local function setupCovenantMacros(cid)
	cid = cid or C_Covenants.GetActiveCovenantID()
	local _, c = UnitClass('player')
	do -- General
		local macroID = GetMacroIndexByName("_CovenantGeneral")
		if macroID and macroID ~= 0 then
			EditMacro(macroID, nil, nil, string.format("#showtooltip\n%s", covenantSkillsGeneral[cid] and covenantSkillsGeneral[cid].text or ""))
		else
			print('Error editing "_CovenantGeneral" macro, macro not found.')
		end
	end
	do -- Class
		local macroID = GetMacroIndexByName("_CovenantClass")
		if macroID and macroID ~= 0 then
			EditMacro(macroID, nil, nil, string.format("#showtooltip\n%s", covenantSkillsClass[c][cid] and covenantSkillsClass[c][cid].text or ""))
		else
			print('Error creating or editing "_CovenantClass" macro, macro not found.')
		end
	end
end
local addon = CreateFrame('Frame');
addon:SetScript("OnEvent", function(self, event, ...)
	self[event](self, ...)
end)
addon:RegisterEvent('PLAYER_LOGIN')
addon:RegisterEvent('COVENANT_CHOSEN')
function addon:PLAYER_LOGIN()
	do -- Cancelaura macro
		local macroID = GetMacroIndexByName("_CancelAura")
		if macroID and macroID ~= 0 then
			local mEngClass, mClass, mClassID = UnitClass('player')
			local macroText = string.format("%s\r%s", generalCancels, classSpecificCancels[mClass] or "")
			EditMacro(macroID, nil, nil, macroText)
		else
			print('Error creating or editing "_CancelAura" macro, macro not found.')
		end
	end
	do -- Racial macro
		local macroID = GetMacroIndexByName("_Racials")
		if macroID and macroID ~= 0 then
			local _, race = UnitRace('player')
			EditMacro(macroID, nil, nil, racialMacros[race] or "")
		else
			print('Error creating or editing "_Racials" macro, macro not found.')
		end
	end
	setupCovenantMacros()
end
function addon:COVENANT_CHOSEN(id)
	updateStreamIcons()	
end