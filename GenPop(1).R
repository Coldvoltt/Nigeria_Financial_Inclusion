##-----General Population---
GenPop1<- GenPop %>% 
    gather(Year,Population, -Gender) %>% 
    mutate(Year = as.factor(Year),
           Gender = as.factor(Gender),
           Population = round(Population/1000000, digits = 2))



#------Viz 1------

GenPop1 %>% 
  select_all(.) %>% 
  subset(Year == '2010.0') %>%  #Where altercation occurs
  ggplot(aes(x=Gender, y = Population, fill = Gender ))+
  geom_bar(stat='identity', 
           width =.80)+
  geom_text(aes(label = paste0(Population, " Million")),
            position = position_stack(.5),
            color = 'white',
            vjust = -.5)+
  theme_void()+
  scale_fill_viridis_d( option = 'H', direction = -1)

#------Viz 2-------

ggplotly(GenPop1 %>% 
           ggplot(aes(x= Gender, y = Population, fill=Year))+
           geom_bar(stat= 'identity',position = 'dodge')+
           theme(axis.title.x = element_blank(),
                 axis.ticks = element_blank()
           ) +
           scale_fill_viridis_d( option = 'H', direction = -1)
)
