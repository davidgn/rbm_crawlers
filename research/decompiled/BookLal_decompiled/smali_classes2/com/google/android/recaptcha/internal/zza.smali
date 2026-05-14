.class final Lcom/google/android/recaptcha/internal/zza;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lk4/l;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzb:Lt4/z;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lt4/z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zza;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zza;->zzb:Lt4/z;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zza;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zza;->zzb:Lt4/z;

    check-cast p1, Lt4/g0;

    invoke-virtual {p1}, Lt4/g0;->A()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lt4/T;

    if-nez v0, :cond_6

    instance-of v0, p1, Lt4/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lt4/n;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p1, Lt4/n;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zza;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zza;->zzb:Lt4/z;

    invoke-interface {v0}, Lt4/z;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zza;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    instance-of v2, p1, Ljava/lang/Exception;

    if-eqz v2, :cond_4

    move-object v1, p1

    check-cast v1, Ljava/lang/Exception;

    :cond_4
    if-nez v1, :cond_5

    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    invoke-direct {v1, p1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    :cond_5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_2
    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This job has not completed yet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
