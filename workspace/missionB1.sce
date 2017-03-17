//Load scripts
funcprot(0);
getd('../scripts/')

//Load image
imgPos="../images/"
img=readpbm(imgPos+'Gliese 667Cc_surface.pbm');

render=egalisation(img)

writepbm(render,'../images/Gliese 667Cc_surfaceAFTER.pbm')
display_gray(render)
