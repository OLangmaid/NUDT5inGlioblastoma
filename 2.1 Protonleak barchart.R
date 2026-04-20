Protonleak1 = c((8.52+7.88+13.24)/3,(9.51+10.69+12.56)/3)
Protonleak2 = c((20.92+13.39+18.82)/3,(13.23+13.35+14.07)/3)
Protonleak3 = c((8.62+6.94+7.45)/3,(14.58+19.78+17.11)/3)

PreSEMuntreated = c(8.52,7.88,13.24,20.92,13.39,18.82,8.62,6.94,7.45)
PreSEMtreated = c(9.51,10.69,12.56,13.23,13.35,14.07,14.58,19.78,17.11)

SEMuntreated = (sd(PreSEMuntreated)/sqrt(length(PreSEMuntreated)))
SEMtreated = (sd(PreSEMtreated)/sqrt(length(PreSEMtreated)))

PreProtonleak2.1 = c((Protonleak1+Protonleak2+Protonleak3)/3)

Protonleak2.1 = data.frame(Name = c("Untreated","Treated"),
                           ProtonLeak = c(PreProtonleak2.1), SEMProton = c(SEMuntreated,SEMtreated))

Ttestproton = data.frame(Name = c("Untreated", "Treated"), Protonleak = c(Protonleak1, Protonleak2,Protonleak3))

Protonleak2.1 %>%
  ggplot(aes(x = Name, y = ProtonLeak, fill = Name))+
  geom_bar(stat ="identity")+
  scale_fill_manual(values = c("Untreated" = "cyan3", "Treated" = "chartreuse3"))+
  theme(legend.position = "none")+
  labs(x = "Sample", y = "OCR(pmol/min)", title = "Proton leak clone 2.1 Untreated vs treated cells")+
  geom_errorbar(aes(ymin = ProtonLeak - SEMProton, ymax = ProtonLeak + SEMProton), width = 0.4, position =position_dodge(0.05))+
  annotate(geom = "segment", x = "Treated", xend= "Untreated", y = 19,yend =19)+
  annotate(geom = "text", x = 1.5, y = 20, label = "N/S")+
  annotate(geom = "segment", x = "Treated", xend ="Treated", y = 19, yend = 17)+
  annotate(geom = "segment", x = "Untreated", xend ="Untreated", y = 19, yend = 17)

ggsave("Protonleak21.jpeg", width = 13, height = 13, units = "cm", dpi = 700)