
# Membrane-bound Guanylyl Cyclase COP5/HKR1 changes ciliary beat pattern and biases cell steering during chemotaxis in _Chlamydomonas reinhardtii_
**Alexis Strain<sup>1</sup>, Nathan Kratzberg<sup>1</sup>, Dan Vu<sup>1</sup>, Emmaline Miller<sup>2</sup>, Ken-ichi Wakabayashi<sup>3</sup>, Adam Melvin<sup>4</sup>, Naohiro Kato<sup>1<sup>**\
<sup>1</sup> Department of Biological Sciences, Louisiana State University, Baton Rouge, LA 70803, USA\
<sup>2</sup> Cain Department of Chemical Engineering, Louisiana State University, Baton Rouge, LA, 70803, USA\
<sup>3</sup> Department of Industrial Life Sciences, Faculty of Life Sciences, Kyoto Sangyo University, Kyoto, 603-8555 JAPAN\
<sup>4</sup> Department of Chemical and Biomolecular Engineering, Clemson University, Clemson, SC 29634, USA\
 

[BioRxiv](https://www.biorxiv.org/content/10.1101/2024.10.14.618206v1.article-metrics), 2024
<br>
---
![angle speed and video](https://github.com/AlaSummer/Chlamy-2024/assets/97978270/c130e31e-0b38-48c8-a5e1-f9f9ed258236)
   *created by swimTRACKING
## About
#### This repository contains the scripts need to generate the figure for the manuscript "Membrane-bound Guanylyl Cyclase COP5/HKR1 changes ciliary beat pattern and biases cell steering during chemotaxis in _Chlamydomonas reinhardtii_". It is split into four sections:

Note: Each section is accompanied by sample datasets of a positive control (typically the *wt* CC-125) and a negative control (typically the paralyzed _pf18_)
1. [CHEMOTAXIS](https://github.com/AlaSummer/Chlamy-2024/tree/main/CHEMOTAXIS)
   - Code and procedures required the process data from the 3D printed Chemotaxis Lane Assay (CLA) plate
   - STL file reqired to print the CLA-plate
2. [PHOTOTAXIS](https://github.com/AlaSummer/Chlamy-2024/tree/main/PHOTOTAXIS)
   - Code for processing phototaxis experiements
3. [DIFFUSION](https://github.com/AlaSummer/Chlamy-2024/tree/main/DIFFUSION)
   - Code for finding diffusion coefficients of BPB based on curve fitting.
3. [swimTRACKING](https://github.com/AlaSummer/Chlamy-2024/tree/main/swimTRACKING)
   - Code for processing all microscopy video of cell tracking including photoshock, homogenous non-gradient conditions, and gradient conditions.

## Requirements to Run swimTRACKING
 - [Fiji](https://imagej.net/software/fiji/downloads)
 - [FIJI plugin: TrackMate](https://imagej.net/plugins/trackmate/TrackMate)
 - [Python](https://www.python.org/downloads/release/python-360/)
 - [NumPy version](https://numpy.org/)
 - [Pandas version](https://pandas.pydata.org/)
 - [Seaborn version](https://seaborn.pydata.org/installing.html)
 - [Matplotlib version](https://matplotlib.org/stable/users/installing/index.html)
 - [Scipy version](https://www.scipy.org/)
 - [Scikit-learn version](https://scikit-learn.org/stable/)

## Citation
if you use the code released here, please cite this paper: 
```
Manuscript is not yet peer reviewed. Please cite bioRxiv in the interim
```

# Licence
[license: GPL-3.0-1](https://github.com/AlaSummer/Chlamy-2024/tree/main?tab=GPL-3.0-1-ov-file)
