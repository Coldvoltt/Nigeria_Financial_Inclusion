#----Wrangling -----
{
  colnames(LFN.Growth)[] <- ""
  names(LFN.Growth) <- LFN.Growth[1,]
  LFN.Growth <- LFN.Growth[-1,]
}

LFN.Growth[1:7,][is.na(LFN.Growth[1:7,])] <- '2016.0'
LFN.Growth[8:14,][is.na(LFN.Growth[8:14,])] <- '2018.0'
LFN.Growth[15:21,][is.na(LFN.Growth[15:21,])] <- '2020.0'

LFN.GrowthM<-LFN.Growth %>% 
  mutate(`Total Population` = as.numeric(`Total Population`)/1000000,
         Year = factor(Year),
         Category= factor(Category),
         `Landscape of financial services used % Growth` = 
           as.numeric(`Landscape of financial services used % Growth`)) %>% 
  rename(LandScapeFinServices = `Landscape of financial services used % Growth`)



#---- Data Viz 1-------
LFN.GrowthM %>% 
  ggplot(aes(x= Year, y = `Total Population`, fill = Category))+
  geom_bar(stat = 'identity', position= 'stack')+
  scale_fill_viridis_d(option = "H")
