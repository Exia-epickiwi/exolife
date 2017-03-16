//Load scripts
funcprot(0);
getd('../scripts/')

//Load image
imgPos="../images/"
img=readpbm(imgPos+'Gliese 581d.pbm');

//This is the script to do an equalization on the image


// Calcul of the histogram value (nb of pixel with gray value)
imghist=histogramme(img);
disp(imghist)

// Calcul normalized histogram 
// but before, calcul of the total number of pixel
[wd,he]=size(img)
nbpixels = wd*he

imgnormhist=histogrammeNorm(imghist,nbpixels)
disp(imgnormhist)

// Calcul of normalised density of probability

imgdensityhist=histogrammeDensity(imgnormhist)
disp(imgdensityhist)

// Creating new image
render=zeros(wd,he)

// Setting the pixel to the new image
for i=1:wd
    for j=1:he
        // adding the equalized pixel to the image
        render(i,j)=imgdensityhist((img(i,j)+1))*255
    end
end

display_gray(render)
