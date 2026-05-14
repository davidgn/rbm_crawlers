.class public final Lcom/google/android/gms/internal/ads/zzdcf;
.super Lcom/google/android/gms/internal/ads/zzdhu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdca;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdhu;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdce;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdce;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdhu;->zzs(Lcom/google/android/gms/internal/ads/zzdht;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzdms;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdcc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdcc;-><init>(Lcom/google/android/gms/internal/ads/zzdms;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdhu;->zzs(Lcom/google/android/gms/internal/ads/zzdht;)V

    return-void
.end method

.method public final zze()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdcd;->zza:Lcom/google/android/gms/internal/ads/zzdcd;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdhu;->zzs(Lcom/google/android/gms/internal/ads/zzdht;)V

    return-void
.end method
