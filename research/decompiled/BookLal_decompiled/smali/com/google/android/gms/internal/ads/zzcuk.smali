.class public final Lcom/google/android/gms/internal/ads/zzcuk;
.super Lcom/google/android/gms/internal/ads/zzcwy;
.source "SourceFile"


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzcjz;

.field private final zzd:I

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcty;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdmt;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdjh;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdcj;

.field private final zzj:Z

.field private final zzk:Lcom/google/android/gms/internal/ads/zzcen;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzdyq;

.field private zzm:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcjz;ILcom/google/android/gms/internal/ads/zzcty;Lcom/google/android/gms/internal/ads/zzdmt;Lcom/google/android/gms/internal/ads/zzdjh;Lcom/google/android/gms/internal/ads/zzdcj;Lcom/google/android/gms/internal/ads/zzcen;Lcom/google/android/gms/internal/ads/zzdyq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcwy;-><init>(Lcom/google/android/gms/internal/ads/zzcwx;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzm:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzc:Lcom/google/android/gms/internal/ads/zzcjz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zze:Landroid/content/Context;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzd:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzf:Lcom/google/android/gms/internal/ads/zzcty;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzg:Lcom/google/android/gms/internal/ads/zzdmt;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzh:Lcom/google/android/gms/internal/ads/zzdjh;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzi:Lcom/google/android/gms/internal/ads/zzdcj;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhv;->zzgv:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzj:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzk:Lcom/google/android/gms/internal/ads/zzcen;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzl:Lcom/google/android/gms/internal/ads/zzdyq;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbfi;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzc:Lcom/google/android/gms/internal/ads/zzcjz;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzay(Lcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_0
    return-void
.end method

.method public final zzb(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzbfv;Z)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zze:Landroid/content/Context;

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzj:Z

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzh:Lcom/google/android/gms/internal/ads/zzdjh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdjh;->zza()V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzg:Lcom/google/android/gms/internal/ads/zzdmt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdmt;->zzb()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzR(Lcom/google/android/gms/internal/ads/zzfjk;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzpa:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwy;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzl:Lcom/google/android/gms/internal/ads/zzdyq;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzQ(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzdyq;)V

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzbn:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzJ(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://goo.gle/admob-interstitial-policies"

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzi:Lcom/google/android/gms/internal/ads/zzdcj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdcj;->zze()V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhv;->zzbo:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfwr;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzs()Lcom/google/android/gms/ads/internal/util/zzbq;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/util/zzbq;->zza()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzfwr;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwy;->zza:Lcom/google/android/gms/internal/ads/zzfjv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjv;->zzb:Lcom/google/android/gms/internal/ads/zzfju;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfju;->zzb:Lcom/google/android/gms/internal/ads/zzfjn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjn;->zzb:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfwr;->zza(Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zznp:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzc:Lcom/google/android/gms/internal/ads/zzcjz;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzC()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzfjk;->zzar:Z

    if-eqz v3, :cond_4

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfjk;->zzas:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzk:Lcom/google/android/gms/internal/ads/zzcen;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcen;->zzj()I

    move-result v3

    if-eq v1, v3, :cond_4

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "The app open consent form has been shown."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzi:Lcom/google/android/gms/internal/ads/zzdcj;

    const/16 p2, 0xc

    const-string p3, "The consent form has already been shown."

    invoke-static {p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzflf;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdcj;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzm:Z

    if-eqz v1, :cond_5

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "App open interstitial ad is already visible."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzi:Lcom/google/android/gms/internal/ads/zzdcj;

    const/16 v3, 0xa

    invoke-static {v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzflf;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdcj;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)V

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzm:Z

    if-nez v1, :cond_7

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzi:Lcom/google/android/gms/internal/ads/zzdcj;

    invoke-interface {v0, p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdmt;->zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdcj;)V

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzh:Lcom/google/android/gms/internal/ads/zzdjh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjh;->zzb()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdms; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzm:Z

    return-void

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzi:Lcom/google/android/gms/internal/ads/zzdcj;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdcj;->zzd(Lcom/google/android/gms/internal/ads/zzdms;)V

    :cond_7
    return-void
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzd:I

    return v0
.end method

.method public final zzd()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcwy;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzc:Lcom/google/android/gms/internal/ads/zzcjz;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjz;->destroy()V

    :cond_0
    return-void
.end method

.method public final zze(JI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzf:Lcom/google/android/gms/internal/ads/zzcty;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcty;->zza(JI)V

    return-void
.end method
