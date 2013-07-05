-- Textos HoR
-- Falta actulizar las id de los loc y las casillas
DELETE FROM `creature_text` WHERE `entry` BETWEEN -1594540 AND -1594430;
INSERT INTO `creature_text` (`entry`,`content_default`,`content_loc8`,`sound`,`TYPE`,`LANGUAGE`,`emote`,`COMMENT`) VALUES
(-1594473, 'Insensata, buscas lo que asesine tiempo atras. Ahora no es mas que un fantasma, un eco lejano en mi mente.', '', 17229,1,0,0, '67234'),
(-1594474, 'No cometere el mismo error, Sylvanas. Esta vez no habra escapatoria. Fallaste al servirme como no muerta. Ahora lo que te queda es el olvido.', '', 17228,1,0,0, '67234'),

-- SCENE - Hall Of Reflection (Extro) - PreEscape
(-1594477, 'Han llegado tus aliados, Jaina, como prometiste. Todos sereis poderosos agentes de la Plaga.', '', 17212,1,0,0, '67234'),
(-1594478, 'No cometere el mismo error, Sylvanas. Esta vez no habra escapatoria. Me servireis en la muerte!', '', 17213,1,0,0, '67234'),
(-1594479, 'Es demasiado poderoso, debemos abandonar este lugar ahora mismo! Mi magia podra inmovilizarlo brevemente! Vamos rapido, heroes!', '', 16644,0,0,1, '67234'),
(-1594480, 'Es demasiado poderoso! Heroes, rapido, venid! Debemos abandonar este lugar ahora mismo! Hare lo que pueda para inmovilizarlo mientras huimos.', '', 17058,0,0,1, '67234'),

-- SCENE - Hall Of Reflection (Extro) - Escape
(-1594481, 'El frio abrazo de la muerte os aguarda!', '', 17221,1,0,0, '67234'),
(-1594482, 'Alzaos esbirros! Que no pasen!', '', 17216,1,0,0, '67234'),
(-1594483, 'Esbirros cojedlos. Traedme sus cadaveres!', '', 17222,1,0,0, '67234'),
(-1594484, 'Sin esperanza...', '!', 17214,1,0,0, '67234'),
(-1594485, 'Todo perdido!', '', 17215,1,0,0, '67234'),
(-1594486, 'No hay escapatoria!', '', 17217,1,0,0, '67234'),
(-1594487, 'Destruire esta barrera. Debeis mantener atras a los no muertos!', '', 16607,1,0,0, '67234'),
(-1594488, 'Ninguna pared detendre a la Reina Alma en Pena! Mantened a los no muertos a raya, heroes! Destruire esta barrera!', '', 17029,1,0,0, '67234'),
+(-1594489, 'Otro muro de hielo! Evitad que los no muertos interrumpan mis conjuros para que pueda derribar este muro!', '', 16608,1,0,0, '67234'),
(-1594490, 'Otra barrera? Sed fuertes, campeones! Derrumbare el muro!', '', 17030,1,0,0, '67234'),
(-1594491, 'Sucumbid al frio de la tumba.', '', 17218,1,0,0, '67234'),
(-1594492, 'Otro final sin salida.', '', 17219,1,0,0, '67234'),
(-1594493, 'Cuanto vais a aguantar?', '', 17220,1,0,0, '67234'),
(-1594494, 'Esta jugando con nosotros. Le enseÃ±are lo que le pasa al hielo cuando se junta con el fuego!', '', 16609,0,0,0, '67234'),
(-1594495, 'Tus muros no pueden detenernos, monstruo. Los destruire todos!', '', 16610,1,0,0, '67234'),
(-1594496, 'Me canso de estos juegos, Arthas! Tus muros no me detendran!', '', 17031,1,0,0, '67234'),
(-1594497, 'No impediras que escapemos, demonio. Acabad con los no muertos mientras derribo esta barrera!', '', 17032,1,0,0, '67234'),
(-1594498, 'Hay una salida ahi delante, vamos!', '', 16645,1,0,0, '67234'),
(-1594499, 'Casi estamos, no os rindais!', '', 16646,1,0,0, '67234'),
(-1594500, 'Hay una salida ahi delante, vamos!', '', 17059,1,0,0, '67234'),
(-1594501, 'Casi estamos, no os rindais!', '', 17060,1,0,0, '67234'),
(-1594502, 'No... No hay salida. No tenemos mas opcion que luchar. Armaos de valor heroes, pues esta sera nuestra ultima batalla!', '', 16647,1,0,0, '67234'),
(-1594503, 'Maldicion, no hay salida! Asi es como acaba. Preparaos heroes, hoy tendra lugar nuestra ultima batalla!', '', 17061,1,0,0, '67234'),
(-1594504, 'No corrais. Sois mios....', '', 17223,1,0,0, '67234'),
(-1594524,'Perdonadme heroes. Debi escuchar a Uther. Tenia que verlo por mi misma, poder mirarle a los ojos una ultima vez. Lo siento.', '','16648','0','0','0','67234'),
(-1594525,'Ahora sabemos que debemos hacer, les dare estas noticias al Rey Varian y al alto seÃ±or Vadin.','','16649','0','0','0','67234'),
(-1594522,'Fuego, fuego!','','16732','1','0','0','67234'),
(-1594523,'A bordo! Ya! La ladera de la montaÃ±a se derrumbara en cualquier momento!','','16733','1','0','0','67234'),
(-1594521,'Estamos a salvo por ahora. Su fuerza se ha multiplicado desde nuestra ultima batalla. Necesitamos un ejercito poderoso para destruir al Rey Exanime, mejor incluso que el que la Horda puede convocar.','','17062','0','0','0','67234'),
(-1594526,'Fuego, fuego!','','16721','1','0','0','67234'),
(-1594527,'Rapido! A bordo! No debemos entretenernos. La ladera de la montaÃ±a se derrumbara en cualquier momento!','','16722','1','0','0','67234'),
(-1594505, 'Soldados de Lordaeron, alzaos ante la llamada de vuestro maestro!', '', 16714,1,0,0, '67234'),
(-1594506, 'El maestro observo su reino, y lo encontro... incompleto. Su juicio fue rapido y despiado. Muerte a todos!', '', 16738,1,0,0, '67234'),

-- FrostWorn General
(-1594519, 'No sois dignos de enfrentaros al Rey Exanime!', '', 16921,1,0,0, '67234'),
(-1594520, 'Maestro, he fracasado...', '', 16922,1,0,0, '67234');
