# 2020NHSPC-TNFSH-Final
109學年度資訊學科能力競賽臺南一中校內複選

## Quick Links
[problems.pdf](pA/attachments/problems.pdf)

| ID | tests | statement | config |
| --- | --- | --- | --- | --- | --- | --- |
| A. 熊熊 | [tests](pA/tests) | [statement](pA/statement) [md](pA/statement/index.md) [pdf](pA/statement/index.pdf) | [problem](pA/problem.json) [solutions](pA/solutions.json) [subtasks](pA/subtasks.json) |
| B. LiGHTs | [tests](pB/tests) | [statement](pB/statement) [md](pB/statement/index.md) [pdf](pB/statement/index.pdf) | [problem](pB/problem.json) [solutions](pB/solutions.json) [subtasks](pB/subtasks.json) |
| C. ChamJam | [tests](pC/tests) | [statement](pC/statement) [md](pC/statement/index.md) [pdf](pC/statement/index.pdf) | [problem](pC/problem.json) [solutions](pC/solutions.json) [subtasks](pC/subtasks.json) |
| D. 露營 | [tests](pD/tests) | [statement](pD/statement) [md](pD/statement/index.md) [pdf](pD/statement/index.pdf) | [problem](pD/problem.json) [solutions](pD/solutions.json) [subtasks](pD/subtasks.json) |
| E. 存在X | [tests](pE/tests) | [statement](pE/statement) [md](pE/statement/index.md) [pdf](pE/statement/index.pdf) | [problem](pE/problem.json) [solutions](pE/solutions.json) [subtasks](pE/subtasks.json) |
| F. 大家來找碴 | [tests](pF/tests) | [statement](pF/statement) [md](pF/statement/index.md) [pdf](pF/statement/index.pdf) | [problem](pF/problem.json) [solutions](pF/solutions.json) [subtasks](pF/subtasks.json) |

## 資料夾結構
每題中包含以下目錄和檔案：
 - checker: 檢查輸出與標準答案是否相等的程式
 - gen: 所有產測資相關的程式碼，參見[TPS的說明](https://github.com/ioi-2017/tps/tree/master/docs#gen)
 - gen/data: 測資產生指令，參見[TPS的說明](https://github.com/ioi-2017/tps/tree/master/docs#gendata)
 - scripts: TPS所使用的腳本
 - solution: 標程及其他解法程式碼（包含所有拿部分分的程式碼），不要跟 validator 搞混
 - statement: 題本
 - statement/index.md: （TPS格式）markdown 格式的題目敘述，之後會以 pandoc 輸出成 PDF
 - statement/problem.pdf: （TPS格式）用 `tps statement` 輸出的 PDF 題目敘述
 - tests: 測試資料
 - tests/mapping: 各子任務所屬測資檔案對應表（`tps gen` 自動產生），使用於自動匯入CMS時
 - validator: 驗證測資格式是否正確，是否符合範圍限制，各子任務是否符合各自限制，不要跟 solution 搞混
 - problem.json: 題目設定，包含時限及CMS設定
 - solutions.json: 標程設定，用以產生輸出檔的標程參數為 `"verdict": "model_solution"`
 - subtasks.json: 子任務分數設定
