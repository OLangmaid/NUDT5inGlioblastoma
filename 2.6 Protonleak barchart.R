ProtonLeak1 = c((4.31+2.75+2.13)/3,(6.95+9.20+8.58)/3)
ProtonLeak2 = c((4.13+5.24+5.54)/3,(3.92+5.29+4.64)/3)

PreSEMUntreated = c(4.31,2.75,2.13,4.13,5.24,5.54)
PreSEMTreated = c(6.95,9.20,8.58,3.92,5.29,4.64)

SEMUntreated = (sd(PreSEMUntreated)/sqrt(length(PreSEMUntreated)))
SEMTreated = (sd(PreSEMTreated)/sqrt(length(PreSEMTreated)))

PreProtonLeak2.6 = c((ProtonLeak1+ProtonLeak2)/2)

ProtonLeak2.6 = data.frame(Name = c("Untreated","Treated"), 
                           ProtonLeak = c(PreProtonLeak2.6), SEMProton = c(SEMUntreated,SEMTreated))

TtestProton = data.frame(Name = c("Untreated","Treated"), ProtonLeak = c(ProtonLeak1,ProtonLeak2))

ProtonLeak2.6 %>%
  ggplot(aes(x = Name, y = ProtonLeak, fill=Name))+
  geom_bar(stat = "identity")+
  scale_fill_manual(values = c("Untreated" = "cyan3", "Treated" = "chartreuse3"))+
  theme(legend.position = "none")+
  labs(x = "Sample", y = "OCR(pmol/min)", title = "Proton Leak clone 2.6 Untreated vs treated cells")+
  geom_errorbar(aes(ymin = ProtonLeak - SEMProton, ymax = ProtonLeak + SEMProton), width = 0.4, position = position_dodge(0.05))+
  annotate(geom = "segment", x = "Treated", xend= "Untreated", y = 9,yend =9)+
  annotate(geom = "text", x = 1.5, y = 9.5, label = "N/S")+
  annotate(geom = "segment", x = "Treated", xend ="Treated", y = 9, yend = 8.5)+
  annotate(geom = "segment", x = "Untreated", xend ="Untreated", y = 9, yend = 8.5)

ggsave("ProtonLeak26.jpeg", width = 13, height = 13, units = "cm", dpi = 700)