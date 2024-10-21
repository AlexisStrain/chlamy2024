### About: The code in the section is needed to find the Chemotaxis Indices (CI) of the Chemotaxis Lane Assay (CLA) Plate

#### Protocol:
DISCLAIMER: This is a shortened experimental protocol for quick reference. Please see publication for final methodology.
1. 3D Print the CLA-plate in ABS.
2. Set up the CLA-plate, so each lane has 1 ml of algae, at a 10^6 cell/ml, and the two reservoirs are filled with 1.5% solidified agar hydrogel. Suggested to do at least 3 replicates of each sample per experiment. 
3. Image the plate every 5 minutes for 24 hours. Use a high-resolution camera with minimal "fish-eye" effect. 

#### Data processing (imageJ):
1. In ImageJ, open the images as a stack (file-> import -> image sequence).
2. If the video moves you can align the stack to correct (plugin-> registration -> linear stack alignment with SIFT)
3. Convert to 8-bit and invert.
4. Rotate stack so that the lanes are exactly vertical to the screen y axis. Note which resevoir is at the top and bottom for next steps.
5. Crop to the top and the bottom of the lanes. The resevoirs should be completely cropped out. 
6. Open (file->open) the imageJ macro [y-axis_lane_profile](y-axis_lane_profile.ijm).
7. Follow the macro prompts to get the intensity along the y-axis for each lane.
8. The average of each lane will be saved as a "lane_number.txt" file in the same directory as the current stack, where lane 1 is the leftmost lane. 
9. Rename each 'lane_number.txt' file as "DD_MM_sample_replicate number.txt" for each lane. 
   
#### Data processing (Jupyter Notebook):
1. Move all of the "DD_MM_sample_replicate number(optional).txt" files from imageJ into the same directory as the Jupyter notebook [PUBLICATION_CHEMOTAXIS INDICES](https://github.com/AlaSummer/Chlamy-2024/blob/main/CHEMOTAXIS/PUBLICATION_CHEMOTAXIS%20INDICES.ipynb) for processed sample datasets.
   - Note: sample data is provided 
3. Follow the prompts in the notebook for further instructions to get the final indices.
   

