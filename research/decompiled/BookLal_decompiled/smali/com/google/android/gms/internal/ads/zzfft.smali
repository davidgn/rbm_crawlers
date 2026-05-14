.class final Lcom/google/android/gms/internal/ads/zzfft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhas;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfpj;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfoz;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcvv;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzffx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzffx;Lcom/google/android/gms/internal/ads/zzfpj;Lcom/google/android/gms/internal/ads/zzfoz;Lcom/google/android/gms/internal/ads/zzcvv;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfft;->zza:Lcom/google/android/gms/internal/ads/zzfpj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfft;->zzb:Lcom/google/android/gms/internal/ads/zzfoz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfft;->zzc:Lcom/google/android/gms/internal/ads/zzcvv;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfft;->zzd:Lcom/google/android/gms/internal/ads/zzffx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzgL:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Banner ad failed to load"

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfft;->zzd:Lcom/google/android/gms/internal/ads/zzffx;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfft;->zzc:Lcom/google/android/gms/internal/ads/zzcvv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcvv;->zzc()Lcom/google/android/gms/internal/ads/zzcyc;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzcyc;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzffx;->zzs(Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcvv;->zzb()Lcom/google/android/gms/internal/ads/zzdby;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdby;->zzdJ(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget v1, v2, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    const-string v3, "BannerAdLoader.onFailure"

    invoke-static {v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzfla;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffx;->zzr()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffx;->zzn()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffx;->zzo()Lcom/google/android/gms/internal/ads/zzdex;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffx;->zzq()Lcom/google/android/gms/internal/ads/zzdhc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdhc;->zzc()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzdex;->zzd(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjo;->zzc:Lcom/google/android/gms/internal/ads/zzbjf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfft;->zza:Lcom/google/android/gms/internal/ads/zzfpj;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfpj;->zzf(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfpj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfft;->zzb:Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzfoz;->zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzfoz;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfpj;->zza(Lcom/google/android/gms/internal/ads/zzfoz;)Lcom/google/android/gms/internal/ads/zzfpj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfpj;->zzh()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffx;->zzp()Lcom/google/android/gms/internal/ads/zzfpm;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfft;->zzb:Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/zzfoz;->zzh(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzfoz;->zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzfoz;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzfoz;->zzm()Lcom/google/android/gms/internal/ads/zzfpc;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfpm;->zzb(Lcom/google/android/gms/internal/ads/zzfpc;)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfft;->zzd:Lcom/google/android/gms/internal/ads/zzffx;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcuq;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwy;->zzt()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffx;->zzr()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffx;->zzc()V

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjo;->zzc:Lcom/google/android/gms/internal/ads/zzbjf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfft;->zza:Lcom/google/android/gms/internal/ads/zzfpj;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwy;->zzr()Lcom/google/android/gms/internal/ads/zzfjv;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfjv;->zzb:Lcom/google/android/gms/internal/ads/zzfju;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfpj;->zze(Lcom/google/android/gms/internal/ads/zzfju;)Lcom/google/android/gms/internal/ads/zzfpj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwy;->zzn()Lcom/google/android/gms/internal/ads/zzdbp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbp;->zze()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfpj;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfpj;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfft;->zzb:Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzfoz;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfpj;->zza(Lcom/google/android/gms/internal/ads/zzfoz;)Lcom/google/android/gms/internal/ads/zzfpj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfpj;->zzh()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffx;->zzp()Lcom/google/android/gms/internal/ads/zzfpm;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfft;->zzb:Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwy;->zzr()Lcom/google/android/gms/internal/ads/zzfjv;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfjv;->zzb:Lcom/google/android/gms/internal/ads/zzfju;

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzfoz;->zzg(Lcom/google/android/gms/internal/ads/zzfju;)Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwy;->zzn()Lcom/google/android/gms/internal/ads/zzdbp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbp;->zze()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzfoz;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzfoz;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfoz;->zzm()Lcom/google/android/gms/internal/ads/zzfpc;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfpm;->zzb(Lcom/google/android/gms/internal/ads/zzfpc;)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
