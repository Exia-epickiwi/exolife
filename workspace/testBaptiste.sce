//Load scripts from folder
funcprot(0)
getd("../scripts");
//Global variables
imgPos = "../images/";   //The position of the source images
renderPos = "render/";   //The folder where the render images will be saved
//Load image
imgin = readpbm(imgPos+"Earth.pbm");
//Assign a "seuillage" filter to the image
imgout=seuillage(imgin,100);
//Save new image
writepbm(imgout,renderPos+"testBaptiste.pbm");
