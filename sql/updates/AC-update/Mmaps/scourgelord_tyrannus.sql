-- Fix boss scourgelord tyrannus
UPDATE creature_template SET InhabitType = InhabitType | 4 WHERE `entry` IN (36658);
