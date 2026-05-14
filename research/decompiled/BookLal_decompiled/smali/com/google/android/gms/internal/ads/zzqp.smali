.class public final Lcom/google/android/gms/internal/ads/zzqp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Z

.field public final zzb:Z

.field public final zzc:Z

.field public final zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzqo;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqo;->zze()Lcom/google/android/gms/internal/ads/zzqp;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzqo;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqo;->zzf()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zza:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqo;->zzg()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzb:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqo;->zzh()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzc:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqo;->zzi()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzd:I

    return-void
.end method
