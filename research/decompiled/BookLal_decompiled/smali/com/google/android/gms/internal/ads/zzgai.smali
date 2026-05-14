.class final synthetic Lcom/google/android/gms/internal/ads/zzgai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgah;


# instance fields
.field private final synthetic zza:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgai;->zza:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final zza()Lt4/u;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgai;->zza:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lt4/Q;

    invoke-direct {v1, v0}, Lt4/Q;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-static {v1}, Lt4/w;->a(Lb4/h;)Ly4/e;

    move-result-object v0

    return-object v0
.end method
