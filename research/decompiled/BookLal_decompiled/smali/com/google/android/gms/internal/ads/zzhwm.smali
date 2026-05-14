.class public final Lcom/google/android/gms/internal/ads/zzhwm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/google/android/gms/internal/ads/zzhsp;->zza:I

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhwm;->zza()V
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

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhvj;->zzc()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhvn;->zzc()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhud;->zza(Z)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhvz;->zza(Z)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhwl;->zza(Z)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjt;->zza()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhul;->zza(Z)V

    return-void
.end method
