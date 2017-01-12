ggplot(dados, aes(x=dados$Factor, y=dados$Magnitude, fill=dados$Magnitude)) 
+geom_bar(stat="identity")
+scale_fill_manual(values=c("red", "darkgreen", "orange", "lightgreen"))
+coord_flip()