#---- Income Source-------
IncSrcM<-IncSrc %>% 
  gather(Inc.Src, population, -Year) %>% 
  na.omit() %>% 
  mutate(Year = as.factor(Year),
         Inc.Src = as.factor(Inc.Src))

#---- Viz 1--------
IncSrcM %>% 
  ggplot(aes(x=Year, y = population, fill = Inc.Src))+
  geom_bar(stat = 'identity', position = 'dodge')+
  scale_fill_viridis_d(option = 'H')

# Only applicable to 2022, 2018 and 2016
IncSrcM %>% 
  select_all(.) %>% 
  subset(Year == '2020') %>%  #Where altercation occurs
  ggplot(aes(x=Year, y = population, fill = Inc.Src))+
  geom_bar(stat = 'identity', position = 'dodge')+
  scale_fill_viridis_d(option = 'H')
