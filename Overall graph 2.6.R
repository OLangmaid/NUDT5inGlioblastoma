#Basal Respiration

NormUntreated = c(11.006574,35.706595,17.952452,16.895644,22.555876,8.224686)
NormTreated = c(17.115893,16.079318,40.658290,1.826491,15.027277,30.516149)

BasalUntreated1 = c(26.69,27.13,24.26,33.73,32.64,33.79)
BasalTreated1 = c(41.92,48.68,36.32,36.38,37.29,28.14)
BasalUntreated2 = c(25.64,26.39,23.44,34.52,31.85,32.46)
BasalTreated2 = c(42.44,48.33,35.92,36.18,36.99,28.17)
BasalUntreated3 = c(26.00,25.57,22.83,33.88,31.97,32.26)
BasalTreated3 = c(43.31,49.30,36.95,36.93,38.09,27.60)

BasalUntreated = c(BasalUntreated1,BasalUntreated2,BasalUntreated3)
BasalTreated = c(BasalTreated1,BasalTreated2,BasalTreated3)

BasalUntreatedFirst = BasalUntreated[c(1,2,3,10,11,12)]
BasalUntreatedSecond = BasalUntreated[c(4,5,6,13,14,15)]
BasalUntreatedThird = BasalUntreated[c(7,8,9,16,17,18)]

BasalTreatedFirst = BasalTreated[c(1,2,3,10,11,12)]
BasalTreatedSecond = BasalTreated[c(4,5,6,13,14,15)]
BasalTreatedThird = BasalTreated[c(7,8,9,16,17,18)]

BasalUntreatedFirstNorm = (BasalUntreatedFirst/NormUntreated)
BasalUntreatedSecondNorm = (BasalUntreatedSecond/NormUntreated)
BasalUntreatedThirdNorm = (BasalUntreatedThird/NormUntreated)
BasalTreatedFirstNorm = (BasalTreatedFirst/NormTreated)
BasalTreatedSecondNorm = (BasalTreatedSecond/NormTreated)
BasalTreatedThirdNorm = (BasalTreatedThird/NormTreated)

BasalUntreatedSEM1 = (sd(BasalUntreatedFirstNorm)/sqrt(length(BasalUntreatedFirstNorm)))
BasalUntreatedSEM2 = (sd(BasalUntreatedSecondNorm)/sqrt(length(BasalUntreatedSecondNorm)))
BasalUntreatedSEM3 = (sd(BasalUntreatedThirdNorm)/sqrt(length(BasalUntreatedThirdNorm)))
BasalTreatedSEM1 = (sd(BasalTreatedFirstNorm)/sqrt(length(BasalTreatedFirstNorm)))
BasalTreatedSEM2 = (sd(BasalTreatedSecondNorm)/sqrt(length(BasalTreatedSecondNorm)))
BasalTreatedSEM3 = (sd(BasalTreatedThirdNorm)/sqrt(length(BasalTreatedThirdNorm)))

#Oligomycin

OligoUntreated1 = c(11.90,13.59,12.29,15.75,21.72,17.53)
OligoTreated1 = c(15.45,18.70,26.63,15.91,17.27,12.73)
OligoUntreated2 = c(11.72,13.22,12.24,14.97,16.39,16.25)
OligoTreated2 = c(16.68,18.61,19.78,15.02,16.27,13.06)
OligoUntreated3 = c(12.05,13.23,12.05,15.18,16.89,15.83)
OligoTreated3 = c(16.39,18.30,19.68,16.00,15.99,13.01)

OligoUntreated = c(OligoUntreated1,OligoUntreated2,OligoUntreated3)
OligoTreated = c(OligoTreated1,OligoTreated2,OligoTreated3)

OligoUntreatedFirst = OligoUntreated[c(1,2,3,10,11,12)]
OligoUntreatedSecond = OligoUntreated[c(4,5,6,13,14,15)]
OligoUntreatedThird = OligoUntreated[c(7,8,9,16,17,18)]

OligoTreatedFirst = OligoTreated[c(1,2,3,10,11,12)]
OligoTreatedSecond = OligoTreated[c(4,5,6,13,14,15)]
OligoTreatedThird = OligoTreated[c(7,8,9,16,17,18)]

OligoUntreatedFirstNorm = (OligoUntreatedFirst/NormUntreated)
OligoUntreatedSecondNorm = (OligoUntreatedSecond/NormUntreated)
OligoUntreatedThirdNorm = (OligoUntreatedThird/NormUntreated)
OligoTreatedFirstNorm = (OligoTreatedFirst/NormTreated)
OligoTreatedSecondNorm = (OligoTreatedSecond/NormTreated)
OligoTreatedThirdNorm = (OligoTreatedThird/NormTreated)

