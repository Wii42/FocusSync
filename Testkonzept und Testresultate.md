# Testkonzept für FocusSync

Unser Testkonzept für die FocusSync-App zielt darauf ab, die korrekte Funktionalität der App sicherzustellen und sicherzustellen, dass sie den Anforderungen des Devedis-Teams entspricht.

## Unit-Tests und Grenzfall-Tests

Um die Funktionalität der wichtigen Methoden der App zu testen, werden wir umfassende Unit-Tests unter Verwendung des Frameworks Mockito und des Standard-Test-Frameworks von Flutter durchführen. Wir werden auch Grenzfall-Tests durchführen, um sicherzustellen, dass die App in allen möglichen Szenarien korrekt funktioniert. Die Grenzfälle der Funktionalität wurden vom Devedis-Team vorgegeben und werden manuell getestet.

## Funktionstest des Focus-Modus und Shortcuts

Da die App den Fokus-Modus und Shortcuts von Apple verwendet, werden wir sicherstellen, dass diese Funktionen auf MacOS funktionieren. Da dies ein wichtiger Teil der Funktionalität der App ist, wird dieser Teil mit Unittest getestet. Diese Funktionalität ist aber nur auf MacOS zu verifizieren.

## GUI-Tests

Das GUI der App wird von Hand getestet. Wir werden alle möglichen Interaktionen mit der App testen, um sicherzustellen, dass die App leicht verständlich und benutzerfreundlich ist. Dies wurde entschieden, da die Anzahl der Use-Cases beim Design der App gering gehalten wurde und auf grund von Zeitmangel.

## Usability-Tests

Weil der Kunde das Design der App bereits gefertigt hat und die App voraussichtlich nur intern von Devedis genutzt wird, wünscht Devedis keine Usability-Tests. Die Interaktionsmöglichkeiten der App wurde minimal gehalten, da das Ziel der App ist im Hintergrund zu leben.

## Zusammenfassung

Das Testkonzept für die FocusSync-App ist darauf ausgerichtet, die korrekte Funktionalität der App und dass sie den Anforderungen des Devedis-Teams entspricht sicherzustellen. Wir werden umfassende Unit-Tests, Grenzfall-Tests und Funktionstests durchführen, um sicherzustellen, dass die App zuverlässig funktioniert.

## Resultate

Durch manuelles Testen konnten die Funktionalitäten überprüft und bestätigt oder widerlegt werden. Ebenso wurde die Korrektheit der grafischen Benutzeroberfläche (GUI) geprüft. Das alte GUI wurde mit Widget-Tests untersucht, wobei ein Fehler entdeckt wurde, der es erlaubte, im Dropdown-Menü zu schreiben. Dieses Dropdown ist aber im neuen Design nicht mehr enthalten. Mithilfe von Unit-Tests haben wir den Grenzfall eines fehlenden Fokusmodus identifiziert und festgestellt, dass dieser aufgrund der Funktionsweise der Kurzbefehle von Apple nicht behoben werden kann. Daher sind wir auf die Standard-Fokusmodi von Apple hingewiesen worden.
