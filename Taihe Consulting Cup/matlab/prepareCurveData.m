function [xData, yData] = prepareCurveData( x, y )

 % Set up fittype and options.
ft = fittype( 'a/(1+exp(-b*x))', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.957166948242946 0.485375648722841];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
plot(xData,yData)