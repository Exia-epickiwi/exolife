// Definition of gerenalisation on the image
function densitynorm=histogrammeDensity(normhist)
    for i=1:256
        if i==1
            densitynorm(i)=normhist(i);
        else
            densitynorm(i)=normhist(i)+densitynorm(i-1);
        end
    end
endfunction
