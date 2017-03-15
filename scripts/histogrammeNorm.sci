function normhisto=histogrammeNorm(histo,nbpixels)
    for i=1:256
        normhisto(i)=histo(i)/nbpixels
    end
endfunction
