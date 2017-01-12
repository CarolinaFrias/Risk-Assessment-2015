dados<-read.csv("C:/Users/Carolina/Desktop/R/Livro1.csv",sep=";" )
library(mc2d)

calcula<-function(niter,Lmin,Lml,Lmax,Emin,Eml,Emax){
        a<-rpert(niter,Lmin,Lml,Lmax)
        b<-rpert(niter,Emin,Eml,Emax)
        c<-a*b
        return(c)
}

for (m in 1:nrow(dados)){ 
        dados$Pml[m]<-quantile(calcula(10000,dados$Lmin[m],dados$Lml[m],dados$Lmax[m],dados$Emin[m],dados$Eml[m],dados$Emax[m]),probs=.5)
        dados$Pmin[m]<-quantile(calcula(10000,dados$Lmin[m],dados$Lml[m],dados$Lmax[m],dados$Emin[m],dados$Eml[m],dados$Emax[m]),probs=.05)
        dados$Pmax[m]<-quantile(calcula(10000,dados$Lmin[m],dados$Lml[m],dados$Lmax[m],dados$Emin[m],dados$Eml[m],dados$Emax[m]),probs=.95)
}

rpert(10,dados[24, 4],dados[24, 5],dados[24, 6])
quantile(calcula(10000, .1, .2, .3,.1,.2,.3), probs=.95)

which.max(dados$Pml)
Factor Hazard Lmin Lml Lmax Emin  Eml Emax Severity Duration       Pml      Pmin
41 Infectious   BRSV1  0.7 0.8  0.9 0.55 0.65 0.75   Medium     Long 0.5190369 0.4588533
Pmax
41 0.5844333

colostro<-subset(dados, Factor=="Colostrum")
ish<-subset(dados, Factor=="ISH")
igh<-subset(dados, Factor=="IGH")
ogh<-subset(dados, Factor=="OGH")
maneio<-subset(dados, Factor=="Management")
idade<-subset(dados, Factor=="Age")
nasc<-subset(dados, Factor=="Birth")
infec<-subset(dados, Factor=="Infectious")
gen<-subset(dados, Factor=="Genetics")
