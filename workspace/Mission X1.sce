getd('../scripts/')

load('../images/Asellus Secundus.dat')



imgF=ifft(imgT)

writepbm(imgF, '../images/X1AFTER.pbm')
display_gray(imgF)

