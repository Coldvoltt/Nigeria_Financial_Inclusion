#---- LFSER Data Wrangle ----
LFSer1<-LFSer1 %>% 
  rename(LFSER = `Landscape of financial services used`) %>% 
  mutate(Year = factor(Year),
         LFSER = factor(LFSER),
         Population = Population/1000000)

#--- Data Viz 1 ----
LFSer1 %>% 
  ggplot(aes(fill= Year, y = Population, x = LFSER))+
  geom_bar(stat = 'identity', position= 'dodge')+
  scale_fill_viridis_d(option = "H")

#--- Data Viz 2 ----
LFSer1 %>% 
  ggplot(aes(x= Year, y = Population, fill = LFSER))+
  geom_bar(stat = 'identity', position= 'stack')+
  scale_fill_viridis_d(option = "H")
