#---- Data Wrangle ----
LFSer2<- LFSer2 %>% 
  gather(Year,Val, -`Landscape of financial services used`) %>% 
  rename(LFSER = `Landscape of financial services used`) %>% 
  mutate(LFSER = factor(LFSER),
         Year = factor(Year))

#---- Data Viz ----
LFSer2 %>% 
  ggplot(aes(x= Year, y = Val, fill = LFSER))+
  geom_bar(stat = "identity",position = 'dodge')+
  scale_fill_viridis_d(option = 'H')

#---- Data Viz 2 ---

LFSer2 %>% 
  subset(Year == '2010.0') %>% #Adjustable here
  ggplot(aes(x= Year, y = Val, fill = LFSER))+
  geom_bar(stat = "identity",position = 'dodge')+
  scale_fill_viridis_d(option = 'H')
