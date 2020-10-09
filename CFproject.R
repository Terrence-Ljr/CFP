install.packages(tidyverse)
library(tidyverse)
<<<<<<< Updated upstream
###INTRA data
=======
###INTRA data tidying
###This step is for split the data and re-create a column name "prov" to
### represent which province the participants came from.
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
dataIPG<-anti_join(dataI2,dataIP)
=======
###To deal with data in which participants filled out where they came from
###in the format of city, or no information detected on the province>
dataIPG<-anti_join(dataI2,dataIP, by = "nationalitt"   )
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
dataIPF<-rbind(dataIP,dataIWH,dataIHZ,dataIFZ,dataITY,dataIHEB,
               dataIHF,dataIHK,dataIXGJ,dataIXA,dataINJ)
dataIT<-anti_join(dataI2,dataIPF)
dataIPB<-dataIPF%>%
  drop_na(beta)%>%
  group_by(prov)%>%
  summarise(Meanbeta= mean(beta))
=======
###Filtered INTRA dataset
dataIPF<-rbind(dataIP,dataIWH,dataIHZ,dataIFZ,dataITY,dataIHEB,
               dataIHF,dataIHK,dataIXGJ,dataIXA,dataINJ)
###dataIPF is for the model for INTRA, and for convenience, we change the name
### of IFrage1 to "Patience".
dataIPF<- dataIPF%>%
  rename(
    Patience = IFrage1
  )
###Check the data quality of INTRA dataset, we use the column about the "Lotteries"
###and filter the data.   So we only get 66 acceptable participants.
dataINTRA<- dataIPF%>%
  filter(lotterie1 >= 4 & lotterie1 <= 40,
         lotterie2 >= 0 & lotterie2 <= 40,
         lotterie3 >= 0 & lotterie3 <= 40,
         lotterie4 >= 0 & lotterie4 <= 4000,
         lotterie5 >= 0 & lotterie5 <= 40,
         lotterie6 >= 0 & lotterie6 <= 160,
         lotterie7 >= 0 & lotterie7 <= 32,
         lotterie8 >= 0 & lotterie8 <= 40,
    )

###Check for the calculation of RRPgains and RRPloss.
dataIOrigRRP<-dataINTRA%>%
  select(id,RRP_gains,RRP_loss)

###Based on the description from Prof' risk preference paper, we have known that
###RRP_gains were clculated by the average of rrp of lotteries from 1-6.
###RRP_loss were calculated by the average of rrp of lotteries from 7-8.

dataICheckRRP<-dataINTRA%>%
  mutate(
    L1 = (36.4 - lotterie1) / 36.4,
    L2 = (24 - lotterie2) / 24,
    L3 = (36 - lotterie3) / 36,
    L4 = (2400 - lotterie4) / 2400,
    L5 = (4 - lotterie5) / 4,
    L6 = (96 - lotterie6) / 96,
    L7 = (-19.2 + lotterie7) / 19.2,
    L8 = (-24 + lotterie8) / 24
  )
dataINTRArrp<-dataICheckRRP%>%
  mutate(rrp_gains = 1/6 * ( L1 + L2 + L3 + L4 + L5 + L6 ),
         rrp_loss = 1/2 * ( L7 + L8 ))
###Check for correctness
dataIcheck<-dataINTRArrp%>%
  select( RRP_gains,RRP_loss,rrp_gains,rrp_loss)
view(dataIcheck)
###We have found that there is discrepancy between given rrp and calculated rrp.
###so we adapt our own calculated rrp. In the next following steps, we
###dataINTRArrp.

