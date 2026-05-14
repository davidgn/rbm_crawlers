.class public Lcom/google/android/gms/ads/internal/client/LiteSdkInfo;
.super Lcom/google/android/gms/ads/internal/client/zzcu;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzcu;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdapterCreator()Lcom/google/android/gms/internal/ads/zzbuh;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbud;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbud;-><init>()V

    return-object v0
.end method

.method public getLiteSdkVersion()Lcom/google/android/gms/ads/internal/client/zzez;
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzez;

    const v1, 0xf869c00

    const-string v2, "25.0.0"

    invoke-direct {v0, v1, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzez;-><init>(IILjava/lang/String;)V

    return-object v0
.end method
