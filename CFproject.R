install.packages(tidyverse)
library(tidyverse)
###INTRA data
dataI1<-read_sav("intra")
dataI2<-dataI1%>%
  filter(country=="China")%>%
dataIBJ<-dataI2%>%
  filter(grepl('Beiji|Peking', nationalitt))%>%
  mutate(prov = "Beijing")
dataITJ<-dataI2%>%
  filter(grepl('Tianjin', nationalitt))%>%
  mutate(prov = "Tianjin")
dataISH<-dataI2%>%
  filter(grepl('Shangh', nationalitt))%>%
  mutate(prov = "Shanghai")
dataICQ<-dataI2%>%
  filter(grepl('Chongq', nationalitt))%>%
  mutate(prov = "Chongqing")
dataINM<-dataI2%>%
  filter(grepl('Inner', nationalitt))%>%
  mutate(prov = "Inner Mongolia")
dataIGX<-dataI2%>%
  filter(grepl('Guangx', nationalitt))%>%
  mutate(prov = "Guangxi")
dataIXZ<-dataI2%>%
  filter(grepl('Tibet',nationalitt))%>%
  mutate(prov = "Tibet")
dataINX<-dataI2%>%
  filter(grepl('Ningx', nationalitt))%>%
  mutate(prov = "Ningxia")
dataIXJ<-dataI2%>%
  filter(grepl('Xinj', nationalitt))%>%
  mutate(prov = "Xinjiang")
dataIHB<-dataI2%>%
  filter(grepl('Hebei',nationalitt))%>%
  mutate(prov = "Hebei")
dataISX<-dataI2%>%
  filter(grepl('hanxi', nationalitt))%>%
  mutate(prov = "Shanxi")
dataILN<-dataI2%>%
  filter(grepl('Liaoni', nationalitt))%>%
  mutate(prov = "Liaoning")
dataIJL<-dataI2%>%
  filter(grepl('Jilin', nationalitt))%>%
  mutate(prov = "Jilin")
dataIHLJ<-dataI2%>%
  filter(grepl('longj', nationalitt))%>%
  mutate(prov = "Heilongjiang")
dataIJS<-dataI2%>%
  filter(grepl('iangsu', nationalitt))%>%
  mutate(prov = "Jiangsu")
dataIZJ<-dataI2%>%
  filter(grepl('Zhejian', nationalitt))%>%
  mutate(prov = "Zhejiang")
dataIAH<-dataI2%>%
  filter(grepl('Anhui', nationalitt))%>%
  mutate(prov = "Anhui")
dataIFJ<-dataI2%>%
  filter(grepl('Fujia', nationalitt))%>%
  mutate(prov = "Fujian")
dataIJX<-dataI2%>%
  filter(grepl('iangxi', nationalitt))%>%
  mutate(prov = "Jiangxi")
dataISD<-dataI2%>%
  filter(grepl('handon', nationalitt))%>%
  mutate(prov = "Shandong")
dataIHN<-dataI2%>%
  filter(grepl('Henan', nationalitt))%>%
  mutate(prov = "Henan")
dataIHuB<-dataI2%>%
  filter(grepl('ubei', nationalitt))%>%
  mutate(prov = "Hubei")
dataIFN<-dataI2%>%
  filter(grepl('Hunan', nationalitt))%>%
  mutate(prov = "Hunan")
dataIGD<-dataI2%>%
  filter(grepl('angdo', nationalitt))%>%
  mutate(prov = "Guangdong")
dataISY<-dataI2%>%
  filter(grepl('Hainan', nationalitt))%>%
  mutate(prov = "Hainan")
dataISC<-dataI2%>%
  filter(grepl('Sichuan', nationalitt))%>%
  mutate(prov = "Sichuan")
dataIGZ<-dataI2%>%
  filter(grepl('uizhou', nationalitt))%>%
  mutate(prov = "Guizhou")
dataIYN<-dataI2%>%
  filter(grepl('Yunna', nationalitt))%>%
  mutate(prov = "Yunnan")
dataISAX<-dataI2%>%
  filter(grepl('aanxi', nationalitt))%>%
  mutate(prov = "Shaanxi")
dataIGS<-dataI2%>%
  filter(grepl('Gansu', nationalitt))%>%
  mutate(prov = "Gansu")
dataIQH<-dataI2%>%
  filter(grepl('inghai', nationalitt))%>%
  mutate(prov = "Qinghai")
