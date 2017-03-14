//load image

img=readpbm ("../images/Earth.pbm")
display_gray(img)

//save
renderPos='../render/'
writepbm(img, renderPos + 'mawie.pbm')
