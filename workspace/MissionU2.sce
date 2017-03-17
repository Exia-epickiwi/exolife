//Load scripts from folder
funcprot(0)
getd("../scripts")
//Global variables
imgPos = "../images/"   //The position of the source images
renderPos = "render/"   //The folder where the render images will be saved
//Load image
imgin = readpbm(imgPos+"U2_surface.pbm")
//Apply the filter in Y
imgout = colorRange(normalisation(contours(imgin)),100,255)
//Save the image
writepbm(imgout,renderPos+"MissionU2.pbm");
