//Load scripts from folder
funcprot(0);
getd("../scripts");
//Global variables
imgPos = "../images/";   //The position of the source images
renderPos = "render/";   //The folder where the render images will be saved
//Load image
imgin = readpbm(imgPos+"HD215497.pbm");
//Isolate the specific color range
izimg = colorRange(imgin,0,50);
//isolate a specific color range
display_gray(izimg);
