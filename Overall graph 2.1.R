
#Basal Respiration

NormUntreated = c(75.26778,48.18000,80.20392,35.68696,15.55092,19.29276,7.351097,25.111665,30.427330)
NormTreated = c(63.64994,30.57406,102.63637,21.54259,25.81019,32.33860,11.587597,14.096532,12.600419)

BasalUntreated1 = c(75.71,73.70,77.57,72.75,70.43,75.13,72.40,69.54,74.13)
BasalTreated1 = c(57.57,65.04,52.97,56.38,63.02,53.12,56.22,63.60,52.96)
BasalUntreated2 = c(100.85,90.19,82.43,99.86,89.96,82.48,101.39,91.48,83.11)
BasalTreated2 = c(79.42,82.18,86.10,76.35,79.43,83.07,76.38,78.97,82.56)
BasalUntreated3 = c(51.66,50.33,50.52,51.88,48.69,49.53,52.56,48.74,49.11)
BasalTreated3 = c(94.24,89.34,112.04,94.78,93.92,117.26,97.14,96.50,116.83)

BasalUntreated = c(BasalUntreated1,BasalUntreated2,BasalUntreated3)
BasalTreated = c(BasalTreated1,BasalTreated2,BasalTreated3)

BasalUntreatedFirst = BasalUntreated[c(1,2,3,10,11,12,19,20,21)]
BasalUntreatedSecond = BasalUntreated[c(4,5,6,13,14,15,22,23,24)]
BasalUntreatedThird = BasalUntreated[c(7,8,9,16,17,18,25,26,27)]

BasalTreatedFirst = BasalTreated[c(1,2,3,10,11,12,19,20,21)]
BasalTreatedSecond = BasalTreated[c(4,5,6,13,14,15,22,23,24)]
BasalTreatedThird = BasalTreated[c(7,8,9,16,17,18,25,26,27)]

#SEM Basal

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

OligoUntreated1 = c(33.82,37.18,37.34,32.68,36.30,34.94,33.69,36.00,35.51)
OligoTreated1 = c(27.54,28.47,23.54,24.60,26.57,24.23,25.00,27.02,24.89)
OligoUntreated2 = c(34.57,31.73,35.02,32.13,37.27,35.48,36.00,40.28,35.46)
OligoTreated2 = c(24.13,25.39,25.18,24.38,25.07,26.32,24.59,24.58,26.18)
OligoUntreated3 = c(25.75,25.60,26.60,23.59,23.92,24.26,25.04,24.14,24.75)
OligoTreated3 = c(33.28,78.33,28.95,28.37,55.90,28.41,29.03,37.49,29.53)

OligoUntreated = c(OligoUntreated1,OligoUntreated2,OligoUntreated3)
OligoTreated = c(OligoTreated1,OligoTreated2,OligoTreated3)

OligoUntreatedFirst = OligoUntreated[c(1,2,3,10,11,12,19,20,21)]
OligoUntreatedSecond = OligoUntreated[c(4,5,6,13,14,15,22,23,24)]
OligoUntreatedThird = OligoUntreated[c(7,8,9,16,17,18,25,26,27)]

OligoTreatedFirst = OligoTreated[c(1,2,3,10,11,12,19,20,21)]
OligoTreatedSecond = OligoTreated[c(4,5,6,13,14,15,22,23,24)]
OligoTreatedThird = OligoTreated[c(7,8,9,16,17,18,25,26,27)]

#SEMOligo

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

FCCPUntreated1 = c(184.85,145.29,187.34,183.74,196.98,207.63,175.06,170.52,196.65)
FCCPTreated1 = c(127.43,136.15,149.29,133.55,150.28,146.02,140.43,135.84,133.45)
FCCPUntreated2 = c(124.34,117.88,118.50,190.38,139.38,203.24,248.29,174.09,196.98)
FCCPTreated2 = c(98.03,91.68,78.32,148.07,115.30,165.44,126.96,108.65,157.67)
FCCPUntreated3 = c(120.11,116.09,120.23,116.16,93.82,193.03,98.71,86.85,94.29)
FCCPTreated3 = c(144.05,170.04,145.67,171.56,164.54,138.89,132.70,142.49,178.10)

FCCPUntreated = c(FCCPUntreated1,FCCPUntreated2,FCCPUntreated3)
FCCPTreated = c(FCCPTreated1,FCCPTreated2,FCCPTreated3)

FCCPUntreatedFirst = FCCPUntreated[c(1,2,3,10,11,12,19,20,21)]
FCCPUntreatedSecond = FCCPUntreated[c(4,5,6,13,14,15,22,23,24)]
FCCPUntreatedThird = FCCPUntreated[c(7,8,9,16,17,18,25,26,27)]

FCCPTreatedFirst = FCCPTreated[c(1,2,3,10,11,12,19,20,21)]
FCCPTreatedSecond = FCCPTreated[c(4,5,6,13,14,15,22,23,24)]
FCCPTreatedThird = FCCPTreated[c(7,8,9,16,17,18,25,26,27)]

#SEMFCCP

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

