# LiGHTs

\begin{figure}[h]
\centering
\includegraphics[width=5in]{img.jpg}
\caption{偶像團體LiGHTs的成員，出自動畫《Lapis Re：LiGHTs》}
\end{figure}

這個世界的偶像會用魔法。  
城鎮馬姆斯特中的魔女，可以作為偶像來舉辦魔法演唱會，藉此來吸取城鎮中的魔力。  
按照魔女們的位置依序相連會形成一個封閉圖形 $P$（點、線或簡單多邊形之一），  
魔女們在演唱會中會保持彼此間的相對位置一起移動，移動時只要有被 $P$ 的任何一條邊掃過去的地面都能吸取魔力（被兩條邊以上掃過也只能算一次）。  
請問她們保持相對位置時，同時以某個點 $A$ 為中心旋轉一圈時，能吸取魔力的總面積有多少？  

\clearpage

## 輸入
第一行有一個整數 $N$，代表這場演唱會魔女的數量，  
接下來 $N$ 行，每行有兩個浮點數 $(x_i, y_i)$ ，為魔女一開始所站位置的座標，按照輸入順序相鄰兩位魔女皆會形成 $P$ 的一條邊（頭尾兩位亦相連），魔女所站位置不重疊，  
最後一行有兩個浮點數 $(a, b)$，代表點 $A$ 的座標。  

## 輸出
輸出魔女們以 $A$ 為中心旋轉一圈後，能吸取魔力的總面積，四捨五入到小數點後3位。  

## 輸入限制
 - $1 \leq N \leq 200000$
 - $-1000 \leq x_i, y_i, a, b \leq 1000$
 - 所有輸入的座標至多 $3$ 位小數

## 子任務
\subtasks

\clearpage

## 範例輸入1
```
6
2 0
3 1
1 5
-1 2
-1 -3
3 -3
1 0
```

## 範例輸出1
```
78.540
```

## 範例輸入2
```
6
2 0
3 1
1 5
-1 2
-1 -3
3 -3
3 0
```

## 範例輸出2
```
89.535
```

## 範例輸入3
```
1
3 4
0 0
```

## 範例輸出3
```
0.000
```

\clearpage

## 範例輸入4
```
2
3 4
5 12
0 0
```

## 範例輸出4
```
452.389
```