###dataID is for distinguishing the provinces with "North" and "West"
dataID<-dataINTRArrp%>%
  mutate(North=ifelse(grepl("Inner Mongolia|Liaoning|Heilongjiang|Jilin|Hebei|
               Henan|Shandong|Shanxi|Shaanxi|Tianjin|Beijing",prov),1,0))%>%
  mutate(West=ifelse(grepl("Xinjiang|Gansu|Ningxia|Qinghai|Tibet",prov),1,0))

###Cultural dimension Calculation at both individual level and provincial
###level was done. dataICul is our preparation. Inthe following section,
###we will calculate cultural dimensions based on the manual. we did this 
### in section(###################Calculate the culutural dimensions)
dataICul<-dataINTRArrp%>%
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
dataII<-merge(dataID,dataICul,by = "prov")
###dataII is intermedia data for the calculation of cultural dimensions, and it
###adds the mean of these questions for later analysis.
dataICNP<-read_xlsx("Media/CNprov.xlsx")  ###dataICNP is the Chinese-English
###names of each province.
library(dplyr)
library(xlsx)
library(readxl)
dataIPB<-dataII%>%
  group_by(prov)%>%
  summarise(Meanbeta = mean(beta))
dataI<-merge(dataICNP,dataIPB,by = "prov")
dataW<-read_excel("Media/wealth.xlsx")
dataIW<-merge(dataW,dataI, by = "name")
###We try to add wealth column and form our base dataset dataIW.

###dataIII is to add "wealth" varible to the intermedia dataset.
dataIII<-merge(dataII,dataIW, by = "prov")

###################Calculate the culutural dimensions
###we calculate the cultural dimension both at the provincial level and at 
### individual level.

dataIWC<-dataIII%>%
  mutate(PDI = -35*M03+35*M06+25*M14-20*M17-20,
         IDV = -50*M01+30*M02+20*M04-25*M08+130,
         MAS = 60*M05-20*M07+20*M15-70*M20+100,
         UAI = 25*M13+20*M16-50*M18-15*M19+120,
         LTO = -20*M10+20*M12+40)%>%
  mutate(PDII = -35*II3+35*II6+25*II13-20*II16-20,
         IDVI = -50*II1+30*II2+20*II4-25*II8+130,
         MASI = 60*II5-20*II7+20*II14-70*II19+100,
         UAII = 25*II12b+20*II15-50*II17-15*II18+120,
         LTOI = -20*II10+20*II12a+40)
###For clarity, we rename the "wealth" colunm as Wealth08 and Wealth18, which
###represent GDP per capita at provincial level in 2008, and 2018 separately. 
dataIWC1<-dataIWC%>%
  filter( prov != "Xinjiang|Gansu|Ningxia|Qinghai|Tibet")%>%
  rename(
    Wealth08 = w1,
    Wealth18 = w2)

###We know the data distribution and count them, and we get 4 South, 23 Northerners.
dataIDdistri<-dataIWC1%>%
  group_by(North)%>%
  count()
view(dataIDdistri)
### so in INTRA, we get 64 available observations and 42 for South, and 
### 22 for North.


##########################################################################
>>>>>>> Stashed changes

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
<<<<<<< Updated upstream
databeta<-dataPP%>%
  select(bta_sub,bta)

dataPPP<-dataPP%>%
  drop_na(patient)%>%
  group_by(prov)%>%
  summarise(MeanP= mean(patient))
dataPF<-merge(dataICNP,dataPPP, by = "prov")
=======

### dataPP is first version dataset for the analysis for PANDA.


###For the convenience of comparison, we change the name of column named
###"patient" to "Patience"
dataPP<-dataPP%>%
  rename(
    Patience = patient
  )

###This is to create a column named "MeanP" to represent the average of 
### patience at a provincial level.
dataPPP<-dataPP%>%
  drop_na(Patience)%>%
  group_by(prov)%>%
  summarise(MeanP= mean(Patience))
dataPF<-merge(dataICNP,dataPPP, by = "prov")
###dataPF adds Chinese name of each province and is convenient for later
### map creating.

###We also need a dummy varible for district: North or not.
dataPD<-dataPP%>%
  mutate(North=ifelse(grepl("Inner Mongolia|Liaoning|Heilongjiang|Jilin|Hebei|
               Henan|Shandong|Shanxi|Shaanxi|
               Tianjin|Beijing",prov),1,0))%>%
  mutate(West=ifelse(grepl("Xinjiang|Gansu|Ningxia|Qinghai|Tibet",prov),1,0))

###Also, we add wealth columns into sub-dataset about PANDA.
dataPP1<-merge(dataPD,dataIW, by = "prov")

###Calculate cultural dimensiosn at provincial level
dataPPM<-dataPP1%>%
  drop_na(UAI,IDV,MAS)%>%
  group_by(prov)%>%
  summarise(UAIA = mean(UAI),
            IDVA = mean(IDV),
            MASA = mean(MAS))

dataPP1<-merge(dataPP1,dataPPM, by = "prov")


###We change the name of columns about cultural dimensions to make them 
###more explicit.

dataPP1<-dataPP1%>%
  rename(
    UAII = UAI,
    UAI = UAIA,
    IDVI = IDV,
    IDV = IDVA,
    MASI = MAS,
    MAS = MASA
  )%>%
  filter(prov != "Xinjiang|Gansu|Ningxia|Qinghai|Tibet")  

### Chane the name of columns about Wealth.
dataPP1<-dataPP1%>%
  rename(
    Wealth08 = w1,
    Wealth18 = w2
  )
 
###Try to filter the low-quality data out of the PANDA. We used the
###back_pack_quality varible and discard one with 0. We get 488 effective
###observations from PANDA.

dataPP1<-dataPP1%>%
  filter(base_pack_quality != 0)


###Check the distribution of the participants about district level.

dataPPDistri<-dataPP1%>%
  group_by(North)%>%
  count()
view(dataPPDistri)
###We get 356 for south and 132 for north.


####OLS Models on INTRA.



library(ggplot2)
fitI1<-lm(beta~age+gender+log(Wealth08)+North,data = dataIWC1)
fitI2<-lm(beta~age+gender+log(Wealth08)+IDV+IDVI+North,data = dataIWC1)
fitI3<-lm(beta~age+gender+log(Wealth08)+MAS+MASI+North,data = dataIWC1)
fitI4<-lm(beta~age+gender+log(Wealth08)+UAI+UAII+North,data = dataIWC1)
fitI5<-lm(beta~age+gender+log(Wealth08)+IDV+MAS+UAI+IDVI+MASI+UAII+North,data = dataIWC1)
fitI1D<-lm(delta~age+gender+log(Wealth08)+North,data = dataIWC1)
fitI2D<-lm(delta~age+gender+log(Wealth08)+IDV+IDVI+North,data = dataIWC1)
fitI3D<-lm(delta~age+gender+log(Wealth08)+MAS+MASI+North,data = dataIWC1)
fitI4D<-lm(delta~age+gender+log(Wealth08)+UAI+UAII+North,data = dataIWC1)
fitI5D<-lm(delta~age+gender+log(Wealth08)+IDV+MAS+UAI+IDVI+MASI+UAII+North,data = dataIWC1)
fitI1P<-lm(Patience~age+gender+log(Wealth08)+North,data = dataIWC1)
fitI2P<-lm(Patience~age+gender+log(Wealth08)+IDV+IDVI+North,data = dataIWC1)
fitI3P<-lm(Patience~age+gender+log(Wealth08)+MAS+MASI+North,data = dataIWC1)
fitI4P<-lm(Patience~age+gender+log(Wealth08)+UAI+UAII+North,data = dataIWC1)
fitI5P<-lm(Patience~age+gender+log(Wealth08)+IDV+MAS+UAI+IDVI+MASI+UAII+North,data = dataIWC1)
fitI1T<-lm(theta~age+gender+log(Wealth08)+North,data = dataIWC1)
fitI2T<-lm(theta~age+gender+log(Wealth08)+IDV+IDVI+North,data = dataIWC1)
fitI3T<-lm(theta~age+gender+log(Wealth08)+MAS+MASI+North,data = dataIWC1)
fitI4T<-lm(theta~age+gender+log(Wealth08)+UAI+UAII+North,data = dataIWC1)
fitI5T<-lm(theta~age+gender+log(Wealth08)+IDV+MAS+UAI+IDVI+MASI+UAII+North,data = dataIWC1)
fitI1RG<-lm(rrp_gains~age+gender+log(Wealth08)+North,data = dataIWC1)
fitI2RG<-lm(rrp_gains~age+gender+log(Wealth08)+IDV+IDVI+North,data = dataIWC1)
fitI3RG<-lm(rrp_gains~age+gender+log(Wealth08)+MAS+MASI+North,data = dataIWC1)
fitI4RG<-lm(rrp_gains~age+gender+log(Wealth08)+UAI+UAII+North,data = dataIWC1)
fitI5RG<-lm(rrp_gains~age+gender+log(Wealth08)+IDV+MAS+UAI+IDVI+MASI+UAII+North,data = dataIWC1)
fitI1RL<-lm(rrp_loss~age+gender+log(Wealth08)+North,data = dataIWC1)
fitI2RL<-lm(rrp_loss~age+gender+log(Wealth08)+IDV++IDVI+North,data = dataIWC1)
fitI3RL<-lm(rrp_loss~age+gender+log(Wealth08)+MAS+MASI+North,data = dataIWC1)
fitI4RL<-lm(rrp_loss~age+gender+log(Wealth08)+UAI+UAII+North,data = dataIWC1)
fitI5RL<-lm(rrp_loss~age+gender+log(Wealth08)+IDV+MAS+UAI+IDVI+MASI+UAII+North,data = dataIWC1)
library(stargazer)
library(broom)

stargazer(fitI1,fitI2,fitI3,fitI4,fitI5)
stargazer(fitI1D,fitI2D,fitI3D,fitI4D,fitI5D)
stargazer(fitI1P,fitI2P,fitI3P,fitI4P,fitI5P)
stargazer(fitI1T,fitI2T,fitI3T,fitI4T,fitI5T)
stargazer(fitI1RG,fitI2RG,fitI3RG,fitI4RG,fitI5RG)
stargazer(fitI1RL,fitI2RL,fitI3RL,fitI4RL,fitI5RL)

###OLS Models on PANDA


fitP1<-lm(Patience~age+gender+log(Wealth18)+North,data = dataPP1)
fitP2<-lm(Patience~age+gender+log(Wealth18)+IDV+IDVI+North,data = dataPP1)
fitP3<-lm(Patience~age+gender+log(Wealth18)+MAS+MASI+North,data = dataPP1)
fitP4<-lm(Patience~age+gender+log(Wealth18)+UAI+UAII+North,data = dataPP1)
fitP5<-lm(Patience~age+gender+log(Wealth18)+UAI+MAS+IDV+UAII+MASI+IDVI+North,data = dataPP1)
fitP1T<-lm(theta_w~age+gender+log(Wealth18)+North,data = dataPP1)
fitP2T<-lm(theta_w~age+gender+log(Wealth18)+IDV+IDVI+North,data = dataPP1)
fitP3T<-lm(theta_w~age+gender+log(Wealth18)+MAS+MASI+North,data = dataPP1)
fitP4T<-lm(theta_w~age+gender+log(Wealth18)+UAI+UAII+North,data = dataPP1)
fitP5T<-lm(theta_w~age+gender+log(Wealth18)+UAI+MAS+IDV+UAII+MASI+IDVI+North,data = dataPP1)
fitP1RG<-lm(rrp_gain~age+gender+log(Wealth18)+North,data = dataPP1)
fitP2RG<-lm(rrp_gain~age+gender+log(Wealth18)+IDV+IDVI+North,data = dataPP1)
fitP3RG<-lm(rrp_gain~age+gender+log(Wealth18)+MAS+MASI+North,data = dataPP1)
fitP4RG<-lm(rrp_gain~age+gender+log(Wealth18)+UAI+UAII+North,data = dataPP1)
fitP5RG<-lm(rrp_gain~age+gender+log(Wealth18)+UAI+MAS+IDV+UAII+MASI+IDVI+North,data = dataPP1)
fitP1RL<-lm(rrp_loss~age+gender+log(Wealth18)+North,data = dataPP1)
fitP2RL<-lm(rrp_loss~age+gender+log(Wealth18)+IDV+IDVI+North,data = dataPP1)
fitP3RL<-lm(rrp_loss~age+gender+log(Wealth18)+MAS+MASI+North,data = dataPP1)
fitP4RL<-lm(rrp_loss~age+gender+log(Wealth18)+UAI+UAII+North,data = dataPP1)
fitP5RL<-lm(rrp_loss~age+gender+log(Wealth18)+UAI+MAS+IDV+UAII+MASI+IDVI+North,data = dataPP1)



stargazer(fitP1,fitP2,fitP3,fitP4,fitP5,digits = 2)
stargazer(fitP1T,fitP2T,fitP3T,fitP4T,fitP5T,digits = 2)
stargazer(fitP1RG,fitP2RG,fitP3RG,fitP4RG,fitP5RG,digits = 2)
stargazer(fitP1RL,fitP2RL,fitP3RL,fitP4RL,fitP5RL,digits = 2)



####For other descriptive results.
dataIDA<- dataIWC1%>%
  drop_na(beta,theta,RRP_gains,RRP_loss)%>%
  group_by(prov)%>%
  summarize(Beta = mean(beta),
            Theta =mean(theta),
            RRPgains = mean(RRP_gains),
            RRPloss = mean(RRP_loss))
dataIDAD<-dataIWC1%>%
  drop_na(beta,theta,RRP_gains,RRP_loss)%>%
  group_by(North)%>%
  summarize(Beta = mean(beta),
            Theta =mean(theta),
            RRPgains = mean(RRP_gains),
            RRPloss = mean(RRP_loss))
view(dataIDAD)

dataPDA<- dataPP1%>%
  drop_na(patient,theta_w,rrp_gain,rrp_loss)%>%
  group_by(prov)%>%
  summarize(Beta = mean(patient),
            Theta =mean(theta_w),
            RRPgains = mean(rrp_gain),
            RRPloss = mean(rrp_loss))

dataPDAD<-dataPP1%>%
  drop_na(patient,theta_w,rrp_gain,rrp_loss)%>%
  group_by(North)%>%
  summarize(patient = mean(patient),
            Theta =mean(theta_w),
            RRPgains = mean(rrp_gain),
            RRPloss = mean(rrp_loss))

view(dataPDAD)
library(xlsx)
write_excel_csv(dataIDAD,"./Media/dataIDAD.csv")
write_excel_csv(dataPDAD,"./Media/dataPDAD.csv")

dataICD<-dataIWC1%>%
  drop_na(UAII,IDVI,MASI)%>%
  group_by(North)%>%
  summarize(UAI = mean(UAII),
            IDV = mean(IDVI),
            MAS = mean(MASI))
write_excel_csv(dataICD,"./Media/dataICD.csv")


write_excel_csv(dataIDA,"./Media/dataIDA.csv")
write_excel_csv(dataPDA,"./Media/dataPDA.csv")

dataPCD<-dataPP1%>%
  drop_na(UAI,IDV,MAS)%>%
  group_by(North)%>%
  summarize(UAI = mean(UAI),
            IDV = mean(IDV),
            MAS = mean(MAS))
write_excel_csv(dataPCD,"./Media/dataPCD.csv")

dataIWC1%>%
  group_by(North)%>%
  summarize(MAS = mean(MAS))

###dataset for comparison
dataIPre<-dataIWC1%>%
  group_by(North)%>%
  drop_na(Patience,beta,theta)%>%
  summarise(Patience = mean(Patience),
            Beta = mean(beta),
            Delta = mean(delta),
            Theta = mean(theta))
write_excel_csv(dataIPre,"./Media/dataIPre1.csv")

dataIPrer<-dataIWC2%>%
  group_by(North)%>%
  summarise(RRP_gains = mean(RRP_gains),
            RRP_loss = mean(RRP_loss))

write_excel_csv(dataIPrer,"./Media/dataIPrer.csv")

dataPPre<-dataPP1%>%
  group_by(North)%>%
  drop_na(Patience,theta_w)%>%
  summarise(Patience = mean(Patience),
            Theta = mean(theta_w))
write_excel_csv(dataPPre,"./Media/dataPPre.csv")

dataPPrer<-dataPP2%>%
  group_by(North)%>%
  summarise(RRP_gains = mean(rrp_gain),
            RRP_loss = mean(rrp_loss))
write_excel_csv(dataPPrer,"./Media/dataPPrer.csv")



dataIprovP<-dataIWC1%>%
  group_by(prov)%>%
  drop_na(Patience,beta,theta)%>%
  summarise(Patience = mean(Patience),
            Beta = mean(beta),
            Delta = mean(delta),
            Theta = mean(theta))
write_excel_csv(dataIprovP,"./Media/dataIprovP.csv")

dataIprovr<-dataIWC2%>%
  group_by(prov)%>%
  summarise(RRP_gains = mean(RRP_gains),
            RRP_loss = mean(RRP_loss))
write_excel_csv(dataIprovr,"./Media/dataIprovr.csv")



dataPprovP<-dataPP1%>%
  group_by(prov)%>%
  drop_na(Patience,theta_w)%>%
  summarise(Patience = mean(Patience),
            Theta = mean(theta_w))
write_excel_csv(dataPprovP,"./Media/dataPprovP.csv")

dataPprovr<-dataPP2%>%
  group_by(prov)%>%
  summarise(RRP_gains = mean(rrp_gain),
            RRP_loss = mean(rrp_loss))
write_excel_csv(dataPprovr,"./Media/dataPprovr.csv")



###This part is all for the purpose of creating a map to show which provincial
### I have used.
>>>>>>> Stashed changes

###Mapping China
install.packages('hchinamap', build_vignettes = TRUE)
library(hchinamap)
library(magrittr)

dataICNP<-read_xlsx("Media/CNprov.xlsx")
library(dplyr)
<<<<<<< Updated upstream
dataI<-merge(dataICNP,dataIPB,by = "prov")
dataW<-read_xlsx("Media/wealth.xlsx")%>%
  setnames("2008w","w1")%>%
  setnames("2018w","w2")
dataIW<-merge(dataW,dataI)
library(data.table)
hchinamap(name =  dataW$name, value = dataW$w1,
=======
library(xlsx)
library(readxl)
dataI<-merge(dataICNP,dataIPB,by = "prov")
dataW<-read_excel("Media/wealth.xlsx")
dataIW<-merge(dataW,dataI)
library(data.table)

dataIWW<-dataICNP%>%
  mutate(North=ifelse(grepl("Inner Mongolia|Liaoning|Heilongjiang|Jilin|Hebei|Henan|Shandong|Shanxi|Shaanxi|Tianjin|Beijing|Xinjiang|Gansu|Ningxia|Qinghai|Tibet",
                            prov),1,0))%>%
  mutate(West=ifelse(grepl("Xinjiang|Gansu|Ningxia|Qinghai|Tibet",prov),1,0))

view(dataIWW)



dataIWF<-dataIWW%>%
  mutate(Dis = North + West)

view(dataIWF)

hchinamap(name =  dataIWF$name, value = dataIWF$Dis,
>>>>>>> Stashed changes
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

<<<<<<< Updated upstream
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
=======

###dataPFnew is for the map

dataPFnew<-dataIWF%>%
  mutate(N1=ifelse(grepl("Inner Mongolia|Liaoning|Heilongjiang|Jilin|Hebei|Henan|Shandong|Shanxi|Shaanxi|Tianjin|Beijing|Taiwan|Hongkong|Maucao|Xinjiang|Gansu|Ningxia|Qinghai|Tibet",prov),1,0))%>%
  mutate(W2=ifelse(grepl("Xinjiang|Gansu|Ningxia|Qinghai|Tibet|Taiwan|Hongkong|Maucao",prov),1,0))
dataPFnew1<-dataPFnew%>%
  mutate(DD = N1+W2)

###Maps for PANDA
hchinamap(name =  dataPFnew1$name, value = dataPFnew1$DD,
>>>>>>> Stashed changes
          width = "100%", height = "400px",
          title = "Map of China",
          minColor = "#f1eef6",
          maxColor = "#980043")
<<<<<<< Updated upstream
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
=======

>>>>>>> Stashed changes


