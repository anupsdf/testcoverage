; ModuleID = 'probe2.9217bff6cf7e03c6-cgu.0'
source_filename = "probe2.9217bff6cf7e03c6-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

@__covrec_10154CA9DEFECFBCu = linkonce_odr hidden constant <{ i64, i32, i64, i64, [9 x i8] }> <{ i64 1158916771592196028, i32 9, i64 -6605217468744509424, i64 -2989683304749468111, [9 x i8] c"\01\01\00\01\01\01\01\000" }>, section "__LLVM_COV,__llvm_covfun", align 8
@__llvm_coverage_mapping = private constant { { i32, i32, i32, i32 }, [97 x i8] } { { i32, i32, i32, i32 } { i32 0, i32 97, i32 0, i32 5 }, [97 x i8] c"\02^\00V/Users/anuppani/.cargo/registry/src/index.crates.io-6f17d22bba15001f/num-traits-0.2.15\06<anon>" }, section "__LLVM_COV,__llvm_covmap", align 8
@__llvm_profile_runtime = external hidden global i32
@__profc__RNvCscxEcsmaKxZa_6probe25probe = private global [2 x i64] zeroinitializer, section "__DATA,__llvm_prf_cnts", align 8
@__profd__RNvCscxEcsmaKxZa_6probe25probe = private global { i64, i64, i64, ptr, ptr, i32, [2 x i16] } { i64 1158916771592196028, i64 -6605217468744509424, i64 sub (i64 ptrtoint (ptr @__profc__RNvCscxEcsmaKxZa_6probe25probe to i64), i64 ptrtoint (ptr @__profd__RNvCscxEcsmaKxZa_6probe25probe to i64)), ptr null, ptr null, i32 2, [2 x i16] zeroinitializer }, section "__DATA,__llvm_prf_data,regular,live_support", align 8
@__llvm_prf_nm = private constant [33 x i8] c"\1F\00_RNvCscxEcsmaKxZa_6probe25probe", section "__DATA,__llvm_prf_names", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__llvm_profile_runtime_user, ptr @__profd__RNvCscxEcsmaKxZa_6probe25probe], section "llvm.metadata"
@llvm.used = appending global [3 x ptr] [ptr @__covrec_10154CA9DEFECFBCu, ptr @__llvm_coverage_mapping, ptr @__llvm_prf_nm], section "llvm.metadata"
@__llvm_profile_filename = weak hidden constant [22 x i8] c"default_%m_%p.profraw\00"

; probe2::probe
; Function Attrs: uwtable
define void @_RNvCscxEcsmaKxZa_6probe25probe() unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %1 = atomicrmw add ptr @__profc__RNvCscxEcsmaKxZa_6probe25probe, i64 1 monotonic, align 8
  store i32 -2147483648, ptr %0, align 4
  %2 = load i32, ptr %0, align 4, !noundef !1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #1

; Function Attrs: nounwind
declare void @llvm.instrprof.increment(ptr, i64, i32, i32) #2

; Function Attrs: noinline
define linkonce_odr hidden i32 @__llvm_profile_runtime_user() #3 {
  %1 = load i32, ptr @__llvm_profile_runtime, align 4
  ret i32 %1
}

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind }
attributes #3 = { noinline }

!llvm.module.flags = !{!0}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{}