OligoUntreatedSEM1 = (sd(OligoUntreatedFirstNorm)/sqrt(length(OligoUntreatedFirstNorm)))
OligoUntreatedSEM2 = (sd(OligoUntreatedSecondNorm)/sqrt(length(OligoUntreatedSecondNorm)))
OligoUntreatedSEM3 = (sd(OligoUntreatedThirdNorm)/sqrt(length(OligoUntreatedThirdNorm)))
OligoTreatedSEM1 = (sd(OligoTreatedFirstNorm)/sqrt(length(OligoTreatedFirstNorm)))
OligoTreatedSEM2 = (sd(OligoTreatedSecondNorm)/sqrt(length(OligoTreatedSecondNorm)))
OligoTreatedSEM3 = (sd(OligoTreatedThirdNorm)/sqrt(length(OligoTreatedThirdNorm)))

#FCCP

FCCPUntreated1 = c(87.05,59.97,65.15,68.13,110.93,92.29)
FCCPTreated1 = c(97.62,146.72,106.91,68.07,73.16,55.57)
FCCPUntreated2 = c(97.58,62.85,64.52,79.00,112.25,90.99)
FCCPTreated2 = c(106.50,161.80,113.65,70.00,70.36,60.65)
FCCPUntreated3 = c(93.93,62.69,62.11,66.59,103.49,87.07)
FCCPTreated3 = c(105.71,148.90,108.89,65.24,68.17,53.21)

FCCPUntreated = c(FCCPUntreated1,FCCPUntreated2,FCCPUntreated3)
FCCPTreated = c(FCCPTreated1,FCCPTreated2,FCCPTreated3)

FCCPUntreatedFirst = FCCPUntreated[c(1,2,3,10,11,12)]
FCCPUntreatedSecond = FCCPUntreated[c(4,5,6,13,14,15)]
FCCPUntreatedThird = FCCPUntreated[c(7,8,9,16,17,18)]

FCCPTreatedFirst = FCCPTreated[c(1,2,3,10,11,12)]
FCCPTreatedSecond = FCCPTreated[c(4,5,6,13,14,15)]
FCCPTreatedThird = FCCPTreated[c(7,8,9,16,17,18)]

FCCPUntreatedFirstNorm = (FCCPUntreatedFirst/NormUntreated)
FCCPUntreatedSecondNorm = (FCCPUntreatedSecond/NormUntreated)
FCCPUntreatedThirdNorm = (FCCPUntreatedThird/NormUntreated)
FCCPTreatedFirstNorm = (FCCPTreatedFirst/NormTreated)
FCCPTreatedSecondNorm = (FCCPTreatedSecond/NormTreated)
FCCPTreatedThirdNorm = (FCCPTreatedThird/NormTreated)

FCCPUntreatedSEM1 = (sd(FCCPUntreatedFirstNorm)/sqrt(length(FCCPUntreatedFirstNorm)))
FCCPUntreatedSEM2 = (sd(FCCPUntreatedSecondNorm)/sqrt(length(FCCPUntreatedSecondNorm)))
FCCPUntreatedSEM3 = (sd(FCCPUntreatedThirdNorm)/sqrt(length(FCCPUntreatedThirdNorm)))
FCCPTreatedSEM1 = (sd(FCCPTreatedFirstNorm)/sqrt(length(FCCPTreatedFirstNorm)))
FCCPTreatedSEM2 = (sd(FCCPTreatedSecondNorm)/sqrt(length(FCCPTreatedSecondNorm)))
FCCPTreatedSEM3 = (sd(FCCPTreatedThirdNorm)/sqrt(length(FCCPTreatedThirdNorm)))

#Rotenone/AA

RotAAUntreated1 = c(7.41,10.47,10.11,10.85,11.15,10.71)
RotAATreated1 = c(9.45,9.10,11.10,11.11,10.98,8.42)
RotAAUntreated2 = c(10.50,12.40,11.67,10.43,13.67,12.05)
RotAATreated2 = c(13.09,15.05,13.77,11.93,12.13,9.59)
RotAAUntreated3 = c(10.60,11.85,11.13,10.47,14.26,13.34)
RotAATreated3 = c(13.62,15.58,14.58,11.89,12.47,9.89)

RotAAUntreated = c(RotAAUntreated1,RotAAUntreated2,RotAAUntreated3)
RotAATreated = c(RotAATreated1,RotAATreated2,RotAATreated3)

RotAAUntreatedFirst = RotAAUntreated[c(1,2,3,10,11,12)]
RotAAUntreatedSecond = RotAAUntreated[c(4,5,6,13,14,15)]
RotAAUntreatedThird = RotAAUntreated[c(7,8,9,16,17,18)]

RotAATreatedFirst = RotAATreated[c(1,2,3,10,11,12)]
RotAATreatedSecond = RotAATreated[c(4,5,6,13,14,15)]
RotAATreatedThird = RotAATreated[c(7,8,9,16,17,18)]

RotAAUntreatedFirstNorm = (RotAAUntreatedFirst/NormUntreated)
RotAAUntreatedSecondNorm = (RotAAUntreatedSecond/NormUntreated)
RotAAUntreatedThirdNorm = (RotAAUntreatedThird/NormUntreated)
RotAATreatedFirstNorm = (RotAATreatedFirst/NormTreated)
RotAATreatedSecondNorm = (RotAATreatedSecond/NormTreated)
RotAATreatedThirdNorm = (RotAATreatedThird/NormTreated)

