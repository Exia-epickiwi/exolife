//Load scripts
getd('../scripts/')

//Load image
imgPos="../images/"
img=readpbm(imgPos+'Gliese 667Cc_surface.pbm')


// Do a normalisation on the image
display_gray(normalisation(img))
