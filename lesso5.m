m = 5;
n = 4;
k = 3;
A = ones(m,n)
for i = 1:m
for j=1:n
A(i,j) = k*A(i,j)
end
end
