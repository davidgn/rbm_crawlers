.class public final Lcom/google/android/gms/internal/ads/zzdur;
.super Lcom/google/android/gms/internal/ads/zzcwy;
.source "SourceFile"


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/ref/WeakReference;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdmt;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdjh;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdcj;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzddq;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcxt;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzcbk;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfwr;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzfjx;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzdyq;

.field private zzn:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzdmt;Lcom/google/android/gms/internal/ads/zzdjh;Lcom/google/android/gms/internal/ads/zzdcj;Lcom/google/android/gms/internal/ads/zzddq;Lcom/google/android/gms/internal/ads/zzcxt;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfwr;Lcom/google/android/gms/internal/ads/zzfjx;Lcom/google/android/gms/internal/ads/zzdyq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcwy;-><init>(Lcom/google/android/gms/internal/ads/zzcwx;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzn:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdur;->zze:Lcom/google/android/gms/internal/ads/zzdmt;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzd:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzf:Lcom/google/android/gms/internal/ads/zzdjh;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzg:Lcom/google/android/gms/internal/ads/zzdcj;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzh:Lcom/google/android/gms/internal/ads/zzddq;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzi:Lcom/google/android/gms/internal/ads/zzcxt;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzk:Lcom/google/android/gms/internal/ads/zzfwr;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcce;

    iget-object p2, p9, Lcom/google/android/gms/internal/ads/zzfjk;->zzl:Lcom/google/android/gms/internal/ads/zzcbg;

    if-eqz p2, :cond_0

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzcbg;->zza:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    if-eqz p2, :cond_1

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzcbg;->zzb:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzcce;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzj:Lcom/google/android/gms/internal/ads/zzcbk;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzl:Lcom/google/android/gms/internal/ads/zzfjx;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzm:Lcom/google/android/gms/internal/ads/zzdyq;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjz;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzhG:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzn:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcew;->zzf:Lcom/google/android/gms/internal/ads/zzhbf;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzduq;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzduq;-><init>(Lcom/google/android/gms/internal/ads/zzcjz;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjz;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final zza(ZLandroid/app/Activity;)Z
    .locals 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdur;->zze:Lcom/google/android/gms/internal/ads/zzdmt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdmt;->zzb()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzR(Lcom/google/android/gms/internal/ads/zzfjk;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzpa:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzc:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcwy;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzm:Lcom/google/android/gms/internal/ads/zzdyq;

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/ads/internal/util/zzs;->zzQ(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzdyq;)V

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzbn:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzc:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzJ(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://goo.gle/admob-interstitial-policies"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzg:Lcom/google/android/gms/internal/ads/zzdcj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdcj;->zze()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhv;->zzbo:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzk:Lcom/google/android/gms/internal/ads/zzfwr;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwy;->zza:Lcom/google/android/gms/internal/ads/zzfjv;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfjv;->zzb:Lcom/google/android/gms/internal/ads/zzfju;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfju;->zzb:Lcom/google/android/gms/internal/ads/zzfjn;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfjn;->zzb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfwr;->zza(Ljava/lang/String;)V

    :cond_1
    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzn:Z

    if-eqz v1, :cond_3

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "The rewarded ad have been showed."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzg:Lcom/google/android/gms/internal/ads/zzdcj;

    const/16 p2, 0xa

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzflf;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdcj;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)V

    return v2

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzn:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzf:Lcom/google/android/gms/internal/ads/zzdjh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdjh;->zza()V

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzc:Landroid/content/Context;

    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzg:Lcom/google/android/gms/internal/ads/zzdcj;

    invoke-interface {v0, p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzdmt;->zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdcj;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdjh;->zzb()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdms; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzg:Lcom/google/android/gms/internal/ads/zzdcj;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdcj;->zzd(Lcom/google/android/gms/internal/ads/zzdms;)V

    return v2
.end method

.method public final zzb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzn:Z

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcbk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzj:Lcom/google/android/gms/internal/ads/zzcbk;

    return-object v0
.end method

.method public final zze()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzi:Lcom/google/android/gms/internal/ads/zzcxt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxt;->zzl()Z

    move-result v0

    return v0
.end method

.method public final zzf()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjz;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjz;->zzaB()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzh:Lcom/google/android/gms/internal/ads/zzddq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddq;->zzb()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzfjx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdur;->zzl:Lcom/google/android/gms/internal/ads/zzfjx;

    return-object v0
.end method
