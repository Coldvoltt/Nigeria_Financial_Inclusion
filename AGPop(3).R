#----- AGPop Wrangle----
AGPopM<- AGPop %>% 
  gather(Year,Population, -`Age group`) %>% 
  mutate(`Age group` = as.factor(`Age group`),
         Year = as.factor(Year),
         Population = round(Population/1000000, digits = 2)) %>% 
  na.omit()

#----Viz 1--------
AGPopM %>% 
  select_all(.) %>% 
  subset(Year == '2010.0') %>%  #Where altercation occurs
  ggplot(aes(x=`Age group`, y = Population, fill = Year))+
  geom_bar(stat = 'identity', position = 'dodge')+
  scale_fill_viridis_d(option = 'H')


