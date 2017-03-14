//Load scripts from folder
funcprot(0)
getd("../scripts");
//Global variables
imgPos = "../images/";   //The position of the source images
renderPos = "render/";   //The folder where the render images will be saved
//Load image
imgin = readpbm(imgPos+"Encelade_surface.pbm");
//Show the coordinates of the brightest color of the image loaded
disp(colorCoordinates(imgin,max(imgin)))
