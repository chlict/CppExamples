; ModuleID = 'Expr.cpp'
source_filename = "Expr.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.FloatingPointConstant = type { %struct.ExprBase }
%struct.ExprBase = type { i32 (...)** }
%struct.VarExpr = type { %struct.ExprBase.0, i64 }
%struct.ExprBase.0 = type { i32 (...)** }
%struct.UnaryExpr.2 = type { %struct.ExprBase.3, %struct.FloatingPointConstant* }
%struct.ExprBase.3 = type { i32 (...)** }
%struct.BinaryExpr = type { %struct.ExprBase.4, %struct.UnaryExpr.2*, %struct.VarExpr* }
%struct.ExprBase.4 = type { i32 (...)** }
%struct.Evaluator.7 = type { %struct.ExprBase.4* }

@_ZTV21FloatingPointConstantIfLi1ELi5EE = linkonce_odr unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI21FloatingPointConstantIfLi1ELi5EE to i8*), i8* bitcast (void (%struct.FloatingPointConstant*)* @_ZN21FloatingPointConstantIfLi1ELi5EED1Ev to i8*), i8* bitcast (void (%struct.FloatingPointConstant*)* @_ZN21FloatingPointConstantIfLi1ELi5EED0Ev to i8*)] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS21FloatingPointConstantIfLi1ELi5EE = linkonce_odr constant [35 x i8] c"21FloatingPointConstantIfLi1ELi5EE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS8ExprBaseI21FloatingPointConstantIfLi1ELi5EEE = linkonce_odr constant [46 x i8] c"8ExprBaseI21FloatingPointConstantIfLi1ELi5EEE\00", align 1
@_ZTI8ExprBaseI21FloatingPointConstantIfLi1ELi5EEE = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @_ZTS8ExprBaseI21FloatingPointConstantIfLi1ELi5EEE, i32 0, i32 0) }, align 8
@_ZTI21FloatingPointConstantIfLi1ELi5EE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @_ZTS21FloatingPointConstantIfLi1ELi5EE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI8ExprBaseI21FloatingPointConstantIfLi1ELi5EEE to i8*) }, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"i: %d, f: %d, value: %f\0A\00", align 1
@_ZTV7VarExprIiE = linkonce_odr unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI7VarExprIiE to i8*), i8* bitcast (void (%struct.VarExpr*)* @_ZN7VarExprIiED1Ev to i8*), i8* bitcast (void (%struct.VarExpr*)* @_ZN7VarExprIiED0Ev to i8*)] }, align 8
@_ZTS7VarExprIiE = linkonce_odr constant [12 x i8] c"7VarExprIiE\00", align 1
@_ZTS8ExprBaseI7VarExprIiEE = linkonce_odr constant [23 x i8] c"8ExprBaseI7VarExprIiEE\00", align 1
@_ZTI8ExprBaseI7VarExprIiEE = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @_ZTS8ExprBaseI7VarExprIiEE, i32 0, i32 0) }, align 8
@_ZTI7VarExprIiE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_ZTS7VarExprIiE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI8ExprBaseI7VarExprIiEE to i8*) }, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"var: 0x%lx\0A\00", align 1
@_ZTS9UnaryExprIL6ExprOp2E7VarExprIiEE = linkonce_odr constant [34 x i8] c"9UnaryExprIL6ExprOp2E7VarExprIiEE\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Unary<%d>:\0A\00", align 1
@_ZTV9UnaryExprIL6ExprOp2E21FloatingPointConstantIfLi1ELi5EEE = linkonce_odr unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI9UnaryExprIL6ExprOp2E21FloatingPointConstantIfLi1ELi5EEE to i8*), i8* bitcast (void (%struct.UnaryExpr.2*)* @_ZN9UnaryExprIL6ExprOp2E21FloatingPointConstantIfLi1ELi5EEED1Ev to i8*), i8* bitcast (void (%struct.UnaryExpr.2*)* @_ZN9UnaryExprIL6ExprOp2E21FloatingPointConstantIfLi1ELi5EEED0Ev to i8*)] }, align 8
@_ZTS9UnaryExprIL6ExprOp2E21FloatingPointConstantIfLi1ELi5EEE = linkonce_odr constant [57 x i8] c"9UnaryExprIL6ExprOp2E21FloatingPointConstantIfLi1ELi5EEE\00", align 1
@_ZTS8ExprBaseI9UnaryExprIL6ExprOp2E21FloatingPointConstantIfLi1ELi5EEEE = linkonce_odr constant [68 x i8] c"8ExprBaseI9UnaryExprIL6ExprOp2E21FloatingPointConstantIfLi1ELi5EEEE\00", align 1
@_ZTI8ExprBaseI9UnaryExprIL6ExprOp2E21FloatingPointConstantIfLi1ELi5EEEE = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @_ZTS8ExprBaseI9UnaryExprIL6ExprOp2E21FloatingPointConstantIfLi1ELi5EEEE, i32 0, i32 0) }, align 8
@_ZTI9UnaryExprIL6ExprOp2E21FloatingPointConstantIfLi1ELi5EEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @_ZTS9UnaryExprIL6ExprOp2E21FloatingPointConstantIfLi1ELi5EEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI8ExprBaseI9UnaryExprIL6ExprOp2E21FloatingPointConstantIfLi1ELi5EEEE to i8*) }, align 8
@_ZTV10BinaryExprIL6ExprOp3E9UnaryExprILS0_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEE = linkonce_odr unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI10BinaryExprIL6ExprOp3E9UnaryExprILS0_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEE to i8*), i8* bitcast (void (%struct.BinaryExpr*)* @_ZN10BinaryExprIL6ExprOp3E9UnaryExprILS0_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEED1Ev to i8*), i8* bitcast (void (%struct.BinaryExpr*)* @_ZN10BinaryExprIL6ExprOp3E9UnaryExprILS0_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEED0Ev to i8*)] }, align 8
@_ZTS10BinaryExprIL6ExprOp3E9UnaryExprILS0_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEE = linkonce_odr constant [88 x i8] c"10BinaryExprIL6ExprOp3E9UnaryExprILS0_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEE\00", align 1
@_ZTS8ExprBaseI10BinaryExprIL6ExprOp3E9UnaryExprILS1_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEEE = linkonce_odr constant [99 x i8] c"8ExprBaseI10BinaryExprIL6ExprOp3E9UnaryExprILS1_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEEE\00", align 1
@_ZTI8ExprBaseI10BinaryExprIL6ExprOp3E9UnaryExprILS1_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEEE = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @_ZTS8ExprBaseI10BinaryExprIL6ExprOp3E9UnaryExprILS1_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEEE, i32 0, i32 0) }, align 8
@_ZTI10BinaryExprIL6ExprOp3E9UnaryExprILS0_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEE = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @_ZTS10BinaryExprIL6ExprOp3E9UnaryExprILS0_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI8ExprBaseI10BinaryExprIL6ExprOp3E9UnaryExprILS1_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEEE to i8*) }, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"Binary<%d>\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Constructing evaluator for type %s\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @_Z6Indenti(i32) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %4, label %3

