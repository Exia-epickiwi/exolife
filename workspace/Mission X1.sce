getd('../scripts/')

load('../images/Asellus Secundus.dat')



imgF=ifft(imgT)

writepbm(imgF, './render/X1AFTER.pbm')
display_gray(imgF)

