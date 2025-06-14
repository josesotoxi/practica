---
  title: "R Notebook"
output:
  pdf_document: default
html_notebook: default
---
  
  ```{r}
linkMerge='https://github.com/josesotoxi/practica/raw/refs/heads/main/finalfinal.csv'
merge=read.csv(linkMerge)
str(merge)
```
Analisis de regresion en R para saber si la religión afecta la proporcion de votos de Aliaga, y de que manera si fuera el caso.

```{r}
h1=formula(electores~religiones)

r1=lm(h1,data=merge)

summary(r1)

```