.class final Lcom/google/android/gms/internal/ads/zzeas;
.super Lcom/google/android/gms/internal/ads/zzbqx;
.source "SourceFile"


# instance fields
.field final synthetic zza:Ljava/lang/Object;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:J

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfoz;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzcfb;

.field final synthetic zzf:Lcom/google/android/gms/internal/ads/zzebb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzebb;Ljava/lang/Object;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfoz;Lcom/google/android/gms/internal/ads/zzcfb;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeas;->zza:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeas;->zzb:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzeas;->zzc:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeas;->zzd:Lcom/google/android/gms/internal/ads/zzfoz;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeas;->zze:Lcom/google/android/gms/internal/ads/zzcfb;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeas;->zzf:Lcom/google/android/gms/internal/ads/zzebb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbqx;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeas;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeas;->zzf:Lcom/google/android/gms/internal/ads/zzebb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeas;->zzb:Ljava/lang/String;

    const-string v3, ""

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzeas;->zzc:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzebb;->zzm(Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzebb;->zzr()Lcom/google/android/gms/internal/ads/zzdzb;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzdzb;->zzb(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzebb;->zzs()Lcom/google/android/gms/internal/ads/zzdjc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzdjc;->zzb(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzebb;->zzt()Lcom/google/android/gms/internal/ads/zzfpm;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeas;->zzd:Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/ads/zzfoz;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfoz;->zzm()Lcom/google/android/gms/internal/ads/zzfpc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfpm;->zzb(Lcom/google/android/gms/internal/ads/zzfpc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeas;->zze:Lcom/google/android/gms/internal/ads/zzcfb;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcfb;->zzc(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeas;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeas;->zzf:Lcom/google/android/gms/internal/ads/zzebb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeas;->zzb:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzeas;->zzc:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, p1, v3}, Lcom/google/android/gms/internal/ads/zzebb;->zzm(Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzebb;->zzr()Lcom/google/android/gms/internal/ads/zzdzb;

    move-result-object v3

    const-string v5, "error"

    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzdzb;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzebb;->zzs()Lcom/google/android/gms/internal/ads/zzdjc;

    move-result-object v3

    const-string v5, "error"

    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzdjc;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzebb;->zzt()Lcom/google/android/gms/internal/ads/zzfpm;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeas;->zzd:Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzfoz;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/zzfoz;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfoz;->zzm()Lcom/google/android/gms/internal/ads/zzfpc;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfpm;->zzb(Lcom/google/android/gms/internal/ads/zzfpc;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeas;->zze:Lcom/google/android/gms/internal/ads/zzcfb;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzc(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
