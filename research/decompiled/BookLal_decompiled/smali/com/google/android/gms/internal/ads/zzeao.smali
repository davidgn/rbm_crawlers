.class public final Lcom/google/android/gms/internal/ads/zzeao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzz;


# instance fields
.field private final zza:J

.field private final zzb:Lcom/google/android/gms/internal/ads/zzead;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfjb;


# direct methods
.method public constructor <init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzead;Lcom/google/android/gms/internal/ads/zzcmo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzeao;->zza:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeao;->zzb:Lcom/google/android/gms/internal/ads/zzead;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzcmo;->zzq()Lcom/google/android/gms/internal/ads/zzfjd;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzfjd;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfjd;

    invoke-interface {p1, p6}, Lcom/google/android/gms/internal/ads/zzfjd;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfjd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfjd;->zza()Lcom/google/android/gms/internal/ads/zzfje;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfje;->zzb()Lcom/google/android/gms/internal/ads/zzfjb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeao;->zzc:Lcom/google/android/gms/internal/ads/zzfjb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzm;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeao;->zzc:Lcom/google/android/gms/internal/ads/zzfjb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeam;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeam;-><init>(Lcom/google/android/gms/internal/ads/zzeao;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfjb;->zzc(Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/internal/ads/zzcbu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeao;->zzc:Lcom/google/android/gms/internal/ads/zzfjb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzean;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzean;-><init>(Lcom/google/android/gms/internal/ads/zzeao;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfjb;->zze(Lcom/google/android/gms/internal/ads/zzcbq;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfjb;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method

.method public final synthetic zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeao;->zza:J

    return-wide v0
.end method

.method public final synthetic zze()Lcom/google/android/gms/internal/ads/zzead;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeao;->zzb:Lcom/google/android/gms/internal/ads/zzead;

    return-object v0
.end method
