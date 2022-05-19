FN.OvrNigFinCapRat %>% 
  mutate(`Financial Capability`=factor(`Financial Capability`, levels = c('Low', 'Medium', 'High'))) %>% 
  ggplot(aes(x=`Financial Capability`, y = `Overall Financial Capability Score (%)`, fill = 
               `Financial Capability`))+
  geom_bar(stat = 'identity')+
  scale_fill_viridis_d(option = 'H')+
  theme(legend.position = 'none')
