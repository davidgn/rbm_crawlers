.class final Lcom/google/android/gms/internal/ads/zzghk;
.super Lcom/google/android/gms/internal/ads/zzgib;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaww;Lcom/google/android/gms/internal/ads/zzggx;Lcom/google/android/gms/internal/ads/zzgph;)V
    .locals 7

    const/16 v0, 0x72

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zza(I)Lcom/google/android/gms/internal/ads/zzgpf;

    move-result-object v6

    const-string v2, "JOb9Buu0xYdd70+iJ6c7WX6Kut4r4Ef081tgABoKx9/u6Dz7WlTYtZ23r21T1f+C"

    const-string v3, "UzlzBUBLop/DRthrjF82KPxakiUrCM4ZAxVINA2Oe5I="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgib;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaww;Lcom/google/android/gms/internal/ads/zzggx;Lcom/google/android/gms/internal/ads/zzgpf;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzaww;)V
    .locals 2

    monitor-enter p2

    :try_start_0
    const-string v0, "E"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzaww;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaww;

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaww;->zzB(J)Lcom/google/android/gms/internal/ads/zzaww;

    const-string v0, "D"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzaww;->zzV(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaww;

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p2

    const/4 v0, 0x0

    :try_start_1
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzaww;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaww;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaww;->zzB(J)Lcom/google/android/gms/internal/ads/zzaww;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaww;->zzV(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaww;

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
