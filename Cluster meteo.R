library(readr)

##KoSu
ludata <- read_csv("C:/Users/kubelova/Desktop/A1 IK Kosetice/Clusters/KoSu/Meteo/KoSu meteo cluster csv.csv")

for (j in ludata$COND_NR)
  for (i in ludata$M_NR)
  {if(ludata$M_DATE_INT[i]>ludata$FROM_int[j]&ludata$M_DATE_INT[i]<=ludata$TO_int[j] &!is.na(i)&!is.na(j))
  {aso2<-paste(" ", ludata$SO2[i]," ")
   aNO<-paste(" ", ludata$NO[i]," ")
   aNO2<-paste(" ", ludata$NO2[i]," ")
   aNox<-paste(" ", ludata$Nox[i]," ")
   aO3<-paste(" ", ludata$O3[i]," ")
   aPM10<-paste(" ", ludata$PM10[i]," ")
   aPM25<-paste(" ", ludata$PM25[i]," ")
   aTe<-paste(" ", ludata$Te[i]," ")
   aH<-paste(" ", ludata$H[i]," ")
   aP<-paste(" ", ludata$P[i]," ")
   aGLDR<-paste(" ", ludata$GLDR[i]," ")
   
   
  filenameSO2<-paste("KoSuSO2cl", ludata$CL_NR[j],".txt")
  filenameNO<-paste("KoSuNOcl", ludata$CL_NR[j],".txt")
  filenameNO2<-paste("KoSuNO2cl", ludata$CL_NR[j],".txt")
  filenameNox<-paste("KoSuNOxcl", ludata$CL_NR[j],".txt")
  filenameO3<-paste("KoSuO3cl", ludata$CL_NR[j],".txt")
  filenamePM10<-paste("KoSuPM10cl", ludata$CL_NR[j],".txt")
  filenamePM25<-paste("KoSuPM25cl", ludata$CL_NR[j],".txt")
  filenameTe<-paste("KoSuTecl", ludata$CL_NR[j],".txt")
  filenameH<-paste("KoSuHcl", ludata$CL_NR[j],".txt")
  filenameP<-paste("KoSuPcl", ludata$CL_NR[j],".txt")
  filenameGLDR<-paste("KoSuGLDRcl", ludata$CL_NR[j],".txt")
  
  cat(aso2, file=filenameSO2, append=TRUE)
  cat(aNO, file=filenameNO, append=TRUE)
  cat(aNO2, file=filenameNO2, append=TRUE)
  cat(aNox, file=filenameNox, append=TRUE)
  cat(aO3, file=filenameO3, append=TRUE)
  cat(aPM10, file=filenamePM10, append=TRUE)
  cat(aPM25, file=filenamePM25, append=TRUE)
  cat(aTe, file=filenameTe, append=TRUE)
  cat(aH, file=filenameH, append=TRUE)
  cat(aP, file=filenameP, append=TRUE)
  cat(aGLDR, file=filenameGLDR, append=TRUE)
  
  
  }}
  
##KoWi
ludata <- read_csv("C:/Users/kubelova/Desktop/A1 IK Kosetice/Clusters/KoWi/Meteo/KoWi meteo cluster csv.csv")

for (j in ludata$COND_NR)
  for (i in ludata$M_NR)
  {if(ludata$M_DATE_INT[i]>ludata$FROM_int[j]&ludata$M_DATE_INT[i]<=ludata$TO_int[j] &!is.na(i)&!is.na(j))
  {aso2<-paste(" ", ludata$SO2[i]," ")
  aNO<-paste(" ", ludata$NO[i]," ")
  aNO2<-paste(" ", ludata$NO2[i]," ")
  aNox<-paste(" ", ludata$Nox[i]," ")
  aO3<-paste(" ", ludata$O3[i]," ")
  aPM10<-paste(" ", ludata$PM10[i]," ")
  aPM25<-paste(" ", ludata$PM25[i]," ")
  aTe<-paste(" ", ludata$Te[i]," ")
  aH<-paste(" ", ludata$H[i]," ")
  aP<-paste(" ", ludata$P[i]," ")
  aGLDR<-paste(" ", ludata$GLDR[i]," ")
  
  
  filenameSO2<-paste("KoWiSO2cl", ludata$CL_NR[j],".txt")
  filenameNO<-paste("KoWiNOcl", ludata$CL_NR[j],".txt")
  filenameNO2<-paste("KoWiNO2cl", ludata$CL_NR[j],".txt")
  filenameNox<-paste("KoWiNOxcl", ludata$CL_NR[j],".txt")
  filenameO3<-paste("KoWiO3cl", ludata$CL_NR[j],".txt")
  filenamePM10<-paste("KoWiPM10cl", ludata$CL_NR[j],".txt")
  filenamePM25<-paste("KoWiPM25cl", ludata$CL_NR[j],".txt")
  filenameTe<-paste("KoWiTecl", ludata$CL_NR[j],".txt")
  filenameH<-paste("KoWiHcl", ludata$CL_NR[j],".txt")
  filenameP<-paste("KoWiPcl", ludata$CL_NR[j],".txt")
  filenameGLDR<-paste("KoWiGLDRcl", ludata$CL_NR[j],".txt")
  
  cat(aso2, file=filenameSO2, append=TRUE)
  cat(aNO, file=filenameNO, append=TRUE)
  cat(aNO2, file=filenameNO2, append=TRUE)
  cat(aNox, file=filenameNox, append=TRUE)
  cat(aO3, file=filenameO3, append=TRUE)
  cat(aPM10, file=filenamePM10, append=TRUE)
  cat(aPM25, file=filenamePM25, append=TRUE)
  cat(aTe, file=filenameTe, append=TRUE)
  cat(aH, file=filenameH, append=TRUE)
  cat(aP, file=filenameP, append=TRUE)
  cat(aGLDR, file=filenameGLDR, append=TRUE)
  
  
  }}