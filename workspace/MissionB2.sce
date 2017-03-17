//Load scripts
getd('../scripts/')

//Load image
imgPos="../images/"
img=readpbm(imgPos+'GD61.pbm')

// Do a normalisation on the image
display_gray(normalisation(img))

writepbm(normalisation(img),'../images/GD61AFTER.pbm')
