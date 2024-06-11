ages <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

mean_age <- mean(ages)
median_age <- median(ages)
cat("Mean of the data:", mean_age, "\n")
cat("Median of the data:", median_age, "\n")

mode_age <- as.numeric(names(sort(table(ages), decreasing = TRUE)[1]))
cat("Mode of the data:", mode_age, "\n")

mode_table <- table(ages)
modes <- as.numeric(names(mode_table[mode_table == max(mode_table)]))
if (length(modes) == 1) {
  modality <- "unimodal"
} else if (length(modes) == 2) {
  modality <- "bimodal"
} else {
  modality <- "multimodal"
}
cat("The data is", modality, "\n")

midrange_age <- (min(ages) + max(ages)) / 2

cat("Midrange of the data:", midrange_age, "\n")

Q1 <- quantile(ages, 0.25)
Q3 <- quantile(ages, 0.75)
cat("First quartile (Q1) of the data:", Q1, "\n")
cat("Third quartile (Q3) of the data:", Q3, "\n")
