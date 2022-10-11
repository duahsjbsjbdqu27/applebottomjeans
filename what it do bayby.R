#iteration
i = 0

#n is the number of normally distributed samples of size 50 
n = 0

#the storage vector of the mean of sample means
cumulative_mean <- vector()

#generates 500 guassian normal samples and takes the mean of them iteratively, storing the result in cumulative_mean.
#e.g. the mean of the means of the first 20 samples is cumulative_mean[20]
while (i < 500){
                i = i + 1
                n = i
                        sample_mean = mean(replicate(n, rnorm(50, mean = 114), set.seed(100)))
                                cumulative_mean[[i]] <- sample_mean
}

#calculates the difference in the cumulative mean as the number of 
#samples increases
error <- diff(cumulative_mean)

#plots the behaviour of the standard error of the mean as n->500, less spread = approaching true value of the population mean
plot(x=error)

#plots the behaviour of the population mean as more samples are included in its estimation, it tends towards 114 
plot(x=cumulative_mean)
