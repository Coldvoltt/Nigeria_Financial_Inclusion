LFI.CountryYr<- LFI.CountryYr %>% 
  mutate(Country = factor(Country),
         Year = factor(Year),
         Informal = as.numeric(Informal))


LFI.CountryYr %>%
  subset(Year == '2020') %>% #Adjust year from here.
  ggplot(aes(x= Country, y= Banked, fill = Country ))+ # Adjust what to display for y
  geom_bar(stat = 'identity', position = 'dodge')+
  scale_fill_viridis_d(option = 'H')+
  theme_minimal()
