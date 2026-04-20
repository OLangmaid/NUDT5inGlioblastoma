Basalresp1 = c((37.59+31.76+32.30)/3,(82.70+78.80+104.42)/3)
Basalresp2 = c((48.24+41.11+52.43)/3,(41.13+47.71+41.28)/3)
Basalresp3 = c((87.75+73.05+66.90)/3,(65.48+66.93+71.45)/3)

PreSEMuntreated = c(37.59,31.76,32.30,48.24,41.11,52.43,87.75,73.05,66.90)
PresEMtreated = c(82.70,78.80,104.42,41.13,47.71,41.28,65.48,66.93,71.45)

SEMuntreated = (sd(PreSEMuntreated)/sqrt(length(PreSEMuntreated)))
SEMtreated = (sd(PresEMtreated)/sqrt(length(PresEMtreated)))

PreBasalresp2.1 = c((Basalresp1+Basalresp2+Basalresp3)/3)

Basalresp2.1 = data.frame(Name = c("Untreated","Treated"), 
                          Basalrespiration = c(PreBasalresp2.1), SEMBasal = c(SEMuntreated,SEMtreated))
#https://pmc.ncbi.nlm.nih.gov/articles/PMC6040740/#:~:text=Using%20an%20automatic%20outlier%20detection,/gagneurlab/OCR%2DStats.
#it is normally distributed

Ttestbasal = data.frame(Name = c("Untreated", "Treated"),
                        BasalResp = c(Basalresp1,Basalresp2,Basalresp3))

t.test(BasalResp ~ Name, data=Ttestbasal)

Basalresp2.1 %>%
  ggplot(aes(x = Name, y = Basalrespiration, fill=Name))+
  geom_bar(stat = "identity")+
  scale_fill_manual(values = c("Untreated" = "cyan3", "Treated" = "chartreuse3"))+
  theme(legend.position = "none")+
  labs(x = "Sample", y = "OCR(pmol/min)", title = "Basal respiration clone 2.1 Untreated vs treated cells" ,)+
  geom_errorbar(aes(ymin = Basalrespiration - SEMBasal, ymax = Basalrespiration + SEMBasal), width = 0.4, position = position_dodge(0.05))+
  scale_y_continuous(limits= c(0,85), expand= c(0,0))+
  annotate(geom = "segment", x = "Treated", xend= "Untreated", y = 79,yend =79)+
  annotate(geom = "text", x = 1.5, y = 81, label = "N/S")+
  annotate(geom = "segment", x = "Treated", xend ="Treated", y = 79, yend = 77)+
  annotate(geom = "segment", x = "Untreated", xend ="Untreated", y = 79, yend = 77)
 
ggsave("Basalrespiration21.jpeg", width = 13, height = 13, units = "cm", dpi = 700)