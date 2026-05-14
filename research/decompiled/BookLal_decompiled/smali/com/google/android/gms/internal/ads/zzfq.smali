.class public final Lcom/google/android/gms/internal/ads/zzfq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdy;

.field private zzd:Z

.field private zze:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfp;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    const/4 p1, 0x0

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzdo;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzb:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzdo;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzc:Lcom/google/android/gms/internal/ads/zzdy;

    return-void
.end method

.method public static synthetic zzf(ZZ)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfq;->zzh(ZZ)Z

    move-result p0

    return p0
.end method

.method private final zzg(ZZ)V
    .locals 5

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfq;->zzh(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzb:Lcom/google/android/gms/internal/ads/zzdy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfm;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Lcom/google/android/gms/internal/ads/zzfq;ZZ)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzm(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzc:Lcom/google/android/gms/internal/ads/zzdy;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfn;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzfn;-><init>(Lcom/google/android/gms/internal/ads/zzfq;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const-wide/16 v3, 0x3e8

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzn(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzb:Lcom/google/android/gms/internal/ads/zzdy;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfl;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfl;-><init>(Lcom/google/android/gms/internal/ads/zzfq;Ljava/util/concurrent/atomic/AtomicBoolean;ZZ)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzm(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static zzh(ZZ)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzd:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzd:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zze:Z

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzg(ZZ)V

    return-void
.end method

.method public final zzb(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zze:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zze:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzd:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfq;->zzg(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic zzc(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfo;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/ads/zzfo;-><init>(Lcom/google/android/gms/internal/ads/zzfp;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const-string p1, "ExoPlayer:WakeLockManager"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final synthetic zzd(Ljava/util/concurrent/atomic/AtomicBoolean;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfp;->zzb(ZZ)V

    return-void
.end method

.method public final synthetic zze(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfp;->zzb(ZZ)V

    return-void
.end method
