-- ----------------------
--       TEXTOS
-- ----------------------
-- Aqui hubo que arreglar las tildes y demas
SET @TIRION       := 34996;
SET @THRALL       := 34994;
SET @GARROSH      := 34995;
SET @VARIAN       := 34990;
SET @JAINA        := 34992;

SET @EADRIC       := 35119;
SET @PALETRESS    := 34928;
SET @BLACK_KNIGHT := 35451;

SET @SCRIPT_TEXTS_ID := -1999900;

-- TEXTOS DEL PUBLICO Y VARIOS
DELETE FROM `script_texts` WHERE `entry` <= @SCRIPT_TEXTS_ID AND `entry` >= @SCRIPT_TEXTS_ID-24;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,@SCRIPT_TEXTS_ID-00, 'El publico anima a %s.',15882,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-01, 'Los humanos de Ventormenta animan a %s.',13838,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-02, 'Los orcos de Orgrimmar animan a %s.',13839,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-03, 'Los enanos de Forjaz animan a %s.',13838,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-05, 'Los no-muertos de Entranas animan a %s.',13839,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-04, 'Los elfos la noche de Darnassus animan a %s.',13838,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-06, 'Los tauren de Cima del Trueno animan a %s.',13839,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-07, 'Los gnomos de Gnomeregan animan a %s.',13838,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-08, 'Los trol de Sen\'jin animan a %s.',13839,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-10, 'Los elfos de la sangre de Lunargenta animan a %s.',13839,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-11, 'Los draenei de Exodar animan a %s.',13838,2,0,1, 'ToC5 Cheers'),
(0,@SCRIPT_TEXTS_ID-12, '%s comienza a lanzar Pesadilla Lucida!',0,3,0,0, 'Paletress - Memory warning.'),
(0,@SCRIPT_TEXTS_ID-13, '%s comienza a lanzar Martillo del Honrado sobre $N.',0,3,0,0, 'Eadric - Combat - Warning - Hammer'),
(0,@SCRIPT_TEXTS_ID-20, '$N se ha alzado hasta el rango de $Gcampeon:campeona; en nuestro torneo. Nos orgullecemos de $Gpresentarlo:presentarla; hoy.',0,1,0,1, 'ToC5 Player presentation'),
(0,@SCRIPT_TEXTS_ID-21, '$GUn:Una; $Gpoderoso:poderosa; $Gcampeon:campeona;, $Gun:una; $Gcapacitado:capacitada; $c, $gun:una; honorable $r. Presentamos a $N.',13838,1,0,1, 'ToC5 Player presentation'),
(0,@SCRIPT_TEXTS_ID-22, 'Los campeones del torneo hablan muy bien de $Geste:esta; $c. Hoy presentamos a $N.',13838,1,0,1, 'ToC5 Player presentation'),
(0,@SCRIPT_TEXTS_ID-23, '$GUno:Una; de $glos:las; mas $gfieros:fieras; $cs en el campo de batalla, presentamos a $N.',13838,1,0,1, 'ToC5 Player presentation'),
(0,@SCRIPT_TEXTS_ID-24, 'Si aun no conoceis su nombre, estamos seguros de que lo hareis despues de este combate. Presentamos a $N.',13838,1,0,1, 'ToC5 Player presentation');

-- INTROS
DELETE FROM creature_text WHERE entry IN (35004, 35005, @TIRION, @THRALL, @GARROSH , @VARIAN , @JAINA, @EADRIC, @PALETRESS, @BLACK_KNIGHT);
INSERT INTO creature_text (entry, groupid, id, TEXT, TYPE, LANGUAGE, probability, emote, duration, sound, COMMENT) VALUES
-- -- Presentacion
(35004,0,0,'Los Atracasol estan orgullosos de presentar a sus representantes en estas pruebas de combate.',14,0,100,1,0,0,'Announcer - Player Horde Champions - Intro'),
(35005,0,0,'El Pacto de Plata esta encantado de presentar a sus luchadores para este evento, Alto Senor.',14,0,100,1,0,0,'Announcer - Player Alliance Champions - Intro'),
(@TIRION,0,0,'Bienvenidos campeones. Hoy, ante los ojos de vuestros lideres y companeros os probareis como combatientes dignos.',14,0,100,1,0,0,'Tirion - Intro'),
-- -- Horda
(@THRALL,0,0,'Luchad con fuerza, Horda! Lok\'tar Ogar!',14,0,100,1,0,0,'Thrall - Intro'),
(@GARROSH,0,0,'Por fin! Un combate digno de ser contemplado.',12,0,100,1,0,0,'Garrosh - Intro'),
(@VARIAN,0,0,'No he venido hasta aqui para ver animales despezandose entre ellos sin ningun criterio, Tirion.',12,0,100,1,0,0,'Varian - Intro'),
(@JAINA,0,0,'Son combatientes dignos, ya lo veras.',12,0,100,1,0,0,'Jaina - Intro'),
-- -- Ali
(@VARIAN,1,0,'No le veo la gracia a estos juegos, Tirion. Aun asi... Confio en que lo haran de una forma admirable.',12,0,100,1,0,0,'Thrall - Intro'),
(@JAINA,1,0,'Por supuesto que lo haran.',12,0,100,1,0,0,'Garrosh - Intro'),
(@GARROSH,1,0,'Admirable? Ja! Voy a disfrutar viendo a tus pequenos campeones fracasar, humano.',14,0,100,1,0,0,'Varian - Intro'),
(@THRALL,1,0,'Garrosh, es suficiente.',12,0,100,1,0,0,'Jaina - Intro'),
(@TIRION,1,0,'Primero os enfrentareis a tres de los Grandes Campeones del Torneo. Estos feroces contendientes han derrotado a todos los demas hasta alcanzar la maxima habilidad en la justa.',14,0,100,1,0,0,'Tirion - Intro'),

