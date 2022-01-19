-- Made by Foereaper
-- Fixed by rochet
-- edit by Clotic Updated with Ranged bows and added some other enchants

local npcid = 601015 -- ID for npc

local T = {
    ["Menu"] = {
        {"Head", 0},
        {"Shoulders", 2},
        {"Chest", 4},
        {"Legs", 6},
        {"Boots", 7},
        {"Bracers", 8},
        {"Gloves", 9},
        {"Cloak", 14},
        {"Main-Hand Weapon", 15},
        {"Two-Handed Weapon", 151},
        {"Off-Hand Weapon", 16},
        {"Shield", 161},
        {"Ranged", 17}
    },
    [0] = {
        -- Headpiece
        {"Arcanum of Burning Mysteries\n(+30 Spell Power, +20 Crit)", 3820, false},
        {"Arcanum of Blissful Mending\n(+30 Spell Power, +10 MP5)", 3819, false},
        {"Arcanum of the Stalward Protector\n(+37 Stamina, +20 Defense)", 3818, false},
        {"Arcanum of Torment\n(+50 Attack Power, +20 Crit)", 3817, false},
        {"Arcanum of the Savage Gladiator\n(+30 Stamina, +25 Resilience)", 3842, false},
        {"Arcanum of Triumph\n(+50 Attack Power, +20 Resilience)", 3795, false},
        {"Arcanum of Dominance\n(+29 Spell Power, +20 Resilience)", 3797, false}
    },
    [2] = {
        -- Shoulders
        {"Inscription of Triumph\n(+40 Attack Power, +15 Resilience)", 3793, false},
        {"Inscription of Dominance\n(+29 Spell Power, +15 Resilience)", 3794, false},
        {"Greater Inscription of the Gladiator\n(+29 Spell Power, +20 Resilience)", 3852, false},
        {"Greater Inscription of the Axe\n(+40 Attack Power, +15 Crit)", 3808, false},
        {"Greater Inscription of the Crag\n(+24 Spell Power, +8 MP5)", 3809, false},
        {"Greater Inscription of the Pinnacle\n(+20 Dodge, +15 Defense)", 3811, false},
        {"Greater Inscription of the Storm\n(+24 Spell Power, +15 Crit)", 3810, false},
        --{"Might of the Scourge\n(+26 Attack Power, +14 Crit)", 2717, false},
        --{"Power of the Scourge\n(+15 Spell Power, +14 Crit)", 2721, false},
        --{"Zandalar Signet of Might\n(+30 Attack Power)", 2606, false}
    },
    [4] = {
        -- Chest
        {"Enchant Chest - Powerful Stats\n(+10 All Stats)", 3832, false},
        {"Enchant Chest - Super Health\n(+275 Health)", 3297, false},
        {"Enchant Chest - Greater Mana Restoration\n(+10 MP5)", 2381, false},
        {"Enchant Chest - Exceptional Resilience\n(+20 Resilience)", 3245, false},
        {"Enchant Chest - Greater Defense\n(+22 Defense)", 1953, false}
    },
    [6] = {
        -- Legs
        {"Earthen Leg Armor\n(+40 Resilience, +28 Stamina)", 3853, false},
        {"Frosthide Leg Armor\n(+55 Stamina, +22 Agility)", 3822, false},
        {"Icescale Leg Armor\n(+75 Attack Power, +12 Crit)", 3823, false},
        {"Brilliant Spellthread\n(+50 Spell Power, +20 Spirit)", 3719, false},
        {"Sapphire Spellthread\n(+50 Spell Power, +30 Stamina)", 3721, false}
    },
    [7] = {
        -- Boots
        {"Greater Assault\n(+32 Attack Power)", 1597, false},
        {"Tuskars Vitality\n(+15 Stamina, Minor Speed)", 3232, false},
        {"Superior Agility\n(+16 Agility)", 983, false},
        {"Greater Spirit\n(+18 Spirit)", 1147, false},
        {"Greater Vitality\n(+7 HP5, +7 MP5)", 3244, false},
        {"Icewalker\n(+12 Hit, +12 Crit)", 3826, false},
        {"Greater Fortitude\n(+22 Stamina)", 1075, false}
    },
    [8] = {
        -- Bracers
        --{"Socket bracers test ", 3717, false},
        {"Major Stamina\n(+40 Stamina)", 3850, false},
        {"Superior Spellpower\n(+30 Spell Power)", 2332, false},
        {"Greater Assault\n(+50 Attack Power)", 3845, false},
        {"Major Spirit\n(+18 Spirit)", 1147, false},
        {"Expertise\n(+15 Expertise)", 3231, false},
        {"Greater Stats\n(+6 All Stats)", 2661, false},
        {"Exceptional Intellect\n(+16 Intellect)", 1119, false}

    },
    [9] = {
        -- Gloves
        --{"Socket gloves", 3723, false},
        {"Riding Skill\n(+2% Mount Speed)", 930, false},
        {"Greater Blasting\n(+16 Crit)", 3249, false},
        {"Armsman\n(+2% Threat, +10 Parry)", 3253, false},
        {"Crusher\n(+44 Attack Power)", 1603, false},
        {"Agility\n(+20 Agility)", 3222, false},
        {"Precision\n(+20 Hit)", 3234, false},
        {"Expertise\n(+15 Expertise)", 3231, false},
        {"Exceptional Spellpower\n(+28 Spell Power)", 3246, false}

    },
    [14] = {
        -- Cloak
        {"Shadow Armor\n(+10 Agility, +5 Stealth)", 3256, false},
        {"Wisdom\n(+10 Spirit, -2% Threat)", 3296, false},
        {"Titan Weave\n(+16 Defense)", 1951, false},
        {"Greater Speed\n(+23 Haste)", 3831, false},
        {"Mighty Armor\n(+225 Armor)", 3294, false},
        {"Major Agility\n(+22 Agility)", 1099, false},
        {"Spell Piercing\n(+35 Spell Penetration)", 3243, false}
    },
    [15] = {
        -- Main Hand
        {"Titan Guard\n(+50 Stamina)", 3851, false},
        {"Accuracy\n(+25 Hit, +25 Crit)", 3788, false},
        {"Mighty Spellpower\n(+63 Spell Power)", 3834, false},
        {"Superior Potency\n(+65 Attack Power)", 3833, false},
        {"Exceptional Agility\n(+26 Agility)", 1103, false},
        {"Exceptional Spirit\n(+45 Spirit)", 3844, false},
        {"Crusader", 1900, false},
        {"Berserking", 3789, false},
        {"Black Magic", 3790, false},
        {"Blood Draining", 3870, false},
        {"Blade Ward", 3869, false},
        {"Ice Breaker", 3239, false},
        {"Lifeward", 3241, false},
        {"Executioner", 3225, false},
        {"Mongoose", 2673, false},
        -- Two-Handed
        {"Massacre\n(+110 Attack Power)", 3827, true},
        {"Scourgebane\n(+140 Attack Power vs Undead)", 3247, true},
        {"Greater Spellpower\n(+81 Spell Power)", 3854, true},
        {"Giant Slayer\n ", 3251, true},
    },
    [16] = {
        -- Offhand
        {"Titan Guard\n(+50 Stamina)", 3851, false},
        {"Accuracy\n(+25 Hit, +25 Crit)", 3788, false},
        {"Mighty Spellpower\n(+63 Spell Power)", 3834, false},
        {"Superior Potency\n(+65 Attack Power)", 3833, false},
        {"Exceptional Agility\n(+26 Agility)", 1103, false},
        {"Exceptional Spirit\n(+45 Spirit)", 3844, false},
        {"Crusader", 1900, false},
        {"Berserking", 3789, false},
        {"Black Magic", 3790, false},
        {"Blood Draining", 3870, false},
        {"Blade Ward", 3869, false},
        {"Ice Breaker", 3239, false},
        {"Lifeward", 3241, false},
        {"Executioner", 3225, false},
        {"Mongoose", 2673, false},
        -- Shields
        {"Defense\n(+20 Defense)", 1952, true},
        {"Greater Intellect\n(+25 Intellect)", 1128, true},
        {"Shield Block\n(+15 Shield Block)", 2655, true},
        {"Resilience\n(+12 Resilience)", 3229, true},
        {"Major Stamina\n(+18 Stamina)", 1071, true},
        {"Tough Shield\n(+36 Block)", 2653, true},

    },
    [17] = {
		-- Ranged
        {"Diamond-cut Refractor Scope\n(+15 Damage)", 3843, false},
        {"Sun Scope\n(+40 Ranged Haste)", 3607, false},
        {"Heartseeker Scope\n(+40 Ranged Crit)", 3608, false},
        -- {"Khorium Scope", 2723, false}

    }
}

