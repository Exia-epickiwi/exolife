//A function to apply a "seuillage" filter
//imagesrc : The base matrix of the image
//seuil : The value of the seuil
//couleurMin : The color if the pixel original color is under the seuil
//couleurMax : The color if the pixel original color is above the seuil
function render=seuillageEx(imgsrc,seuil,couleurMin,couleurMax)
    //Get the sizes of the image
    [wd,he]=size(imgsrc);
    //Create an empty render image
    render=zeros(wd,he);
    //For each line of the image
    for i=1:he
        //For each colum of the image (each pixel)
        for j=1:wd
            //Get the value of the pixel
            pix = imgsrc(j,i);
            //Choose which value to assign
            if pix < seuil then
                //Set to black
                render(j,i) = couleurMin;
            else
                //Set to white
                render(j,i) = couleurMax;
            end
        end
    end
endfunction
