.class final Lcom/google/android/gms/internal/ads/zzall;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzals;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzalv;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzags;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzagt;

.field public zze:I

.field public zzf:Lcom/google/android/gms/internal/ads/zzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzals;Lcom/google/android/gms/internal/ads/zzalv;Lcom/google/android/gms/internal/ads/zzags;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzall;->zza:Lcom/google/android/gms/internal/ads/zzals;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzall;->zzb:Lcom/google/android/gms/internal/ads/zzalv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzall;->zzc:Lcom/google/android/gms/internal/ads/zzags;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzals;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzagt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzagt;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzall;->zzd:Lcom/google/android/gms/internal/ads/zzagt;

    return-void
.end method
