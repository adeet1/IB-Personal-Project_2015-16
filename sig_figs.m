clc

fprintf('SIGNIFICANT FIGURES CALCULATION\n')
fprintf('==============================\n\n')

num = 35200;
num = num2str(num);
size = size(num);
num = sprintf('%c ', num);

QtyDigits = size(1, 2);
sigfigs = 0;

strnum = strsplit(num, ' ')

for i = 1:QtyDigits
    % Count # of non-zeros
    if strcmp(strnum(1, i), '1') || strcmp(strnum(1, i), '2') || strcmp(strnum(1, i), '3') || strcmp(strnum(1, i), '4') || strcmp(strnum(1, i), '5') || strcmp(strnum(1, i), '6') || strcmp(strnum(1, i), '7') || strcmp(strnum(1, i), '8') || strcmp(strnum(1, i), '9')
        sigfigs = sigfigs + 1
    end
end
%number = str2num(number);
%{
SigFigs = 0;
sci_notation = 0;
sci_num = 1;

for i = 1:(size - 1)
    number = number / 10;
    i = i + 1;
end

for i = 1:4
    if number(1, i) ~= 0
        sigfigs = sigfigs + 1;
    end
end
%}
%}