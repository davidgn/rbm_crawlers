.class public final Lcom/google/android/gms/internal/ads/zzilx;
.super Lcom/google/android/gms/internal/ads/zzilp;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzilw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzilp;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzilx;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzilp;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzilp;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzily;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzily;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzilp;->zza:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzily;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzilw;)V

    return-object v0
.end method
