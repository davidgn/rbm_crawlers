.class public final Lcom/google/android/gms/internal/ads/zzhmr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhmv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhzy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhru;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhru;Lcom/google/android/gms/internal/ads/zzhzy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmr;->zzb:Lcom/google/android/gms/internal/ads/zzhru;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhmr;->zza:Lcom/google/android/gms/internal/ads/zzhzy;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhru;)Lcom/google/android/gms/internal/ads/zzhmr;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhru;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhnc;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzhmr;-><init>(Lcom/google/android/gms/internal/ads/zzhru;Lcom/google/android/gms/internal/ads/zzhzy;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhru;)Lcom/google/android/gms/internal/ads/zzhmr;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhru;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhnc;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzhmr;-><init>(Lcom/google/android/gms/internal/ads/zzhru;Lcom/google/android/gms/internal/ads/zzhzy;)V

    return-object v0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzhru;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmr;->zzb:Lcom/google/android/gms/internal/ads/zzhru;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhzy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmr;->zza:Lcom/google/android/gms/internal/ads/zzhzy;

    return-object v0
.end method
