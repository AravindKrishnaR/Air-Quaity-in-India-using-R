library (dplyr)
library (plotrix)

#import data

mydata = read.csv ("C:\\Users\\Aravind\\Desktop\\data.csv")
summary (mydata)

#state-wise SO2 analysis

SO2 = aggregate (mydata $so2, list (state = mydata $state), mean, na.rm = TRUE)
SO2 = SO2  [order (-SO2 $x, decreasing = FALSE), ]
SO2 = na.omit (SO2)
SO2

#top 10 SO2 emitting states 

top10 = head (SO2, 10)
top10
pct = round (top10 $x / sum (top10 $x) * 100)
top10pct = paste (top10 $state, pct) 
top10pct = paste (top10pct, "%", sep="") 
pie3D (top10 $x, labels = top10pct, explode = 0.1, col = rainbow (length (top10pct)), main="Top 10 SO2 emitting states")

#bottom 10 SO2 emitting states 

bot10 = tail (SO2, 10)
bot10
pct = round (bot10 $x / sum (bot10 $x) * 100)
bot10pct = paste (bot10 $state, pct) 
bot10pct = paste (bot10pct, "%", sep="") 
pie3D (bot10 $x, labels = bot10pct, explode = 0.1, col = rainbow (length (bot10pct)), main="Bottom 10 SO2 emitting states")

#state-wise NO2 analysis

NO2 = aggregate (mydata $no2, list (state = mydata $state), mean, na.rm = TRUE)
NO2 = NO2  [order (-NO2 $x, decreasing = FALSE), ]
NO2 = na.omit (NO2)
NO2

#top 10 NO2 emitting states 

top10 = head (NO2, 10)
top10
pct = round (top10 $x / sum (top10 $x) * 100)
top10pct = paste (top10 $state, pct) 
top10pct = paste (top10pct, "%", sep="") 
pie3D (top10 $x, labels = top10pct, explode = 0.1, col = rainbow (length (top10pct)), main="Top 10 NO2 emitting states")

#bottom 10 NO2 emitting states 

bot10 = tail (NO2, 10)
bot10
pct = round (bot10 $x / sum (bot10 $x) * 100)
bot10pct = paste (bot10 $state, pct) 
bot10pct = paste (bot10pct, "%", sep="") 
pie3D (bot10 $x, labels = bot10pct, explode = 0.1, col = rainbow (length (bot10pct)), main="Bottom 10 NO2 emitting states")

#state-wise analysis of rspm concentration

rspm = aggregate (mydata $rspm, list (state = mydata $state), mean, na.rm = TRUE)
rspm = rspm  [order (-rspm $x, decreasing = FALSE), ]
rspm = na.omit (rspm)
rspm

#top 10 RSPM concentrated states 

top10 = head (rspm, 10)
top10
pct = round (top10 $x / sum (top10 $x) * 100)
top10pct = paste (top10 $state, pct) 
top10pct = paste (top10pct, "%", sep="") 
pie3D (top10 $x, labels = top10pct, explode = 0.1, col = rainbow (length (top10pct)), main="Top 10 rspm concentrated states")

#bottom 10 RSPM concentrated states 

bot10 = tail (rspm, 10)
bot10
pct = round (bot10 $x / sum (bot10 $x) * 100)
bot10pct = paste (bot10 $state, pct) 
bot10pct = paste (bot10pct, "%", sep="") 
pie3D (bot10 $x, labels = bot10pct, explode = 0.1, col = rainbow (length (bot10pct)), main="Bottom 10 rspm concentrated states")

#state-wise analysis of spm concentration

spm = aggregate (mydata $spm, list (state = mydata $state), mean, na.rm = TRUE)
spm = spm [order (-spm $x, decreasing = FALSE), ]
spm = na.omit (spm)
spm

#top 10 spm concentrated states 

top10 = head (spm, 10)
top10
pct = round (top10 $x / sum (top10 $x) * 100)
top10pct = paste (top10 $state, pct) 
top10pct = paste (top10pct, "%", sep="") 
pie3D (top10 $x, labels = top10pct, explode = 0.1, col = rainbow (length (top10pct)), main="Top 10 spm concentrated states")

#bottom 10 spm concentrated states 

bot10 = tail (spm, 10)
bot10
pct = round (bot10 $x / sum (bot10 $x) * 100)
bot10pct = paste (bot10 $state, pct) 
bot10pct = paste (bot10pct, "%", sep="") 
pie3D (bot10 $x, labels = bot10pct, explode = 0.1, col = rainbow (length (bot10pct)), main="Bottom 10 spm concentrated states")


