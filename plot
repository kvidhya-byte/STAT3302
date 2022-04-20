g1<-ggplot(test1_h)+ aes(Year,Deaths, color = Female) + ggtitle("Cocaine Overdose Deathrate MvsF 1999-2020")+ 
  geom_line(data = subset(test1_h, Female == 0), type = 'l', size=1.2) +
  geom_line(data = subset(test1_h, Female == 1), type = 'l', size=1.2)

g1 + geom_smooth(method="lm",formule=Deaths~Year+Female, se = FALSE)
