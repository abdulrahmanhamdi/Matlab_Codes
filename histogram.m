
close all
Iin=imread('ai.jpeg');
figure; imshow(Iin);
Iin=rgb2gray(Iin);
[M, N]=size(Iin);
h=zeros(1,256);

for r=1:M
    for c=1:N
        indis=Iin(r,c)+1;
        h(indis)=h(indis)+1;
    end
end
p=h/(M*N);
s(1)=p(1);
for i=2:256
    s(i)=s(i-1)+p(i);
end
s=round(255*s);
figure;plot(s);
figure; stem(h);
Iout=Iin;
for r=1:M
    for c=1:N
        indis=Iin(r,c)+1;
        Iout(r,c)=s(indis);
    end
end
figure;subplot(1,2,1)
imshow(Iin);subplot(1,2,2)
imshow(Iout);



