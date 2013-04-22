DELETE FROM `trinity_string` WHERE `entry` = 711;
DELETE FROM `trinity_string` WHERE `entry` = 712;
DELETE FROM `trinity_string` WHERE `entry` = 11000;

INSERT INTO trinity_string
   (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`)
VALUES
   (711, 'Queue status for %s (Lvl: %u to %u)\nQueued alliances: %u (Need at least %u more)\nQueued hordes: %u (Need at least %u more)', NULL, NULL, NULL, NULL, NULL, '|cffff0000[BG]|r |cffFF8000%s:|r (Nvl: %u a %u)\nCola en la |cff0000FFAlianza:|r %u (Se necesita al menos %u o más)\nCola en la |cffff0000Horda:|r %u (Se necesita al menos %u o más)', 'Estado de cola para %s (Nvl: %u a %u)\nCola en la alianza: %u (Se necesita al menos %u o más)\nCola en la horda: %u (Se necesita al menos %u o más)', NULL);

INSERT INTO trinity_string
   (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`)
VALUES
   (712, '|cffff0000[BG Queue Announcer]:|r %s -- [%u-%u] A: %u/%u, H: %u/%u|r', NULL, NULL, NULL, NULL, NULL, '|cffff0000[BG]|r |cffFF8000%s:|r (Nvl: %u a %u)\nCola en la |cff0000FFAlianza:|r %u (Se necesita al menos %u o más)\nCola en la |cffff0000Horda:|r %u (Se necesita al menos %u o más)', '|cffff0000[Anuncio de Cola de BG]:|r %s -- [%u-%u] A: %u/%u, H: %u/%u|r', NULL);

INSERT INTO trinity_string
   (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`)
VALUES
   (11000, '|cffFFFF00[|c1f40af20WoW Qx info|cffFFFF00]: |cFFFFFFFF%s|r', NULL, NULL, NULL, NULL, NULL, '|cffFFFF00[|c1f40af20WoW Qx info|cffFFFF00]: |cFFFFFFFF%s|r', '|cffFFFF00[|c1f40af20WoW Qx info|cffFFFF00]: |cFFFFFFFF%s|r', NULL);

