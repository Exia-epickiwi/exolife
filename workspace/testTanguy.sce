//Load scripts
getd('../scripts/')""

//Load image


imgPos="../images/"
img=readpbm(imgPos+'Earth.pbm')

//Show image

display_gray(img)

// Copy image
renderPos='../render/'
writepbm(img,renderPos + 'testTanguy.pbm')

