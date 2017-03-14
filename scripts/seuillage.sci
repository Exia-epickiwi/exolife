//A function to apply a "seuillage" filter
//imagesrc : The base matrix of the image
//seuil : The value of the seuil
function render=seuillage(imgsrc,seuil)
    //Get the sizes of the image
    [wd,he]=size(imgsrc);
    //Create an empty render image
    render=zeros(wd,he);
    //For each line of the image
    for i=1:he
        //For each colum of the image (each pixel)
        for j=1:wd
            //Get the value of the pixel
            pix = imgsrc(i,j);
            //Choose which value to assign
            if pix < seuil then
                //Set to black
                render(i,j) = 0;
            else
                //Set to white
                render(i,j) = 255;
            end
        end
    end
endfunction
