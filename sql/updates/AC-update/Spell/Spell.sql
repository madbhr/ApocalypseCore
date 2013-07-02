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

-- Blessing of Sanctuary vs Vigilance
DELETE FROM `spell_dbc` WHERE `id` = 20912;
INSERT INTO `spell_dbc` (`Id`,`CastingTimeIndex`,`DurationIndex`,`RangeIndex`,`Effect1`,`EffectBasePoints1`,`EffectImplicitTargetA1`,`EffectApplyAuraName1`,`EffectMiscValue1`,`SpellFamilyName`,`Comment`) VALUES
(20912,1,21,1,6,-3,1,87,127,10,'Blessing of Sanctuary Helper');

UPDATE `spell_group` SET `spell_id` = 68066 WHERE `id` = 1091 and `spell_id` = 47930;
UPDATE `spell_group` SET `spell_id` = 20912 WHERE `id` = 1092 and `spell_id` = 20911;

-- spell_warl_shadow_bite
DELETE FROM spell_script_names WHERE spell_id IN (-54049,54049,54050,54051,54052,54053);
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES (-54049, 'spell_warl_shadow_bite');

-- spell_dk_raise_dead
DELETE FROM `spell_script_names` WHERE `spell_id` = -46584;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(-46584, "spell_dk_raise_dead");
