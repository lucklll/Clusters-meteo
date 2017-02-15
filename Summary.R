library(readr)



####KoSu
dfclusters<-data.frame()

##read data into dataframe dfclusters
  for (z in 1:6)
  {s<-paste("so2",z)
  s<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoSuSO2cl",z,".txt")))
dfclusters[1:length(s),z]<-s}

for (z in 1:6)
{no<-paste("no",z)
no<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoSuNOcl",z,".txt")))
dfclusters[1:length(no),z+6]<-no}

for (z in 1:6)
{no2<-paste("no2",z)
no2<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoSuNO2cl",z,".txt")))
dfclusters[1:length(no2),z+12]<-no2}

for (z in 1:6)
{nox<-paste("nox",z)
nox<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoSuNOxcl",z,".txt")))
dfclusters[1:length(nox),z+18]<-nox}

for (z in 1:6)
{O3<-paste("O3",z)
O3<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoSuO3cl",z,".txt")))
dfclusters[1:length(O3),z+24]<-O3}

for (z in 1:6)
{PM10<-paste("PM10",z)
PM10<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoSuPM10cl",z,".txt")))
dfclusters[1:length(PM10),z+30]<-PM10}

for (z in 1:6)
{PM25<-paste("PM25",z)
PM25<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoSuPM25cl",z,".txt")))
dfclusters[1:length(PM25),z+36]<-PM25}

for (z in 1:6)
{Te<-paste("Te",z)
Te<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoSuTecl",z,".txt")))
dfclusters[1:length(Te),z+42]<-Te}

for (z in 1:6)
{H<-paste("H",z)
H<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoSuHcl",z,".txt")))
dfclusters[1:length(H),z+48]<-H}

for (z in 1:6)
{P<-paste("P",z)
P<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoSuPcl",z,".txt")))
dfclusters[1:length(P),z+54]<-P}

for (z in 1:6)
{GLDR<-paste("GLDR",z)
GLDR<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoSuGLDRcl",z,".txt")))
dfclusters[1:length(GLDR),z+60]<-GLDR
} 



##Name columns in dataframe dfclusters


for (z in 1:6)
{colnames(dfclusters)[z]<-paste("SO2",z)
colnames(dfclusters)[z+6]<-paste("NO",z)
colnames(dfclusters)[z+12]<-paste("NO2",z)
colnames(dfclusters)[z+18]<-paste("NOx",z)
colnames(dfclusters)[z+24]<-paste("O3",z)
colnames(dfclusters)[z+30]<-paste("PM10",z)
colnames(dfclusters)[z+36]<-paste("PM25",z)
colnames(dfclusters)[z+42]<-paste("Te",z)
colnames(dfclusters)[z+48]<-paste("H",z)
colnames(dfclusters)[z+54]<-paste("P",z)
colnames(dfclusters)[z+60]<-paste("GLDR",z)
}

##Calculate mean

a<-vector()
a<-as.numeric(a)


for (x in 1:(ncol(dfclusters))) 
{
  a[x]<-mean(dfclusters[[x]],na.rm=TRUE)
  a[x]<-round(a[x], digits = 2)
}


##Make summary in a table

names<-c("SO2","NO","NO2","NOx","O3","PM10","PM25","Te","H","P","GLDR")
u<-c("??g/m3","??g/m3","??g/m3","??g/m3","??g/m3","??g/m3","??g/m3","C","%","hPa","W/m2")
df1<-as.data.frame(u,names)



for (y in 1:6)
{df1[1,y+1]<-a[y]
df1[2,y+1]<-a[y+6]
df1[3,y+1]<-a[y+12]
df1[4,y+1]<-a[y+18]
df1[5,y+1]<-a[y+24]
df1[6,y+1]<-a[y+30]
df1[7,y+1]<-a[y+36]
df1[8,y+1]<-a[y+42]
df1[9,y+1]<-a[y+48]
df1[10,y+1]<-a[y+54]
df1[11,y+1]<-a[y+60]

}

clusters<-c("Units","Cluster Nr.1","Cluster Nr.2","Cluster Nr.3","Cluster Nr.4","Cluster Nr.5","Cluster Nr.6")
for (c in 1:7)
{colnames(df1)[c]<-paste(clusters[c])}


write.csv(df1, file = "C:/Users/kubelova/Desktop/A1 IK Kosetice/Clusters/KoSu/Meteo/summary.csv")



####KoWi

