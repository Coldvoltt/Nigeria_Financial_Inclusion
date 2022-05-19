
FN.FinHeSc<- FN.FinHeSc %>% 
  mutate(fraction = `Financial Health Score (%)`/sum(`Financial Health Score (%)`),
         ymax = cumsum(fraction),
         ymin = c(0, head(ymax, n = -1)),
         labelPosition = (ymax+ymin)/2,
         label = paste0('Value: ', `Financial Health Score (%)`),
         Year = as.factor(Year))

#---- Viz 1 ----
FN.FinHeSc %>% 
  ggplot(aes(ymax = ymax, ymin = ymin, xmax = 4, xmin = 3, fill = `Financial Health Category`))+
  geom_rect()+
  geom_text(x=2, aes(y=labelPosition, label = label, color=`Financial Health Category`), size = 3.5)+
  scale_color_viridis_d(option = 'H')+
  scale_fill_viridis_d(option = 'H')+
  coord_polar(theta = 'y')+
  theme_void()+
  theme(legend.position = c(.5,.5))+
  xlim(c(-1,4))  
