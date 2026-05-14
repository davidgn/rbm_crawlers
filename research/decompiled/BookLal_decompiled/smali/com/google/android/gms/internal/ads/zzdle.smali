.class public final Lcom/google/android/gms/internal/ads/zzdle;
.super Lcom/google/android/gms/internal/ads/zzcwy;
.source "SourceFile"


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/ref/WeakReference;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdjh;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdmt;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcxt;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfwr;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdcj;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzcen;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzdyq;

.field private zzl:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzdjh;Lcom/google/android/gms/internal/ads/zzdmt;Lcom/google/android/gms/internal/ads/zzcxt;Lcom/google/android/gms/internal/ads/zzfwr;Lcom/google/android/gms/internal/ads/zzdcj;Lcom/google/android/gms/internal/ads/zzcen;Lcom/google/android/gms/internal/ads/zzdyq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcwy;-><init>(Lcom/google/android/gms/internal/ads/zzcwx;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzl:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzc:Landroid/content/Context;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzd:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdle;->zze:Lcom/google/android/gms/internal/ads/zzdjh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzf:Lcom/google/android/gms/internal/ads/zzdmt;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzg:Lcom/google/android/gms/internal/ads/zzcxt;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzh:Lcom/google/android/gms/internal/ads/zzfwr;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzi:Lcom/google/android/gms/internal/ads/zzdcj;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzj:Lcom/google/android/gms/internal/ads/zzcen;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzk:Lcom/google/android/gms/internal/ads/zzdyq;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzd:Ljava/lang/ref/WeakReference;

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

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzl:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcew;->zzf:Lcom/google/android/gms/internal/ads/zzhbf;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdld;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdld;-><init>(Lcom/google/android/gms/internal/ads/zzcjz;)V

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
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdle;->zze:Lcom/google/android/gms/internal/ads/zzdjh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdjh;->zza()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzf:Lcom/google/android/gms/internal/ads/zzdmt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdmt;->zzb()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzR(Lcom/google/android/gms/internal/ads/zzfjk;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhv;->zzpa:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzc:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcwy;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzk:Lcom/google/android/gms/internal/ads/zzdyq;

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzQ(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzdyq;)V

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhv;->zzbn:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzc:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzJ(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://goo.gle/admob-interstitial-policies"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzi:Lcom/google/android/gms/internal/ads/zzdcj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdcj;->zze()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhv;->zzbo:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzh:Lcom/google/android/gms/internal/ads/zzfwr;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwy;->zza:Lcom/google/android/gms/internal/ads/zzfjv;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfjv;->zzb:Lcom/google/android/gms/internal/ads/zzfju;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfju;->zzb:Lcom/google/android/gms/internal/ads/zzfjn;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfjn;->zzb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfwr;->zza(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcjz;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhv;->zznp:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjz;->zzC()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzfjk;->zzar:Z

    if-eqz v4, :cond_2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfjk;->zzas:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzj:Lcom/google/android/gms/internal/ads/zzcen;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcen;->zzj()I

    move-result v4

    if-eq v2, v4, :cond_2

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "The interstitial consent form has been shown."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzi:Lcom/google/android/gms/internal/ads/zzdcj;

    const/16 p2, 0xc

    const-string v0, "The consent form has already been shown."

    invoke-static {p2, v0, v5}, Lcom/google/android/gms/internal/ads/zzflf;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdcj;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzl:Z

    if-eqz v2, :cond_3

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v2, "The interstitial ad has been shown."

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzi:Lcom/google/android/gms/internal/ads/zzdcj;

    const/16 v4, 0xa

    invoke-static {v4, v5, v5}, Lcom/google/android/gms/internal/ads/zzflf;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzdcj;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)V

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzl:Z

    if-nez v2, :cond_5

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzc:Landroid/content/Context;

    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzi:Lcom/google/android/gms/internal/ads/zzdcj;

    invoke-interface {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdmt;->zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdcj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdjh;->zzb()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdms; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzl:Z

    return p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzi:Lcom/google/android/gms/internal/ads/zzdcj;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdcj;->zzd(Lcom/google/android/gms/internal/ads/zzdms;)V

    :cond_5
    :goto_0
    return v3
.end method

.method public final zzb()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdle;->zzg:Lcom/google/android/gms/internal/ads/zzcxt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxt;->zzl()Z

    move-result v0

    return v0
.end method
