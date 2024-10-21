### ABOUT: Chlamydomonas phototaxis droplet assay

### Protocol:
NOTE: This protocol is adapted from [Ueki and Wakabayshi, 2017](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8410251/).   
DISCLAIMER: This is a shortened experimental protocol for quick reference. Please see publication for final methodology.
1. Take algal cell at 10^6 cell/ml and transfer to phototaxis assay solution [Okita et al., 2005](https://pubmed.ncbi.nlm.nih.gov/15657081/)
2. Incubate in dim red light for 30 minutes.
4. Pipet droplet of 40 uls each onto a smooth white surface, such as parafilm.
5. Illuminate the droplet from one side with a dim white light.
6. Take images before and 2 minutes after illumnation. 


### Data processing:
1. Draw circle around the droplet and divide circle into 16 quadrants using imageJ. The following macro is suggested to do this. [drawCirclesAndQuadrants](https://gist.github.com/lacan/8acb3bfe51eb1b1ba6c60fba75e085a8).  Credit goes to to Oliver Burri for this macro. 
2. Take the average pixel intensity at t=0 and t=2 minutes using the imageJ measure function. Save both measurements in same ".csv" file such that the first 16 rows are the averages of time 0, and the next 16 rows are the average at time 2.
3. Save the ".csv" in the format DD_MM_name of dataset_any other identifier or notes.csv. Store in the same folder as this Jupyter Notebook.
4. Use the Phototaxis Jupyter Notebook to process dataset. Will need to make adjustments to chose the proper controls for statistical ouputs. 
