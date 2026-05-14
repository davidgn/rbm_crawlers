.class public final Lcom/google/android/gms/internal/ads/zzazy;
.super Lcom/google/android/gms/internal/ads/zzazx;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazw;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzazx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazw;)V

    return-void
.end method

.method public static zzt(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavy;)Lcom/google/android/gms/internal/ads/zzazy;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzazw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzazw;-><init>(Lcom/google/android/gms/internal/ads/zzavy;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzazx;->zzo(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazw;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzazy;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzazy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazw;)V

    return-object p1
.end method