dataIP<-rbind(dataIAH,dataIBJ,dataICQ,dataIFJ,dataIFN,dataIGD,dataIGS,
              dataIGX,dataIGZ,dataIHB,dataIHuB,dataIHLJ,dataIHN,dataIJL,dataIJS,
              dataIJX,dataILN,dataINM,dataINX,dataIQH,dataISAX,dataISC,
              dataISD,dataISH,dataISX,dataISY,dataITJ,dataIXJ,dataIXZ,
              dataIYN,dataIZJ)
dataIPG<-anti_join(dataI2,dataIP)
datamedia<-dataIPG%>%
  filter(grepl('China-', nationalitt))
dataMmedia<-anti_join(dataIPG,datamedia)
dataIWH<-dataI2%>%
  filter(grepl('Wuhan', nationalitt))%>%
  mutate(prov = "Hubei")
dataIHZ<-dataI2%>%
  filter(grepl('Hangzh', nationalitt))%>%
  mutate(prov = "Zhejiang")
dataIFZ<-dataI2%>%
  filter(grepl('Fuzhou', nationalitt))%>%
  mutate(prov = "Fujian")
dataIHK<-dataI2%>%
  filter(grepl('aikou', nationalitt))%>%
  mutate(prov = "Hainan")
dataIHF<-dataI2%>%
  filter(grepl('efei', nationalitt))%>%
  mutate(prov = "Anhui")
dataITY<-dataI2%>%
  filter(grepl('aiyua', nationalitt))%>%
  mutate(prov = "Shanxi")
dataIHEB<-dataI2%>%
  filter(grepl('arbin', nationalitt))%>%
  mutate(prov = "Heilongjiang")
dataIXGJ<-dataI2%>%
  filter(grepl('ingjia', nationalitt))%>%
  mutate(prov = "Xinjiang")
dataIXA<-dataI2%>%
  filter(grepl('Xian', nationalitt))%>%
  mutate(prov = "Shaanxi")
dataINJ<-dataI2%>%
  filter(grepl('Nanjin', nationalitt))%>%
  mutate(prov = "Jiangsu")
dataIPF<-rbind(dataIP,dataIWH,dataIHZ,dataIFZ,dataITY,dataIHEB,
               dataIHF,dataIHK,dataIXGJ,dataIXA,dataINJ)
dataIT<-anti_join(dataI2,dataIPF)
dataIPB<-dataIPF%>%
  drop_na(beta)%>%
  group_by(prov)%>%
  summarise(Meanbeta= mean(beta))

###PANDA data
dataP1<-read_sav("Main survey/main-data-2.4.sav")

dataP1C<-dataP1%>%
  filter(country == "China")
dataPBJ<-dataP1C%>%
  filter(grepl('Beiji|Peking', XD9))%>%
  mutate(prov = "Beijing")
dataPTJ<-dataP1C%>%
  filter(grepl('Tianjin', XD9))%>%
  mutate(prov = "Tianjin")
dataPSH<-dataP1C%>%
  filter(grepl('Shangh', XD9))%>%
  mutate(prov = "Shanghai")
dataPCQ<-dataP1C%>%
  filter(grepl('Chongq', XD9))%>%
  mutate(prov = "Chongqing")
dataPNM<-dataP1C%>%
  filter(grepl('Inner', XD9))%>%
  mutate(prov = "Inner Mongolia")
dataPGX<-dataP1C%>%
  filter(grepl('Guangx', XD9))%>%
  mutate(prov = "Guangxi")
dataPXZ<-dataP1C%>%
  filter(grepl('Tibet', XD9))%>%
  mutate(prov = "Tibet")
dataPNX<-dataP1C%>%
  filter(grepl('Ningx', XD9))%>%
  mutate(prov = "Ningxia")
dataPXJ<-dataP1C%>%
  filter(grepl('Xinj', XD9))%>%
  mutate(prov = "Xinjiang")
dataPHB<-dataP1C%>%
  filter(grepl('Hebei', XD9))%>%
  mutate(prov = "Hebei")
dataPSX<-dataP1C%>%
  filter(grepl('hanxi', XD9))%>%
  mutate(prov = "Shanxi")
dataPLN<-dataP1C%>%
  filter(grepl('Liaoni', XD9))%>%
  mutate(prov = "Liaoning")
dataPJL<-dataP1C%>%
  filter(grepl('Jilin', XD9))%>%
  mutate(prov = "Jilin")
