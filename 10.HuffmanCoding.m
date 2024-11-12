clc;
clear all;
close all;

% Get the number of symbols
x = input('Enter number of symbols: ');

% Initialize arrays
symbols = zeros(1, x);
p = zeros(1, x);

% Get symbols and probabilities
for m = 1:x
    symbols(m) = input('Enter the symbol number: ');
    p(m) = input('Enter the probability: ');
end

% Calculate Huffman dictionary
[dict, avglen] = huffmandict(symbols, p);
Hx = 0; % Initialize entropy
code_length = 0; % Initialize code length

% Encode and decode each symbol
for m = 1:x
    hcode = huffmanenco(symbols(m), dict); % Encode symbol
    dsig = huffmandeco(hcode, dict); % Decode symbol
    code_length = length(hcode); % Length of encoded symbol
    
    % Calculate entropy
    Hx = Hx + (p(m) * (-log2(p(m))));
end

% Display results
display(Hx);
display(dict);
display(avglen);

% Calculate efficiency
Efficiency = (Hx / avglen) * 100;
display(Efficiency);