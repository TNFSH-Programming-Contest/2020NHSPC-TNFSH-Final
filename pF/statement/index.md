# 大家來找碴

\begin{figure}[h]
\centering
\includegraphics[width=6.5in]{img.jpg}
\caption{請找出5組重複的圖片，出自吉卜力工作室}
\end{figure}

今天一走進教室，就看到黑板上貼著一張圖片（如 Figure 1），旁邊還有一行字：「請各位同學觀察這張圖，有5組圖片重複了，在老師來之前找出來，這對於接下來的題目很重要（笑）」。  
同學開始議論紛紛，互相交流意見。  
這時候老師走了進來，有同學立刻問老師說黑板上的圖片是要用在什麼題目的。  
老師盯著黑板看了一會。  

\clearpage

之後悠悠地說：「哈哈沒有啦，那是別的課程的東西，要問你們的問題是：  

給你們四個整數 $b, n, m, k$，試求 $\left(\displaystyle\sum_{i=1}^n i^k \cdot b^i\right) (\text{mod}~m)$」。  

## 輸入
第一行有四個數字，依序為 $b, n, m, k$。  

## 輸出
輸出 $\left(\displaystyle\sum_{i=1}^n i^k \cdot b^i\right) \text{(mod m)}$。  

## 輸入限制
 - $0 \leq k \leq 100$
 - $1 \leq b \leq 10^9$
 - $1 \leq m \leq 10^9+7$
 - $1 \leq n \leq 10^{18}$

## 子任務
\subtasks

\clearpage

## 範例輸入1
```
10 5 1000000007 1
```

## 範例輸出1
```
543210
```

## 範例輸入2
```
10 5 100 1
```

## 範例輸出2
```
10
```

## 範例輸入3
```
1 10 1000000007 3
```

## 範例輸出3
```
3025
```
