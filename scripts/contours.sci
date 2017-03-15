function imgout=contours(imgsrc)
    filterx = [-1 -2 -1;0 0 0;1 2 1]
    imgfx = convolution(imgsrc,filterx,6)
    
    filtery = [-1 0 1;-2 0 2;-1 0 1]
    imgfy = convolution(imgsrc,filtery,6)
    
    [wd,he]=size(imgfx);
    //Create an empty image
    imgout = zeros(wd,he);
    //For each lines
    for i=1:he
        //For each columns
        for j=1:wd
            pix1 = imgfx(j,i);
            pix2 = imgfy(j,i);
            imgout(j,i) = sqrt(pix1^2 + pix2^2);
        end
    end
endfunction
