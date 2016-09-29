%% loader data fra EXCEL
data=xlsread('overbelaegning_AUH.xlsx');

%% Vælger kollonen med data (gennemsnitsværdier)
data1=data(:,1);

%% Laver string
str = {'Alb 1.Afdeling Nord og Dronninglund';'Alb 2.Afdeling (NOT/Farsø)';'Alb 3.Afdeling (TV)';'Alb 4.Afdeling (AHØR/Hobro)';'Alb Akut- og Traumecenter';'Alb Børneområde';'Alb Endokrinologisk Område';'Alb Geriatrisk Område';'Alb Gyn.-obst. Område';'Alb Hjerte-lungekirurgisk afd';'Alb Hæmatologisk Område';'Alb Infektionsmedicinsk Område';'Alb Kardiologisk Område';'Alb Karkirurgisk Område';'Alb Kir Gastro. Område';'Alb Kæbekirurgisk område';'Alb Lungemed. Område';'Alb Mammakirurgisk Område';'Alb Med.gastroenterologisk Område';'Alb Neurokir. Område';'Alb Neurologisk Område';'Alb Nyremedicinsk område';'Alb Onkologisk Område';'Alb Ortopædkirurgisk Område';'Alb Plastikkirurgisk Område';'Alb Reumatologisk Område';'Alb Urologisk Område';'Alb Vuggeområde';'Alb Øjenområde';'Alb Øre-Næse-Halsområde';'Dro Medicinsk Område';'Hob AMA';'Hob Medicinsk område'};

%% Beregner meanværdi
s1=[0 33]
s2 =[8,8]
%% plotter figur
figure;
bar(data1)
plot(S1,S2,'r')
set(gca, 'XTickLabel',str, 'XTick',1:numel(str))
set(gca,'XTickLabelRotation',45)
title('Gennemsnitlig overbelægning på Aalborg Universitetshospitals afdelinger')
ylabel('Antal dage i overbelægning')
ylim([0 25])
set(gca, 'YTick', [0:1:25])
%set(gca,'fontsize',20);
box off
