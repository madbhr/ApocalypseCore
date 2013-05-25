-- Quest : A Blade Fit for A Champion
UPDATE `creature_template` SET `ScriptName` = 'npc_lake_frog' WHERE `creature_template`.`entry` =33211 LIMIT 1 ;
UPDATE `creature_template` SET `npcflag` = `npcflag` | 1, `ScriptName` = 'npc_maiden_of_ashwood_lake' WHERE `creature_template`.`entry` =33220;
-- frog speed from sniff
UPDATE creature_template SET speed_run = 1 WHERE entry = 33211;
UPDATE creature_template SET speed_walk = 1.6 WHERE entry = 33211;