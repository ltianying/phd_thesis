load modeSlotSimetries_ey.m00
modo=modeSlotSimetries_ey;
imagesc(modo)

4*0.01*0.01*( sum(sum(modo.^2)) )^2/( sum(sum(modo(1:24,6:29).^4)) )

break
/rn,a,b/nx0/ls1
/r,qa,qb
101 0 1 0 OUTPUT_AMPLITUDE_3D 2.293708801 -6.946645215e-08
101 0 1
