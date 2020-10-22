file <-  "../data/chaff.txt"
write.table(chaff2, 
            file, 
            quote = FALSE,
            row.names = FALSE)




chaff2<- chaff%>% 
  pivot_longer(names_to = "sex", 
               values_to = "mass",
               cols = everything())
