### About: Diffusion
This notebook is designed to curve fit diffusion from image data, then determine the diffusion coefficent. It is also designed to model simple 2D Fickian diffusion. The data collection protocol is very similar to the one for chemotaxis indices as it is using the same CLA-Plate, but the code, sample datsets, and intial set up are different. 

### Protocol:
#### Data collection
1. Using the CLA-plate, fill one resevoir with a 1.5% agar solution and the chemical whose diffusion is being tested (in this case bromophenol blue), and fill the oposite resevoir with a 1.5% agar hydrogel lacking the chemical.
2. Fill the inner lanes with DI water.
3. Take images every 5 minutes for 24 hours.
   
#### Data processing (imageJ):
1. In imageJ, open the images as a stack (file-> import -> image sequence).
2. If the video moved you can align the stack to correct (plugin-> registration -> linear stack alignment with SIFT)
3. Convert to 8-bit and invert.
4. Rotate stack so that the lanes are exactly vertical to the screen y axis. Note which resevoir is at the top and bottom for next steps.
5. Crop to the top and the bottom of the lanes. The resevoirs should be completely cropped out. 
6. Open (file->open) the imageJ macro [y-axis_lane_profile](y-axis_lane_profile.ijm).
7. Follow the macro prompts to get the intensity along the y-axis for each lane.
8. The average of each lane will be saved as a "lane_number.txt" file in the same directory as the current stack, where lane 1 is the leftmost lane. 
9. Rename each 'lane_number.txt' file as "DD_MM_chemical_replicate number.txt" to match each lane.
    
#### Data processing (Jupyter Notebook):
1. Move all of the "DD_MM_sample_replicate placeholder.txt" files from imageJ into the same directory as the Jupyter Notebook [PUBLICATION_diffusion_modelling](2023_PUBLICATION_diffusion_modelling.ipynb).
  - Note: sample datasets provided 
2. Follow the prompts in the notebook to get the processed data.  
   




