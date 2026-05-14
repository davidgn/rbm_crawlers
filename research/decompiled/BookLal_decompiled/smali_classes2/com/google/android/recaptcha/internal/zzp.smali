.class public final Lcom/google/android/recaptcha/internal/zzp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzp;

.field private static final zzb:Lt4/u;

.field private static final zzc:Lt4/u;

.field private static final zzd:Lt4/u;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/recaptcha/internal/zzp;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzp;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzp;->zza:Lcom/google/android/recaptcha/internal/zzp;

    new-instance v0, Ly4/e;

    new-instance v1, Lt4/o0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lt4/Z;-><init>(Lt4/W;)V

    sget-object v3, Lt4/E;->a:LA4/e;

    sget-object v3, Ly4/o;->a:Lt4/i0;

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lb4/i;->a:Lb4/i;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lb4/b;->c:Lb4/b;

    invoke-virtual {v3, v1, v4}, Lb4/a;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb4/h;

    :goto_0
    invoke-direct {v0, v1}, Ly4/e;-><init>(Lb4/h;)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzp;->zzb:Lt4/u;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Lt4/r0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lt4/Q;

    invoke-direct {v1, v0}, Lt4/Q;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-static {v1}, Lt4/w;->a(Lb4/h;)Ly4/e;

    move-result-object v0

    new-instance v1, Lcom/google/android/recaptcha/internal/zzo;

    invoke-direct {v1, v2}, Lcom/google/android/recaptcha/internal/zzo;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lt4/w;->l(Lt4/u;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzp;->zzc:Lt4/u;

    sget-object v0, Lt4/E;->b:LA4/d;

    invoke-static {v0}, Lt4/w;->a(Lb4/h;)Ly4/e;

    move-result-object v0

    sput-object v0, Lcom/google/android/recaptcha/internal/zzp;->zzd:Lt4/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza()Lt4/u;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzp;->zzd:Lt4/u;

    return-object v0
.end method

.method public static final zzb()Lt4/u;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzp;->zzb:Lt4/u;

    return-object v0
.end method

.method public static final zzc()Lt4/u;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzp;->zzc:Lt4/u;

    return-object v0
.end method
