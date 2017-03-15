//Load scripts
getd('../scripts/')

//Load image

imgPos="../images/"
img=readpbm(imgPos+'Gliese 667Cc_surface.pbm')

imgnorm=normalisation(img)
disp(min(imgnorm))
disp(max(imgnorm))
display_gray(imgnorm)
