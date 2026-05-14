.class final synthetic Lcom/google/android/gms/internal/ads/zzelt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcjz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcjz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelt;->zza:Lcom/google/android/gms/internal/ads/zzcjz;

    return-void
.end method


# virtual methods
.method public final synthetic zzdr()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelt;->zza:Lcom/google/android/gms/internal/ads/zzcjz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjz;->zzP()Lcom/google/android/gms/internal/ads/zzclx;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjz;->zzP()Lcom/google/android/gms/internal/ads/zzclx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzclx;->zzq()V

    :cond_0
    return-void
.end method
