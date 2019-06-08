function Hd = proj_filtr(Fs,Fstop1,Fpass1,Fpass2,Fstop2,Astop1,Apass,Astop2)
%PROJ_FILTR Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.4 and Signal Processing Toolbox 8.0.
% Generated on: 21-May-2019 19:55:30

% Butterworth Bandpass filter designed using FDESIGN.BANDPASS.

if nargin==0
    % All frequency values are in Hz.
    Fs = 10000;  % Sampling Frequency
    Fstop1 = 35;          % First Stopband Frequency
    Fpass1 = 45;          % First Passband Frequency
    Fpass2 = 55;          % Second Passband Frequency
    Fstop2 = 65;          % Second Stopband Frequency
    Astop1 = 90;          % First Stopband Attenuation (dB)
    Apass  = 1;           % Passband Ripple (dB)
    Astop2 = 90;          % Second Stopband Attenuation (dB)
end

match  = 'stopband';  % Band to match exactly

% Construct an FDESIGN object and call its BUTTER method.
h  = fdesign.bandpass(Fstop1, Fpass1, Fpass2, Fstop2, Astop1, Apass, ...
                      Astop2, Fs);
Hd = design(h, 'butter', 'MatchExactly', match);

% [EOF]
