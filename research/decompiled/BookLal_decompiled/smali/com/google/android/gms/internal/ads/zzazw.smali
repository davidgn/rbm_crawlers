.class public final Lcom/google/android/gms/internal/ads/zzazw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final zza:Z

.field final zzb:Ljava/lang/String;

.field final zzc:Lcom/google/android/gms/internal/ads/zzawp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzavy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzavy;->zza()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazw;->zzb:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzavy;->zzb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazw;->zza:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzavy;->zzc()Lcom/google/android/gms/internal/ads/zzawp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazw;->zzc:Lcom/google/android/gms/internal/ads/zzawp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzavy;->zzd()Lcom/google/android/gms/internal/ads/zzawv;

    return-void
.end method
