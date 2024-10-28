% Initialize an empty 4x4 matrix
A = zeros(4, 4);

% Use a for loop to fill the matrix with values
for i = 1:4
    for j = 1:4
        A(i, j) = (i-1)*4 + j;
    end
end

% Display the matrix
disp('4x4 Matrix A:');
disp(A);
