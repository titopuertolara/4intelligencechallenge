
#This analysis was made using autoarima method 

data<-read.csv("FORECASTING/TFP.csv",sep=",",header=TRUE)

usa_data<-data[data$isocode=='USA',]
mex_data<-data[data$isocode=='MEX',]
can_data<-data[data$isocode=='CAN',]

usa_rtfpna<-usa_data$rtfpna
mex_rtfpna<-mex_data$rtfpna
can_rtfpna<-can_data$rtfpna

library(forecast)

plot(usa_rtfpna)
model_usa=auto.arima(usa_rtfpna)
model_usa
summary(model_usa)
forecast(model_usa,10)
plot(forecast(model_usa,10))

plot(mex_rtfpna)
model_mex=auto.arima(mex_rtfpna)
model_mex
summary(model_mex)
forecast(model_mex,10)
plot(forecast(model_mex,10))

plot(can_rtfpna)
model_can=auto.arima(can_rtfpna)
model_can
summary(model_can)
forecast(model_can,10)
plot(forecast(model_can,10))

