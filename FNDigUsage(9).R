#---- Data Wrangle ----
FN.DigUsage <- FN.DigUsage %>%
  mutate(
    Category = factor(Category),
    Year = factor(Year),
    Population = Population / 1000000
  )

#----- Viz 1 ----------
FN.DigUsage %>% 
  ggplot(aes(x= Year, y = Population, fill = Category))+ 
  geom_bar(stat = 'identity', position = 'dodge')+
  scale_fill_viridis_d(option = 'H')+
  theme(legend.position = c(.15,.8),
        legend.text = element_text(size = 8))
