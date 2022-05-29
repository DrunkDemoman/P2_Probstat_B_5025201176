install.packages("BSDA")
library(BSDA)
#1
#a
df <- data.frame(Responden=c("1", "2", "3", "4", "5", "6", "7", "8", "9"),
                 X=c(78, 75, 67, 77, 70, 72, 78, 74, 77),
                 Y=c(100, 95, 70, 90, 90, 90, 89, 90, 100))
df
sd(df$X)
sd(df$Y)

difference <- data.frame(Responden=c("1", "2", "3", "4", "5", "6", "7", "8", "9"),diff=c(df$Y-df$X))
difference
sd(difference$diff)
mean(difference$diff)
#b
?t.test
t.test(difference$diff, y=NULL, alternative = c("two.sided"), mu=0)$p.value
#c
t.test(difference$diff, y=NULL, alternative = c("two.sided"), mu=0)
#Hipotesis null ditolak dan hipotesis alternatif diterima karena p-value yang didapat lebih kecil dari 0.05

#2
?tsum.test
set.seed(20)
mileage<- data.frame(mile=c(rnorm(100,mean = 23500,sd=3900)))
mileage
t.test(mileage$mile,y=NULL,alternative =c("less"),mu=20000)

#a Klaim bahwa rata-rata mobil dikemudikan lebih dari 20000 per tahun diasumsikan benar dan akan diuji melalui t.test
#b Didapat bahwa p-value adalah 1
#c Nilai p-value tidak lebih kecil daripada 0.05, sehingga hipotesis alternatif ditolak dan hipotesis null tetap diterima

#3
set.seed(20)
Bandung <- data.frame(Saham=c(rnorm(19,mean = 3.64,sd=1.67)))
Bali <- data.frame( Saham =c(rnorm(27, mean = 2.79,sd=1.32)))
Bandung
Bali

#3a
## H0: Tidak ada perbedaan rata-rata yang signifikan antara saham di Bandung dengan saham di Bali
## H1: Terdapat perbedaan rata-rata antara saham di Bandung dengan saham di Bali

#3b

#3c
?t.test
t.test(Bandung$Saham,Bali$Saham, alternative = c("two.sided"),mu=0,var.equal=TRUE, conf.level=0.95)
#3d
tcrit=qt(p=0.05/2,df=2,lower.tail = FALSE)
tcrit

#3e
## Karena p value lebih besar dari 0.95, h0 ditolak dan h1 diterima

#3f
## Dapat disimpulkan bahwa terdapat perbedaan rata-rata antara saham di Bandung dengan saham di Bali
