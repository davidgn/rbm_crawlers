.class final Lcom/google/android/gms/internal/ads/zzarz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzaso;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzasa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzasa;Lcom/google/android/gms/internal/ads/zzaso;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzarz;->zza:Lcom/google/android/gms/internal/ads/zzaso;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarz;->zzb:Lcom/google/android/gms/internal/ads/zzasa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarz;->zzb:Lcom/google/android/gms/internal/ads/zzasa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasa;->zzb()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarz;->zza:Lcom/google/android/gms/internal/ads/zzaso;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
