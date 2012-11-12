clear all;

%% lets plot 3 cycles of 50Hz AC voltage
f = 50;
Vm = 10;
phi = 0;

% generate the signal
t = [0:0.00001:3/f];
th = 2*pi*f*t;
v = Vm*sin(th+phi);
vsqr = v.^2 + 1E-5;

%% plot now
plotx{1} = t*1E3; %convert time in ms and create a cell array
ploty{1} = vsqr; % assign v to a cell array
opt.XLabel = 'Time, t (ms)'; % xlabel
opt.YLabel = 'Voltage, V (V)'; %ylabel
opt.YScale = 'log';

% Save? comment the following line if you do not want to save
opt.FileName = 'plotVoltSimpleLogScale.eps'; 

% create the plot
plotPub(plotx, ploty, 1, opt);
    