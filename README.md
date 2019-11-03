
_Übungsaufgabe zur Veranstaltung [IT
Systeme](https://hsro-wif-it.github.io) im [Bachelorstudiengang
Wirtschaftsinformatik](https://www.th-rosenheim.de/technik/informatik-mathematik/wirtschaftsinformatik-bachelor/) an der [Hochschule Rosenheim](http://www.th-rosenheim.de)._

# 04 - Shell-Programmierung

In dieser Übung geht es um _Shell-Programmierung_. Dabei werden Sie
versuchen Skripte zu erstellen, die Ihnen helfen Java-Projekte von der
Kommandozeile (Command Line)/Shell zu steuern:

1. Erstellen eine Verzeichnisstruktur (src, classes, lib ...)
1. Bauen, löschen und testen eines Java-Projektes
1. Packen (Jar erstellen) und aufrufen
1. Löschen eines Projektes

> Note: **Die Lösung befindet sich im Branch _Musterlösung_.**

## Aufgabe 1: Scaffolding

In dieser Aufgabe geht es darum, die notwendige Struktur (Gerüst) eines
Projektes automatisiert zu erstellen. Im allgemeinen nennt man das
_Scaffolding_.

Erstellen Sie ein Shell-Skript (Batch-Skript für Windows), dem ein
Projektname übergeben wird und das dann ein Verzeichnis erstellt und die
Unterverzeichnisse: _src_, _dist_, _classes_, _libs_, _docs_, _scripts_
und _etc_.

Für das Skript benötigen Sie folgende Shell-Kommandos:

- cd
- mkdir
- if ... then
- for ... done

Das Skript soll _create.sh_ (oder _create.bat_ für Windows) heißen und
einen Parameter erhalten.

Der Aufruf könnte dann wie folgt aussehen:

```shell
> ./create.sh chiemgau
```

oder

```cmd
> create.bat chiemgau
```

Zum Beispiel sieht eine mögliche Struktur für ein Projekt _chiemgau_
dann wie folgt aus:

```shell
- chiemgau
    - classes
    - etc
    - dist
    - docs
    - libs
    - scr
        - main
            - java
        - test
            -java
    - scipts
```
## Aufgabe 2: Aufräumen mit _Delete_

Zum Aufräumen wird ein Skript benötigt, das ein Projekt auch wieder
löschen kann. Das soll natürlich nur geschehen, wenn eine
Sicherheitsabfrage bestätigt wird. Die Sicherheitsabfrage soll
verhindern, dass das Projektverzeichnis aus Versehen gelöscht wird.

Erstellen Sie ein Skript _clear.sh_ (_clear.bat_ für Windows), das den
Projektnamen als Parameter erhält und dann das Verzeichnis inkl.
Unterverzeichnissen löscht, nachdem eine Sicherheitsfrage  

_'Soll das Projekt **name** wirklich gelöscht werden [Y/n]?'_  

mit **Y** oder **y** bestätigt wurde.

Folgende Shell-Kommandos könnten hilfreich sein:

- rmdir
- echo
- ...

Zum Beispiel:

```shell
>./delete.sh chiemgau

Soll das Projekt 'chiemgau' wirklich gelöscht werden [Y/n]?

Projekt wurde 'chiemgau' gelöscht!

```

## Aufgabe 2: Build

Als nächstes benötigen Sie ein Skript, dass ihr Java Projekt _baut_
(sprich compiliert und testet).

Erstellen Sie ein Skript _build.sh_ (_build.bat_ für Windows), das ihre
Java-Sourcen (inkl. Test-Dateien) kompiliert und die Tests aufruft und
das Ergebnis ausgibt.

Folgende Shell-Kommandos könnten hilfreich sein:

- javac
- java
- ...

Zum Beispiel:

```shell
>./build.sh chiemgau

Projekt 'chiemgau' wird gebaut...
Projekt 'chiemgau' testen ...

... Tests erfolgreich!

```

## Aufgabe 3: Jar erstellen und ausführen

Erstellen Sie ein Skript _run.sh_ (_run.bat_ für Windows), das ihre
Java-Klassen in ein JAR Archive packt und dann mittels Java die
_main()_-Methode aufruft

Folgende Shell-Kommandos könnten hilfreich sein:

- jar
- java
- ...

Zum Beispiel:

```shell
>./run.sh chiemgau
```
