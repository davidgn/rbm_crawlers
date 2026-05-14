.class final Lcom/google/android/gms/internal/ads/zzffo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesw;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzffr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzffr;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffo;->zza:Lcom/google/android/gms/internal/ads/zzffr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->zza:Lcom/google/android/gms/internal/ads/zzffr;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzffr;->zza:Lcom/google/android/gms/internal/ads/zzcuk;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcuk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->zza:Lcom/google/android/gms/internal/ads/zzffr;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzffr;->zza:Lcom/google/android/gms/internal/ads/zzcuk;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcuk;->zzd()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzffr;->zza:Lcom/google/android/gms/internal/ads/zzcuk;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcuk;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffr;->zzO()Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcul;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffr;->zzO()Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffr;->zzV()Lcom/google/android/gms/internal/ads/zzdyq;

    move-result-object v4

    invoke-direct {v2, p1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcul;-><init>(Lcom/google/android/gms/internal/ads/zzcuk;Lcom/google/android/gms/ads/internal/client/zzbu;Lcom/google/android/gms/internal/ads/zzffj;Lcom/google/android/gms/internal/ads/zzdyq;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzffj;->zzt(Lcom/google/android/gms/internal/ads/zzbfo;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwy;->zzj()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
