---
  title: "R Notebook"
output: html_notebook
---
  
  ```{r}
linkmerge='https://github.com/josesotoxi/practica/raw/refs/heads/main/final.csv'
merge=read.csv(linkmerge)
str(merge)
```
```{r}
install.packages("car")

bi2_1=formula(electores~percap)
car::scatterplot(bi2_1, data = merge, regLine=list(col='red'),
                 smooth = FALSE, grid = FALSE, frame = FALSE)
```
```{r}
bi2_1Corr=formula(~ electores + percap)
cor.test(bi2_1Corr,data=merge)[c('estimate','p.value')]
```

```{r}
cor.test(bi2_1Corr,data=merge,method='spearman',exact=F)[c('estimate','p.value')]

```