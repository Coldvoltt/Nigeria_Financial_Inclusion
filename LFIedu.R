LFI.Edu<- LFI.Edu %>% 
  mutate(Category = factor(Category),
         Year = factor(Year),
         `Level of Education` = factor(`Level of Education`))

LFI.Edu %>% 
  ggplot(aes(fill= `Level of Education`, y= Population, x = Category ))+ # Adjust what to display for y
  geom_bar(stat = 'identity', position = 'dodge')+
  scale_fill_viridis_d(option = 'H')+
  theme_minimal()+
  theme(legend.position = c(.7,.8))
  
