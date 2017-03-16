getd('../scripts/')

imgT=readpbm('../images/Gliese_581d.pbm')

[wd,he] = size(imgT)

imgF=zeros(wd,he)
imgF=fft(imgT)

imgFour=fourierTest(imgF)

display_gray(imgFour)
