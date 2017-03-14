//load image
getd('../scripts/')

//save
imgPos='../images/'
img=readpbm(imgPos + 'Earth.pbm');

//seuillage
function r=seuillage(imgsrc,seuil)
    [wd,he]=size(imgsrc)
    render=zeros(wd, he)
    render=imgsrc;
    for i=1:wd
        for j=1:he
            pixel = imgsrc(i,j)
            if pixel <= seuil then
                render (i,j)=0;
            elseif pixel > seuil then
                render(i,j)=255;
            end
        end
    end
    display_gray(render)
endfunction

img=seuillage(img,87)
end
