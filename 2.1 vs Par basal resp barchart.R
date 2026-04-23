BasalRespUntreated = c(25.93+29.95+29.53)/3
BasalRespTreated = c(31.59+33.41+28.43)/3

PreBasalresp2.1vsPar = c(BasalRespUntreated,BasalRespTreated)

Basalresp2.1vsPar = data.frame(Name = c(rep("Parental",3),rep("Clone2.1",3)),Basalrespiration = c(PreBasalresp2.1vsPar))

Basalresp2.1vsPar %>%
  ggplot(aes(x = Name, y = Basalrespiration, fill=Name))+
  geom_bar(stat = "identity")+
  scale_fill_manual(values = c("Parental" = "cyan3", "Clone2.1" = "chartreuse3"))+
  theme(legend.position = "none")+
  labs(x = "Sample", y = "OCR(pmol/min)", title = "Basal respiration clone 2.1 Vs Parental")

ggsave("Basalrespiration21vsPar.jpeg", width = 13, height = 13, units = "cm", dpi = 700)