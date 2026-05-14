.class final Lcom/google/android/gms/internal/ads/zzkz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzla;

.field private final zzb:Ljava/lang/ref/WeakReference;

.field private final zzc:Ljava/util/function/IntConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzla;Landroid/content/Context;[B)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkz;->zza:Lcom/google/android/gms/internal/ads/zzla;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzb:Ljava/lang/ref/WeakReference;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzkx;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzkx;-><init>(Lcom/google/android/gms/internal/ads/zzkz;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzc:Ljava/util/function/IntConsumer;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzla;->zzX()Lcom/google/android/gms/internal/ads/zzdo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzla;->zzW()Landroid/os/Looper;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdo;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzky;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzky;-><init>(Lcom/google/android/gms/internal/ads/zzdy;)V

    invoke-static {p2, v0, p3}, Lcom/google/android/gms/common/api/a;->w(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkz;->zzc:Ljava/util/function/IntConsumer;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/a;->x(Landroid/content/Context;Ljava/util/function/IntConsumer;)V

    return-void
.end method
