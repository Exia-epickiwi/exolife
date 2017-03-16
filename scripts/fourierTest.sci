function imgReturn=fourierTest(img)
    
    [wd,he]=size(img)
    imgReturn=zeros(wd,he)
    
    for j=1:he
        for i=1:wd
            if(~wd > round(wd/2)+5 & ~wd<round(wd/2)-5)
                imgReturn(j,i)=0
            else
                imgReturn=img(i,j)
            end
        end
    end
endfunction
