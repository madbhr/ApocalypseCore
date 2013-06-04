-- Fix Shadowmeld.
DELETE FROM spell_script_names WHERE spell_id = 58984;
INSERT INTO spell_script_names VALUES (58984, 'spell_gen_shadowmeld');

-- Fix Sylvanas Music Box
DELETE FROM spell_script_names WHERE spell_id = 73331;
INSERT INTO spell_script_names VALUES ('73331', 'spell_item_sylvanas_music_box');

-- Fix Glyph of Succubus.
DELETE FROM `spell_script_names` WHERE `spell_id`=6358;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(6358,'spell_warl_seduction');