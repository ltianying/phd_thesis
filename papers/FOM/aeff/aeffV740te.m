clear all
load v740te_sz.m00

sz=v740te_sz;

w=445;
h=220;
nmPerDivision=2000/1000;

sz_nl=sz(round(500-w/4):round(500+w/4),round(500-h/4):round(500+h/4));


aeff=w*h*1e-18*sum(sum(sz))/sum(sum(sz)))




%1.3410e-13
break
figure(1)
imagesc(sz)
figure(2)
imagesc(sz(round(500-w/4):round(500+w/4),round(500-h/4):round(500+h/4)))

