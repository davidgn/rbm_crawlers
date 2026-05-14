.class public final Lcom/google/android/gms/internal/ads/zzhxi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhdg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhdg;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhld;)Lcom/google/android/gms/internal/ads/zzhdg;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhld;->zzc(Lcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zzhmq;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkr;->zza()Lcom/google/android/gms/internal/ads/zzhkr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhmq;->zzg()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/ads/zzhdg;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhkr;->zzc(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhcp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhmq;->zzb()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzhcp;->zza(Lcom/google/android/gms/internal/ads/zzibz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhdg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhxi;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhxj;->zzc(Lcom/google/android/gms/internal/ads/zzhmq;)[B

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhxj;->zzd(Lcom/google/android/gms/internal/ads/zzhmq;)[B

    move-result-object p0

    invoke-direct {v1, v0, v2, p0}, Lcom/google/android/gms/internal/ads/zzhxi;-><init>(Lcom/google/android/gms/internal/ads/zzhdg;[B[B)V

    return-object v1
.end method


# virtual methods
.method public final zza([B)[B
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
