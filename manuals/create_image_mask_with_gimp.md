# Erzeugen einer Schwarz/Weißmaske für die Verpixelung von Bildbereichen

*Statische Bereiche im Bild können durch Anwendung einer s/w-Maske identifiziert und verpixelt werden. Dafür genügt ein Bild, das die zu verdeckenden Bildbereiche als schwarze Pixel enthält. Die weißen Bildbereiche werden nicht verpixelt.*

## Download des Bildes

Das Bild kann über die API heruntergeladen werden. Das hat den Vorteil, dass die Bildgröße stimmt.

## Öffnen in Gimp

### Ebene duplizieren

- Alles auswählen: `Ctrl-A`
- Ebene duplizieren: `Ctrl-Shift-D` und mit `Ctrl-L` den Layerdialog öffnen

### Maske erzeugen

- In der oberen Ebene das Tool **Freie Auswahl** mit der Taste `F` öffnen und den zu maskierenden Bereich auswählen. 
 
<img src="resources/gimp_mask_1.png" style="zoom:50%;" />

- mit `Ctrl-,` den ausgewählten Bereich schwarz einfärben

<img src="resources/gimp_mask_2.png" style="zoom:50%;" />

- mit `Ctrl-I` die Auswahl umkehren
- mit `Ctrl-.` die Auswahl weiß einfärben
 
<img src="resources/gimp_mask_3.png" style="zoom:50%;" />

### Weitere Bereiche maskieren

- im Layerdialog den oberen Layer auswählen
- die Deckkraft nach unten regeln, damit die untere Ebene durchscheint
- weitere Bildbereiche wie oben beschrieben auswählen und mit der passenden Farbe füllen

### Maske speichern

- Ebenen vereinen
- Bild als PNG exportieren
- Der Dateiname entspricht der Syntax ``<SHORTTAG>.mask.png`

