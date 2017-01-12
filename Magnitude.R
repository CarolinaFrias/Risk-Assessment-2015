dados <- read.csv("C:/Users/Carolina/Desktop/R/Livro1.csv", sep=";")

dados$Magnitude[dados$Severity=="High" & dados$Duration=="Long"]<-"Very High"
dados$Magnitude[dados$Severity=="High" & dados$Duration=="Medium"]<-"High"
dados$Magnitude[dados$Severity=="High" & dados$Duration=="Short"]<-"Medium"
dados$Magnitude[dados$Severity=="Medium" & dados$Duration=="Long"]<-"High"
dados$Magnitude[dados$Severity=="Medium" & dados$Duration=="Medium"]<-"Medium"
dados$Magnitude[dados$Severity=="Medium" & dados$Duration=="Short"]<-"Low"
dados$Magnitude[dados$Severity=="Low" & dados$Duration=="Long"]<-"Medium"
dados$Magnitude[dados$Severity=="Low" & dados$Duration=="Medium"]<-"Low"
dados$Magnitude[dados$Severity=="Low" & dados$Duration=="Short"]<-"Very Low"