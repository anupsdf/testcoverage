; ModuleID = 'probe5.4f676db8d040c0f-cgu.0'
source_filename = "probe5.4f676db8d040c0f-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

@alloc_49cd4770cae46c688efee7fa9c056542 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/8ede3aae28fe6e4d52b38157d7bfe0d3bceef225/library/core/src/num/mod.rs" }>, align 1
@alloc_74540e89464df5fd6be485ce28fbfc20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_49cd4770cae46c688efee7fa9c056542, [16 x i8] c"K\00\00\00\00\00\00\00~\04\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"
@__covrec_5A1B4396F60D0CE9u = linkonce_odr hidden constant <{ i64, i32, i64, i64, [9 x i8] }> <{ i64 6492857603436907753, i32 9, i64 678702815825795162, i64 -2989683304749468111, [9 x i8] c"\01\01\00\01\01\01\01\002" }>, section "__LLVM_COV,__llvm_covfun", align 8
@__llvm_coverage_mapping = private constant { { i32, i32, i32, i32 }, [97 x i8] } { { i32, i32, i32, i32 } { i32 0, i32 97, i32 0, i32 5 }, [97 x i8] c"\02^\00V/Users/anuppani/.cargo/registry/src/index.crates.io-6f17d22bba15001f/num-traits-0.2.15\06<anon>" }, section "__LLVM_COV,__llvm_covmap", align 8
@__llvm_profile_runtime = external hidden global i32
@__profc__RNvCsqpPriw5wbb_6probe55probe = private global [2 x i64] zeroinitializer, section "__DATA,__llvm_prf_cnts", align 8
@__profd__RNvCsqpPriw5wbb_6probe55probe = private global { i64, i64, i64, ptr, ptr, i32, [2 x i16] } { i64 6492857603436907753, i64 678702815825795162, i64 sub (i64 ptrtoint (ptr @__profc__RNvCsqpPriw5wbb_6probe55probe to i64), i64 ptrtoint (ptr @__profd__RNvCsqpPriw5wbb_6probe55probe to i64)), ptr null, ptr null, i32 2, [2 x i16] zeroinitializer }, section "__DATA,__llvm_prf_data,regular,live_support", align 8
@__llvm_prf_nm = private constant [32 x i8] c"\1E\00_RNvCsqpPriw5wbb_6probe55probe", section "__DATA,__llvm_prf_names", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__llvm_profile_runtime_user, ptr @__profd__RNvCsqpPriw5wbb_6probe55probe], section "llvm.metadata"
@llvm.used = appending global [3 x ptr] [ptr @__covrec_5A1B4396F60D0CE9u, ptr @__llvm_coverage_mapping, ptr @__llvm_prf_nm], section "llvm.metadata"
@__llvm_profile_filename = weak hidden constant [22 x i8] c"default_%m_%p.profraw\00"

; probe5::probe
; Function Attrs: uwtable
define void @_RNvCsqpPriw5wbb_6probe55probe() unnamed_addr #0 {
start:
  %0 = atomicrmw add ptr @__profc__RNvCsqpPriw5wbb_6probe55probe, i64 1 monotonic, align 8
  %1 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %1, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h8a012096d8ba6d7fE.exit"

panic.i:                                          ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h3a764673a10f87a9E(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_74540e89464df5fd6be485ce28fbfc20) #5
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h8a012096d8ba6d7fE.exit": ; preds = %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; core::panicking::panic
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h3a764673a10f87a9E(ptr align 1, i64, ptr align 8) unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.instrprof.increment(ptr, i64, i32, i32) #3

; Function Attrs: noinline
define linkonce_odr hidden i32 @__llvm_profile_runtime_user() #4 {
  %1 = load i32, ptr @__llvm_profile_runtime, align 4
  ret i32 %1
}

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #3 = { nounwind }
attributes #4 = { noinline }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 8, !"PIC Level", i32 2}
