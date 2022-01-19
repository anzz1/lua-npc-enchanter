-- --------------------------------------------------------------------------------------
--	ENCHANTER NPC - 601015
-- --------------------------------------------------------------------------------------
SET
@Entry 		:= 601015,
@Model 		:= 9353, -- Undead Necromancer
@Name 		:= "Beauregard Boneglitter",
@Title 		:= "Enchantments",
@Icon 		:= "Speak",
@GossipMenu := 0,
@MinLevel 	:= 80,
@MaxLevel 	:= 80,
@Faction 	:= 35,
@NPCFlag 	:= 1,
@Scale		:= 1.0,
@Rank		:= 0,
@Type 		:= 7,
@TypeFlags 	:= 0,
@FlagsExtra := 2,
@AIName		:= "PassiveAI",
@Script 	:= "";

-- NPC
DELETE FROM world.creature_template WHERE entry = @Entry;
INSERT INTO world.creature_template (entry, modelid1, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, faction, npcflag, scale, rank, unit_class, unit_flags, unit_flags2, type, type_flags, flags_extra, AiName, ScriptName) VALUES
(@Entry, @Model, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlag, @Scale, @Rank, 1, 768, 2048, @Type, @TypeFlags, @FlagsExtra, @AIName, @Script);

-- NPC EQUIPPED
DELETE FROM world.creature_equip_template WHERE CreatureID=@Entry AND ID=1;
INSERT INTO world.creature_equip_template (CreatureID, ID, ItemID1, ItemID2, ItemID3) VALUES (@Entry, 1, 11343, 0, 0); -- Black/Purple Staff (11343)

-- NPC TEXT
-- DELETE FROM world.npc_text WHERE ID=@Entry;
-- INSERT INTO world.npc_text (ID, text0_0) VALUES (@Entry, 'Good day $N. Beauregard Boneglitter at your service. I offer a vast array of gear enchantments for the aspiring adventurer.');
