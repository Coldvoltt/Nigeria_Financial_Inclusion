library(readxl)
library(tidyverse)
library(plotly)
# library(ggrepel)

sheetNames<-excel_sheets("Financial Inclusion Dataset 2008 - 2020.xlsx")

{
  GenPop<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 3)
  AdPop<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 4)
  AGPop<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 5)
  IncSrc<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 6)
  FI.AdInFin<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 7)
  LFN.Growth<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 8)
  LFSer1<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 9)
  LFSer2<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 10)
  FN.DigUsage<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 11)
  FN.FinHeSc<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 12)
  FN.FinHeRat<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 13)
  FN.OvrNigFinCapRat<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 14)
  FN.OvrNigFinCapCat<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 15)
  LFI<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 16)
  LFI.CountryYr<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 17)
  LFI.Gender<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 18)
  LFI.AgeGrp<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 19)
  LFI.Edu<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 20)
  LFI.EmpSta<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 21)
  LFI.Settlement<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 22) ##
  LFI.State<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 23) ##
  LFI.Region<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 24) ##
  LFI.Compare<- read_excel("Financial Inclusion Dataset 2008 - 2020.xlsx",sheet= 25) ##
  
}

