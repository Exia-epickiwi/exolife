//load image
getd('../scripts/')

//save
imgPos='../images/'
img=readpbm(imgPos + 'Mars_surface.pbm');

//taux gaz methane
function taux=tauxgaz(imgsrc)
    [wd,he]=size(imgsrc) //calcule les pixel de l'image
    taux=0 //le taux est a 0
    for i=1:wd //on commence sur la première ligne
        for j=1:he //on commence sur la première colonne
            pixel = imgsrc(i,j) //calcul ainsi de suite en colonne et en ligne
            tauxpix = pixel * 100 / 255 //permet de calculer le taux de pixel
            taux = tauxpix + taux //c'est la somme des taux de pixel
        end
    end
    taux = taux / (wd * he) //enfin pour faire la moyenne on fait le taux de l'image diviser par la taille de pixel de l'image
endfunction

disp(tauxgaz(img))
