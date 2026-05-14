.class public final Lcom/google/android/gms/internal/ads/zzhzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhpe;


# direct methods
.method public static zzb(Lcom/google/android/gms/internal/ads/zzhpc;)Lcom/google/android/gms/internal/ads/zzhpe;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhpi;->zzb(Lcom/google/android/gms/internal/ads/zzhpc;)Lcom/google/android/gms/internal/ads/zzhpe;

    move-result-object v0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhpj;->zzb(Lcom/google/android/gms/internal/ads/zzhpc;)Lcom/google/android/gms/internal/ads/zzhpe;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhzk;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/google/android/gms/internal/ads/zzhzk;-><init>(Lcom/google/android/gms/internal/ads/zzhpe;Lcom/google/android/gms/internal/ads/zzhpe;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final zza([BI)[B
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
