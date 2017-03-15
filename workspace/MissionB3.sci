//Load scripts from folder
funcprot(0)
getd("../scripts")
//Global variables
imgPos = "../images/"   //The position of the source images
renderPos = "render/"   //The folder where the render images will be saved
//Load image
imgin = readpbm(imgPos+"HD215497.pbm")
//Isolate the specific color range to yellow
coldwimg = normalisation(colorRange(imgin,0,63))
//Isolate the specific color range to red
mediumlowimg = normalisation(colorRange(imgin,64,126))
//Isolate the specific color range to blue
mediumhighimg = normalisation(colorRange(imgin,127,189))
//Isolate the specific color range to green
hotnimg = normalisation(colorRange(imgin,190,255))
//Save all the images
writepbm(coldwimg,renderPos+"MissionB3-cold.pbm");
writepbm(mediumlowimg,renderPos+"MissionB3-medium-low.pbm");
writepbm(mediumhighimg,renderPos+"MissionB3-medium-high.pbm");
writepbm(hotnimg,renderPos+"MissionB3-hot.pbm");
