//Load scripts from folder
funcprot(0)
getd("../scripts")
//Global variables
imgPos = "../images/"   //The position of the source images
renderPos = "render/"   //The folder where the render images will be saved
//Load image
imgin = readpbm(imgPos+"HD215497.pbm")
//Isolate the specific color range to yellow
yellowimg = colorRange(imgin,198,234)
//Isolate the specific color range to red
redwimg = colorRange(imgin,235,255)
//Isolate the specific color range to blue
blueimg = colorRange(imgin,103,183)
//Isolate the specific color range to green
greenimg = colorRange(imgin,44,97)
//Save all the images
writepbm(yellowimg,renderPos+"MissionB3-yellow.pbm")
writepbm(blueimg,renderPos+"MissionB3-blue.pbm")
writepbm(redimg,renderPos+"MissionB3-red.pbm")
writepbm(greenimg,renderPos+"MissionB3-green.pbm")
