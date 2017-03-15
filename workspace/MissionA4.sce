//Load scripts from folder
funcprot(0)
getd("../scripts")
//Global variables
imgPos = "../images/"   //The position of the source images
renderPos = "render/"   //The folder where the render images will be saved
//Load image
imgin1 = readpbm(imgPos+"Jupiter1.pbm")
imgin2 = readpbm(imgPos+"Jupiter2.pbm")
//Extract the noise with substraction
imgnze = soustraction(imgin1,imgin2)
//Substract the noise from the original image
imgdnze = soustraction(imgin1,imgblr)
//Apply a blur filter
filter = [1 1 1;1 1 1;1 1 1]
imgout = convolution(imgdnze,filter,9)
//Save the image
writepbm(imgout,renderPos+"MissionA4.pbm");
