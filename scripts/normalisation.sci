// Do a normalisation on the image, to get value from 0 to 255
function render=normalisation(imgsrc)
    //get the width and height of the image
    [wd,he]=size(imgsrc)
    // set the return image to zero
    render=zeros(wd,he)
    // get the minimal value of gray
    clrmin=min(imgsrc);
    
    // get the maximal value of gray
    clrmax=max(imgsrc);
    
    // for the width of the image
    for i=1:wd
        for j=1:he
            // get the gray value of the pixel
            pix = imgsrc(i,j);
            // substract the minimal value to set the minimal to 0
            pix = pix - clrmin;
            // normalise the value of gray
            pix = round((pix*255)/(clrmax-clrmin));
            // save the pixel to the return image
            render(i,j)=pix;
        end            
    end
endfunction
