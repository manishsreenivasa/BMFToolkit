Bone Mesh Female Toolkit - v1.0

See LICENSE for license information

See accompanying publication for further details about the dataset and processing steps.
Sreenivasa, M., and Gonzalez-Alvarado, D. (under review) High-resolution computer meshes of the lower body
bones of an adult human female derived from CT images.

----------------------------------------------

Ths scripts provided in this toolkit allow users scale, resample and export bone meshes of an adult human female. The original meshes have been extracted from CT imaging data provided by the Visible Human Project.

-------------------------
Usage Instructions (Matlab)
-------------------------

- Run main_GUI.m to use a graphical user interface. The GUI has been tested with Matlab 2017a.

- Functionality is provided to visualize the model in the current pipeline. The original model may be scaled by providing the overall height of the subject. A relative resampling value can also be provided to downsample the mesh resolution.

- Meshes may be extracted in obj or stl formats

- User can either choose to process individual bones using the dropdown menu on the left, or the bones of the foot (composite foot), or all bones of the lower body

-------------------------
Usage Instructions (Octave)
-------------------------

- Run main_noGUI.m for version without a graphical user interface. This has been tested with Matlab 2017a and Octave 4.2.1.

- All functionalities provided in the GUI have been implemented using booleans and variables which should be defined at the start of the program.
