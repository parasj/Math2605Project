function [ ] = runHilbertSolution( a, b )

fileID = fopen('../written/hilbert_partd.txt','w');

plot_x = a : b;
plot_dBQR = zeros(b - a, 1);
plot_dQR = zeros(b - a, 1);
plot_dBQRgivens = zeros(b - a, 1);
plot_dQRgivens = zeros(b - a, 1);
plot_dBLU = zeros(b - a, 1);
plot_dLU = zeros(b - a, 1);

for i = a:b
    fprintf(fileID, 'n = %d:\n', i);
    
    [A, b] = hilbert(i);
    [x, dLU, dB] = solve_lu_b(A, b);
    plot_dBLU(i - a + 1) = dB;
    plot_dLU(i - a + 1) = dLU;
    
    fprintf(fileID, 'LU: \n');
    fprintf(fileID, '\tx = [  ');
    fprintf(fileID, [repmat('%.5f ', 1, size(x, 2)) '  '], x');
    fprintf(fileID, ']^t \n');
    fprintf(fileID, '\t||LU-H||_inf = %d \n', dLU);
    fprintf(fileID, '\t||Hx_sol-b|| = %d \n', dB);
    
    [A, b] = hilbert(i);
    [x, dQR, dB] = solve_qr_b(A, b);
    plot_dBQR(i - a + 1) = dB;
    plot_dQR(i - a + 1) = dQR;
    
    fprintf(fileID, 'QR Householders: \n');
    fprintf(fileID, '\tx = [  ');
    fprintf(fileID, [repmat('%.5f ', 1, size(x, 2)) '  '], x');
    fprintf(fileID, ']^t \n');
    fprintf(fileID, '\t||QR-H||_inf = %d \n', dQR);
    fprintf(fileID, '\t||Hx_sol-b|| = %d \n', dB);
    
    [A, b] = hilbert(i);
    [x, dQR, dB] = solve_qr_b_givens(A, b);
    plot_dBQRgivens(i - a + 1) = dB;
    plot_dQRgivens(i - a + 1) = dQR;
    
    fprintf(fileID, 'QR Givens: \n');
    fprintf(fileID, '\tx = [  ');
    fprintf(fileID, [repmat('%.5f ', 1, size(x, 2)) '  '], x');
    fprintf(fileID, ']^t \n');
    fprintf(fileID, '\t||QR-H||_inf = %d \n', dQR);
    fprintf(fileID, '\t||Hx_sol-b|| = %d \n', dB);
    
    fprintf(fileID, '\n\n');
end

fclose(fileID);

subplot(3,2,3);
scatter(plot_x, plot_dBQR, 100, 'filled')
title('||Hx_{sol}-b|| for QR Householders')
ylabel('||Hx_{sol}-b||') % x-axis label
xlabel('n') % y-axis label

subplot(3,2,4);
scatter(plot_x, plot_dQR, 100, 'filled')
title('||QR-H||_{\infty} with Householders')
ylabel('||QR-H||_{\infty}') % x-axis label
xlabel('n') % y-axis label


subplot(3,2,5);
scatter(plot_x, plot_dBQRgivens, 100, 'filled')
title('||Hx_{sol}-b|| for QR Givens')
ylabel('||Hx_{sol}-b||') % x-axis label
xlabel('n') % y-axis label

subplot(3,2,6);
scatter(plot_x, plot_dQRgivens, 100, 'filled')
title('||QR-H||_{\infty} with Givens')
ylabel('||QR-H||_{\infty}') % x-axis label
xlabel('n') % y-axis label


subplot(3,2,1);
scatter(plot_x, plot_dBLU, 100, 'filled')
title('||Hx_{sol}-b|| for LU')
ylabel('||Hx_{sol}-b||') % x-axis label
xlabel('n') % y-axis label

subplot(3,2,2);
scatter(plot_x, plot_dLU, 100, 'filled')
title('||LU-H||_{\infty}')
ylabel('||LU-H||_{\infty}') % x-axis label
xlabel('n') % y-axis label

end

