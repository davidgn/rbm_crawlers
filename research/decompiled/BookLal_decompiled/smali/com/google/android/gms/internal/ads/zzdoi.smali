.class final Lcom/google/android/gms/internal/ads/zzdoi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbdv;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdot;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdot;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdoi;->zza:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoi;->zzb:Lcom/google/android/gms/internal/ads/zzdot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzdj(Lcom/google/android/gms/internal/ads/zzbdu;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzcu:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbdu;->zzj:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoi;->zzb:Lcom/google/android/gms/internal/ads/zzdot;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdot;->zzaa()Lcom/google/android/gms/internal/ads/zzdqv;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdot;->zzab()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdoi;->zza:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdot;->zzaa()Lcom/google/android/gms/internal/ads/zzdqv;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdot;->zzaa()Lcom/google/android/gms/internal/ads/zzdqv;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqv;->zzdF()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdot;->zzaa()Lcom/google/android/gms/internal/ads/zzdqv;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdqv;->zzi()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdot;->zzaa()Lcom/google/android/gms/internal/ads/zzdqv;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdqv;->zzj()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdot;->zzu(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbdu;->zzj:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoi;->zzb:Lcom/google/android/gms/internal/ads/zzdot;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdot;->zzaa()Lcom/google/android/gms/internal/ads/zzdqv;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdot;->zzab()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdoi;->zza:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdot;->zzaa()Lcom/google/android/gms/internal/ads/zzdqv;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdot;->zzaa()Lcom/google/android/gms/internal/ads/zzdqv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdot;->zzaa()Lcom/google/android/gms/internal/ads/zzdqv;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdot;->zzaa()Lcom/google/android/gms/internal/ads/zzdqv;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqv;->zzdF()Landroid/view/View;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdqv;->zzi()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdqv;->zzj()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdot;->zzu(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_4
    :goto_1
    return-void
.end method
