MaximalResp1 = c((90.16+52.38+54.42)/3,(97.05+152.70+102.55))
MaximalResp2 = c((68.15+101.09+80.28)/3,(58.89+59.38+52.24))

PreSEMUntreated = c(90.16,52.38,54.42,68.15,101.09,80.28)
PreSEMTreated = c(97.05,152.70,102.55,58.89,59.38,52.24)

SEMUntreated = (sd(PreSEMUntreated)/sqrt(length(PreSEMUntreated)))
SEMTreated = (sd(PreSEMTreated)/sqrt(length(PreSEMTreated)))

PreMaxResp2.6 = c((MaximalResp1+MaximalResp2)/2)

MaxResp2.6 = data.frame(Name = c("Untreated","Treated"), 
                           MaxResp = c(PreMaxResp2.6), SEMMaxResp = c(SEMUntreated,SEMTreated))

TtestMax = data.frame(Name = c("Untreated","Treated"), MaxResp = c(MaximalResp1,MaximalResp2))

MaxResp2.6 %>%
  ggplot(aes(x = Name, y = MaxResp, fill=Name))+
  geom_bar(stat = "identity")+
  scale_fill_manual(values = c("Untreated" = "cyan3", "Treated" = "chartreuse3"))+
  theme(legend.position = "none")+
  labs(x = "Sample", y = "OCR(pmol/min)", title = "Maximal Respiration clone 2.6 Untreated vs treated cells")+
  geom_errorbar(aes(ymin = MaxResp - SEMMaxResp, ymax = MaxResp + SEMMaxResp), width = 0.4, position = position_dodge(0.05))+
  annotate(geom = "segment", x = "Treated", xend= "Untreated", y = 285,yend =285)+
  annotate(geom = "text", x = 1.5, y = 290, label = "N/S")+
  annotate(geom = "segment", x = "Treated", xend ="Treated", y = 285, yend = 281)+
  annotate(geom = "segment", x = "Untreated", xend ="Untreated", y = 285, yend = 281)

ggsave("MaxResp26.jpeg", width = 13, height = 13, units = "cm", dpi = 700)