function [img] = generateFigure(imgH ,imgW )
img = uint8(zeros(imgH,imgW,3));

x = 0: 2*pi/(imgW): 2*pi;
redy = sin(x);
greeny = cos(x);
bluey = x.^2;

x = int32(x/2/pi*imgW +1);
redy = int32(imgH - round(redy*imgH/40));
greeny = int32(imgH - round(greeny*imgH/40));
bluey = int32(imgH - round(bluey*imgH/40));

for i=1: imgW
    if redy(i)>0 && redy(i) <= imgH
        img(redy(i), x(i), 1)=255;
    end
     if greeny(i)>0 && greeny(i) <= imgH
        img(greeny(i), x(i), 2)=255;
     end
     if bluey(i)>0 && bluey(i) <= imgH
        img(bluey(i), x(i), 3)=255;
     end
end

imshow(img);
end