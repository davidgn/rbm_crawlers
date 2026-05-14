.class public final Lcom/google/android/gms/internal/ads/zzdkf;
.super Lcom/google/android/gms/internal/ads/zzdhu;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdhu;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdke;->zza:Lcom/google/android/gms/internal/ads/zzdke;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdhu;->zzs(Lcom/google/android/gms/internal/ads/zzdht;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
