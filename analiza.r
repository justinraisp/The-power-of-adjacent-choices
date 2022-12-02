library(tidyverse)
poskusi <- 1:100
dim1_10000_10000 <- read.csv("podatki/maksimalno_stevilo_zogic_100_100_10000_10000_1_1.csv")
dim1_20000_10000 <- read.csv("podatki/maksimalno_stevilo_zogic_100_100_20000_10000_1_1.csv")
dim1_30000_10000 <- read.csv("podatki/maksimalno_stevilo_zogic_100_100_30000_10000_1_1.csv")
dim1_40000_10000 <- read.csv("podatki/maksimalno_stevilo_zogic_100_100_40000_10000_1_1.csv")
dim1_50000_10000 <- read.csv("podatki/maksimalno_stevilo_zogic_100_100_50000_10000_1_1.csv")
#dim1_60000_10000 <- read.csv("maksimalno_stevilo_zogic_100_100_60000_10000_1_1.csv")

plot(x=c(1:100), dim1_10000_10000$Maksimum)
abline(h=mean(dim1_10000_10000$Maksimum))
plot(x=c(1:100), dim1_20000_10000$Maksimum)
abline(h=mean(dim1_20000_10000$Maksimum))
plot(x=c(1:100), dim1_30000_10000$Maksimum)
abline(h=mean(dim1_30000_10000$Maksimum))
plot(x=c(1:100), dim1_40000_10000$Maksimum)
abline(h=mean(dim1_40000_10000$Maksimum))
plot(x=c(1:100), dim1_50000_10000$Maksimum)
abline(h=mean(dim1_50000_10000$Maksimum))

maksimumi_st_zog_1dim <- dplyr::bind_rows(dim1_10000_10000, dim1_20000_10000)
maksimumi_st_zog_1dim <- dplyr::bind_rows(maksimumi_st_zog_1dim, dim1_30000_10000)
maksimumi_st_zog_1dim <- dplyr::bind_rows(maksimumi_st_zog_1dim, dim1_40000_10000)
maksimumi_st_zog_1dim <- dplyr::bind_rows(maksimumi_st_zog_1dim, dim1_50000_10000)
#maksimumi_st_zog_1dim <- dplyr::bind_rows(maksimumi_st_zog_1dim, dim1_60000_10000)

plot(x=c(1:500), maksimumi_st_zog_1dim$Maksimum, type="p", pch=20, cex=0.5)
plot(x=c(1:500), maksimumi_st_zog_1dim$Delez_kosev_z_maksimalnim_stevilom_zog, type="p", pch=20, cex=0.5)
plot(x=c(1:500), maksimumi_st_zog_1dim$Casovna_zahtevnost, type="p", pch=20, cex=0.5)
