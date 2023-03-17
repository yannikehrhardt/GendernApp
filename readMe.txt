ReadMe für GendernApp ----- english below --------

Inhaltsverzeichnis:
  1) Autoren der GendernApp 
  2) Installationsanleitung
  3) Orientierung im Programmcode
  4) Grundlegende Informationen über diese App (Funktionsübersicht)
  5) Erweiterung der App
  6) Quellen
  

1) Autoren der GendernApp:
Die Autoren sind Hannah Gürsching (kontaktierbar unter h.guersching@gmx.net) und Yannik Ehrhardt (kontaktierbar unter yannik-ehrhardt@gmx.de). Bei einer Weiterentwicklung der GendernApp müssen Hannah Gürsching und Yannik Ehrhardt als Autoren aufgeführt werden.

2) Installationsanleitung:
Die Autoren empfehlen für die Weiterentwicklung dieser Swift-App die Nutzung von XCode, da diese eine Preview von Views erlaubt, was den Nutzenden einen schnellen Überblick über die Funktionsweise integrierter Funktionalitäten ermöglicht. Basierend darauf sollten für die Installationsanleitung folgende Schritte durchgeführt werden:
- Installation einer Software, die das Ausführen von Swift Code ermöglicht (bevorzugt XCode)
- Download und Entpacken der Gendern-App zip-Datei aus diesem GitHub Repository
- XCode (oder andere Software zum Öffnen von Swift Code) öffnen und das Projekt über "open a project or a file" öffnen
- Der Programmcode sollte nun geöffnet sein
- Den Simulator für die GendernApp starten
- Die GendernApp sollte nun im Simulator bedienbar sein
- Alternativ kann statt des iPhones Simulators auch ein echtes iPhone für die Ausführung der App genutzt werden. Dafür muss das iPhone per Kabel an den ausführenden Laptop angeschlossen werden. Dann kann das iPhone für die Ausführung (in XCode in der Kopfzeile) ausgewählt werden. Dafür muss am iPhone vorher der Entwicklermodus aktiviert und bei der ersten Ausführung der GendernApp den Entwicklern der GendernApp vertraut werden. Genauere Informationen lassen sich über eine Internetrecherche finden.

3) Orientierung im Programmcode:
Im Ordner Structs werden die Datentypen für Quizze (Quiz bzw. QuizTemplate), Nutzendenaccounts (PlayerTemplate) und Regeln (RuleTemplate) definiert, die als Basis für die Erstellung der Inhalte im Ordner Klassen dienen. Die Klassen umfassen weitere Funktionen, die über die Klassennamen aufgerufen werden können. Die Klassen sind als ObservableObjects mit @Published Variablen erstellt, bei deren Veränderung alle beteiligten Views neu geladen werden. Im Ordner Views werden alle SwiftUIViews aufgeführt, die als Screen erreichbar ist. Die Klassen werden dabei in der ContentView ("der Startbildschirm") initialisiert und dann an alle weiteren Views weitergegeben. In den Views werden Elemente aus dem Components-Ordner aufgerufen. Diese umfassen Buttons, das Laden iterativer View-Elemente durch Schleifen und ähnliches. Bei der Orientierung im Programmcoce bietet sich daher folgende Reihenfolge an: (1) Ordner Structs, (2) Ordner Klassen, (3) Ordner Views von oben nach unten, startend bei der ContentView. Von den einzelnen Views aus sollten dann alle in einer View beteiligten Komponenten betrachtet werden. Der Code ist auskommentiert, dies ermöglicht ein vereinfachtes Verständnis.

4) Grundlegende Informationen über diese App (Funktionsübersicht):
Die App ist in der Lage, dem Nutzenden die Grundprinzipien des Genderns in Form von Quizfragen mit mehreren (korrekten) Auswahlmöglichkeiten sowie einem Regelsatz näherzubringen. Die Nutzenden können außerdem eine Erläuterung erhalten, warum die korrekte Antwort auf eine Quizfrage tatsächlich korrekt ist. Dafür werden 24 Quizfragen für verschiedene Themengebiete zur Verfügung gestellt. Die gewählte Datenstruktur begünstigt eine gute Erweiterbarkeit hinsichtlich der Nutzendenaccounts, neuer Quizfragen und Regeln durch die Nutzung von Textfeldern. Eine Prüfung, dass Quizfragen sowie User Accounts nicht mehrfach vorkommen, existiert in diesem Zusammenhang ebenfalls. Die bereits implementierten Gamification Elemente: Punkte, Leadboards und Errungenschaften erhöhen die Motivation der Nutzenden. Beim korrekten Beantworten aller richtigen Auswahlmöglichkeiten erhalten die Nutzenden zehn Punkte, wählt die spielende Person eine falsche Antwortmöglichkeit aus, werden fünf Punkte abgezogen. Im Leaderboard (Score View) können die Nutzenden ihre Punkte und Errungenschaften im Anschluss mit allen anderen Nutzenden vergleichen und ihre Errungenschaften einsehen. Die App präsentiert die genannten Inhalte und Features mit einem neuen, konstanten, wiedererkennbarem Design, das ebenfalls einfach für weitere Screens genutzt werden kann und sich an den Vorgaben von Apples Human Interface Guidelines orientiert. Die Nutzenden können in Form eines Regelbuchs außerdem die grundlegenden Möglichkeiten des Genderns erlernen und diese als gelernt markieren oder hervorheben. Dadurch wird das Lernen der Nutzenden unterstützt. Administratoraccounts wahren die Qualität neu hinzugefügter Quizfragen, die für eine Lernapp in diesem emotionalen Themenbereich besonders wichtig ist. Möchten sich die Nutzenden über allgemeine Aspekte des Themas Gendern informieren, lassen sich in drei GeneralGenderInfo View Argumente für und gegen das Gendern sowie weiterführende Links (Artikel renommierter Zeitungen) finden, die weiter über dieses Thema informieren.

