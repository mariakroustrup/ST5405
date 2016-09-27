JANRand = randsample(JAN,50);

midJAN = sum(JAN)/length(JAN)
midFEB = sum(FEB)/length(FEB)
midMAR = sum(MAR)/length(MAR)
midAPR = sum(APR)/length(APR)
midMAJ = sum(MAJ)/length(MAJ)
midJUN = sum(JUN)/length(JUN)

maxJAN = max(JAN)
maxFEB = max(FEB)
maxMAR = max(MAR)
maxAPR = max(APR)
maxMAJ = max(MAJ)
maxJUN = max(JUN)

figure 
stem(JANRand)
title('Antal dage med overbelægning for hele Danmark (randomiseret sample)')
xlabel('Tilfældigt udvalgte hospitalsafdelinger fra hele Danmark')
ylabel('Antal dage')
set(gca,'fontsize',20);
box off