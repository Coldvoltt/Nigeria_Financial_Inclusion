LFI<-LFI %>% 
  mutate(Year = factor(Year),
         `Financial Access` = factor(`Financial Access`),
         Population = Population/1000000)


LFI %>% 
  ggplot(aes(x = Year, y = Population, fill = `Financial Access`))+
  geom_bar(stat = "identity", position = 'dodge')+
  scale_fill_viridis_d(option = "H")

LFI %>% 
  subset(Year == '2020') %>% #Adjust year from here.
  ggplot(aes(x = Year, y = Population, fill = `Financial Access`))+
  geom_bar(stat = "identity", position = 'dodge')+
  scale_fill_viridis_d(option = "H")
