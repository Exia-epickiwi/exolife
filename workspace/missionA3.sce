funcprot(0)
//eaux chaude sur la carte : mission A3
//load
getd('../scripts/')

//save
imgPos='../images/'
img=readpbm(imgPos + 'Europa_surface.pbm');

    //on appelle la fonction seuillage
display_gray(seuillage(img,165))


