%% loader data fra EXCEL
data=xlsread('overbelaegning_AUH.xlsx');

%% V�lger kollonen med data (gennemsnitsv�rdier)
data1=data(:,1);


%% Laver string
str = {'Alb 1.Afdeling Nord og Dronninglund';'Alb 2.Afdeling (NOT/Fars�)';'Alb 3.Afdeling (TV)';'Alb 4.Afdeling (AH�R/Hobro)';'Alb Akut- og Traumecenter';'Alb B�rneomr�de';'Alb Endokrinologisk Omr�de';'Alb Geriatrisk Omr�de';'Alb Gyn.-obst. Omr�de';'Alb Hjerte-lungekirurgisk afd';'Alb H�matologisk Omr�de';'Alb Infektionsmedicinsk Omr�de';'Alb Kardiologisk Omr�de';'Alb Karkirurgisk Omr�de';'Alb Kir Gastro. Omr�de';'Alb K�bekirurgisk omr�de';'Alb Lungemed. Omr�de';'Alb Mammakirurgisk Omr�de';'Alb Med.gastroenterologisk Omr�de';'Alb Neurokir. Omr�de';'Alb Neurologisk Omr�de';'Alb Nyremedicinsk omr�de';'Alb Onkologisk Omr�de';'Alb Ortop�dkirurgisk Omr�de';'Alb Plastikkirurgisk Omr�de';'Alb Reumatologisk Omr�de';'Alb Urologisk Omr�de';'Alb Vuggeomr�de';'Alb �jenomr�de';'Alb �re-N�se-Halsomr�de';'Dro Medicinsk Omr�de';'Hob AMA';'Hob Medicinsk omr�de'};

%% Beregner meanv�rdi
mean(data1)

%% variable
s1=[0 34]
s2 =[8.29 8.29]

%% plotter figur
figure;
bar(data1)
hold on
x = plot(s1,s2,'r','LineWidth',3)
legend(x,'Gennemsnit')
set(gca, 'XTickLabel',str, 'XTick',1:numel(str))
set(gca,'XTickLabelRotation',45)
title('Gennemsnitlig overbel�gning p� Aalborg Universitetshospitalsafdelinger')
ylabel('Antal dage')
ylim([0 25])
set(gca, 'YTick', [0:1:25])
xlim([0 34])
set(gca,'fontsize',20);
box off
