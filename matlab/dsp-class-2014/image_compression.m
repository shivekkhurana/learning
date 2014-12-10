imag=imread('C:\Users\Shivek Khurana\Desktop\bhalu.jpg');
origWidth=size(imag,2);
samplesHalf=floor(origWidth/2);
samplesQuarter=floor(origWidth/4);
samplesEighth=floor(origWidth/8);
imagCompressed2=[];
imagCompressed4=[];
imagCompressed8=[];
for k=1:3  % all color layers: RGB
    for i=1:size(imag, 1)  % all rows
        rowDCT=dct(double(imag(i,:,k)));
        imagCompressed2(i,:,k) = idct(rowDCT(1:samplesHalf), origWidth);
        imagCompressed4(i,:,k) = idct(rowDCT(1:samplesQuarter), origWidth);
        imagCompressed8(i,:,k) = idct(rowDCT(1:samplesEighth), origWidth);
    end
end
subplot(2,2,1), image(uint8(imag)), title('Original Image');
subplot(2,2,2), image(uint8(imagCompressed2)), title('Compression Factor 2');
subplot(2,2,3), image(uint8(imagCompressed4)), title('Compression Factor 4');
subplot(2,2,4), image(uint8(imagCompressed8)), title('Compression Factor 8');