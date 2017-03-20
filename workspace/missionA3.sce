//
funcprot(0)
//eaux chaude sur la carte : mission A3
//load
getd('../scripts/')

//save
imgPos='../images/'
renderPos = "render/"   //The folder where the render images will be saved
img=readpbm(imgPos + 'Europa_surface.pbm');

resultat = seuillage(img,250)
writepbm(resultat,renderPos+"MissionA3.pbm");


