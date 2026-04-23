MaxRespUntreated = c(71.04+88.84+43.12)/3
MaxRespTreated = c(101.66+54.45+96.07)/3

PreMaxResp2.1vsPar = c(MaxRespUntreated,MaxRespTreated)

MaxResp2.1vsPar = data.frame(Name = c(rep("Parental",3),rep("Clone2.1",3)),MaxResp = c(PreMaxResp2.1vsPar))

MaxResp2.1vsPar %>%
  ggplot(aes(x = Name, y = MaxResp, fill=Name))+
  geom_bar(stat = "identity")+
  scale_fill_manual(values = c("Parental" = "cyan3", "Clone2.1" = "chartreuse3"))+
  theme(legend.position = "none")+
  labs(x = "Sample", y = "OCR(pmol/min)", title = "Maximal Respiration clone 2.1 Vs Parental")

ggsave("MaxResp21vsPar.jpeg", width = 13, height = 13, units = "cm", dpi = 700)