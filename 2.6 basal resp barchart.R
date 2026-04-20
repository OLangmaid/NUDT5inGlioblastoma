"BasalResp1" = c((18.59+15.10+12.72)/3,(18.59+15.10+12.72)/3)
"BasalResp2" = c((23.04+20.82+21.55)/3,(25.83+27.11+19.18)/3)

"PreSEMUntreated" = c(18.59,15.10,12.72,23.04,20.82,21.55)
"PreSEMTreated" = c(23.04,20.82,21.55,25.83,27.11,19.18)

"SEMUntreated" = (sd(PreSEMUntreated)/sqrt(length(PreSEMUntreated)))
"SEMTreated" = (sd(PreSEMTreated)/sqrt(length(PreSEMTreated)))

PreBasalResp2.6 = c((BasalResp1+BasalResp2)/2)

Basalresp2.6 = data.frame(Name = c("Untreated","Treated"), 
                          Basalrespiration = c(PreBasalResp2.6), SEMBasal = c(SEMUntreated,SEMTreated))

TtestBasal = data.frame(Name = c("Untreated","Treated"), BasalResp = c(BasalResp1,BasalResp2))

Basalresp2.6 %>%
  ggplot(aes(x = Name, y = Basalrespiration, fill=Name))+
  geom_bar(stat = "identity")+
  scale_fill_manual(values = c("Untreated" = "cyan3", "Treated" = "chartreuse3"))+
  theme(legend.position = "none")+
  labs(x = "Sample", y = "OCR(pmol/min)", title = "Basal respiration clone 2.6 Untreated vs treated cells")+
  geom_errorbar(aes(ymin = Basalrespiration - SEMBasal, ymax = Basalrespiration + SEMBasal), width = 0.4, position = position_dodge(0.05))+
  annotate(geom = "segment", x = "Treated", xend= "Untreated", y = 25,yend =25)+
  annotate(geom = "text", x = 1.5, y = 26, label = "N/S")+
  annotate(geom = "segment", x = "Treated", xend ="Treated", y = 25, yend = 23)+
  annotate(geom = "segment", x = "Untreated", xend ="Untreated", y = 25, yend = 23)

ggsave("Basalrespiration26.jpeg", width = 13, height = 13, units = "cm", dpi = 700)