-- CAMPEONES
-- -- Horda
(35004,1,0,'Aqui llega el pequeno pero mortal Ambrose Chisparrayo, Gran Campeon de Gnomeregan.',14,0,100,1,0,0,'Announcer - Alliance Champions - Intro Mage'),
(35004,2,0,'Colosos, el enorme Gran Campeon de El Exodar, esta saliendo por la puerta.',14,0,100,1,0,0,'Announcer - Alliance Champions - Intro Shaman'),
(35004,3,0,'Esta entrando en la arena la Gran Campeona de Darnassus, la habil centinela Jaelyne Unicanto.',14,0,100,1,0,0,'Announcer - Alliance Champions - Intro Hunter'),
(35004,4,0,'Fuerte y orgulloso, aclamad al mariscal Jacob Alerius, el Gran Campeon de Ventormenta!',14,0,100,1,0,0,'Announcer - Alliance Champions - Intro Warrior'),
(35004,5,0,'Hoy el poder de los enanos esta representado por la Gran Campeona de Forjaz, Lana Martillotenaz.',14,0,100,1,0,0,'Announcer - Alliance Champions - Intro Rouge'),
-- -- Ali
(35005,1,0,'Saliendo por la puerta Eressea Cantoalba, habil maga y Gran Campeona de Lunargenta!',14,0,100,1,0,0,'Announcer - Horde Champions - Intro Mage'),
(35005,2,0,'En lo alto de su kodo, aqui esta el venerable Runok Ferocrin, Gran Campeon de Cima del Trueno!',14,0,100,1,0,0,'Announcer - Horde Champions - Intro Shaman'),
(35005,3,0,'Entrando en la arena el enjuto pero peligroso Zul\'tore, Campeon de los Sen\'jin!',14,0,100,1,0,0,'Announcer - Horde Champions - Intro Hunter'),
(35005,4,0,'Presentamos al Gran Campeon de Orgrimmar, Mokra el Trituracraneos!',14,0,100,1,0,0,'Announcer - Horde Champions - Intro Warrior'),
(35005,5,0,'Representando la tenacidad de los Renegados, aqui esta el Gran Campeon de Entranas, Mortacechador Visceri!',14,0,100,1,0,0,'Announcer - Horde Champions - Intro Rouge'),

-- ARGENTAS
(@TIRION,2,0,'Buen combate! Vuestro proximo reto viene de los mismisimos cargos de la Cruzada. Sereis puestos a prueba contra sus considerables habilidades.',14,0,100,1,0,0,'Tirion - Intro'),
-- -- Eadric
(35004,11,0,'Entrando en la arena, tenemos a un paladin que no es un extrano para los campos de batalla, ni los Campos del Torneo. El gran campeon de la Cruzada Argenta, Eadric el Puro!',14,0,100,1,0,0,'Announcer - Eadric - Intro'),
(35005,11,0,'Entrando en la arena, tenemos a un paladin que no es un extrano para los campos de batalla, ni los Campos del Torneo. El gran campeon de la Cruzada Argenta, Eadric el Puro!',14,0,100,1,0,0,'Announcer - Eadric - Intro'),
(@EADRIC,10,0,'Aceptais el reto? No hay vuelta atras!',12,0,100,1,0,16134,'Eadric - Intro'),
-- -- Paletress
(35004,12,0,'La siguiente combatiente no tiene rival alguno en su pasion al apoyar a la Luz. Les entrego a la confesora Argenta Cabelloclaro!',14,0,100,1,0,0,'Announcer - Paletress - Intro'),
(35005,12,0,'La siguiente combatiente no tiene rival alguno en su pasion al apoyar a la Luz. Les entrego a la confesora Argenta Cabelloclaro!',14,0,100,1,0,0,'Announcer - Paletress - Intro'),
(@PALETRESS,10,0,'Gracias buen heraldo. Tus palabras son muy amables.',12,0,100,1,0,16245,'Paletress - Intro'),
(@PALETRESS,11,0,'Que la luz me de fuerzas para ser un reto digno.',12,0,100,1,0,16246,'Paletress - Intro'),
-- -- Tirion
(@TIRION,3,0,'Podeis comenzar!',14,0,100,1,0,0,'Tirion - Intro'),

