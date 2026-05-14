.class public final Lcom/google/android/gms/internal/ads/zzcyo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzddk;
.implements Lcom/google/android/gms/ads/internal/client/zza;
.implements Lcom/google/android/gms/internal/ads/zzdfc;
.implements Lcom/google/android/gms/internal/ads/zzdcq;
.implements Lcom/google/android/gms/internal/ads/zzdbw;
.implements Lcom/google/android/gms/internal/ads/zzdhn;


# instance fields
.field private final zza:Lcom/google/android/gms/common/util/Clock;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcec;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzcec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyo;->zza:Lcom/google/android/gms/common/util/Clock;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyo;->zzb:Lcom/google/android/gms/internal/ads/zzcec;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyo;->zzb:Lcom/google/android/gms/internal/ads/zzcec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzf()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzcau;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzdK()V
    .locals 0

    return-void
.end method

.method public final zzdP(Lcom/google/android/gms/internal/ads/zzcai;)V
    .locals 0

    return-void
.end method

.method public final zzdQ(Lcom/google/android/gms/internal/ads/zzfjv;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyo;->zza:Lcom/google/android/gms/common/util/Clock;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyo;->zzb:Lcom/google/android/gms/internal/ads/zzcec;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcec;->zzd(J)V

    return-void
.end method

.method public final zzdr()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyo;->zzb:Lcom/google/android/gms/internal/ads/zzcec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zze()V

    return-void
.end method

.method public final zzds()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyo;->zzb:Lcom/google/android/gms/internal/ads/zzcec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzg()V

    return-void
.end method

.method public final zzdt()V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method

.method public final zzg()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyo;->zzb:Lcom/google/android/gms/internal/ads/zzcec;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Z)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/ads/internal/client/zzm;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyo;->zzb:Lcom/google/android/gms/internal/ads/zzcec;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzbha$zzb;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyo;->zzb:Lcom/google/android/gms/internal/ads/zzcec;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzb()V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzbha$zzb;)V
    .locals 0

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzbha$zzb;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyo;->zzb:Lcom/google/android/gms/internal/ads/zzcec;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzc()V

    return-void
.end method

.method public final zzm(Z)V
    .locals 0

    return-void
.end method

.method public final zzn(Z)V
    .locals 0

    return-void
.end method

.method public final zzo()V
    .locals 0

    return-void
.end method

.method public final zzp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyo;->zzb:Lcom/google/android/gms/internal/ads/zzcec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
