FN.OvrNigFinCapCat<- FN.OvrNigFinCapCat %>% 
  gather( Category, val,-c(`Financial capability indicator dimension`,Year)) %>% 
  mutate(`Financial capability indicator dimension` = 
           factor(`Financial capability indicator dimension`),
         Category = factor(Category, levels = c('Low','Medium','High'))) %>% 
  rename(FCID = `Financial capability indicator dimension`)

#---- Viz 1 ----
FN.OvrNigFinCapCat %>% 
  ggplot(aes(x= Category, y = val, fill = FCID))+
  geom_bar(width = .5,stat = 'identity', position = 'stack')+
  coord_flip()+
  scale_fill_viridis_d(option = 'H', direction = -1)+
  theme(legend.position = 'bottom')
