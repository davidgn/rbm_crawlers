.class final Lcom/google/android/gms/internal/ads/zzghi;
.super Lcom/google/android/gms/internal/ads/zzgib;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgdc;

.field private final zzd:J

.field private final zze:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaww;Lcom/google/android/gms/internal/ads/zzggx;Ljava/util/Map;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgdc;Lcom/google/android/gms/internal/ads/zzgcf;Lcom/google/android/gms/internal/ads/zzgph;)V
    .locals 7

    const/16 v0, 0x71

    invoke-virtual {p7, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zza(I)Lcom/google/android/gms/internal/ads/zzgpf;

    move-result-object v6

    const-string v2, "kN9wmmUtRCnUAVC9u4QRogci/rTjcU6q8ujMKVnkylwnLJMFa0VvyxpeBzY2aAE5"

    const-string v3, "nMuBMFVnPTfF9g+gXCh875niJlDvuXOVwIB+1f90keo="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgib;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaww;Lcom/google/android/gms/internal/ads/zzggx;Lcom/google/android/gms/internal/ads/zzgpf;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzghi;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzghi;->zza:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzghi;->zzc:Lcom/google/android/gms/internal/ads/zzgdc;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzgcf;->zzl()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzghi;->zzd:J

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzgcf;->zzm()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzghi;->zze:J

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzaww;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghi;->zzb:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghi;->zzc:Lcom/google/android/gms/internal/ads/zzgdc;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "E"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzghi;->zza:Ljava/util/Map;

    const-string v3, "gs"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN2/o;

    if-eqz v2, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_0

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzghi;->zzd:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaxw;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaxw;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaxw;->zzb()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const-string v2, "E"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzghi;->zza:Ljava/util/Map;

    const-string v3, "ai"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN2/o;

    if-eqz v2, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzghi;->zze:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgta;->zzc(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v3, :cond_2

    move-object v0, v2

    :catch_1
    :cond_2
    const/4 v2, 0x5

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Boolean;

    monitor-enter p2

    const/4 v3, 0x0

    :try_start_2
    aget-object v4, p1, v3

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzaww;->zzu(J)Lcom/google/android/gms/internal/ads/zzaww;

    aget-object v4, p1, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/google/android/gms/internal/ads/zzaww;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaww;

    const/4 v4, 0x2

    aget-object v5, p1, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Lcom/google/android/gms/internal/ads/zzaww;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaww;

    const/4 v5, 0x3

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Lcom/google/android/gms/internal/ads/zzaww;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaww;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyh;->zzn()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgyh;->zzi()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v5

    const/4 v6, 0x4

    aget-object p1, p1, v6

    check-cast p1, [B

    array-length v6, p1

    invoke-virtual {v5, p1, v3, v6}, Lcom/google/android/gms/internal/ads/zzgyh;->zzj([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaww;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaww;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzaww;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaww;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v1, p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_0
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzaww;->zzai(I)Lcom/google/android/gms/internal/ads/zzaww;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    :goto_1
    monitor-exit p2

    return-void

    :goto_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
