# STEP 1 整数1個をコンパイルする言語の作成
## 入力
数値(例だと42)

## 出力
以下の様なアセンブリコード

```assembly
.intel_syntax noprefix
.globl main

main:
    mov rax, 42
    ret
```
