UPDATE `creature_template` SET AIName = "" WHERE entry IN (36725, 36724); 
UPDATE `creature_template` SET `ScriptName` = 'npc_NerubarBroodkeeper' WHERE `entry` = 36725;
UPDATE `creature_template` SET `ScriptName` = 'npc_ServantoftheThrone' WHERE `entry` = 36724;

-- Nerubar Broodkeeper position
UPDATE `creature` SET `position_z` = 35.24 WHERE `guid`=201170;
UPDATE `creature` SET `position_z` = 35.24 WHERE `guid`=201106;
UPDATE `creature` SET `position_z` = 44.57 WHERE `guid`=200949;
UPDATE `creature` SET `position_z` = 44.57 WHERE `guid`=200956;
UPDATE `creature` SET `position_z` = 42.1 WHERE `guid`=200912;
UPDATE `creature` SET `position_z` = 42.1 WHERE `guid`=200934;
UPDATE `creature` SET `position_z` = 37.98 WHERE `guid`=201127;
UPDATE `creature` SET `position_z` = 37.98 WHERE `guid`=200939;

-- Inmunity's trash-icc:
-- nerubar broodkeeper
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|1|4|8|16|128|512|1024|65536|131072|524288|1048576|4194304|8388608|33554432|67108864|134217728 WHERE `entry` IN (36725,38058);
-- servant of the throne
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|1|4|8|16|128|512|1024|65536|131072|524288|1048576|4194304|8388608|33554432|67108864|134217728 WHERE `entry` IN (36724,38057);