; <label>:3:                                      ; preds = %4, %1
  ret void

; <label>:4:                                      ; preds = %1, %4
  %5 = phi i32 [ %7, %4 ], [ 0, %1 ]
  %6 = tail call i32 @putchar(i32 32)
  %7 = add nuw nsw i32 %5, 1
  %8 = icmp eq i32 %7, %0
  br i1 %8, label %3, label %4
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %struct.FloatingPointConstant, align 8
  %2 = alloca %struct.VarExpr, align 8
  %3 = alloca %struct.UnaryExpr.2, align 8
  %4 = alloca %struct.BinaryExpr, align 8
  %5 = alloca %struct.Evaluator.7, align 8
  %6 = bitcast %struct.FloatingPointConstant* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10
  %7 = getelementptr inbounds %struct.FloatingPointConstant, %struct.FloatingPointConstant* %1, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV21FloatingPointConstantIfLi1ELi5EE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !3
  %8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 5, double 1.500000e+00)
  %9 = tail call i8* @malloc(i64 4) #11
  %10 = bitcast %struct.VarExpr* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #10
  %11 = ptrtoint i8* %9 to i64
  %12 = getelementptr inbounds %struct.VarExpr, %struct.VarExpr* %2, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV7VarExprIiE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %12, align 8, !tbaa !3
  %13 = getelementptr inbounds %struct.VarExpr, %struct.VarExpr* %2, i64 0, i32 1
  store i64 %11, i64* %13, align 8, !tbaa !6
  %14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %11)
  %15 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %16 = tail call i32 @putchar(i32 32) #10
  %17 = tail call i32 @putchar(i32 32) #10
  %18 = tail call i32 @putchar(i32 32) #10
  %19 = tail call i32 @putchar(i32 32) #10
  %20 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %11)
  %21 = bitcast %struct.UnaryExpr.2* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #10
  %22 = getelementptr inbounds %struct.UnaryExpr.2, %struct.UnaryExpr.2* %3, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV9UnaryExprIL6ExprOp2E21FloatingPointConstantIfLi1ELi5EEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %22, align 8, !tbaa !3
  %23 = getelementptr inbounds %struct.UnaryExpr.2, %struct.UnaryExpr.2* %3, i64 0, i32 1
  store %struct.FloatingPointConstant* %1, %struct.FloatingPointConstant** %23, align 8, !tbaa !10
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %25 = call i32 @putchar(i32 32) #10
  %26 = call i32 @putchar(i32 32) #10
  %27 = call i32 @putchar(i32 32) #10
  %28 = call i32 @putchar(i32 32) #10
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 5, double 1.500000e+00)
  %30 = bitcast %struct.BinaryExpr* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %30) #10
  %31 = getelementptr inbounds %struct.BinaryExpr, %struct.BinaryExpr* %4, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV10BinaryExprIL6ExprOp3E9UnaryExprILS0_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %31, align 8, !tbaa !3
  %32 = getelementptr inbounds %struct.BinaryExpr, %struct.BinaryExpr* %4, i64 0, i32 1
  store %struct.UnaryExpr.2* %3, %struct.UnaryExpr.2** %32, align 8, !tbaa !10
  %33 = getelementptr inbounds %struct.BinaryExpr, %struct.BinaryExpr* %4, i64 0, i32 2
  store %struct.VarExpr* %2, %struct.VarExpr** %33, align 8, !tbaa !10
  invoke void @_ZNK10BinaryExprIL6ExprOp3E9UnaryExprILS0_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEE4dumpEi(%struct.BinaryExpr* nonnull %4, i32 0)
          to label %34 unwind label %59