-- CABALLERO NEGRO
(@TIRION,4,0,'Bien hecho. Habeis probado vuestra valia hoy...',14,0,100,1,0,0,'Tirion - Intro'),
(35004,13,0,'Que es eso que hay cerca de las vigas?',12,0,100,1,0,0,'Announcer - Black Knight - Intro'),
(35005,13,0,'Que es eso que hay cerca de las vigas?',12,0,100,1,0,0,'Announcer - Black Knight - Intro'),
(@BLACK_KNIGHT,10,0,'Has estropeado mi gran entrada, rata.',12,0,100,1,0,16256,'Black Knight - Intro'),
(@TIRION,5,0,'Que significa esto?',14,0,100,1,0,0,'Tirion - Intro'),
(@BLACK_KNIGHT,11,0,'Realmente pensabas que derrotarias a un agente del Rey Exanime en los campos de tu patetico torneo?',12,0,100,1,0,16257,'Black Knight - Intro'),
(@BLACK_KNIGHT,12,0,'He venido a terminar mi cometido.',12,0,100,1,0,16258,'Black Knight - Intro'),
(@GARROSH,10,0,'Hacedlo picadillo!',14,0,100,1,0,0,'Garrosh - Black Knight - Intro'),
(@VARIAN,10,0,'No os quedeis ahi mirando; matadlo!',14,0,100,1,0,0,'Varian - Black Knight - Intro'),

-- TEXTOS EN COMBATES
-- -- Eadric
(@EADRIC,1,0,'Preparaos!',14,0,100,0,0,16135,'Eadric - Combat - Aggro'),
(@EADRIC,2,0,'Martillo del honrado!',14,0,100,0,0,16136,'Eadric - Combat - Hammer'),
(@EADRIC,3,0,'Tu! Tienes que practicar mas!',14,0,100,0,0,16137,'Eadric - Combat - Slay 1'),
(@EADRIC,3,1,'No! No! Y otra vez no! No es suficiente!',14,0,100,0,0,16138,'Eadric - Combat - Slay 2'),
(@EADRIC,4,0,'Me rindo! Lo admito. Un trabajo excelente. Puedo escaparme ya?',14,0,100,0,0,16139,'Eadric - Combat - Death'),
(@EADRIC,5,0,'%s comienza a irradiar luz. Cubrios los ojos!',41,0,100,0,0,0,'Eadric - Combat - Warning - Radiance'),
-- -- Paletress
(@PALETRESS,1,0,'Bien entonces. Comencemos.',14,0,100,0,0,16247,'Paletress - Combat - Aggro'),
(@PALETRESS,2,0,'Aprovecha este tiempo para pensar en tus hazanas.',14,0,100,0,0,16248,'Paletress - Combat - Summon Memory'),
(@PALETRESS,3,0,'Descansa.',14,0,100,0,0,16250,'Paletress - Combat - Slay 1'),
(@PALETRESS,3,1,'Ve en paz.',14,0,100,0,0,16251,'Paletress - Combat - Slay 2'),
(@PALETRESS,4,0,'Un trabajo excelente!',14,0,100,0,0,16252,'Paletress - Combat - Death'),
(@PALETRESS,5,0,'Incluso el recuerdo mas oscuro se desvanece al afrontarlo.',14,0,100,0,0,16249,'Paletress - Combat - Memory dies'),
-- -- Black Knight
(@BLACK_KNIGHT,1,0,'Esta farsa acaba aqui!',14,0,100,0,0,16259,'Black Knight - Combat - Aggro'),
(@BLACK_KNIGHT,2,0,'Patetico.',14,0,100,0,0,16260,'Black Knight - Combat - Slay 1'),
(@BLACK_KNIGHT,2,1,'Que desperdicio!',14,0,100,0,0,16261,'Black Knight - Combat - Slay 2'),
(@BLACK_KNIGHT,3,0,'Me estorbaba esa carne putrefacta!',14,0,100,0,0,16262,'Black Knight - Combat - Skeleton Res'),
(@BLACK_KNIGHT,4,0,'No necesito huesos para vencerte.',14,0,100,0,0,16263,'Black Knight - Combat - Ghost Res'),
(@BLACK_KNIGHT,5,0,'No! No debo fallar... otra vez...',14,0,100,0,0,16264,'Black Knight - Combat - Death');
