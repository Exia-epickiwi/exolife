//Mission X-2
funcprot(0)
getd('../scripts/')

//load image
imgPos='../images/'
img=readpbm(imgPos+'Gliese_581d V2.pbm');


display_gray(median(img))
