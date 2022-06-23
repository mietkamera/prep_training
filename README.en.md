# Prepare your Debian based PC for creation of a neuronal network

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

