clear
%syms delta_w through0 drop0 coundrop0 coundrop coundrop_h through drop Q Qe1 Qe2 Qeff QR A B positive

Q=2000;
Qe1=10000;
Qe2=10000;
QR=7500;

Qeff = sqrt(Qe1*Qe2);

w=linspace(0,1E-3,1000); %normalized delta frequency (w'-1)

through0 = (1-2/(Qe1*Q*(1/Q^2+1/QR^2)))^2
drop0 = (2/(Q*Qeff*(1/Q^2+1/QR^2)))^2
coundrop0 = (2/(QR*Qeff*(1/Q^2+1/QR^2)))^2
coundrop_spec_norm = abs(2./(QR*Qeff*((2*1i*w+1/Q).^2+1/QR^2))).^2/coundrop0;

w_half = interp1(coundrop_spec_norm,w,0.5) %Half-width-half-maximum

delta_w=2*w_half; %FWHM

plot(w,coundrop_spec_norm,w_half,0.5,'or')




A = delta_w/sqrt((coundrop0/drop0)-1+sqrt(2)*sqrt((coundrop0/drop0)^2+1));
B = A*sqrt(coundrop0/drop0);
% 
Q_calc = 1/A
Qe1_calc = 2*A/((A^2+B^2)*(1+sqrt(through0)))
Qe1_calc_alt = 2*A/((A^2+B^2)*(1-sqrt(through0))) %alternative sign
Qe2_calc = 2*A*(1+sqrt(through0))/(drop0*(A^2+B^2))
Qe2_calc_alt = 2*A*(1-sqrt(through0))/(drop0*(A^2+B^2)) %alternative sign
QR_calc = 1/B