RotAAUntreated1 = c(24.16,28.42,21.70,23.99,28.24,24.00,23.68,28.54,24.48)
RotAATreated1 = c(15.09,15.89,11.67,17.00,17.87,15.42,17.26,17.95,15.82)
RotAAUntreated2 = c(17.26,17.95,15.82,25.34,23.92,21.68,25.91,24.36,22.23)
RotAATreated2 = c(10.90,12.04,11.11,16.73,15.84,16.18,17.12,15.59,16.42)
RotAAUntreated3 = c(14.97,16.99,16.81,16.31,17.93,18.05,16.19,17.60,18.49)
RotAATreated3 = c(14.45,17.70,12.42,18.86,20.73,16.99,19.39,20.52,18.81)

RotAAUntreated = c(RotAAUntreated1,RotAAUntreated2,RotAAUntreated3)
RotAATreated = c(RotAATreated1,RotAATreated2,RotAATreated3)

RotAAUntreatedFirst = RotAAUntreated[c(1,2,3,10,11,12,19,20,21)]
RotAAUntreatedSecond = RotAAUntreated[c(4,5,6,13,14,15,22,23,24)]
RotAAUntreatedThird = RotAAUntreated[c(7,8,9,16,17,18,25,26,27)]

RotAATreatedFirst = RotAATreated[c(1,2,3,10,11,12,19,20,21)]
RotAATreatedSecond = RotAATreated[c(4,5,6,13,14,15,22,23,24)]
RotAATreatedThird = RotAATreated[c(7,8,9,16,17,18,25,26,27)]

#SEMRotAA

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

#Graph (normalization)

BasalNormUntreat = c((sum(BasalUntreatedFirst/NormUntreated)/9),(sum(BasalUntreatedSecond/NormUntreated)/9),(sum(BasalUntreatedThird/NormUntreated)/9))
BasalNormtreat = c((sum(BasalTreatedFirst/NormTreated)/9),(sum(BasalTreatedSecond/NormTreated)/9),(sum(BasalTreatedThird/NormTreated)/9))

OligoNormUntreat = c((sum(OligoUntreatedFirst/NormUntreated)/9),(sum(OligoUntreatedSecond/NormUntreated)/9),(sum(OligoUntreatedThird/NormUntreated)/9))
OligoNormTreat = c((sum(OligoTreatedFirst/NormTreated)/9),(sum(OligoTreatedSecond/NormTreated)/9),(sum(OligoTreatedThird/NormTreated)/9))

FCCPNormUntreat = c((sum(FCCPUntreatedFirst/NormUntreated)/9),(sum(FCCPUntreatedSecond/NormUntreated)/9),(sum(FCCPUntreatedThird/NormUntreated)/9))
FCCPNormTreat = c((sum(FCCPTreatedFirst/NormTreated)/9),(sum(FCCPTreatedSecond/NormTreated)/9),(sum(FCCPTreatedThird/NormTreated)/9))

RotAANormUntreat = c((sum(RotAAUntreatedFirst/NormUntreated)/9),(sum(RotAAUntreatedSecond/NormUntreated)/9),(sum(RotAAUntreatedThird/NormUntreated)/9))
RotAANormTreat = c((sum(RotAATreatedFirst/NormTreated)/9),(sum(RotAATreatedSecond/NormTreated)/9),(sum(RotAATreatedThird/NormTreated)/9))

Time = c(1.59,8.18,14.77,21.44,28.04,34.63,41.43,47.9,54.49,61.6,67.6,74.36)
Sample = c(rep("Untreated",12),rep("Treated",12))
OCR = c(BasalNormUntreat,OligoNormUntreat,FCCPNormUntreat,RotAANormUntreat,BasalNormtreat,OligoNormTreat,FCCPNormTreat,RotAANormTreat)
SEM = c(BasalUntreatedSEM1,BasalUntreatedSEM2,BasalUntreatedSEM3,OligoUntreatedSEM1,OligoUntreatedSEM2,OligoUntreatedSEM3,FCCPUntreatedSEM1,FCCPUntreatedSEM2,FCCPUntreatedSEM3,RotAAUntreatedSEM1,RotAAUntreatedSEM2,RotAAUntreatedSEM3,
        BasalTreatedSEM1,BasalTreatedSEM2,BasalTreatedSEM3,OligoTreatedSEM1,OligoTreatedSEM2,OligoTreatedSEM3,FCCPTreatedSEM1,FCCPTreatedSEM2,FCCPTreatedSEM3,RotAATreatedSEM1,RotAATreatedSEM2,RotAATreatedSEM3)
MitoStress2.1 = data.frame(Sample,Time,OCR,SEM)

MitoStress2.1 %>%
  ggplot(aes(x = Time, y = OCR, colour = Sample))+
  geom_point()+
  geom_line()+
  geom_errorbar(aes(ymin = OCR - SEM, ymax = OCR + SEM), width = 2)+
  geom_vline(xintercept = 16.64, linetype = "dotted", colour = "black", linewidth = 1.5)+
  geom_vline(xintercept = 36.49, linetype = "dotted", colour = "black", linewidth = 1.5)+
  geom_vline(xintercept = 56.34, linetype = "dotted", colour = "black", linewidth = 1.5)+
  annotate("text",x = c(8.64,30.64,66.64), y = 9, label = c("Oligomycin","FCCP","Rotenone/AA"))+
  labs(x = "Time(Mins)", y = "Oxygen Consumption Rate(pmol/Min/ug)", title = "Mito-Stress Test U87 WTM PSA Clone 2.1 +/- Doxycycline")+
  theme_minimal()
  
  ggsave("OCR21OverallFinished.jpeg", width = 15, height = 10, units = "cm", dpi = 700)
  