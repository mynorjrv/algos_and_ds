For some reason xd I wanted to see the assembly in the code... and is more complex than I expected xdxdxd

Buuuuuuuut xd contrary to what the search engine AI suggested (to upload my c code to a page to convert it to assembly), I watched [5. C to Assembly ](https://www.youtube.com/watch?v=wt7a5BOztuM) from MIT 6.172 Performance Engineering of Software Systems from MIT OpenCourseWare andddddd I can just use clang n.n

Like this:
```shell
clang -O3 fib.c -S -emit-llvm
clang fib.ll -S
```

were `-S` produces assembly and `-S -emit-llvm` produces the intermediate representation (LLVM IR).



JAJAJAJA and some obscure stuff:

ChatGPT tried to explain assembly like C xd which is strange but it kind of make sense.

'''C
rsp -= 8
\*rsp = rbp
rbp=rsp

\*(int \*)(rbp-4) = -43
\*(int \*)(rbp-8) = 19

rax = rbp - 4

\*(void \*\*)(rbp-16) = rbp-4

rax = rbp-8
'''


The `*(int *)` and `*(void **)` is some crazy stuff about deferencing a pointer to a int, and deferrencing a pointer to a pointer xd sooooooo I guess Im learning about low level by osmosys(?) xdxdxd
