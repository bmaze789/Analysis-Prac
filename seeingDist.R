
dist<-read.table("signdist.txt", header=TRUE)

library(ggplot2)

ggplot(dist, aes(Age,Distance))+geom_point(shape=1)+geom_smooth(method = lm, se=FALSE) #scatterplot with linear regression line

ggplot(dist, aes(Age, Distance))+geom_boxplot() #boxplot to look at outliers

ggplot(dist, aes(Distance))+geom_density(alpha=.1, fill="blue")

cor(dist$Age, dist$Distance) # -0.8012; high negative correaltion between the 2 variables
                             # so we know age explains most of the variation in seeing distance


model <- lm(dist$Distance~dist$Age)
model
#Coefficients:
 # (Intercept)     dist$Age  
    #576.682       -3.007  
#  Distance = 76.682 + (-3.007 )*Age

summary(model)  #model is statiscally signifcant so a relation does exist between age and seeing distance

#Coefficients:
#  Estimate Std. Error t value Pr(>|t|)    
#(Intercept) 576.6819    23.4709  24.570  < 2e-16 ***
#  dist$Age     -3.0068     0.4243  -7.086 1.04e-07 ***
#  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1