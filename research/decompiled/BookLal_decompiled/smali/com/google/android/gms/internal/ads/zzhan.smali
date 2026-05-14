.class public Lcom/google/android/gms/internal/ads/zzhan;
.super Lcom/google/android/gms/internal/ads/zzhaw;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhaw;-><init>()V

    return-void
.end method

.method public static zzw(LN2/o;)Lcom/google/android/gms/internal/ads/zzhan;
    .locals 1

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzhan;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhan;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhao;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhao;-><init>(LN2/o;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
