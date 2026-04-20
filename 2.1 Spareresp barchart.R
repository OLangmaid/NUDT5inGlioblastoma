SpareResp1 = c((111.34+127.44+133.50)/3,(77.32+86.68+93.06)/3)
SpareResp2 = c((146.89+82.61+113.88)/3,(71.70+36.33+82.88)/3)
SpareResp3 = c((63.60+45.07+143.92)/3,(74.42+68.04+22.05)/3)

PreSEMuntreated = c(111.34,127.44,133.50,146.89,82.61,113.88,63.60,45.07,143.92)
PreSEMtreated = c(77.32,86.68,93.06,71.70,36.33,82.88,74.42,68.04,22.05)

SEMuntreated = (sd(PreSEMuntreated)/sqrt(length(PreSEMuntreated)))
SEMtreated = (sd(PreSEMtreated)/sqrt(length(PreSEMtreated)))

PreSpareResp = c((SpareResp1+SpareResp2+SpareResp3)/3)

SpareResp = data.frame(Name = c("Untreated","Treated"), 
                       SpareResp = c(PreSpareResp), SEMResp = c(SEMuntreated, SEMtreated))

testspare = data.frame(Name = c("Untreated", "Treated"), SpareRespT = c(SpareResp1, SpareResp2,SpareResp3))

SpareResp %>%
  ggplot(aes(x=Name, y=SpareResp, fill=Name))+
  geom_bar(stat ="identity")+
  scale_fill_manual(values = c("Untreated"= "cyan3", "Treated" = "chartreuse3"))+
  theme(legend.position = "none")+
  labs(x = "Sample", y = "OCR(pmol/min)", title = "Spare Resp Capacity clone 2.1 Untreated vs treated cells")+
  geom_errorbar(aes(ymin = SpareResp - SEMResp, ymax = SpareResp+ SEMResp), width = 0.4, position = position_dodge(0.05))+
  annotate(geom = "segment", x = "Treated", xend= "Untreated", y = 127,yend =127)+
  annotate(geom = "text", x = 1.5, y = 130, label = "N/S")+
  annotate(geom = "segment", x = "Treated", xend ="Treated", y = 127, yend = 125)+
  annotate(geom = "segment", x = "Untreated", xend ="Untreated", y = 127, yend = 125)

ggsave("SpareResp21.jpeg", width = 13.2, height = 13, units = "cm", dpi = 700)