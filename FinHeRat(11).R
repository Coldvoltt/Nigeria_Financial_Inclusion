
FN.FinHeRat<- FN.FinHeRat %>% 
  gather(Score,Val, -c(`Financial Health Dimensions`,Year)) %>% 
  mutate(`Financial Health Dimensions`=factor(`Financial Health Dimensions`),
         Year = factor(Year),
         Score = factor(Score))

#---- Viz 1----
FN.FinHeRat %>% 
  ggplot(aes(x= Score, y = Val, fill = `Financial Health Dimensions` ))+
  geom_bar(stat = "identity", position = 'stack')+
  theme(legend.position = c(.25,0.8))+
  scale_fill_viridis_d(option = "H")
