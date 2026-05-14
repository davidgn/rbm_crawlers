.class public final Lcom/google/android/gms/internal/ads/zzemk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekx;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdml;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfjj;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdyq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdml;Lcom/google/android/gms/internal/ads/zzfjj;Lcom/google/android/gms/internal/ads/zzdyq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemk;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzb:Lcom/google/android/gms/internal/ads/zzdml;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzc:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzd:Lcom/google/android/gms/internal/ads/zzfjj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzemk;->zze:Lcom/google/android/gms/internal/ads/zzdyq;

    return-void
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzfjk;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjk;->zzv:Lorg/json/JSONObject;

    const-string v0, "tab_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;)Z
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzemk;->zza:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbiw;->zza(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzemk;->zze(Lcom/google/android/gms/internal/ads/zzfjk;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;)LN2/o;
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzoA:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zze:Lcom/google/android/gms/internal/ads/zzdyq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zza()Lcom/google/android/gms/internal/ads/zzdyp;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "cstm_tbs_rndr"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyp;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdyp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdyp;->zzd()V

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzemk;->zze(Lcom/google/android/gms/internal/ads/zzfjk;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjv;->zzb:Lcom/google/android/gms/internal/ads/zzfju;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzfju;->zzb:Lcom/google/android/gms/internal/ads/zzfjn;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzemj;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzemj;-><init>(Lcom/google/android/gms/internal/ads/zzemk;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzc:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjn;Ljava/lang/Object;)LN2/o;
    .locals 9

    :try_start_0
    new-instance p5, Lp/k;

    invoke-direct {p5}, Lp/k;-><init>()V

    invoke-virtual {p5}, Lp/k;->a()Lj3/G;

    move-result-object p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p5, p5, Lj3/G;->b:Ljava/lang/Object;

    check-cast p5, Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p5, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const/4 p1, 0x0

    invoke-direct {v1, p5, p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    new-instance p5, Lcom/google/android/gms/internal/ads/zzcfb;

    invoke-direct {p5}, Lcom/google/android/gms/internal/ads/zzcfb;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzb:Lcom/google/android/gms/internal/ads/zzdml;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcxo;

    invoke-direct {v2, p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzcxo;-><init>(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdli;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzemi;

    invoke-direct {v3, p0, p5, p3}, Lcom/google/android/gms/internal/ads/zzemi;-><init>(Lcom/google/android/gms/internal/ads/zzemk;Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzfjk;)V

    invoke-direct {p2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdli;-><init>(Lcom/google/android/gms/internal/ads/zzdmt;Lcom/google/android/gms/internal/ads/zzcjz;)V

    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/ads/zzdml;->zzd(Lcom/google/android/gms/internal/ads/zzcxo;Lcom/google/android/gms/internal/ads/zzdli;)Lcom/google/android/gms/internal/ads/zzdlf;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlf;->zzi()Lcom/google/android/gms/internal/ads/zzdeh;

    move-result-object v3

    new-instance v5, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 p3, 0x0

    invoke-direct {v5, p3, p3, p3}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    iget-object v8, p4, Lcom/google/android/gms/internal/ads/zzfjn;->zzb:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzad;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzdkd;Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Lcom/google/android/gms/internal/ads/zzcfb;->zzc(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzd:Lcom/google/android/gms/internal/ads/zzfjj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfjj;->zzd()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlf;->zzh()Lcom/google/android/gms/internal/ads/zzdle;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, "Error in CustomTabsAdRenderer"

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final synthetic zzd()Lcom/google/android/gms/internal/ads/zzdyq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zze:Lcom/google/android/gms/internal/ads/zzdyq;

    return-object v0
.end method
