funcprot(0)

//load
getd('../scripts/')

//save
imgPos='../images/'
img=readpbm(imgPos + 'Europa_surface.pbm');

//eaux chaude sur la carte

    
display_gray(seuillage(img,165))


