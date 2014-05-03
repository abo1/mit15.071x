parole = read.csv("parole.csv")
parole$male = as.factor(parole$male)
parole$state = as.factor(parole$state)
parole$crime = as.factor(parole$crime)
table(parole$male)
130/(130+545)
str(parole)
summary(parole$male)
130/675
paroleViolators = subset(parole, violator == 1)
table(paroleViolators$male)
14/(14+64)
kentuckycrimes = subset(parole, state == 2)
hist(kentuckycrimes$crime)
table(kentuckycrimes$crime)
ggplot(data = parole, aes(x = age)) + geom_histogram()
ggplot(data = parole, aes(x = age)) + geom_histogram(binwidth = 5)
ggplot(data = parole, aes(x = age)) + geom_histogram(binwidth = 4)
ggplot(data = parole, aes(x = age)) + geom_histogram(binwidth = 1)
age2024= subset(parole, age>=20 & age <= 24)
age2529= subset(parole, age>=25 & age <= 29)
ggplot(data = parole, aes(x = age)) + geom_histogram(binwidth = 5)
ggplot(data = parole, aes(x = age)) + geom_histogram(binwidth = 5, color="blue")
ggplot(data = parole, aes(x = age)) + geom_histogram(binwidth = 5) + facet_grid(male ~ .)
ggplot(data = parole, aes(x = age)) + geom_histogram(binwidth = 5) + facet_grid(. ~ male)
ggplot(data = parole, aes(x = age, fill = male)) + geom_histogram(binwidth = 5)
ggplot(data = parole, aes(x = age, fill = male)) + geom_histogram()
ggplot(data = parole, aes(x = age, fill = male)) + geom_histogram(position="identity")
ggplot(data = parole, aes(x = age, fill = male)) + geom_histogram(position="identity", alpha=0.5)
ggplot(data = parole, aes(x = age, fill = male)) + geom_histogram(position="identity", alpha=0.5, binwidth=5)
ggplot(data = parole, aes(x = time.served, fill = male)) + geom_histogram(position="identity", alpha=0.5, binwidth=5)
ggplot(data = parole, aes(x = time.served, fill = male)) + geom_histogram(position="identity", alpha=0.5, binwidth=1)
ggplot(data = parole, aes(x = time.served)) + geom_histogram(position="identity", alpha=0.5, binwidth=1)
ggplot(data = parole, aes(x = time.served)) + geom_histogram(binwidth=1)
ggplot(data = parole, aes(x = time.served)) + geom_histogram(binwidth=0.1)
ggplot(data = parole, aes(x = time.served)) + geom_histogram(binwidth=1) + facet_grid(crime ~ .)
ggplot(data = parole, aes(x = time.served, fill=crime)) + geom_histogram(binwidth=1, position="identity", alpha=0.5)