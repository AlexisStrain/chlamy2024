
# COP5/HKR1 changes ciliary beat pattern and biases cell steering during chemotaxis in _Chlamydomonas reinhardtii_
**Alexis Strain<sup>1</sup>, Nathan Kratzberg<sup>1</sup>, Dan Vu<sup>1</sup>, Emmaline Miller<sup>2</sup>, Ken-ichi Wakabayashi<sup>3</sup>, Adam Melvin<sup>4</sup>, Naohiro Kato<sup>1<sup>**\
<sup>1</sup> Department of Biological Sciences, Louisiana State University, Baton Rouge, LA 70803, USA\
<sup>2</sup> Cain Department of Chemical Engineering, Louisiana State University, Baton Rouge, LA, 70803, USA\
<sup>3</sup> Department of Industrial Life Sciences, Faculty of Life Sciences, Kyoto Sangyo University, Kyoto, 603-8555 JAPAN\
<sup>4</sup> Department of Chemical and Biomolecular Engineering, Clemson University, Clemson, SC 29634, USA\
 

[Scientific Reports](https://doi.org/10.1038/s41598-024-81455-2), Dec, 2024
<br>
---
![angle speed and video](https://github.com/AlexisStrain/chlamy2024/blob/master/Figures/angle%20speed%20and%20video.gif)
   *created by swimTRACKING
## About
#### This repository contains the scripts need to generate the figure for the manuscript "Membrane-bound Guanylyl Cyclase COP5/HKR1 changes ciliary beat pattern and biases cell steering during chemotaxis in _Chlamydomonas reinhardtii_". It is split into four sections:

Note: Each section is accompanied by sample datasets of a positive control (typically the *wt* CC-125) and a negative control (typically the paralyzed _pf18_)
1. [CHEMOTAXIS](/CHEMOTAXIS)
   - Code and procedures required the process data from the 3D printed Chemotaxis Lane Assay (CLA) plate
   - STL file reqired to print the CLA-plate
2. [PHOTOTAXIS](/PHOTOTAXIS)
   - Code for processing phototaxis experiements
3. [DIFFUSION](/DIFFUSION)
   - Code for finding diffusion coefficients of BPB based on curve fitting.
3. [swimTRACKING](/swimTRACKING)
   - Code for processing all microscopy video of cell tracking including photoshock, homogenous non-gradient conditions, and gradient conditions.

## Requirements to Run swimTRACKING
 - [Fiji](https://imagej.net/software/fiji/downloads)
 - [FIJI plugin: TrackMate](https://imagej.net/plugins/trackmate/TrackMate)
 - [Python 3.11.1](https://www.python.org/downloads/release/python-360/)
 - [NumPy 1.24.2](https://numpy.org/)
 - [Pandas 2.2.2](https://pandas.pydata.org/)
 - [Seaborn 0.12.0](https://seaborn.pydata.org/installing.html)
 - [Matplotlib 3.7.0](https://matplotlib.org/stable/users/installing/index.html)
 - [Scipy 1.11.3](https://www.scipy.org/)
 - [Scikit-learn 1.3.1](https://scikit-learn.org/stable/)

## Citation
if you use the code released here, please cite this paper: 
```
Strain, A., Kratzberg, N., Vu, D. et al. COP5/HKR1 changes ciliary beat pattern and biases cell steering during chemotaxis in Chlamydomonas reinhardtii. Sci Rep 14, 30354 (2024). https://doi.org/10.1038/s41598-024-81455-2
```

# Licence
[license: GPL-3.0-1](https://github.com/AlexisStrain/chlamy2024/tree/main?tab=GPL-3.0-1-ov-file)