; <label>:34:                                     ; preds = %0
  %35 = invoke i8* @__cxa_demangle(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @_ZTS21FloatingPointConstantIfLi1ELi5EE, i64 0, i64 0), i8* null, i64* null, i32* null)
          to label %36 unwind label %63

; <label>:36:                                     ; preds = %34
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %35)
  call void @free(i8* %35)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 5, double 1.500000e+00)
  %39 = invoke i8* @__cxa_demangle(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_ZTS7VarExprIiE, i64 0, i64 0), i8* null, i64* null, i32* null)
          to label %40 unwind label %67

; <label>:40:                                     ; preds = %36
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %39)
  call void @free(i8* %39)
  %42 = load i64, i64* %13, align 8, !tbaa !6
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = invoke i8* @__cxa_demangle(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @_ZTS9UnaryExprIL6ExprOp2E7VarExprIiEE, i64 0, i64 0), i8* null, i64* null, i32* null)
          to label %45 unwind label %71

; <label>:45:                                     ; preds = %40
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %44)
  call void @free(i8* %44)
  %47 = invoke i8* @__cxa_demangle(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_ZTS7VarExprIiE, i64 0, i64 0), i8* null, i64* null, i32* null)
          to label %48 unwind label %71

; <label>:48:                                     ; preds = %45
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %47)
  call void @free(i8* %47)
  %50 = load i64, i64* %13, align 8, !tbaa !6
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  %52 = bitcast %struct.Evaluator.7* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52) #10
  %53 = getelementptr inbounds %struct.Evaluator.7, %struct.Evaluator.7* %5, i64 0, i32 0
  %54 = getelementptr inbounds %struct.BinaryExpr, %struct.BinaryExpr* %4, i64 0, i32 0
  store %struct.ExprBase.4* %54, %struct.ExprBase.4** %53, align 8, !tbaa !10
  %55 = invoke i8* @__cxa_demangle(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @_ZTS10BinaryExprIL6ExprOp3E9UnaryExprILS0_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEE, i64 0, i64 0), i8* null, i64* null, i32* null)
          to label %56 unwind label %75

