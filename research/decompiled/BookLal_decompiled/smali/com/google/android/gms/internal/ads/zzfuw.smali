.class public final Lcom/google/android/gms/internal/ads/zzfuw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfuy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfux;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfuy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfuy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuw;->zza:Lcom/google/android/gms/internal/ads/zzfuy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfux;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfux;-><init>(Lcom/google/android/gms/internal/ads/zzfuv;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfuw;->zzb:Lcom/google/android/gms/internal/ads/zzfux;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfuv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuw;->zzb:Lcom/google/android/gms/internal/ads/zzfux;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfuv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuw;->zza:Lcom/google/android/gms/internal/ads/zzfuy;

    return-object v0
.end method
