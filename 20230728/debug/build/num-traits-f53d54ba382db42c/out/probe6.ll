; ModuleID = 'probe6.564ff6d072b6286e-cgu.0'
source_filename = "probe6.564ff6d072b6286e-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

@__covrec_AFB6C63BDAF2607Au = linkonce_odr hidden constant <{ i64, i32, i64, i64, [9 x i8] }> <{ i64 -5785218710932135814, i32 9, i64 4886002485122795290, i64 -2989683304749468111, [9 x i8] c"\01\01\00\01\01\01\01\001" }>, section "__LLVM_COV,__llvm_covfun", align 8
@__llvm_coverage_mapping = private constant { { i32, i32, i32, i32 }, [97 x i8] } { { i32, i32, i32, i32 } { i32 0, i32 97, i32 0, i32 5 }, [97 x i8] c"\02^\00V/Users/anuppani/.cargo/registry/src/index.crates.io-6f17d22bba15001f/num-traits-0.2.15\06<anon>" }, section "__LLVM_COV,__llvm_covmap", align 8
@__llvm_profile_runtime = external hidden global i32
@__profc__RNvCs7prcepxkj9y_6probe65probe = private global [2 x i64] zeroinitializer, section "__DATA,__llvm_prf_cnts", align 8
@__profd__RNvCs7prcepxkj9y_6probe65probe = private global { i64, i64, i64, ptr, ptr, i32, [2 x i16] } { i64 -5785218710932135814, i64 4886002485122795290, i64 sub (i64 ptrtoint (ptr @__profc__RNvCs7prcepxkj9y_6probe65probe to i64), i64 ptrtoint (ptr @__profd__RNvCs7prcepxkj9y_6probe65probe to i64)), ptr null, ptr null, i32 2, [2 x i16] zeroinitializer }, section "__DATA,__llvm_prf_data,regular,live_support", align 8
@__llvm_prf_nm = private constant [33 x i8] c"\1F\00_RNvCs7prcepxkj9y_6probe65probe", section "__DATA,__llvm_prf_names", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__llvm_profile_runtime_user, ptr @__profd__RNvCs7prcepxkj9y_6probe65probe], section "llvm.metadata"
@llvm.used = appending global [3 x ptr] [ptr @__covrec_AFB6C63BDAF2607Au, ptr @__llvm_coverage_mapping, ptr @__llvm_prf_nm], section "llvm.metadata"
@__llvm_profile_filename = weak hidden constant [22 x i8] c"default_%m_%p.profraw\00"

; <f64>::copysign
; Function Attrs: inlinehint uwtable
define internal double @_RNvMNtCskzNPu2VXZgc_3std3f64d8copysignCs7prcepxkj9y_6probe6(double %self, double %sign) unnamed_addr #0 {
start:
  %0 = alloca double, align 8
  %1 = call double @llvm.copysign.f64(double %self, double %sign)
  store double %1, ptr %0, align 8
  %2 = load double, ptr %0, align 8, !noundef !1
  ret double %2
}

; probe6::probe
; Function Attrs: uwtable
define void @_RNvCs7prcepxkj9y_6probe65probe() unnamed_addr #1 {
start:
  %0 = atomicrmw add ptr @__profc__RNvCs7prcepxkj9y_6probe65probe, i64 1 monotonic, align 8
; call <f64>::copysign
  %_1 = call double @_RNvMNtCskzNPu2VXZgc_3std3f64d8copysignCs7prcepxkj9y_6probe6(double 1.000000e+00, double -1.000000e+00)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #2

; Function Attrs: nounwind
declare void @llvm.instrprof.increment(ptr, i64, i32, i32) #3

; Function Attrs: noinline
define linkonce_odr hidden i32 @__llvm_profile_runtime_user() #4 {
  %1 = load i32, ptr @__llvm_profile_runtime, align 4
  ret i32 %1
}

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }
attributes #4 = { noinline }

!llvm.module.flags = !{!0}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{}
