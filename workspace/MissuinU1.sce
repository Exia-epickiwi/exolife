//Load scripts from folder
funcprot(0)
getd("../scripts")
//Global variables
imgPos = "../images/"   //The position of the source images
renderPos = "render/"   //The folder where the render images will be saved
//Load image
imgin = readpbm(imgPos+"U1_surface.pbm")
//Apply the filter in Y
imgout = normalisation(contours(imgin))
//Save the image
writepbm(imgout,renderPos+"MissionU1.pbm");
