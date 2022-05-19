AdPop$`Adult Population`<- round(AdPop$`Adult Population`/1000000,2)
AdPop$Year<- as.factor(AdPop$Year)

AdPop %>% 
  ggplot(aes(x = Year, y = `Adult Population`, fill = Year))+
  geom_bar(stat = 'identity')+
  geom_text(aes(label = paste0(`Adult Population`, ' M')),
            position = position_stack(.5),
            color = "white",
            vjust = -10, size = 4)+
  theme(axis.title  = element_blank(),
        axis.ticks = element_blank(),
        axis.text = element_blank()
  )+
  scale_fill_viridis_d(option = 'H')
