# Annotation von Bildern - als Vorbereitung für das spätere Training eines neuronalen Netzes





## 1. Allgemeines

### 1.1 Verzeichnisse

Bild im Verzeichnis **imgs** - Beispiel:	`imgs/ea35ae_20210223180901.png`

Annotiertes Bild (Maske) im Verzeichnis **masks** -  Beispiel:	`masks/ea35ae_20210223180901.json`

### 1.2 Bildformat und Maße

Das Bild muss **quadratisch** sein und sollte nach Möglichkeit **1024x1024** Pixel haben. Das Dateiformat sollte **PNG** sein.



## 2. Programm "labelme" vorbereiten

### 2.1 labelme starten

#### 2.1.1 Auf dem Mac

- Terminal öffnen mit CMD + Leertaste, dann "terminal" eingeben und mit Enter bestätigen

- Befehl eingeben und mit Enter bestätigen:

  ```bash
  conda activate labelme
  ```

- labelme starten mit Befehl:

  ```bash
  labelme
  ```

  

### 2.2 Verzeichnis öffnen



<img src="_img/labelme_1.jpg" style="zoom:50%;" />

- "Open Dir" wählen
- Verzeichnis wählen, in dem die zu annotierenden Bilder liegen (imgs)



### 2.3 Ausgabe-Verzeichnis wählen

<img src="_img/labelme_2.jpg" alt="labelme_2" style="zoom:50%;" />

- Im Menü "File" und dann "Change Output Dir" wählen
- Ausgabe-Verzeichnis, in dem die Annotationen gespeichert werden sollen, auswählen (masks)



### 3. Annotation

#### 3.1 Zoomen

- Hineinzoomen mit der Tastenkombination CMD und +
- Herauszoomen mit der Tastenkombination CMD und -



#### 3.2 Polygon (Umriss/Markierung) erstellen

<img src="_img/labelme_3.jpg" alt="labelme_3" style="zoom:50%;" />

- "Create Polygons" wählen



<img src="_img/labelme_4.png" alt="labelme_4" style="zoom:50%;" />

<img src="_img/labelme_5.png" alt="labelme_5" style="zoom:50%;" />

- Punkt für Punkt Person umranden



<img src="_img/labelme_6.png" alt="labelme_6" style="zoom:50%;" />

- Zum Schluss wieder beim ersten Punkt ankommen, um Polygon zu vervollständigen



<img src="_img/labelme_7.png" alt="labelme_7" style="zoom:50%;" />

- Im abschließenden Dialogfenster unter "Enter object label" die Bezeichnung "person" eingeben und mit "OK" bestätigen



<img src="_img/labelme_8.png" alt="labelme_8" style="zoom:50%;" />

- Die erste Person ist nun vollständig markiert
- Den Vorgang für jede weitere Person durchführen



## 4. Annotation abspeichern

<img src="_img/labelme_9.jpg" alt="labelme_9" style="zoom:50%;" />



- Nachdem alle Personen markiert worden sind, Annotation abspeichern im Format JSON
  - dazu auf Save klicken und sicherstellen, dass man sich im Ausgabe-Verzeicihnis befindet
  - Den Dateinamen belassen wir beim Standardwert (Also dem ursprünglichen Dateinamen des Bildes, jedoch mit der Endung .json)
  - Abspeichern durch Klicken auf "Save"



- Wenn alles geklappt hat, sollte rechts unten in etwa folgendes zu sehen sein

<img src="_img/labelme_10.png" alt="labelme_10" style="zoom:50%;" />

- Um das nächste Bild zu annotieren, wählt man es in der "File List" rechts unten aus und wiederholt die Vorgänge ab Punkt [3. Annotation](#annotation)

## 4. Hinweise

Ein Problem (Bug) besteht manchmal bei Arbeiten mit labelme auf dem Mac, wenn man versucht, im Menü auf z.B. "File" zu klicken. Dies funktioniert nach dem Start nicht. Als Lösung kann man die Tastenkombination ALT + TAB drücken, um in ein anderes Fenster zu wechseln. Danach drückt man erneut diese Tastenkombination, um wieder zu labelme zurückzuwechseln. Nun sollte das Menü funktionieren.````