dataPHLJ<-dataP1C%>%
  filter(grepl('longj', XD9))%>%
  mutate(prov = "Heilongjiang")
dataPJS<-dataP1C%>%
  filter(grepl('iangsu', XD9))%>%
  mutate(prov = "Jiangsu")
dataPZJ<-dataP1C%>%
  filter(grepl('Zhejian', XD9))%>%
  mutate(prov = "Zhejiang")
dataPAH<-dataP1C%>%
  filter(grepl('Anhui', XD9))%>%
  mutate(prov = "Anhui")
dataPFJ<-dataP1C%>%
  filter(grepl('Fujia', XD9))%>%
  mutate(prov = "Fujian")
dataPJX<-dataP1C%>%
  filter(grepl('iangxi', XD9))%>%
  mutate(prov = "Jiangxi")
dataPSD<-dataP1C%>%
  filter(grepl('handon', XD9))%>%
  mutate(prov = "Shandong")
dataPHN<-dataP1C%>%
  filter(grepl('Henan', XD9))%>%
  mutate(prov = "Henan")
dataPHuB<-dataP1C%>%
  filter(grepl('ubei', XD9))%>%
  mutate(prov = "Hubei")
dataPFN<-dataP1C%>%
  filter(grepl('Hunan', XD9))%>%
  mutate(prov = "Hunan")
dataPGD<-dataP1C%>%
  filter(grepl('angdo', XD9))%>%
  mutate(prov = "Guangdong")
dataPSY<-dataP1C%>%
  filter(grepl('Hainan', XD9))%>%
  mutate(prov = "Hainan")
dataPSC<-dataP1C%>%
  filter(grepl('Sichuan', XD9))%>%
  mutate(prov = "Sichuan")
dataPGZ<-dataP1C%>%
  filter(grepl('uizhou', XD9))%>%
  mutate(prov = "Guizhou")
dataPYN<-dataP1C%>%
  filter(grepl('Yunna', XD9))%>%
  mutate(prov = "Yunnan")
dataPSAX<-dataP1C%>%
  filter(grepl('aanxi', XD9))%>%
  mutate(prov = "Shaanxi")
dataPGS<-dataP1C%>%
  filter(grepl('Gansu', XD9))%>%
  mutate(prov = "Gansu")
dataPQH<-dataP1C%>%
  filter(grepl('inghai', XD9))%>%
  mutate(prov = "Qinghai")
dataPP<-rbind(dataPAH,dataPBJ,dataPCQ,dataPFJ,dataPFN,dataPGD,dataPGS,
              dataPGX,dataPGZ,dataPHB,dataPHuB,dataPHLJ,dataPHN,dataPJL,dataPJS,
              dataPJX,dataPLN,dataPNM,dataPNX,dataPQH,dataPSAX,dataPSC,
              dataPSD,dataPSH,dataPSX,dataPSY,dataPTJ,dataPXJ,dataPXZ,
              dataPYN,dataPZJ)
databeta<-dataPP%>%
  select(bta_sub,bta)

dataPPP<-dataPP%>%
  drop_na(patient)%>%
  group_by(prov)%>%
  summarise(MeanP= mean(patient))
dataPF<-merge(dataICNP,dataPPP, by = "prov")

###Mapping China
install.packages('hchinamap', build_vignettes = TRUE)
library(hchinamap)
library(magrittr)

dataICNP<-read_xlsx("Media/CNprov.xlsx")
library(dplyr)
dataI<-merge(dataICNP,dataIPB,by = "prov")
dataW<-read_xlsx("Media/wealth.xlsx")%>%
  setnames("2008w","w1")%>%
  setnames("2018w","w2")
dataIW<-merge(dataW,dataI)
library(data.table)
hchinamap(name =  dataW$name, value = dataW$w1,
          width = "100%", height = "400px",
          title = "Map of China",
          minColor = "#f1eef6",
          maxColor = "#980043")
hchinamap(name =  dataPF$name, value = dataPF$MeanP,
          width = "100%", height = "400px",
          title = "Map of China",
          minColor = "#f1eef6",
          maxColor = "#980043")
