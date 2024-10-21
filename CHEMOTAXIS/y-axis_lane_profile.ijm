macro "y-axis_lane_profile" {

//called at end of macro by restoreSettings
saveSettings();

if (nSlices==1)
   exit("Stack required");
waitForUser("1. Change stack to 8-bit"+"\n"+"2.  Align to a horizontal and vertical axis manually."+"\n"+"3.Align stack if moves."+"\n"+"4.Crop to top of agars and sides of plate"+"\n"+"5.INVERT"+"\n"+"6.draw rectangle around ENTIRE channel");

//save locations manually select output
//Dir=getDir("Choose 2_LapseIt_output");


//file save settings
a=getDir("image");
Dir=File.getParent(a);


//gen settings:
setBatchMode(false);
Height1=getHeight();
Width1=getWidth();
Height2=(Height1/2);

//finds pixel lenght of channel for square size
 if (selectionType!=0)
   exit("Rectangle selection required");
Roi.getBounds(x1, y1, rectangleDimensionx, rectangleDimensiony);
correctedDimensionx = rectangleDimensionx/2;


//gets minLocs coordinates based on max intensity
makeLine(0, Height2, Width1, Height2);
run("Clear Results");
profile = getProfile();
minLocs= Array.findMinima(profile, 50);
Array.sort(minLocs); 
minLocsy=newArray(minLocs.length);
minLocsy=Array.fill(minLocsy, Height2);
makeSelection( "polyline", minLocs, minLocsy);
lane=32;
while (Roi.size !=lane) {
   Dialog.createNonBlocking("Error");
   Dialog.addMessage("Please select");
Dialog.addNumber("Please Select lane number:", 32);   
Dialog.addMessage("Current Number:"+Roi.size+"\n"+"To delete point, press alt and click");
Dialog.show();
lane=Dialog.getNumber();
   }
Roi.getCoordinates(minLocs, ypoints);

//finding the average 1/3 position of every two maxima to find lane center more accurately
arrayLength=(minLocs.length-1);
finalPosition=newArray(arrayLength);
for (dimension=0; dimension<(minLocs.length-1); dimension++) {
   dimension2=dimension+1;
   newPosition=((minLocs[dimension2]+2*minLocs[dimension]))/3;
    finalPosition[dimension]=newPosition;
   }
 

   Dialog.createNonBlocking("Input Parameter");
   Dialog.addMessage("Please input rate to sample frames in Stack.");
   Dialog.addNumber("Sample every: ", 6);    
   Dialog.show();
   FrameSkipInterval =Dialog.getNumber();

for (i=0; i<finalPosition.length; i++) {
   x=finalPosition[i];
   BB=i+1;
   collectedValues="";
   makeRectangle(x, y1, correctedDimensionx, rectangleDimensiony);
   roiManager("Add");
   N = nSlices;
   for (k=1; k<=N; k+=FrameSkipInterval) {
         run("Clear Results");
         setSlice(k);
         // to set the plot profile to run vertically, and take pixel average across x dimesion:
         setKeyDown("alt");
         profile = getProfile();
         collectedValues=collectedValues+profile[1];
      for (j=2; j<profile.length; j++) {
         collectedValues=collectedValues+ "\t"+profile[j];
         }
      collectedValues=collectedValues+"\n"; 
      }

   //Save settings
   file = File.open(Dir+"/lane "+BB+".txt");
   print(file, collectedValues);
   print("\\Clear");
   File.close(file);
   setSlice(1);
   run("Clear Results");
      }
    }
 }
restoreSettings();
roiManager("Show All with labels");
}