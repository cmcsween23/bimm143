#' ---
#' title: Bioinformatics Class 5
#' author: Colin McSweeney
#' date: 4/19/2018
#' output:
#'html_document:
#'  output: 
#'    
#' ---


#read first data table
baby <- read.table("bimm143_05_rstats/weight_chart.txt", header = TRUE)

#point and line plot
plot(baby, type = "l", pch = 15, cex = 1.5, main = "some main title", xlab = "Age (Months)", ylab = "Weight (kg)")

#1b
feat <- read.table("bimm143_05_rstats/feature_counts.txt", sep = "\t", header = TRUE)

#make a barplot
par(mar=c(5,11,4,2))
barplot(feat[,2], horiz=TRUE, ylab = "Features", names.arg=feat[,1], las = 1)

#Section 2
file <- "bimm143_05_rstats/male_female_counts.txt"
mf_counts <- read.table(file, sep = "\t", header = TRUE)

#barplot
barplot(mf_counts$Count, col = rainbow(nrow(mf_counts)))

#color by male and female
mycols <- c("blue2","red2")
barplot(mf_counts$Count, col = mycols)

#partb
scat <- read.delim("bimm143_05_rstats/up_down_expression.txt")

#scatterplot
palette(c("red", "green", "blue"))
plot(scat$Condition1,scat$Condition2, xlab = "Condition1", ylab = "Condition2", col = scat$State)




#2c

map.colors <- function (value,high.low,palette) {
  proportion <- ((value-high.low[1])/(high.low[2]-high.low[1]))
  index <- round ((length(palette)-1)*proportion)+1
  return (palette[index])
} 

map.colors2 <- function (value,
                         low.high = range(x),
                         palette = cm.colors(100)) {

  ##Description: Map the values of the input vecttor 'x'
  ##  to the input colors vector 'palette'
  #determine percent valyes of the 'high.low' range
  proportion <- ((x - low.high[2])/(low.high[1] - low.high[2]))
  
  #find corresponding index position in the color 'palette'
  #  note catch for 0 percent values to 1
  index <- round ((length(palette)-1) * percent)+1
  
  return (palette[index])
} 