require("GossipTextExtension")

local RT = {}
do
	for _, v in ipairs(T["Menu"]) do
		RT[v[2]] = v[1]
	end
end

local pVar = {}

function Enchanter(event, player, unit)
    pVar[player:GetName()] = nil
    
    player:GossipSetText("Good day, "..player:GetName()..". Beauregard Boneglitter at your service. I offer a vast array of gear enchantments for the aspiring adventurer.");

    for _, v in ipairs(T["Menu"]) do
        player:GossipMenuAddItem(3, v[1], 0, v[2])
    end
    player:GossipSendMenu(0x7FFFFFFF, unit)
end

function EnchanterSelect(event, player, unit, sender, intid, code)
    if (intid < 500) then
    	player:GossipSetText("Select a "..(RT[intid] or "").." enchant")
        local ID = intid
        local f
        if (intid == 161 or intid == 151) then
            ID = math.floor(intid / 10)
            f = true
        end
        pVar[player:GetName()] = intid
        if (T[ID]) then
            for i, v in ipairs(T[ID]) do
                if ((not f and not v[3]) or (f and v[3])) then
                    player:GossipMenuAddItem(3, v[1], 0, v[2])
                end
            end
        end
        player:GossipMenuAddItem(7, "[Back]\n ", 0, 500)
        player:GossipSendMenu(0x7FFFFFFF, unit)
    elseif (intid == 500) then
        Enchanter(event, player, unit)
    elseif (intid >= 900) then
        local ID = pVar[player:GetName()]
        if (ID == 161 or ID == 151) then
            ID = math.floor(ID / 10)
        end
        for k, v in pairs(T[ID]) do
            if v[2] == intid then
                local item = player:GetEquippedItemBySlot(ID)
                if item then
                    if v[3] then
                        local WType = item:GetSubClass()
                        if pVar[player:GetName()] == 151 then
                            if (WType == 1 or WType == 5 or WType == 6 or WType == 8 or WType == 10) then
                                item:ClearEnchantment(0, 0)
                                item:SetEnchantment(intid, 0, 0)
                                unit:CastSpell(player, 12512)
                                player:CastSpell(player, 36937)
                            else
                                player:SendAreaTriggerMessage("You do not have a Two-Handed Weapon equipped!")
                            end
                        elseif pVar[player:GetName()] == 161 then
                            if (WType == 6) then
                                item:ClearEnchantment(0, 0)
                                item:SetEnchantment(intid, 0, 0)
                                unit:CastSpell(player, 12512)
                                player:CastSpell(player, 36937)
                            else
                                player:SendAreaTriggerMessage("You do not have a Shield equipped!")
                            end
                        elseif pVar[player:GetName()] == 17 then
                            if (WType == 2 or WType == 3 or Wtype == 18) then
                                item:ClearEnchantment(0, 0)
                                item:SetEnchantment(intid, 0, 0)
                                unit:CastSpell(player, 12512)
                        		player:CastSpell(player, 36937)
                            else
                                player:SendAreaTriggerMessage("You do not have a Ranged equipped!")
                            end
                        end
                    else
                        item:ClearEnchantment(0, 0)
                        item:SetEnchantment(intid, 0, 0)
                        unit:CastSpell(player, 12512)
                        player:CastSpell(player, 36937)
                    end
                else
                    player:SendAreaTriggerMessage("You have no item to enchant in the selected slot!")
                end
            end
        end
        EnchanterSelect(event, player, unit, sender, pVar[player:GetName()], nil)
    end
end

RegisterCreatureGossipEvent(npcid, 1, Enchanter)
RegisterCreatureGossipEvent(npcid, 2, EnchanterSelect)
