//Load scripts from folder
funcprot(0)
getd("../scripts");
//Global variables
imgPos = "../images/";   //The position of the source images
renderPos = "render/";   //The folder where the render images will be saved
//Load image
imgin = readpbm(imgPos+"Formes.pbm");

imgout = median(imgin,0)

//Show the coordinates of the brightest color of the image loaded
writepbm(imgout,renderPos+"MissionC2.pbm");
