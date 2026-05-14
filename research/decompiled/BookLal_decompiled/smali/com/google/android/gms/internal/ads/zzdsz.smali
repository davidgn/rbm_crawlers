.class public final Lcom/google/android/gms/internal/ads/zzdsz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfkd;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdvn;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdui;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdyq;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfrf;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzejl;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdyl;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdzt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfkd;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdvn;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdyq;Lcom/google/android/gms/internal/ads/zzfrf;Lcom/google/android/gms/internal/ads/zzejl;Lcom/google/android/gms/internal/ads/zzdui;Lcom/google/android/gms/internal/ads/zzdyl;Lcom/google/android/gms/internal/ads/zzdzt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zza:Lcom/google/android/gms/internal/ads/zzfkd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzc:Lcom/google/android/gms/internal/ads/zzdvn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zze:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzf:Lcom/google/android/gms/internal/ads/zzdyq;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzg:Lcom/google/android/gms/internal/ads/zzfrf;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzh:Lcom/google/android/gms/internal/ads/zzejl;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzd:Lcom/google/android/gms/internal/ads/zzdui;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzi:Lcom/google/android/gms/internal/ads/zzdyl;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzj:Lcom/google/android/gms/internal/ads/zzdzt;

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzcfa;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zza:Lcom/google/android/gms/internal/ads/zzfkd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfkd;->zza:Lcom/google/android/gms/ads/internal/client/zzfw;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzh()Lcom/google/android/gms/internal/ads/zzclf;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzh()Lcom/google/android/gms/internal/ads/zzclf;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzclf;->zzc(Lcom/google/android/gms/ads/internal/client/zzfw;)V

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcfa;->zzb()V

    return-void
.end method

