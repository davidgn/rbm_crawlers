.class public Lcom/google/android/gms/internal/ads/zzidy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected volatile zza:Lcom/google/android/gms/internal/ads/zzieo;

.field private volatile zzb:Lcom/google/android/gms/internal/ads/zzibz;

.field private volatile zzc:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzidy;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzidy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zza:Lcom/google/android/gms/internal/ads/zzieo;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzidy;->zza:Lcom/google/android/gms/internal/ads/zzieo;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzidy;->zzc()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzidy;->zzc()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzibz;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zziep;->zzbw()Lcom/google/android/gms/internal/ads/zzieo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzidy;->zzd(Lcom/google/android/gms/internal/ads/zzieo;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzidy;->zza:Lcom/google/android/gms/internal/ads/zzieo;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zziep;->zzbw()Lcom/google/android/gms/internal/ads/zzieo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzidy;->zzd(Lcom/google/android/gms/internal/ads/zzieo;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzidy;->zza:Lcom/google/android/gms/internal/ads/zzieo;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzieo;)Lcom/google/android/gms/internal/ads/zzieo;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zza:Lcom/google/android/gms/internal/ads/zzieo;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzidy;->zzb:Lcom/google/android/gms/internal/ads/zzibz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzidy;->zza:Lcom/google/android/gms/internal/ads/zzieo;

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zzb:Lcom/google/android/gms/internal/ads/zzibz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zzb:Lcom/google/android/gms/internal/ads/zzibz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibz;->zzb()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zza:Lcom/google/android/gms/internal/ads/zzieo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zza:Lcom/google/android/gms/internal/ads/zzieo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzieo;->zzbr()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzibz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zzb:Lcom/google/android/gms/internal/ads/zzibz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zzb:Lcom/google/android/gms/internal/ads/zzibz;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zzb:Lcom/google/android/gms/internal/ads/zzibz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zzb:Lcom/google/android/gms/internal/ads/zzibz;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zza:Lcom/google/android/gms/internal/ads/zzieo;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzibz;->zza:Lcom/google/android/gms/internal/ads/zzibz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zzb:Lcom/google/android/gms/internal/ads/zzibz;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zza:Lcom/google/android/gms/internal/ads/zzieo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzieo;->zzaM()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zzb:Lcom/google/android/gms/internal/ads/zzibz;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zzb:Lcom/google/android/gms/internal/ads/zzibz;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzieo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zza:Lcom/google/android/gms/internal/ads/zzieo;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zza:Lcom/google/android/gms/internal/ads/zzieo;

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzidy;->zza:Lcom/google/android/gms/internal/ads/zzieo;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzibz;->zza:Lcom/google/android/gms/internal/ads/zzibz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zzb:Lcom/google/android/gms/internal/ads/zzibz;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzids; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzidy;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzidy;->zza:Lcom/google/android/gms/internal/ads/zzieo;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzibz;->zza:Lcom/google/android/gms/internal/ads/zzibz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzidy;->zzb:Lcom/google/android/gms/internal/ads/zzibz;

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
