NormUntreated =  c(142.25529,223.32652,165.25055)
NormTreated = c(74.67424,129.12806,84.45679)

BasalUntreated1 = c(28.82,36.49,35.18)
BasalTreated1 = c(35.73,40.13,33.45)
BasalUntreated2 = c(32.29,39.87,37.96)
BasalTreated2 = c(37.41,42.40,36.00)
BasalUntreated3 = c(34.56,41.47,39.75)
BasalTreated3 = c(38.22,43.56,36.26)

BasalUntreated = c(BasalUntreated1,BasalUntreated2,BasalUntreated3)
BasalTreated = c(BasalTreated1,BasalTreated2,BasalTreated3)

BasalUntreatedFirst = BasalUntreated[c(1,2,3)]
BasalUntreatedSecond = BasalUntreated[c(4,5,6)]
BasalUntreatedThird = BasalUntreated[c(7,8,9)]

BasalTreatedFirst = BasalTreated[c(1,2,3)]
BasalTreatedSecond = BasalTreated[c(4,5,6)]
BasalTreatedThird = BasalTreated[c(7,8,9)]

OligoUntreated1 = c(15.73,13.49,11.68)
OligoTreated1 = c(15.23,16.35,13.58)
OligoUntreated2 = c(13.91,14.1,12.65)
OligoTreated2 = c(15.31,16.65,14.77)
OligoUntreated3 = c(12.86,12.41,11.99)
OligoTreated3 =c (14.26,15.87,15.06)

OligoUntreated = c(OligoUntreated1,OligoUntreated2,OligoUntreated3)
OligoTreated = c(OligoTreated1,OligoTreated2,OligoTreated3)

OligoUntreatedFirst = OligoUntreated[c(1,2,3)]
OligoUntreatedSecond = OligoUntreated[c(4,5,6)]
OligoUntreatedThird = OligoUntreated[c(7,8,9)]

OligoTreatedFirst = OligoTreated[c(1,2,3)]
OligoTreatedSecond = OligoTreated[c(4,5,6)]
OligoTreatedThird = OligoTreated[c(7,8,9)]

FCCPUntreated1 = c(79.66,100.36,53.34)
FCCPTreated1 = c(92.73,69.64,112.42)
FCCPUntreated2 = c(69.73,69.36,59.91)
FCCPTreated2 = c(108.29,64.61,103.89)
FCCPUntreated3 = c(68.37,51.29,46.71)
FCCPTreated3 = c(94.62,59.32,98.25)

FCCPUntreated = c(FCCPUntreated1,FCCPUntreated2,FCCPUntreated3)
FCCPTreated = c(FCCPTreated1,FCCPTreated2,FCCPTreated3)

FCCPUntreatedFirst = FCCPUntreated[c(1,2,3)]
FCCPUntreatedSecond = FCCPUntreated[c(4,5,6)]
FCCPUntreatedThird = FCCPUntreated[c(7,8,9)]

FCCPTreatedFirst = FCCPTreated[c(1,2,3)]
FCCPTreatedSecond = FCCPTreated[c(4,5,6)]
FCCPTreatedThird = FCCPTreated[c(7,8,9)]

RotAAUntreated1 = c(8.30,12.31,10.82)
RotAATreated1 = c(6.63,10.15,7.83)
RotAAUntreated2 = c(9.43,12.33,10.39)
RotAATreated2 = c(9.43,12.33,10.39)
RotAAUntreated3 = c(8.62,11.52,10.22)
RotAATreated3 = c(10.08,11.47,11.05)

RotAAUntreated = c(RotAAUntreated1,RotAAUntreated2,RotAAUntreated3)
RotAATreated = c(RotAATreated1,RotAATreated2,RotAATreated3)

RotAAUntreatedFirst = RotAAUntreated[c(1,2,3)]
RotAAUntreatedSecond = RotAAUntreated[c(4,5,6)]
RotAAUntreatedThird = RotAAUntreated[c(7,8,9)]

RotAATreatedFirst = RotAATreated[c(1,2,3)]
RotAATreatedSecond = RotAATreated[c(4,5,6)]
RotAATreatedThird = RotAATreated[c(7,8,9)]

BasalNormUntreat = c((sum(BasalUntreatedFirst/NormUntreated)/3),(sum(BasalUntreatedSecond/NormUntreated)/3),(sum(BasalUntreatedThird/NormUntreated)/3))
BasalNormtreat = c((sum(BasalTreatedFirst/NormTreated)/3),(sum(BasalTreatedSecond/NormTreated)/3),(sum(BasalTreatedThird/NormTreated)/3))

OligoNormUntreat = c((sum(OligoUntreatedFirst/NormUntreated)/3),(sum(OligoUntreatedSecond/NormUntreated)/3),(sum(OligoUntreatedThird/NormUntreated)/3))
OligoNormTreat = c((sum(OligoTreatedFirst/NormTreated)/3),(sum(OligoTreatedSecond/NormTreated)/3),(sum(OligoTreatedThird/NormTreated)/3))

FCCPNormUntreat = c((sum(FCCPUntreatedFirst/NormUntreated)/3),(sum(FCCPUntreatedSecond/NormUntreated)/3),(sum(FCCPUntreatedThird/NormUntreated)/3))
FCCPNormTreat = c((sum(FCCPTreatedFirst/NormTreated)/3),(sum(FCCPTreatedSecond/NormTreated)/3),(sum(FCCPTreatedThird/NormTreated)/3))

RotAANormUntreat = c((sum(RotAAUntreatedFirst/NormUntreated)/3),(sum(RotAAUntreatedSecond/NormUntreated)/3),(sum(RotAAUntreatedThird/NormUntreated)/3))
RotAANormTreat = c((sum(RotAATreatedFirst/NormTreated)/3),(sum(RotAATreatedSecond/NormTreated)/3),(sum(RotAATreatedThird/NormTreated)/3))

Time = c(1.59,8.18,14.77,21.44,28.04,34.63,41.43,47.9,54.49,61.6,67.6,74.36)
Sample = c(rep("Parental",12),rep("Clone2.1",12))
OCR = c(BasalNormUntreat,OligoNormUntreat,FCCPNormUntreat,RotAANormUntreat,BasalNormtreat,OligoNormTreat,FCCPNormTreat,RotAANormTreat)

MitoStress2.1vsPar = data.frame(Sample,Time,OCR)

MitoStress2.1vsPar %>%
  ggplot(aes(x = Time, y = OCR, colour = Sample))+
  geom_point()+
  geom_line()+
  geom_vline(xintercept = 16.64, linetype = "dotted", colour = "black", linewidth = 1.5)+
  geom_vline(xintercept = 36.49, linetype = "dotted", colour = "black", linewidth = 1.5)+
  geom_vline(xintercept = 56.34, linetype = "dotted", colour = "black", linewidth = 1.5)+
  annotate("text",x = c(7.34,29.64,68.64), y = 1.2, label = c("Oligomycin","FCCP","Rotenone/AA"))+
  labs(x = "Time(Mins)", y = "Oxygen Consumption Rate(pmol/Min/ug)", title = "Mito-Stress Test U87 WTM PSA Clone 2.1 Vs Parental")+
  theme_minimal()

ggsave("OCR21vsParOverallFinished.jpeg", width = 15, height = 10, units = "cm", dpi = 700)