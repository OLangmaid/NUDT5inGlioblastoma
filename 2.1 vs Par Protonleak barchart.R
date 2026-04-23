ProtonLeakUntreated = c(4.23+0.89+1.76)/3
ProtonLeakTreated = c(8.60+6.19+5.76)/3

PreProtonLeak2.1vsPar = c(ProtonLeakUntreated,ProtonLeakTreated)

ProtonLeak2.1vsPar = data.frame(Name = c(rep("Parental",3),rep("Clone2.1",3)),ProtonLeak = c(PreProtonLeak2.1vsPar))

ProtonLeak2.1vsPar %>%
  ggplot(aes(x = Name, y = ProtonLeak, fill=Name))+
  geom_bar(stat = "identity")+
  scale_fill_manual(values = c("Parental" = "cyan3", "Clone2.1" = "chartreuse3"))+
  theme(legend.position = "none")+
  labs(x = "Sample", y = "OCR(pmol/min)", title = "Proton Leak clone 2.1 Vs Parental")

ggsave("ProtonLeak21vsPar.jpeg", width = 13, height = 13, units = "cm", dpi = 700)