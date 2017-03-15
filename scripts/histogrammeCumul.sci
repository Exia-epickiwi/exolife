function histo=histogrammeCumul(imgsrc)
    
    intensite=[];
    nbpixel=[];
    counter=1;
    for i=0:1:255 
        [x,y]=find(imgsrc<=i); //finds where imgsrc==i 
        intensite(counter)=i;
        nbpixel(counter)=length(x); //find how many pixels of im have value of i 
        counter=counter+1;
    end
    
    plot(intensite, nbpixel); //plot.
    histo=[intensite,nbpixel]
endfunction
