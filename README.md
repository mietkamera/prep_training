#  Bereite einen Debian-basierten PC für die Erzeugung eines neuronalen Netzwerks vor

Wir beschreiben, wie man eine Pythonumgebung für diese Zwecke installiert. Außerdem beschreiben wir, welche Schritte für die
Erzeugung des neuronalen Netzwerks notwendig sind und wie diese im Einzelnen durchgeführt werden. Ziel ist auch die Schaffung 
eines cloudbasierten Workflows, der die Collaboration mehrerer Mitarbeiter auf einfache Art ermöglicht. Das bedeutet 
insbesondere, dass die notwendige Abstimmung der Mitarbeiter bei der Erzeugung der Netze auf ein Minimum begrenzt wird, um 
unnötige Kommunikation zu vermeiden.


## Installation

### Vorbereitung

- Voraussetzung (Debian)
- Clonen des Repos usw...

### Installation

- VENVs installieren
- iaug.py nach /usr/local/bin
- Workbench in der Cloud vorbereiten

## Workflow

- Ziel: Unnötige Kommunikation vermeiden
- Arbeitssschritte einzeln beschreiben (Annotation, Albumentation, Training)
- Zusammenspiel beschreiben (Wie erkennt A was B schon gemacht hat? Wie kann C kontinuierlich Bilder nachliefern ?)


Install all components for creation of a neuronal network capable of semantic image segmentation. This 
readme describes the installation of an python environment for

- Albumentation of annotated images (see [annotating-images.md](manuals/annotating-images.md))
- Training of the neuronal network

and the workflow beginning with image annotation from achieve an optimal 

network Prepare your debian based pc 

When some images of our webcams are annotated they are saved in two different directories.

- `input/imgs/\*.png` (original images 1024x1024)
- `input/masks/\*.png` (binary masks 1024x1024)

These images shall be the input for the training of our neuronal networks. But they are not enough.
So we create more images by something called 'albumentation' and hope to get better results ;-) . 

