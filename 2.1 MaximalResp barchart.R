MaximalResp1 = c((159.58+168.56+185.93)/3,(118.45+134.49+134.35)/3)
MaximalResp2 = c((234.64+155.66+180.78)/3,(137.18+103.26+154.33)/3)
MaximalResp3 = c((101.19+76.83+176.22)/3,(157.11+146.84+126.47)/3)

PreSEMuntreated = c(159.58,168.56,185.93,234.64,155.66,180.78,101.19,76.83,176.22)
PreSEMtreated = c(118.45,134.49,134.35,137.18,103.26,154.33,157.11,146.84,126.47)

SEMuntreated = (sd(PreSEMuntreated)/sqrt(length(PreSEMuntreated)))
SEMtreated = (sd(PreSEMtreated)/sqrt(length(PreSEMtreated)))

PreMaximalResp = c((MaximalResp1+MaximalResp2+MaximalResp3)/3)

MaximalResp = data.frame(Name = c("Untreated","Treated"),
                         MaximalResp=c(PreMaximalResp), SEMMaximal = c(SEMuntreated,SEMtreated))

Ttestmaximal = data.frame(Name = c("Untreated", "Treated"), MaximalRespT = c(MaximalResp1, MaximalResp2,MaximalResp3))

MaximalResp %>%
  ggplot(aes(x=Name, y=MaximalResp, fill=Name))+
  geom_bar(stat ="identity")+
  scale_fill_manual(values = c("Untreated"= "cyan3", "Treated" = "chartreuse3"))+
  theme(legend.position = "none")+
  labs(x = "Sample", y = "OCR(pmol/min)", title = "Maximal Respiration clone 2.1 Untreated vs treated cells")+
  geom_errorbar(aes(ymin = MaximalResp - SEMMaximal, ymax = MaximalResp+ SEMMaximal), width = 0.4, position = position_dodge(0.05))+
  annotate(geom = "segment", x = "Treated", xend= "Untreated", y = 180,yend =180)+
  annotate(geom = "text", x = 1.5, y = 184, label = "N/S")+
  annotate(geom = "segment", x = "Treated", xend ="Treated", y = 180, yend = 178)+
  annotate(geom = "segment", x = "Untreated", xend ="Untreated", y = 180, yend = 178)

ggsave("MaximalResp21.jpeg", width = 13, height = 13, units = "cm", dpi = 700)
  