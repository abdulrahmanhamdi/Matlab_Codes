
close all
Irgb=imread('ai.jpeg');
figure; imshow(Irgb);
Igray=rgb2gray(Irgb);
figure; imshow(Igray);
[M, N]=size(Igray);
h=zeros(1,256);

for r=1:M
    for c=1:N
        indis=Igray(r,c)+1;
        h(indis)=h(indis)+1;
    end
end
figure; stem(h);
p=h/(M*N);
s(1)=p(1);
for i=2:256
    s(i)=s(i-1)+p(i);
end
s=round(255*s);
figure;plot(s);
Iout=Igray;
for r=1:M
    for c=1:N
        indis=Igray(r,c)+1;
        Iout(r,c)=s(indis);
    end
endfigure; imshow(Iout);



