---
title: "R Notebook"
output:
  pdf_document: default
html_notebook: default
---
  
```{r}
linkMerge='https://github.com/josesotoxi/practica/raw/refs/heads/main/final.csv'
merge=read.csv(linkMerge)
str(merge)
```
Analisis de regresion en R para saber si el ingreso per capita afecta la proporcion de votos de Aliaga, y de que manera si fuera el caso.

```{r}
h1=formula(electores~percap)

r1=lm(h1,data=merge)

summary(r1)

```