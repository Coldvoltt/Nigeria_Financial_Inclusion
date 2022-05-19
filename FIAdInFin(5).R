#---- Adult Informal Finance ----------
FI.AdInFinM<- FI.AdInFin %>% 
  mutate(fraction = Population/sum(Population),
         ymax = cumsum(fraction),
         ymin = c(0, head(ymax, n = -1)),
         labelPosition = (ymax+ymin)/2,
         label = paste0(Year, '\n Value: ', round(Population/1000000,2), 'M'),
         Year = as.factor(Year))

#---- Viz 1 ----------

FI.AdInFinM %>% 
  ggplot(aes(ymax = ymax, ymin = ymin, xmax = 4, xmin = 3, fill = Year))+
  geom_rect()+
  geom_text(x=2, aes(y=labelPosition, label = label, color=Year), size = 3.5)+
  scale_color_viridis_d(option = 'H')+
  scale_fill_viridis_d(option = 'H')+
  coord_polar(theta = 'y')+
  theme_void()+
  theme(legend.position = 'none')+
  xlim(c(1,4))