.method private final zzi(Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzccs;)V
    .locals 10

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdsz;->zzj(Lcom/google/android/gms/internal/ads/zzcjz;)V

    const-string v0, "/video"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbou;->zzl:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    const-string v0, "/videoMeta"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbou;->zzm:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcig;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcig;-><init>()V

    const-string v1, "/precache"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcjz;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    const-string v0, "/delayPageLoaded"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbou;->zzp:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    const-string v0, "/instrument"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbou;->zzn:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbou;->zzg:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/android/gms/internal/ads/zzbou;->zzb(Lcom/google/android/gms/internal/ads/zzdkd;Lcom/google/android/gms/internal/ads/zzcso;)Lcom/google/android/gms/internal/ads/zzbov;

    move-result-object v1

    const-string v2, "/click"

    invoke-interface {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zza:Lcom/google/android/gms/internal/ads/zzfkd;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfkd;->zzb:Lcom/google/android/gms/internal/ads/zzbrg;

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzP()Lcom/google/android/gms/internal/ads/zzclx;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzclx;->zzT(Z)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbpi;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhv;->zzpe:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v2, v3, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzbpi;-><init>(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbxf;Lcom/google/android/gms/internal/ads/zzejl;Lcom/google/android/gms/internal/ads/zzdyq;Lcom/google/android/gms/internal/ads/zzcso;Lcom/google/android/gms/internal/ads/zzdax;)V

    const-string v0, "/open"

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzP()Lcom/google/android/gms/internal/ads/zzclx;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzclx;->zzT(Z)V

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzD()Lcom/google/android/gms/internal/ads/zzcde;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcde;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzC()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzC()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzaw:Ljava/util/Map;

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbpb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbpb;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    const-string v0, "/logScionEvent"

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzpe:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzP()Lcom/google/android/gms/internal/ads/zzclx;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzclx;->zzi(Lcom/google/android/gms/ads/internal/zzb;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzP()Lcom/google/android/gms/internal/ads/zzclx;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/zzclx;->zzj(Lcom/google/android/gms/internal/ads/zzccs;)V

    :cond_4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhv;->zziK:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzj:Lcom/google/android/gms/internal/ads/zzdzt;

    if-eqz p2, :cond_5

    new-instance p3, Lcom/google/android/gms/internal/ads/zzbpd;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzbpd;-><init>(Lcom/google/android/gms/internal/ads/zzdzt;)V

    const-string p2, "/onDeviceStorageEvent"

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcjz;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    :cond_5
    return-void
.end method

.method private static final zzj(Lcom/google/android/gms/internal/ads/zzcjz;)V
    .locals 2

    const-string v0, "/videoClicked"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbou;->zzh:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcjz;->zzP()Lcom/google/android/gms/internal/ads/zzclx;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzclx;->zzR(Z)V

    const-string v0, "/getNativeAdViewSignals"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbou;->zzs:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    const-string v0, "/getNativeClickMeta"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbou;->zzt:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    return-void
.end method


# virtual methods
.method public final zza(Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzccs;)LN2/o;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzcU:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzi:Lcom/google/android/gms/internal/ads/zzdyl;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxz;->zzae:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/a;->m(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdyl;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdsu;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdsu;-><init>(Lcom/google/android/gms/internal/ads/zzdsz;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzccs;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdsy;-><init>(Lcom/google/android/gms/internal/ads/zzdsz;Lorg/json/JSONObject;)V

    invoke-static {p3, v0, p2}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzccs;)LN2/o;
    .locals 12

    move-object v9, p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzcU:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzdsz;->zzi:Lcom/google/android/gms/internal/ads/zzdyl;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxz;->zzag:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/a;->m(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdyl;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object v10

    new-instance v11, Lcom/google/android/gms/internal/ads/zzdst;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p5

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzdst;-><init>(Lcom/google/android/gms/internal/ads/zzdsz;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzccs;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzdsz;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {v10, v11, v0}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzc(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcjz;)LN2/o;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zza:Lcom/google/android/gms/internal/ads/zzfkd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfkd;->zzb:Lcom/google/android/gms/internal/ads/zzbrg;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcfa;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcfa;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcmj;->zze()Lcom/google/android/gms/internal/ads/zzcmj;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzcjz;->zzaf(Lcom/google/android/gms/internal/ads/zzcmj;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcmj;->zzd()Lcom/google/android/gms/internal/ads/zzcmj;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzcjz;->zzaf(Lcom/google/android/gms/internal/ads/zzcmj;)V

    :goto_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcjz;->zzP()Lcom/google/android/gms/internal/ads/zzclx;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdsx;

    invoke-direct {v2, p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzdsx;-><init>(Lcom/google/android/gms/internal/ads/zzdsz;Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzcfa;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzclx;->zzG(Lcom/google/android/gms/internal/ads/zzclv;)V

    const-string v0, "google.afma.nativeAds.renderVideo"

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzbsd;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public final synthetic zzd(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzccs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)LN2/o;
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdsz;->zzc:Lcom/google/android/gms/internal/ads/zzdvn;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdvn;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjn;)Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcfa;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcfa;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdsz;->zza:Lcom/google/android/gms/internal/ads/zzfkd;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfkd;->zzb:Lcom/google/android/gms/internal/ads/zzbrg;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    invoke-direct {v0, v1, v3, v5}, Lcom/google/android/gms/internal/ads/zzdsz;->zzi(Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzccs;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcmj;->zze()Lcom/google/android/gms/internal/ads/zzcmj;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzcjz;->zzaf(Lcom/google/android/gms/internal/ads/zzcmj;)V

    goto/16 :goto_2

    :cond_0
    move-object/from16 v3, p4

    move-object/from16 v5, p5

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdsz;->zzd:Lcom/google/android/gms/internal/ads/zzdui;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdui;->zza()Lcom/google/android/gms/internal/ads/zzduf;

    move-result-object v22

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzP()Lcom/google/android/gms/internal/ads/zzclx;

    move-result-object v7

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbhv;->zzpe:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdsz;->zze:Landroid/content/Context;

    new-instance v8, Lcom/google/android/gms/ads/internal/zzb;

    invoke-direct {v8, v3, v4, v4}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzccs;Lcom/google/android/gms/internal/ads/zzbzp;)V

    move-object v15, v8

    goto :goto_0

    :cond_1
    move-object v15, v3

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v6, 0x1

    if-eq v6, v3, :cond_2

    move-object/from16 v17, v4

    goto :goto_1

    :cond_2
    move-object/from16 v17, v5

    :goto_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdsz;->zzh:Lcom/google/android/gms/internal/ads/zzejl;

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdsz;->zzg:Lcom/google/android/gms/internal/ads/zzfrf;

    move-object/from16 v19, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdsz;->zzf:Lcom/google/android/gms/internal/ads/zzdyq;

    move-object/from16 v20, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdsz;->zzj:Lcom/google/android/gms/internal/ads/zzdzt;

    move-object/from16 v27, v3

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    invoke-interface/range {v7 .. v29}, Lcom/google/android/gms/internal/ads/zzclx;->zzab(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/internal/ads/zzbnl;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/internal/ads/zzbnn;Lcom/google/android/gms/ads/internal/overlay/zzad;ZLcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbxm;Lcom/google/android/gms/internal/ads/zzccs;Lcom/google/android/gms/internal/ads/zzejl;Lcom/google/android/gms/internal/ads/zzfrf;Lcom/google/android/gms/internal/ads/zzdyq;Lcom/google/android/gms/internal/ads/zzbpq;Lcom/google/android/gms/internal/ads/zzdkd;Lcom/google/android/gms/internal/ads/zzbpp;Lcom/google/android/gms/internal/ads/zzbpj;Lcom/google/android/gms/internal/ads/zzbow;Lcom/google/android/gms/internal/ads/zzcso;Lcom/google/android/gms/internal/ads/zzdzt;Lcom/google/android/gms/internal/ads/zzdax;Lcom/google/android/gms/internal/ads/zzdas;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdsz;->zzj(Lcom/google/android/gms/internal/ads/zzcjz;)V

    :goto_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzP()Lcom/google/android/gms/internal/ads/zzclx;

    move-result-object v3

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdsw;

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsw;-><init>(Lcom/google/android/gms/internal/ads/zzdsz;Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzcfa;)V

    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/ads/zzclx;->zzG(Lcom/google/android/gms/internal/ads/zzclv;)V

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    invoke-interface {v1, v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzcjz;->zzau(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final synthetic zze(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzccs;Ljava/lang/Object;)LN2/o;
    .locals 2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzc:Lcom/google/android/gms/internal/ads/zzdvn;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzb()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzdvn;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjn;)Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzcfa;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcfa;

    move-result-object v0

    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsz;->zzi(Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzccs;)V

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjz;->zzP()Lcom/google/android/gms/internal/ads/zzclx;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdsv;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzdsv;-><init>(Lcom/google/android/gms/internal/ads/zzcfa;)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzclx;->zzH(Lcom/google/android/gms/internal/ads/zzclw;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhv;->zzeG:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzcjz;->loadUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzcfa;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zza:Lcom/google/android/gms/internal/ads/zzfkd;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzfkd;->zza:Lcom/google/android/gms/ads/internal/client/zzfw;

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzh()Lcom/google/android/gms/internal/ads/zzclf;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzh()Lcom/google/android/gms/internal/ads/zzclf;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzclf;->zzc(Lcom/google/android/gms/ads/internal/client/zzfw;)V

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcfa;->zzb()V

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeom;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p3, p3, 0x3f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    add-int/2addr p3, v0

    add-int/lit8 p3, p3, 0xf

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/2addr p3, v0

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Html video Web View failed to load. Error code: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", Description: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", Failing URL: "

    invoke-static {v1, p3, p6}, LC/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p1, p4, p3}, Lcom/google/android/gms/internal/ads/zzeom;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzcfa;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzeO:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsz;->zzh(Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzcfa;)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeom;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p3, p3, 0x40

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    add-int/2addr p3, v0

    add-int/lit8 p3, p3, 0xf

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/2addr p3, v0

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Native Video WebView failed to load. Error code: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", Description: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", Failing URL: "

    invoke-static {v1, p3, p6}, LC/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p1, p4, p3}, Lcom/google/android/gms/internal/ads/zzeom;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzd(Ljava/lang/Throwable;)Z

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsz;->zzh(Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzcfa;)V

    return-void
.end method