; <label>:56:                                     ; preds = %48
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %55)
  call void @free(i8* %55)
  invoke void @_ZNK9EvaluatorI10BinaryExprIL6ExprOp3E9UnaryExprILS1_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEEE4EvalEv(%struct.Evaluator.7* nonnull %5)
          to label %58 unwind label %75

; <label>:58:                                     ; preds = %56
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #10
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %30) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10
  ret i32 0

; <label>:59:                                     ; preds = %0
  %60 = landingpad { i8*, i32 }
          cleanup
  %61 = extractvalue { i8*, i32 } %60, 0
  %62 = extractvalue { i8*, i32 } %60, 1
  br label %79

; <label>:63:                                     ; preds = %34
  %64 = landingpad { i8*, i32 }
          cleanup
  %65 = extractvalue { i8*, i32 } %64, 0
  %66 = extractvalue { i8*, i32 } %64, 1
  br label %79

; <label>:67:                                     ; preds = %36
  %68 = landingpad { i8*, i32 }
          cleanup
  %69 = extractvalue { i8*, i32 } %68, 0
  %70 = extractvalue { i8*, i32 } %68, 1
  br label %79

; <label>:71:                                     ; preds = %45, %40
  %72 = landingpad { i8*, i32 }
          cleanup
  %73 = extractvalue { i8*, i32 } %72, 0
  %74 = extractvalue { i8*, i32 } %72, 1
  br label %79

; <label>:75:                                     ; preds = %48, %56
  %76 = landingpad { i8*, i32 }
          cleanup
  %77 = extractvalue { i8*, i32 } %76, 0
  %78 = extractvalue { i8*, i32 } %76, 1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #10
  br label %79

; <label>:79:                                     ; preds = %59, %67, %75, %71, %63
  %80 = phi i32 [ %62, %59 ], [ %66, %63 ], [ %70, %67 ], [ %78, %75 ], [ %74, %71 ]
  %81 = phi i8* [ %61, %59 ], [ %65, %63 ], [ %69, %67 ], [ %77, %75 ], [ %73, %71 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %30) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10
  %82 = insertvalue { i8*, i32 } undef, i8* %81, 0
  %83 = insertvalue { i8*, i32 } %82, i32 %80, 1
  resume { i8*, i32 } %83
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNK10BinaryExprIL6ExprOp3E9UnaryExprILS0_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEE4dumpEi(%struct.BinaryExpr*, i32) local_unnamed_addr #5 align 2 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %9

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i32 [ %7, %4 ], [ 0, %2 ]
  %6 = tail call i32 @putchar(i32 32) #10
  %7 = add nuw nsw i32 %5, 1
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %9, label %4

; <label>:9:                                      ; preds = %4, %2
  %10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %11 = add nsw i32 %1, 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %9, %13
  %14 = phi i32 [ %16, %13 ], [ 0, %9 ]
  %15 = tail call i32 @putchar(i32 32) #10
  %16 = add nuw nsw i32 %14, 1
  %17 = icmp eq i32 %16, %11
  br i1 %17, label %18, label %13

; <label>:18:                                     ; preds = %13, %9
  %19 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %20 = add nsw i32 %1, 8
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %27

; <label>:22:                                     ; preds = %18, %22
  %23 = phi i32 [ %25, %22 ], [ 0, %18 ]
  %24 = tail call i32 @putchar(i32 32) #10
  %25 = add nuw nsw i32 %23, 1
  %26 = icmp eq i32 %25, %20
  br i1 %26, label %27, label %22

; <label>:27:                                     ; preds = %22, %18
  %28 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 5, double 1.500000e+00)
  %29 = getelementptr inbounds %struct.BinaryExpr, %struct.BinaryExpr* %0, i64 0, i32 2
  %30 = load %struct.VarExpr*, %struct.VarExpr** %29, align 8, !tbaa !12
  br i1 %12, label %31, label %36

; <label>:31:                                     ; preds = %27, %31
  %32 = phi i32 [ %34, %31 ], [ 0, %27 ]
  %33 = tail call i32 @putchar(i32 32) #10
  %34 = add nuw nsw i32 %32, 1
  %35 = icmp eq i32 %34, %11
  br i1 %35, label %36, label %31

