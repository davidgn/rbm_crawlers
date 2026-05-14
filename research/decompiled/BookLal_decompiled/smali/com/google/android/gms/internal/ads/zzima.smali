.class public final Lcom/google/android/gms/internal/ads/zzima;
.super Lcom/google/android/gms/internal/ads/zzilp;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzilz;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzilp;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzima;
    .locals 0

    const-string p1, "Network"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzilp;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzilp;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzimb;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzimb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzilp;->zza:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzimb;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzilz;)V

    return-object v0
.end method