dfclusters<-data.frame()

##read data into dataframe dfclusters
for (z in 1:8)
{s<-paste("so2",z)
s<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoWiSO2cl",z,".txt")))
dfclusters[1:length(s),z]<-s}

for (z in 1:8)
{no<-paste("no",z)
no<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoWiNOcl",z,".txt")))
dfclusters[1:length(no),z+8]<-no}

for (z in 1:8)
{no2<-paste("no2",z)
no2<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoWiNO2cl",z,".txt")))
dfclusters[1:length(no2),z+16]<-no2}

for (z in 1:8)
{nox<-paste("nox",z)
nox<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoWiNOxcl",z,".txt")))
dfclusters[1:length(nox),z+24]<-nox}

for (z in 1:8)
{O3<-paste("O3",z)
O3<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoWiO3cl",z,".txt")))
dfclusters[1:length(O3),z+32]<-O3}

for (z in 1:8)
{PM10<-paste("PM10",z)
PM10<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoWiPM10cl",z,".txt")))
dfclusters[1:length(PM10),z+40]<-PM10}

for (z in 1:8)
{PM25<-paste("PM25",z)
PM25<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoWiPM25cl",z,".txt")))
dfclusters[1:length(PM25),z+48]<-PM25}

for (z in 1:8)
{Te<-paste("Te",z)
Te<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoWiTecl",z,".txt")))
dfclusters[1:length(Te),z+56]<-Te}

for (z in 1:8)
{H<-paste("H",z)
H<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoWiHcl",z,".txt")))
dfclusters[1:length(H),z+64]<-H}

for (z in 1:8)
{P<-paste("P",z)
P<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoWiPcl",z,".txt")))
dfclusters[1:length(P),z+72]<-P}

for (z in 1:8)
{GLDR<-paste("GLDR",z)
GLDR<-as.vector(scan(paste("C:\\Users\\kubelova\\Documents\\KoWiGLDRcl",z,".txt")))
dfclusters[1:length(GLDR),z+80]<-GLDR
} 



##Name columns in dataframe dfclusters


for (z in 1:8)
{colnames(dfclusters)[z]<-paste("SO2",z)
colnames(dfclusters)[z+8]<-paste("NO",z)
colnames(dfclusters)[z+16]<-paste("NO2",z)
colnames(dfclusters)[z+24]<-paste("NOx",z)
colnames(dfclusters)[z+32]<-paste("O3",z)
colnames(dfclusters)[z+40]<-paste("PM10",z)
colnames(dfclusters)[z+48]<-paste("PM25",z)
colnames(dfclusters)[z+56]<-paste("Te",z)
colnames(dfclusters)[z+64]<-paste("H",z)
colnames(dfclusters)[z+72]<-paste("P",z)
colnames(dfclusters)[z+80]<-paste("GLDR",z)
}

##Calculate mean

a<-vector()
a<-as.numeric(a)


for (x in 1:(ncol(dfclusters))) 
{
  a[x]<-mean(dfclusters[[x]],na.rm=TRUE)
  a[x]<-round(a[x], digits = 2)
}


##Make summary in a table

names<-c("SO2","NO","NO2","NOx","O3","PM10","PM25","Te","H","P","GLDR")
u<-c("??g/m3","??g/m3","??g/m3","??g/m3","??g/m3","??g/m3","??g/m3","C","%","hPa","W/m2")
df1<-as.data.frame(u,names)



for (y in 1:8)
{df1[1,y+1]<-a[y]
df1[2,y+1]<-a[y+8]
df1[3,y+1]<-a[y+16]
df1[4,y+1]<-a[y+24]
df1[5,y+1]<-a[y+32]
df1[6,y+1]<-a[y+40]
df1[7,y+1]<-a[y+48]
df1[8,y+1]<-a[y+56]
df1[9,y+1]<-a[y+64]
df1[10,y+1]<-a[y+72]
df1[11,y+1]<-a[y+80]

}

clusters<-c("Units","Cluster Nr.1","Cluster Nr.2","Cluster Nr.3","Cluster Nr.4","Cluster Nr.5","Cluster Nr.6","Cluster Nr.7","Cluster Nr.8")
for (c in 1:9)
{colnames(df1)[c]<-paste(clusters[c])}


write.csv(df1, file = "C:/Users/kubelova/Desktop/A1 IK Kosetice/Clusters/KoWi/Meteo/summary.csv")