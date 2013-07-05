@echo off
COLOR E0
@echo #**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#
@echo *                                                                       *
@echo *     ##########################################################        *
@echo #     ##******************************************************##        #
@echo *     ##*   *Apocalypse* - Archivo de unificacion de SQL's   *##        * 
@echo *     ##******************************************************##        *
@echo #     ##########################################################        #
@echo *                                                                       *
@echo *      Las siguientes lineas uniran todos los archivos sql que          *
@echo #      esten dentro de la carpeta sql/update de manera que ahora        #
@echo *      puedan importar todas las actualizaciones de la carpeta          *
@echo *      con tan solo un archivo en vez de una por una.                   *
@echo #      Por favor no editar este archivo a menos que sepan               #
@echo *      lo que hagan. Gracias                                            *
@echo *                                                                       *
@echo #               *ApocalypseCore 2013*                                   #
@echo *          Desarrollado por ApocalyseCoreTeam                           *
@echo *                                                                       *
@echo #                                                                       #
@echo *          El proceso empezara AHORA!                                   * 
@echo *                                                                       *
@echo #**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#**#
@echo off
pause
@echo off
setlocal EnableDelayedExpansion
set WorldUpdates=ApocalypseCore_Mundo_Updates.sql
set CharactersUpdates=ApocalypseCore_Personjes_Updates.sql
set AuthUpdates=ApocalypseCore_Cuentas_Updates.sql

if exist %CharactersUpdates% del %CharactersUpdates%
if exist %AuthUpdates% del %AuthUpdates%
if exist %WorldUpdates% del %WorldUpdates%

for %%a in (updates\world\*.sql) do (
echo /* >>%WorldUpdates%
echo * %%a >>%WorldUpdates%
echo */ >>%WorldUpdates%
copy/b %WorldUpdates%+"%%a" %WorldUpdates%
echo. >>%WorldUpdates%
echo. >>%WorldUpdates%)

for %%a in (updates\characters\*.sql) do (
echo /* >>%CharactersUpdates%
echo * %%a >>%CharactersUpdates%
echo */ >>%CharactersUpdates%
copy/b %CharactersUpdates%+"%%a" %CharactersUpdates%
echo. >>%CharactersUpdates%
echo. >>%CharactersUpdates%)

for %%a in (updates\auth\*.sql) do (
echo /* >>%AuthUpdates%
echo * %%a >>%AuthUpdates%
echo */ >>%AuthUpdates%
copy/b %AuthUpdates%+"%%a" %AuthUpdates%
echo. >>%AuthUpdates%
echo. >>%AuthUpdates%) 
