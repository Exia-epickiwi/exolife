//Mission X-2
funcprot(0)
getd('../scripts/')

//load image
imgPos='../images/'
renderPos = "render/"   //The folder where the render images will be saved
img=readpbm(imgPos+'Gliese_581d V2.pbm');

writepbm(median(img,15),renderPos+"MissionX2v2.pbm");