5) Erweiterung der App:
Aus Sicht des Projektteams sollte in Zukunft zunächst eine Datenbank angebunden werden, die Anpassungen und Erweiterungen zentral speichert und jederzeit abrufbar macht. Aktuell verfallen Änderungen beim Neustart der App. Weitere Funktionen wie neue Fragentypen wie Lückentexte könnten folgen.

6) Quellen:
Für das Erstellen der Quizfragen wurde folgendes Buch genutzt: “Richtig gendern: Wie Sie angemessen und verständlich schreiben” von Anja Steinhauer und Gabriele Diewlad. Für die grafischen Inhalte in der App dienen Objekte der Website elements.envato.com, beachte bei der Weiternutzung den dort hinterlegten Lizenzvertrag.

---------------------------------- english version ----------------------------------
Table of Contents:
  1) Authors of the GendernApp 
  2) Installation guide
  3) Orientation in the program code
  4) Basic information about this app (function overview)
  5) Extension of the app
  6) Sources
  

1) Authors of the GendernApp:
The authors are Hannah Gürsching (contactable at h.guersching@gmx.net) and Yannik Ehrhardt (contactable at yannik-ehrhardt@gmx.de). Any further development of the GendernApp must list Hannah Gürsching and Yannik Ehrhardt as authors.

2) Installation instructions:
The authors recommend the use of XCode for the further development of this Swift app, as it allows a preview of views, which gives users a quick overview of how integrated functionalities work. Based on this, the following steps should be taken for the installation instructions:
- Install software that allows Swift code to run (XCode is preferred).
- Downloading and unzipping the gendern app zip file from this GitHub repository.
- Open XCode (or other software to open Swift code) and open the project via "open a project or a file".
- The program code should now be open
- Start the simulator for the GendernApp
- The GendernApp should now be operable in the simulator
- Alternatively, you can use a real iPhone instead of the iPhone simulator to run the app. For this, the iPhone must be connected to the executing laptop via cable. Then the iPhone can be selected for execution (in XCode in the header). For this, the developer mode must be activated on the iPhone beforehand and the developers of the GendernApp must be trusted during the first execution of the GendernApp. More detailed information can be found via an internet search.

3) Orientation in the program code:
The Structs folder defines the data types for quizzes (Quiz or QuizTemplate), user accounts (PlayerTemplate), and rules (RuleTemplate), which serve as the basis for creating the content in the "Klassen" folder. The classes include other functions that can be called using the class names. The classes are created as ObservableObjects with @Published variables, when they are changed all involved views are reloaded. In the folder Views all SwiftUIViews are listed, which is accessible as screen. The classes are initialized in the ContentView ("the start screen") and then passed on to all other views. In the views, elements from the "Components" folder are called. These include buttons, loading iterative view elements through loops and the like. In the orientation in the program coce the following order is therefore suitable: (1) Structs folder, (2) Classes folder, (3) Views folder from top to bottom, starting at the ContentView. From the individual views, all components involved in a view should then be considered. The code is commented out, this allows for a simplified understanding.

4) Basic information about this app (functional overview):
The app is able to teach the user the basic principles of gender in the form of quiz questions with multiple (correct) choices as well as a rule set. Users can also receive an explanation of why the correct answer to a quiz question is actually correct. For this purpose, 24 quiz questions are provided for different topics. The chosen data structure favors a good extensibility in terms of user accounts, new quiz questions and rules by using text fields. A check that quiz questions as well as user accounts do not occur more than once also exists in this context. The already implemented gamification elements: points, leadboards and achievements increase the motivation of the users. Users receive ten points for correctly answering all of the correct options; if the person playing selects an incorrect answer option, five points are deducted. In the leaderboard (Score View), users can subsequently compare their points and achievements with all other users and view their achievements. The app presents the aforementioned content and features with a new, constant, recognizable design that can also be easily used for other screens and is based on Apple's Human Interface Guidelines. Users can also learn basic gender options in the form of a rulebook and mark or highlight them as learned. This supports user learning. Administrator accounts maintain the quality of newly added quiz questions, which is particularly important for a learning app in this emotional subject area. If users would like to learn more about general aspects of the topic of gender, three GeneralGenderInfo Views provide arguments for and against gendering as well as links (articles from renowned newspapers) that provide further information on this topic.

5) Extension of the app:
From the project team's point of view, a database should first be connected in the future, which stores adjustments and extensions centrally and makes them accessible at any time. Currently, changes expire when the app is restarted. Other functions such as new question types like cloze texts could follow.

6) Sources:
The following book was used to create the quiz questions: “Richtig gendern: Wie Sie angemessen und verständlich schreiben” von Anja Steinhauer und Gabriele Diewlad. For the graphical content in the app, objects from the website elements.envato.com are used, please note the license agreement deposited there for further use.
