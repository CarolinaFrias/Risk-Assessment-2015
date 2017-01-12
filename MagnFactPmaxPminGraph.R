library(ggplot2)

ggplot(dados, aes(x=Hazard, y=Pml, fill=Magnitude))+
        geom_bar(stat="identity")+
        geom_errorbar(aes(ymax=Pmax, ymin=Pmin), position="dodge")+
        scale_fill_manual(breaks=c("High","Medium","Low", "Very Low"), values=c("red", "darkgreen", "orange", "lightgreen"))+
        coord_cartesian(ylim=c(0.001, 0.7))+
        xlab("Hazard")+ylab("Probability")+guides(fill=guide_legend(title="Magnitude"))+
        coord_flip()

ordemR:high, low, medium, verylow

g+scale_fill_manual(breaks=c("High","Medium","Low", "Very Low"), values=c("red", "darkgreen", "orange", "lightgreen"))

g<-ggplot(dados, aes(x=dados$Hazard, y=dados$Pml, fill=dados$Magnitude))+
        geom_bar(stat="identity")+
        facet_wrap(~Factor)

theme(axis.text.y = element_blank())

ggplot(infec, aes(x=Hazard, y=Pml, fill=Magnitude))+
        geom_bar(stat="identity")+
        geom_errorbar(aes(ymax=Pmax, ymin=Pmin), position="dodge")+
        scale_fill_manual(breaks=c("High","Medium"), values=c("red", "orange"))+
        coord_cartesian(ylim=c(0.001, 0.7))+
        ylab("Probability of the adverse effect")+
        guides(fill=guide_legend(title="Magnitude"))+
        theme(axis.title.y=element_blank())+
        ggtitle("Influence of infectious agents on BRD")+
        coord_flip()

ggplot(nasc, aes(x=Hazard, y=Pml, fill=Magnitude))+
        geom_bar(width=.4, stat="identity")+
        geom_errorbar(aes(ymax=Pmax, ymin=Pmin), position="dodge", width=.4)+
        scale_fill_manual(breaks=c("Very Low"), values=c("lightgreen"))+
        coord_cartesian(ylim=c(0.001, 0.7))+
        theme(axis.title.y=element_blank())+
        ylab("Probability of the adverse effect")+
        guides(fill=guide_legend(title="Magnitude"))+
        coord_flip()+
        ggtitle("Influence of the Season of Birth on BRD")

ggplot(gen, aes(x=Hazard, y=Pml, fill=Magnitude))+
        geom_bar(width=.4, stat="identity")+
        geom_errorbar(aes(ymax=Pmax, ymin=Pmin), position="dodge", width=.4)+
        scale_fill_manual(breaks=c("Medium"), values=c("orange"))+
        coord_cartesian(ylim=c(0.001, 0.7))+
        ylab("Probability of the adverse effect")+
        guides(fill=guide_legend(title="Magnitude"))+
        theme(axis.title.y = element_blank())+
        ggtitle("Influence of Genetics on BRD")+
        coord_flip()

ggplot(idade, aes(x=Hazard, y=Pml, fill=Magnitude))+
        geom_bar(stat="identity")+
        geom_errorbar(aes(ymax=Pmax, ymin=Pmin), position="dodge")+
        scale_fill_manual(breaks=c("High","Medium", "Very Low"), values=c("red", "orange", "lightgreen"))+
        coord_cartesian(ylim=c(0.001, 0.7))+
        theme(axis.title.y=element_blank())+
        ylab("Probability of the adverse effect")+
        guides(fill=guide_legend(title="Magnitude"))+
        ggtitle("Influence of Age on BRD")+
        coord_flip()

ggplot(maneio, aes(x=Hazard, y=Pml, fill=Magnitude))+
        geom_bar(stat="identity")+
        geom_errorbar(aes(ymax=Pmax, ymin=Pmin), position="dodge")+
        scale_fill_manual(breaks=c("High","Medium"), values=c("red", "orange"))+
        coord_cartesian(ylim=c(0.001, 0.7))+
        theme(axis.title.y=element_blank())+
        ylab("Probability of the adverse effect")+
        guides(fill=guide_legend(title="Magnitude"))+
        ggtitle("Influence of management practices on BRD")+
        coord_flip()

ggplot(ogh, aes(x=Hazard, y=Pml, fill=Magnitude))+
        geom_bar(stat="identity", width=.4)+
        geom_errorbar(aes(ymax=Pmax, ymin=Pmin), position="dodge", width=.4)+
        scale_fill_manual(breaks=c("Medium"), values=c("orange"))+
        coord_cartesian(ylim=c(0.001, 0.7))+
        theme(axis.title.y=element_blank())+
        ylab("Probability of the adverse effect")+
        guides(fill=guide_legend(title="Magnitude"))+
        ggtitle("Influence of Group outdoor housing on BRD")+
        coord_flip()

ggplot(igh, aes(x=Hazard, y=Pml, fill=Magnitude))+
        geom_bar(stat="identity")+
        geom_errorbar(aes(ymax=Pmax, ymin=Pmin), position="dodge")+
        scale_fill_manual(breaks=c("Medium"), values=c("orange"))+
        coord_cartesian(ylim=c(0.001, 0.7))+
        theme(axis.title.y=element_blank())+
        ylab("Probability of the adverse effect")+
        guides(fill=guide_legend(title="Magnitude"))+
        ggtitle("Influence of Group indoor housing on BRD")+
        coord_flip()

ggplot(ish, aes(x=Hazard, y=Pml, fill=Magnitude))+
        geom_bar(stat="identity")+
        geom_errorbar(aes(ymax=Pmax, ymin=Pmin), position="dodge")+
        scale_fill_manual(breaks=c("Medium","Low"), values=c("darkgreen", "orange"))+
        coord_cartesian(ylim=c(0.001, 0.7))+
        theme(axis.title.y=element_blank())+
        ylab("Probability of the adverse effect")+
        guides(fill=guide_legend(title="Magnitude"))+
        ggtitle("Influence of Single indoor housing on BRD")+
        coord_flip()

ggplot(colostro, aes(x=Hazard, y=Pml, fill=Magnitude))+
        geom_bar(stat="identity")+
        geom_errorbar(aes(ymax=Pmax, ymin=Pmin), position="dodge")+
        scale_fill_manual(breaks=c("Medium","Low"), values=c("darkgreen", "orange"))+
        coord_cartesian(ylim=c(0.001, 0.7))+
        theme(axis.title.y=element_blank())+
        ylab("Probability of the adverse effect")+
        guides(fill=guide_legend(title="Magnitude"))+
        ggtitle("Influence of Colostrum on BRD")+
        coord_flip()



