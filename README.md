## This repository demonstrates my understanding of SOLID principles and Unit tests principles.


**Initial task:**

Programmieraufgabe
Wir bauen einen Zug ... der im Folgenden beschriebene Aufbau und die dazugehörigen Funktionalitäten sollen in Java umgesetzt werden:

• Ein Zug besteht aus einer oder mehreren Lokomotiven und keinem bis mehreren Wagons.

• Lokomotiven und Wagons haben ein fixes Leergewicht.

• Lokomotiven und Wagons haben eine fixe Länge.

• Die Elemente innerhalb eines Zuges haben eine gewisse Reihenfolge.

• Jede Lokomotive hat eine bestimmte Zugkraft, diese gibt an wie viel Gewicht die
Lokomotive, zusätzlich zu ihrem eigenen Leergewicht, ziehen kann.

• Jede Lokomotive kann eine bestimmte Anzahl an Passagieren (0 oder mehr)

aufnehmen und hat ein maximales Zuladungsgewicht für Güter (0 oder mehr)

• Jede Lokomotive hat eine Typenbezeichnung, einen Hersteller, ein Baujahr und eine
eindeutige Seriennummer.

• Lokomotiven werden nach den Antriebsarten Diesel, Dampf, elektrisch
unterschieden.

• Es gibt mehrere Arten von Wagons (Personenwagen, Schlafwagen, Speisewagen,
Güterwagen, ...)

• Jeder Wagon kann eine bestimmte Anzahl an Passagieren (0 oder mehr) aufnehmen
und hat ein maximales Zuladungsgewicht für Güter (0 oder mehr).

• Jeder Wagon hat eine Typenbezeichnung, einen Hersteller, ein Baujahr und eine
eindeutige Seriennummer.

• Es kann das Leergewicht des gesamten Zuges abgefragt werden.

• Es kann die maximale Anzahl an Passagieren pro Zug abgefragt werden.

• Es kann das maximale Zuladungsgewicht für Güter pro Zug abgefragt werden.

• Es kann die maximale Zuladung eines Zuges abgefragt werden (= maximale Anzahl
der Passagiere im Zug x 75kg + maximales Zuladungsgewicht für Güter)

• Es kann das maximale Gesamtgewicht des Zuges abgefragt werden.

• Es kann die Länge des Zuges abgefragt werden.

• Es soll geprüft werden können, ob der Zug fahrfähig ist. Das heißt, ob die im Zug
vorhandenen Lokomotiven in der Lage sind, den Zug mit maximaler Zuladung
(Passagiere und Güter) zu ziehen.

• Wenn ein Zug mehr als 0 maximale Passagiere hat, wird ein Schaffner auf diesem Zug
benötigt.

• Pro 50 möglicher Passagiere wird ein Schaffner benötigt.

• Es kann die Zahl der maximal benötigten Schaffner pro Zug abgefragt werden.

• Lokomotiven oder Wagons können immer nur einem Zug zugewiesen sein.

• Die Zusammenstellung von Zügen kann verändert werden.

• Weitere Prüfungen sind je nach Implementierung zu integrieren, zum Beispiel dürfen
keine Zyklen innerhalb eines Zuges auftreten – Wagon A hängt an Wagon B und
Wagon B hängt an Wagon A.

• Mittels JUnit-Tests ist die korrekte Funktionsweise zu prüfen