###INTRA SOUTH AND NORTH
dataID<-dataIPF%>%
  mutate(North=ifelse(grepl("Inner Mongolia|Liaoning|Heilongjiang|Jilin|Hebei|
               Henan|Shandong|Shanxi|Shaanxi|Tianjin|Beijing",prov),1,0))%>%
  mutate(West=ifelse(grepl("Xinjiang|Gansu|Ningxia|Qinghai|Tibet",prov),1,0))

###Cultural dimension Calculation
dataIPFC<-dataIPF%>%
  drop_na(II1,II2,II3,II4,II5,II6,II7,II8,II9,II10,
          II11,II12a,II12b,II13,II14,II15,II16,II17,II18,II19)%>%
  group_by(prov)%>%
  summarise(M01=mean(II1),
            M02=mean(II2),
            M03=mean(II3),
            M04=mean(II4),
            M05=mean(II5),
            M06=mean(II6),
            M07=mean(II7),
            M08=mean(II8),
            M09=mean(II9),
            M10=mean(II10),
            M11=mean(II11),
            M12=mean(II12a),
            M13=mean(II12b),
            M14=mean(II13),
            M15=mean(II14),
            M16=mean(II15),
            M17=mean(II16),
            M18=mean(II17),
            M19=mean(II18),
            M20=mean(II19))
dataII<-merge(dataID,dataIPFC,by = "prov")
dataIII<-merge(dataII,dataIW, by = "prov")
  
dataIWC<-dataIII%>%
  mutate(PDI = -35*M03+35*M06+25*M14-20*M17-20,
         IDV = -50*M01+30*M02+20*M04-25*M08+130,
         MAS = 60*M05-20*M07+20*M15-70*M20+100,
         UAI = 25*M13+20*M16-50*M18-15*M19+120,
         LTO = -20*M10+20*M12+40)

dataIWC1<-dataIWC%>%
  filter( prov != "Xinjiang|Gansu|Ningxia|Qinghai|Tibet")

library(ggplot2)
fitI1<-lm(beta~age+gender+Wealth08+North,data = dataIWC1)
fitI2<-lm(beta~age+gender+Wealth08+IDV+North,data = dataIWC1)
fitI3<-lm(beta~age+gender+Wealth08+MAS+North,data = dataIWC1)
fitI4<-lm(beta~age+gender+Wealth08+UAI+North,data = dataIWC1)
fitI5<-lm(beta~age+gender+Wealth08+North,data = dataIWC1)
fitI6<-lm(beta~age+gender+Wealth08+IDV+MAS+UAI+PDI+North,data = dataIWC1)
fitI1T<-lm(theta~age+gender+Wealth08+North,data = dataIWC1)
fitI2T<-lm(theta~age+gender+Wealth08+IDV+North,data = dataIWC1)
fitI3T<-lm(theta~age+gender+Wealth08+MAS+North,data = dataIWC1)
fitI4T<-lm(theta~age+gender+Wealth08+UAI+North,data = dataIWC1)
fitI5T<-lm(theta_w~age+gender+Wealth08+PDI+North,data = dataIWC1)
fitI6T<-lm(theta~age+gender+Wealth08+IDV+MAS+UAI+PDI+North,data = dataIWC1)
fitI1RG<-lm(RRP_gains~age+gender+Wealth08+North,data = dataIWC1)
fitI2RG<-lm(RRP_gains~age+gender+Wealth08+IDV+North,data = dataIWC1)
fitI3RG<-lm(RRP_gains~age+gender+Wealth08+MAS+North,data = dataIWC1)
fitI4RG<-lm(RRP_gains~age+gender+Wealth08+UAI+North,data = dataIWC1)
fitI5RG<-lm(RRP_gains~age+gender+Wealth08+PDI+North,data = dataIWC1)
fitI6RG<-lm(RRP_gains~age+gender+Wealth08+IDV+MAS+UAI+PDI+North,data = dataIWC1)
fitI1RL<-lm(RRP_loss~age+gender+Wealth08+North,data = dataIWC1)
fitI2RL<-lm(RRP_loss~age+gender+Wealth08+IDV+North,data = dataIWC1)
fitI3RL<-lm(RRP_loss~age+gender+Wealth08+MAS+North,data = dataIWC1)
fitI4RL<-lm(RRP_loss~age+gender+Wealth08+UAI+North,data = dataIWC1)
fitI5RL<-lm(RRP_loss~age+gender+Wealth08+PDI+North,data = dataIWC1)
fitI6RL<-lm(RRP_loss~age+gender+Wealth08+IDV+MAS+UAI+PDI+North,data = dataIWC1)
library(stargazer)
stargazer(fitI1,fitI2,fitI3,fitI4,fitI5,fitI6)
stargazer(fitI1T,fitI2T,fitI3T,fitI4T,fitI5T,fitI6T)
stargazer(fitI1RG,fitI2RG,fitI3RG,fitI4RG,fitI5RG,fitI6RG)
stargazer(fitI1RL,fitI2RL,fitI3RL,fitI4RL,fitI5RL,fitI6RL)

###When we try to discard some extreme values and provinces with few samples.


###For panda
dataPD<-dataPP%>%
  mutate(North=ifelse(grepl("Inner Mongolia|Liaoning|Heilongjiang|Jilin|Hebei|
               Henan|Shandong|Shanxi|Shaanxi|
               Tianjin|Beijing",prov),0,1))%>%
  mutate(West=ifelse(grepl("Xinjiang|Gansu|Ningxia|Qinghai|Tibet",prov),1,0))
dataPP1<-merge(dataPD,dataIW)
dataPP2<-merge(dataPDF,dataIW)
hchinamap(name =  dataW$name, value = dataW$w2,
          width = "100%", height = "400px",
          title = "Map of China",
          minColor = "#f1eef6",
          maxColor = "#980043")
dataPP1<-dataPP1%>%
  rename(Wealth08 = w1,
         Wealth18 = w2)%>%
  filter(prov != "Xinjiang|Gansu|Ningxia|Qinghai|Tibet")  



fitP1<-lm(patient~age+gender+Wealth18+North,data = dataPP1)
fitP2<-lm(patient~age+gender+Wealth18+IDV+North,data = dataPP1)
fitP3<-lm(patient~age+gender+Wealth18+MAS+North,data = dataPP1)
fitP4<-lm(patient~age+gender+Wealth18+UAI+North,data = dataPP1)
fitP5<-lm(patient~age+gender+Wealth18+PDI+North,data = dataPP1)
fitP6<-lm(patient~age+gender+Wealth18+PDI+UAI+MAS+IDV+North,data = dataPP1)
fitP1T<-lm(theta_w~age+gender+Wealth18+North,data = dataPP1)
fitP2T<-lm(theta_w~age+gender+Wealth18+IDV+North,data = dataPP1)
fitP3T<-lm(theta_w~age+gender+Wealth18+MAS+North,data = dataPP1)
fitP4T<-lm(theta_w~age+gender+Wealth18+UAI+North,data = dataPP1)
fitP5T<-lm(theta_w~age+gender+Wealth18+PDI+North,data = dataPP1)
fitP6T<-lm(theta_w~age+gender+Wealth18+PDI+UAI+MAS+IDV+North,data = dataPP1)
fitP1RG<-lm(rrp_gain~age+gender+Wealth18+North,data = dataPP1)
fitP2RG<-lm(rrp_gain~age+gender+Wealth18+IDV+North,data = dataPP1)
fitP3RG<-lm(rrp_gain~age+gender+Wealth18+MAS+North,data = dataPP1)
fitP4RG<-lm(rrp_gain~age+gender+Wealth18+UAI+North,data = dataPP1)
fitP5RG<-lm(rrp_gain~age+gender+Wealth18+PDI+North,data = dataPP1)
fitP6RG<-lm(rrp_gain~age+gender+Wealth18+PDI+UAI+MAS+IDV+North,data = dataPP1)
fitP1RL<-lm(rrp_loss~age+gender+Wealth18+North,data = dataPP1)
fitP2RL<-lm(rrp_loss~age+gender+Wealth18+IDV+North,data = dataPP1)
fitP3RL<-lm(rrp_loss~age+gender+Wealth18+MAS+North,data = dataPP1)
fitP4RL<-lm(rrp_loss~age+gender+Wealth18+UAI+North,data = dataPP1)
fitP5RL<-lm(rrp_loss~age+gender+Wealth18+PDI+North,data = dataPP1)
fitP6RL<-lm(rrp_loss~age+gender+Wealth18+PDI+UAI+MAS+IDV+North,data = dataPP1)

stargazer(fitP1,fitP2,fitP3,fitP4,fitP5,fitP6)
stargazer(fitP1T,fitP2T,fitP3T,fitP4T,fitP5T,fitP6T)
stargazer(fitP1RG,fitP2RG,fitP3RG,fitP4RG,fitP5RG,fitP6RG)
stargazer(fitP1RL,fitP2RL,fitP3RL,fitP4RL,fitP5RL,fitP6RL)


