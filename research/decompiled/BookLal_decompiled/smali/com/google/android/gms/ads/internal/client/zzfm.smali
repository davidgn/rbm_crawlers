.class public final Lcom/google/android/gms/ads/internal/client/zzfm;
.super Lcom/google/android/gms/internal/ads/zzcbm;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcbm;-><init>()V

    return-void
.end method

.method private static zzu(Lcom/google/android/gms/internal/ads/zzcbu;)V
    .locals 2

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zzf;->zza:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzfl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/client/zzfl;-><init>(Lcom/google/android/gms/internal/ads/zzcbu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/internal/ads/zzcbu;)V
    .locals 0

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/client/zzfm;->zzu(Lcom/google/android/gms/internal/ads/zzcbu;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/internal/ads/zzcbu;)V
    .locals 0

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/client/zzfm;->zzu(Lcom/google/android/gms/internal/ads/zzcbu;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzcbq;)V
    .locals 0

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/ads/internal/client/zzdn;)V
    .locals 0

    return-void
.end method

.method public final zzg()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzccb;)V
    .locals 0

    return-void
.end method

.method public final zzi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    .locals 0

    return-void
.end method

.method public final zzl()Lcom/google/android/gms/internal/ads/zzcbk;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/ads/internal/client/zzdx;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzn()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzo(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    .locals 0

    return-void
.end method

.method public final zzp(Z)V
    .locals 0

    return-void
.end method

.method public final zzq()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzr(J)V
    .locals 0

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzcbv;)V
    .locals 0

    return-void
.end method
