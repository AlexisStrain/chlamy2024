### About: swimTRACKING
This code is used to process the single cell tracking output from ImageJ's Trackmate. Functions include plotting the tracks, calculating statistics such as angle and speed. Two functions, photoshock and reversal, have been optimized to *Chlamydomonas reinhardtii*, however most other statistics can be used for other organisms as well. 

#### There are three seperate experiemental setups that this code can be configured for: 
1. Tracking in homogenous conditons
   - *Chlamydomonas* cells are tracked using a microscope slide and a spacer for a 60 second duration. There should be no directional bias.
   - See here for sample datasets of CC-125 and _ppr2_. 
2. Tracking in a gradient
   - *Chlamydomonas* is placed in a glass-bottomed culture chamber, with two agarose resevoirs on each side of the chamber, and imaged. If chemotaxis is occuring there will be a directional bias.
   - See here for one sample replicate of CC-125 at the source. See here for one sample replicate of CC-125 at the sink.
3. Tracking during photoshock
   -  *Chlamydomonas* cells are tracked for 3.6 seconds and illuminted with a short, bright white flash at 1.8 seconds (code must be updated if using different times)
   -  see here for one replicate of CC-125 and ppr2.

*files sizes to large to provide sample datasets for homogenous conditions (availble upon request). Data for photoshock provided. 