; <label>:36:                                     ; preds = %31, %27
  %37 = getelementptr inbounds %struct.VarExpr, %struct.VarExpr* %30, i64 0, i32 1
  %38 = load i64, i64* %37, align 8, !tbaa !6
  %39 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNK9EvaluatorI10BinaryExprIL6ExprOp3E9UnaryExprILS1_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEEE4EvalEv(%struct.Evaluator.7*) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = bitcast %struct.Evaluator.7* %0 to %struct.BinaryExpr**
  %3 = load %struct.BinaryExpr*, %struct.BinaryExpr** %2, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.BinaryExpr, %struct.BinaryExpr* %3, i64 0, i32 2
  %5 = load %struct.VarExpr*, %struct.VarExpr** %4, align 8
  %6 = call i8* @__cxa_demangle(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @_ZTS9UnaryExprIL6ExprOp2E21FloatingPointConstantIfLi1ELi5EEE, i64 0, i64 0), i8* null, i64* null, i32* null)
  %7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %6)
  tail call void @free(i8* %6)
  %8 = call i8* @__cxa_demangle(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_ZTS7VarExprIiE, i64 0, i64 0), i8* null, i64* null, i32* null)
  %9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %8)
  tail call void @free(i8* %8)
  %10 = call i8* @__cxa_demangle(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @_ZTS21FloatingPointConstantIfLi1ELi5EE, i64 0, i64 0), i8* null, i64* null, i32* null)
  %11 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %10)
  tail call void @free(i8* %10)
  %12 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 5, double 1.500000e+00)
  %13 = getelementptr inbounds %struct.VarExpr, %struct.VarExpr* %5, i64 0, i32 1
  %14 = load i64, i64* %13, align 8, !tbaa !6
  %15 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %14)
  ret void
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr void @_ZN10BinaryExprIL6ExprOp3E9UnaryExprILS0_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEED1Ev(%struct.BinaryExpr*) unnamed_addr #6 align 2 {
  ret void
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr void @_ZN9UnaryExprIL6ExprOp2E21FloatingPointConstantIfLi1ELi5EEED1Ev(%struct.UnaryExpr.2*) unnamed_addr #6 align 2 {
  ret void
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr void @_ZN7VarExprIiED1Ev(%struct.VarExpr*) unnamed_addr #6 align 2 {
  ret void
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr void @_ZN21FloatingPointConstantIfLi1ELi5EED1Ev(%struct.FloatingPointConstant*) unnamed_addr #6 align 2 {
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZN21FloatingPointConstantIfLi1ELi5EED0Ev(%struct.FloatingPointConstant*) unnamed_addr #7 align 2 {
  %2 = bitcast %struct.FloatingPointConstant* %0 to i8*
  tail call void @_ZdlPv(i8* %2) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZN7VarExprIiED0Ev(%struct.VarExpr*) unnamed_addr #7 align 2 {
  %2 = bitcast %struct.VarExpr* %0 to i8*
  tail call void @_ZdlPv(i8* %2) #12
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZN9UnaryExprIL6ExprOp2E21FloatingPointConstantIfLi1ELi5EEED0Ev(%struct.UnaryExpr.2*) unnamed_addr #7 align 2 {
  %2 = bitcast %struct.UnaryExpr.2* %0 to i8*
  tail call void @_ZdlPv(i8* %2) #12
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZN10BinaryExprIL6ExprOp3E9UnaryExprILS0_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEED0Ev(%struct.BinaryExpr*) unnamed_addr #7 align 2 {
  %2 = bitcast %struct.BinaryExpr* %0 to i8*
  tail call void @_ZdlPv(i8* %2) #12
  ret void
}

declare i8* @__cxa_demangle(i8*, i8*, i64*, i32*) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @putchar(i32) local_unnamed_addr #10

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { allocsize(0) }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"vtable pointer", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !8, i64 8}
!7 = !{!"_ZTS7VarExprIiE", !8, i64 8}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!13, !11, i64 16}
!13 = !{!"_ZTS10BinaryExprIL6ExprOp3E9UnaryExprILS0_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEE", !11, i64 8, !11, i64 16}
!14 = !{!15, !11, i64 0}
!15 = !{!"_ZTS9EvaluatorI10BinaryExprIL6ExprOp3E9UnaryExprILS1_2E21FloatingPointConstantIfLi1ELi5EEE7VarExprIiEEE", !11, i64 0}
