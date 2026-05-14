.class public final Lcom/google/android/gms/internal/ads/zzgqa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgpz;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgqr;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object p0, v2

    :cond_0
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgqr;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqb;-><init>(Lcom/google/android/gms/internal/ads/zzgqr;)V

    return-object v0
.end method