RotAAUntreatedSEM1 = (sd(RotAAUntreatedFirstNorm)/sqrt(length(RotAAUntreatedFirstNorm)))
RotAAUntreatedSEM2 = (sd(RotAAUntreatedSecondNorm)/sqrt(length(RotAAUntreatedSecondNorm)))
RotAAUntreatedSEM3 = (sd(RotAAUntreatedThirdNorm)/sqrt(length(RotAAUntreatedThirdNorm)))
RotAATreatedSEM1 = (sd(RotAATreatedFirstNorm)/sqrt(length(RotAATreatedFirstNorm)))
RotAATreatedSEM2 = (sd(RotAATreatedSecondNorm)/sqrt(length(RotAATreatedSecondNorm)))
RotAATreatedSEM3 = (sd(RotAATreatedThirdNorm)/sqrt(length(RotAATreatedThirdNorm)))

#Graph(Normalization)

BasalNormUntreat = c((sum(BasalUntreatedFirst/NormUntreated)/6),(sum(BasalUntreatedSecond/NormUntreated)/6),(sum(BasalUntreatedThird/NormUntreated)/6))
BasalNormtreat = c((sum(BasalTreatedFirst/NormTreated)/6),(sum(BasalTreatedSecond/NormTreated)/6),(sum(BasalTreatedThird/NormTreated)/6))

OligoNormUntreat = c((sum(OligoUntreatedFirst/NormUntreated)/6),(sum(OligoUntreatedSecond/NormUntreated)/6),(sum(OligoUntreatedThird/NormUntreated)/6))
OligoNormTreat = c((sum(OligoTreatedFirst/NormTreated)/6),(sum(OligoTreatedSecond/NormTreated)/6),(sum(OligoTreatedThird/NormTreated)/6))

FCCPNormUntreat = c((sum(FCCPUntreatedFirst/NormUntreated)/6),(sum(FCCPUntreatedSecond/NormUntreated)/6),(sum(FCCPUntreatedThird/NormUntreated)/6))
FCCPNormTreat = c((sum(FCCPTreatedFirst/NormTreated)/6),(sum(FCCPTreatedSecond/NormTreated)/6),(sum(FCCPTreatedThird/NormTreated)/6))

RotAANormUntreat = c((sum(RotAAUntreatedFirst/NormUntreated)/6),(sum(RotAAUntreatedSecond/NormUntreated)/6),(sum(RotAAUntreatedThird/NormUntreated)/6))
RotAANormTreat = c((sum(RotAATreatedFirst/NormTreated)/6),(sum(RotAATreatedSecond/NormTreated)/6),(sum(RotAATreatedThird/NormTreated)/6))

Time = c(1.59,8.18,14.77,21.44,28.04,34.63,41.43,47.9,54.49,61.6,67.6,74.36)
Sample = c(rep("Untreated",12),rep("Treated",12))
OCR = c(BasalNormUntreat,OligoNormUntreat,FCCPNormUntreat,RotAANormUntreat,BasalNormtreat,OligoNormTreat,FCCPNormTreat,RotAANormTreat)
SEM = c(BasalUntreatedSEM1,BasalUntreatedSEM2,BasalUntreatedSEM3,OligoUntreatedSEM1,OligoUntreatedSEM2,OligoUntreatedSEM3,FCCPUntreatedSEM1,FCCPUntreatedSEM2,FCCPUntreatedSEM3,RotAAUntreatedSEM1,RotAAUntreatedSEM2,RotAAUntreatedSEM3,
        BasalTreatedSEM1,BasalTreatedSEM2,BasalTreatedSEM3,OligoTreatedSEM1,OligoTreatedSEM2,OligoTreatedSEM3,FCCPTreatedSEM1,FCCPTreatedSEM2,FCCPTreatedSEM3,RotAATreatedSEM1,RotAATreatedSEM2,RotAATreatedSEM3)
MitoStress2.6 = data.frame(Sample,Time,OCR,SEM)

MitoStress2.6 %>%
  ggplot(aes(x = Time, y = OCR, colour = Sample))+
  geom_point()+
  geom_line()+
  geom_errorbar(aes(ymin = OCR - SEM, ymax = OCR + SEM), width = 2)+
  geom_vline(xintercept = 16.64, linetype = "dotted", colour = "black", linewidth = 1.5)+
  geom_vline(xintercept = 36.49, linetype = "dotted", colour = "black", linewidth = 1.5)+
  geom_vline(xintercept = 56.34, linetype = "dotted", colour = "black", linewidth = 1.5)+
  annotate("text",x = c(8.64,30.64,66.64), y = 17, label = c("Oligomycin","FCCP","Rotenone/AA"))+
  labs(x = "Time(Mins)", y = "Oxygen Consumption Rate(pmol/Min/ug)", title = "Mito-Stress Test U87 WTM PSA Clone 2.6 +/- Doxycycline")+
  theme_minimal()

ggsave("OCR26OverallFinished.jpeg", width = 15, height = 10, units = "cm", dpi = 700)