; ModuleID = '0.1b-pointers_to_assembly.c'
source_filename = "0.1b-pointers_to_assembly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @moving_pointers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store i32 -43, ptr %1, align 4
  store i32 19, ptr %2, align 4
  store ptr %1, ptr %3, align 8
  store ptr %2, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  store i32 17, ptr %5, align 4
  %6 = load ptr, ptr %4, align 8
  store ptr %6, ptr %3, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load i32, ptr %7, align 4
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 22.1.8 (Fedora 22.1.8-1.fc44)"}
