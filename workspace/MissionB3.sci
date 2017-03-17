//Load scripts from folder
funcprot(0)
getd("../scripts")
//Global variables
imgPos = "../images/"   //The position of the source images
renderPos = "render/"   //The folder where the render images will be saved
//Load image
imgin = readpbm(imgPos+"HD215497.pbm")
//Isolate the specific color range to yellow
coldwimg = seuillageEx(imgin,63,0,63)
//Isolate the specific color range to red
mediumlowimg = seuillageEx(imgin,126,0,126)
//Isolate the specific color range to blue
mediumhighimg = seuillageEx(imgin,189,0,189)
//Isolate the specific color range to green
hotnimg = seuillageEx(imgin,255,0,255)
result = addition(addition(addition(mediumhighimg,hotnimg),mediumlowimg),coldwimg)
//Save all the images
writepbm(result,renderPos+"MissionB3.pbm");
