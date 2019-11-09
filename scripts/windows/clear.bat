set /P projekt=Welches Projekt soll gelöscht werden? 
set /P bestaetigung=Soll das Projekt %projekt% wirklich gelöscht werden?(y/n) 
if %bestaetigung%==y rd /q /s %projekt% else if %bestaetigung%==Y rd /q /s %projekt%