.class public final Lcom/google/android/gms/internal/ads/zzhdm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/google/android/gms/internal/ads/zzhsp;->zza:I

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdm;->zza()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zza()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhea;->zzc()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhoa;->zza()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzheg;->zza(Z)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhey;->zza(Z)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjt;->zza()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhep;->zza(Z)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zza(Z)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfo;->zza(Z)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhft;->zza(Z)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfx;->zza(Z)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhk;->zza(Z)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhd;->zza(Z)V

    return-void
.end method
