SpareRespUntreated = c(45.11+58.89+13.59)/3
SpareRespTreated = c(70.07+21.04+67.64)/3

PreSpareResp2.1vsPar = c(SpareRespUntreated,SpareRespTreated)

SpareResp2.1vsPar = data.frame(Name = c(rep("Parental",3),rep("Clone2.1",3)),SpareResp = c(PreSpareResp2.1vsPar))

SpareResp2.1vsPar %>%
  ggplot(aes(x = Name, y = SpareResp, fill=Name))+
  geom_bar(stat = "identity")+
  scale_fill_manual(values = c("Parental" = "cyan3", "Clone2.1" = "chartreuse3"))+
  theme(legend.position = "none")+
  labs(x = "Sample", y = "OCR(pmol/min)", title = "Spare Resp Capacity clone 2.1 Vs Parental")

ggsave("SpareResp21vsPar.jpeg", width = 13, height = 13, units = "cm", dpi = 700)