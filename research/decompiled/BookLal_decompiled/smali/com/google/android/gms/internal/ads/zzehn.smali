.class public final Lcom/google/android/gms/internal/ads/zzehn;
.super Lcom/google/android/gms/internal/ads/zzbzu;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhbf;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzehv;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcqv;

.field private final zze:Ljava/util/ArrayDeque;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfpm;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcaq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzhbf;Lcom/google/android/gms/internal/ads/zzcaq;Lcom/google/android/gms/internal/ads/zzcqv;Lcom/google/android/gms/internal/ads/zzehv;Ljava/util/ArrayDeque;Lcom/google/android/gms/internal/ads/zzehs;Lcom/google/android/gms/internal/ads/zzfpm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbzu;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhv;->zza(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehn;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzb:Lcom/google/android/gms/internal/ads/zzhbf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzg:Lcom/google/android/gms/internal/ads/zzcaq;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzc:Lcom/google/android/gms/internal/ads/zzehv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzd:Lcom/google/android/gms/internal/ads/zzcqv;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzehn;->zze:Ljava/util/ArrayDeque;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzf:Lcom/google/android/gms/internal/ads/zzfpm;

    return-void
.end method

.method private static zzm(Lcom/google/android/gms/internal/ads/zzcai;Lcom/google/android/gms/internal/ads/zzfop;Lcom/google/android/gms/internal/ads/zzfcr;)LN2/o;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzehb;

    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/internal/ads/zzehb;-><init>(Lcom/google/android/gms/internal/ads/zzfcr;Lcom/google/android/gms/internal/ads/zzcai;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzehc;->zza:Lcom/google/android/gms/internal/ads/zzehc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfoj;->zze:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zza:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzfoh;->zza(Ljava/lang/Object;LN2/o;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfog;->zzc(Lcom/google/android/gms/internal/ads/zzhad;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzfog;->zzb(Lcom/google/android/gms/internal/ads/zzfnp;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfog;->zzi()Lcom/google/android/gms/internal/ads/zzfnw;

    move-result-object p0

    return-object p0
.end method

.method private static zzn(LN2/o;Lcom/google/android/gms/internal/ads/zzfop;Lcom/google/android/gms/internal/ads/zzbtn;Lcom/google/android/gms/internal/ads/zzfpj;Lcom/google/android/gms/internal/ads/zzfoz;)LN2/o;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbtk;->zza:Lcom/google/android/gms/internal/ads/zzbth;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzehh;->zza:Lcom/google/android/gms/internal/ads/zzehh;

    const-string v2, "AFMA_getAdDictionary"

    invoke-virtual {p2, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbtn;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtg;Lcom/google/android/gms/internal/ads/zzbtf;)Lcom/google/android/gms/internal/ads/zzbtd;

    move-result-object p2

    invoke-static {p0, p4}, Lcom/google/android/gms/internal/ads/zzfpi;->zzb(LN2/o;Lcom/google/android/gms/internal/ads/zzfoz;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfoj;->zzg:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzfoh;->zza(Ljava/lang/Object;LN2/o;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzfog;->zzc(Lcom/google/android/gms/internal/ads/zzhad;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfog;->zzi()Lcom/google/android/gms/internal/ads/zzfnw;

    move-result-object p0

    invoke-static {p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzfpi;->zzf(LN2/o;Lcom/google/android/gms/internal/ads/zzfpj;Lcom/google/android/gms/internal/ads/zzfoz;)V

    return-object p0
.end method

.method private final zzo(LN2/o;Lcom/google/android/gms/internal/ads/zzbzz;Lcom/google/android/gms/internal/ads/zzcai;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzehf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzehf;-><init>(Lcom/google/android/gms/internal/ads/zzehn;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcew;->zza:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzegy;

    invoke-direct {v0, p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzegy;-><init>(Lcom/google/android/gms/internal/ads/zzehn;Lcom/google/android/gms/internal/ads/zzcai;Lcom/google/android/gms/internal/ads/zzbzz;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcew;->zzh:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzhav;->zzr(LN2/o;Lcom/google/android/gms/internal/ads/zzhas;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private final declared-synchronized zzp()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbkc;->zzb:Lcom/google/android/gms/internal/ads/zzbjf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbjf;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehn;->zze:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final declared-synchronized zzq(Lcom/google/android/gms/internal/ads/zzehi;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzehn;->zzp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehn;->zze:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzehi;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehn;->zze:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzehi;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzehi;->zzc:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzcai;I)LN2/o;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbte;

    move-result-object v5

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzehn;->zza:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzehn;->zzf:Lcom/google/android/gms/internal/ads/zzfpm;

    invoke-virtual {v5, v12, v6, v7}, Lcom/google/android/gms/internal/ads/zzbte;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfpm;)Lcom/google/android/gms/internal/ads/zzbtn;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzehn;->zzd:Lcom/google/android/gms/internal/ads/zzcqv;

    move/from16 v10, p2

    invoke-interface {v6, v1, v10}, Lcom/google/android/gms/internal/ads/zzcqv;->zzy(Lcom/google/android/gms/internal/ads/zzcai;I)Lcom/google/android/gms/internal/ads/zzfcr;

    move-result-object v13

    sget-object v6, Lcom/google/android/gms/internal/ads/zzehk;->zzd:Lcom/google/android/gms/internal/ads/zzbtg;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzbtk;->zzb:Lcom/google/android/gms/internal/ads/zzbtf;

    const-string v8, "google.afma.response.normalize"

    invoke-virtual {v5, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzbtn;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtg;Lcom/google/android/gms/internal/ads/zzbtf;)Lcom/google/android/gms/internal/ads/zzbtd;

    move-result-object v14

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbkc;->zza:Lcom/google/android/gms/internal/ads/zzbjf;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbjf;->zze()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzcai;->zzj:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "Request contained a PoolKey but split request is disabled."

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_0
    :goto_0
    move-object v15, v7

    goto :goto_1

    :cond_1
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzcai;->zzh:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzehn;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzehi;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v6, "Request contained a PoolKey but no matching parameters were found."

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    if-nez v15, :cond_2

    const/16 v6, 0x9

    invoke-static {v12, v6}, Lcom/google/android/gms/internal/ads/zzfoz;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfoz;

    move-result-object v6

    :goto_2
    move-object v11, v6

    goto :goto_3

    :cond_2
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzehi;->zzd:Lcom/google/android/gms/internal/ads/zzfoz;

    goto :goto_2

    :goto_3
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfcr;->zzf()Lcom/google/android/gms/internal/ads/zzfpj;

    move-result-object v9

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzcai;->zza:Landroid/os/Bundle;

    const-string v7, "ad_types"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzfpj;->zzb(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfpj;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzehu;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzcai;->zzg:Ljava/lang/String;

    invoke-direct {v8, v6, v9, v11}, Lcom/google/android/gms/internal/ads/zzehu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfpj;Lcom/google/android/gms/internal/ads/zzfoz;)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzcai;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v7, v6, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzehn;->zzg:Lcom/google/android/gms/internal/ads/zzcaq;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzehr;

    const/16 v16, 0x0

    move-object/from16 v17, v6

    move-object v6, v2

    move-object/from16 v18, v7

    move-object v7, v12

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    move-object v3, v9

    move-object/from16 v9, v17

    move/from16 v10, p2

    move-object v4, v11

    move-object/from16 v11, v16

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzehr;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcaq;ILjava/lang/String;)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfcr;->zze()Lcom/google/android/gms/internal/ads/zzfop;

    move-result-object v6

    const/16 v7, 0xb

    invoke-static {v12, v7}, Lcom/google/android/gms/internal/ads/zzfoz;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfoz;

    move-result-object v7

    const/16 v8, 0xa

    if-nez v15, :cond_3

    invoke-static {v1, v6, v13}, Lcom/google/android/gms/internal/ads/zzehn;->zzm(Lcom/google/android/gms/internal/ads/zzcai;Lcom/google/android/gms/internal/ads/zzfop;Lcom/google/android/gms/internal/ads/zzfcr;)LN2/o;

    move-result-object v9

    invoke-static {v9, v6, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzehn;->zzn(LN2/o;Lcom/google/android/gms/internal/ads/zzfop;Lcom/google/android/gms/internal/ads/zzbtn;Lcom/google/android/gms/internal/ads/zzfpj;Lcom/google/android/gms/internal/ads/zzfoz;)LN2/o;

    move-result-object v4

    invoke-static {v12, v8}, Lcom/google/android/gms/internal/ads/zzfoz;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfoz;

    move-result-object v5

    sget-object v8, Lcom/google/android/gms/internal/ads/zzfoj;->zzi:Lcom/google/android/gms/internal/ads/zzfoj;

    const/4 v10, 0x2

    new-array v11, v10, [LN2/o;

    const/4 v10, 0x0

    aput-object v4, v11, v10

    const/4 v10, 0x1

    aput-object v9, v11, v10

    invoke-virtual {v6, v8, v11}, Lcom/google/android/gms/internal/ads/zzfoh;->zzb(Ljava/lang/Object;[LN2/o;)Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object v8

    new-instance v10, Lcom/google/android/gms/internal/ads/zzehg;

    invoke-direct {v10, v4, v1, v9}, Lcom/google/android/gms/internal/ads/zzehg;-><init>(LN2/o;Lcom/google/android/gms/internal/ads/zzcai;LN2/o;)V

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzfny;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v8

    move-object/from16 v10, v19

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzfog;->zzb(Lcom/google/android/gms/internal/ads/zzfnp;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v8

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfpi;->zzc(Lcom/google/android/gms/internal/ads/zzfoz;)Lcom/google/android/gms/internal/ads/zzfnp;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzfog;->zzb(Lcom/google/android/gms/internal/ads/zzfnp;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzfog;->zzb(Lcom/google/android/gms/internal/ads/zzfnp;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfog;->zzi()Lcom/google/android/gms/internal/ads/zzfnw;

    move-result-object v2

    invoke-static {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzfpi;->zzd(LN2/o;Lcom/google/android/gms/internal/ads/zzfpj;Lcom/google/android/gms/internal/ads/zzfoz;)V

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/ads/zzfpi;->zzb(LN2/o;Lcom/google/android/gms/internal/ads/zzfoz;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzfoj;->zzk:Lcom/google/android/gms/internal/ads/zzfoj;

    const/4 v8, 0x3

    new-array v8, v8, [LN2/o;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v10, 0x1

    aput-object v4, v8, v10

    const/4 v10, 0x2

    aput-object v2, v8, v10

    invoke-virtual {v6, v5, v8}, Lcom/google/android/gms/internal/ads/zzfoh;->zzb(Ljava/lang/Object;[LN2/o;)Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzegz;

    invoke-direct {v6, v1, v2, v9, v4}, Lcom/google/android/gms/internal/ads/zzegz;-><init>(Lcom/google/android/gms/internal/ads/zzcai;LN2/o;LN2/o;LN2/o;)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfny;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzfog;->zzc(Lcom/google/android/gms/internal/ads/zzhad;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfog;->zzi()Lcom/google/android/gms/internal/ads/zzfnw;

    move-result-object v1

    goto :goto_4

    :cond_3
    move-object/from16 v10, v19

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzehi;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzehi;->zzb:Lorg/json/JSONObject;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzeht;

    invoke-direct {v5, v4, v1}, Lcom/google/android/gms/internal/ads/zzeht;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcak;)V

    invoke-static {v12, v8}, Lcom/google/android/gms/internal/ads/zzfoz;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfoz;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfoj;->zzi:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzfoh;->zza(Ljava/lang/Object;LN2/o;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzfog;->zzb(Lcom/google/android/gms/internal/ads/zzfnp;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfpi;->zzc(Lcom/google/android/gms/internal/ads/zzfoz;)Lcom/google/android/gms/internal/ads/zzfnp;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfog;->zzb(Lcom/google/android/gms/internal/ads/zzfnp;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzfog;->zzb(Lcom/google/android/gms/internal/ads/zzfnp;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfog;->zzi()Lcom/google/android/gms/internal/ads/zzfnw;

    move-result-object v2

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzfpi;->zzd(LN2/o;Lcom/google/android/gms/internal/ads/zzfpj;Lcom/google/android/gms/internal/ads/zzfoz;)V

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object v1

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/ads/zzfpi;->zzb(LN2/o;Lcom/google/android/gms/internal/ads/zzfoz;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfoj;->zzk:Lcom/google/android/gms/internal/ads/zzfoj;

    const/4 v5, 0x2

    new-array v5, v5, [LN2/o;

    const/4 v8, 0x0

    aput-object v2, v5, v8

    const/4 v8, 0x1

    aput-object v1, v5, v8

    invoke-virtual {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzfoh;->zzb(Ljava/lang/Object;[LN2/o;)Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/ads/zzeha;

    invoke-direct {v5, v2, v1}, Lcom/google/android/gms/internal/ads/zzeha;-><init>(LN2/o;LN2/o;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfny;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzfog;->zzc(Lcom/google/android/gms/internal/ads/zzhad;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfog;->zzi()Lcom/google/android/gms/internal/ads/zzfnw;

    move-result-object v1

    :goto_4
    invoke-static {v1, v3, v7}, Lcom/google/android/gms/internal/ads/zzfpi;->zzd(LN2/o;Lcom/google/android/gms/internal/ads/zzfpj;Lcom/google/android/gms/internal/ads/zzfoz;)V

    return-object v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzcai;I)LN2/o;
    .locals 9

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbkc;->zza:Lcom/google/android/gms/internal/ads/zzbjf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbjf;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Split request is disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzc(Ljava/lang/Throwable;)LN2/o;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcai;->zzi:Lcom/google/android/gms/internal/ads/zzflz;

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Pool configuration missing from request."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzc(Ljava/lang/Throwable;)LN2/o;

    move-result-object p1

    return-object p1

    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzflz;->zzc:I

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzflz;->zzd:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehn;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzf:Lcom/google/android/gms/internal/ads/zzfpm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbte;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzbte;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfpm;)Lcom/google/android/gms/internal/ads/zzbtn;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzd:Lcom/google/android/gms/internal/ads/zzcqv;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcqv;->zzy(Lcom/google/android/gms/internal/ads/zzcai;I)Lcom/google/android/gms/internal/ads/zzfcr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfcr;->zze()Lcom/google/android/gms/internal/ads/zzfop;

    move-result-object v2

    invoke-static {p1, v2, p2}, Lcom/google/android/gms/internal/ads/zzehn;->zzm(Lcom/google/android/gms/internal/ads/zzcai;Lcom/google/android/gms/internal/ads/zzfop;Lcom/google/android/gms/internal/ads/zzfcr;)LN2/o;

    move-result-object v6

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfcr;->zzf()Lcom/google/android/gms/internal/ads/zzfpj;

    move-result-object p2

    const/16 v3, 0x9

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzfoz;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfoz;

    move-result-object v8

    invoke-static {v6, v2, v1, p2, v8}, Lcom/google/android/gms/internal/ads/zzehn;->zzn(LN2/o;Lcom/google/android/gms/internal/ads/zzfop;Lcom/google/android/gms/internal/ads/zzbtn;Lcom/google/android/gms/internal/ads/zzfpj;Lcom/google/android/gms/internal/ads/zzfoz;)LN2/o;

    move-result-object v5

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfoj;->zzz:Lcom/google/android/gms/internal/ads/zzfoj;

    const/4 v0, 0x2

    new-array v0, v0, [LN2/o;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v5, v0, v1

    invoke-virtual {v2, p2, v0}, Lcom/google/android/gms/internal/ads/zzfoh;->zzb(Ljava/lang/Object;[LN2/o;)Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzehd;

    move-object v3, v0

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzehd;-><init>(Lcom/google/android/gms/internal/ads/zzehn;LN2/o;LN2/o;Lcom/google/android/gms/internal/ads/zzcai;Lcom/google/android/gms/internal/ads/zzfoz;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfny;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfog;->zzi()Lcom/google/android/gms/internal/ads/zzfnw;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Caching is disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzc(Ljava/lang/Throwable;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Ljava/lang/String;)LN2/o;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbkc;->zza:Lcom/google/android/gms/internal/ads/zzbjf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbjf;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Split request is disabled."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzc(Ljava/lang/Throwable;)LN2/o;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzegx;-><init>(Lcom/google/android/gms/internal/ads/zzehn;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzehn;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzehi;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "URL to be removed not found for cache key: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhav;->zzc(Ljava/lang/Throwable;)LN2/o;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzcai;Lcom/google/android/gms/internal/ads/zzbzz;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzcN:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcai;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxz;->zzg:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehn;->zzb(Lcom/google/android/gms/internal/ads/zzcai;I)LN2/o;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzehn;->zzo(LN2/o;Lcom/google/android/gms/internal/ads/zzbzz;Lcom/google/android/gms/internal/ads/zzcai;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjv;->zzi:Lcom/google/android/gms/internal/ads/zzbjf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbjf;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzc:Lcom/google/android/gms/internal/ads/zzehv;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzehm;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzehm;-><init>(Lcom/google/android/gms/internal/ads/zzehv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzb:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-interface {v0, p2, p1}, LN2/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzcai;Lcom/google/android/gms/internal/ads/zzbzz;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzcN:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcai;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxz;->zzg:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehn;->zzk(Lcom/google/android/gms/internal/ads/zzcai;I)LN2/o;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzehn;->zzo(LN2/o;Lcom/google/android/gms/internal/ads/zzbzz;Lcom/google/android/gms/internal/ads/zzcai;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzcai;Lcom/google/android/gms/internal/ads/zzbzz;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzehn;->zzc(Lcom/google/android/gms/internal/ads/zzcai;I)LN2/o;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzehn;->zzo(LN2/o;Lcom/google/android/gms/internal/ads/zzbzz;Lcom/google/android/gms/internal/ads/zzcai;)V

    return-void
.end method

.method public final zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzz;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzehn;->zzd(Ljava/lang/String;)LN2/o;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzehn;->zzo(LN2/o;Lcom/google/android/gms/internal/ads/zzbzz;Lcom/google/android/gms/internal/ads/zzcai;)V

    return-void
.end method

.method public final zzi(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhv;->zzpy:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v8, "Unexpected preconnect response: "

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhv;->zzpz:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x2c

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgrx;->zzc(C)Lcom/google/android/gms/internal/ads/zzgrx;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgsy;->zza(Lcom/google/android/gms/internal/ads/zzgrx;)Lcom/google/android/gms/internal/ads/zzgsy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzgsy;->zzd(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v2

    const-string v3, "AdRequestServiceImpl: Preconnecting"

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzehn;->zza:Landroid/content/Context;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzehn;->zzg:Lcom/google/android/gms/internal/ads/zzcaq;

    new-instance v15, Lcom/google/android/gms/internal/ads/zzehr;

    const-string v7, "HEAD"

    move-object v2, v15

    move-object v3, v10

    move-object/from16 v4, p1

    move v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzehr;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcaq;ILjava/lang/String;)V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v2, v10, v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zze(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "User-Agent"

    invoke-virtual {v13, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzehp;

    const/4 v4, 0x0

    new-array v14, v4, [B

    const-string v4, ""

    const/16 v16, 0x0

    const/16 v12, 0x7530

    move-object v10, v2

    move-object v5, v15

    move-object v15, v4

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzehp;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    :try_start_0
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzehr;->zzb(Lcom/google/android/gms/internal/ads/zzehp;)Lcom/google/android/gms/internal/ads/zzehq;

    move-result-object v2

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzehq;->zza:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzehq;->zza:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzbzr;Lcom/google/android/gms/internal/ads/zzcaa;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbkk;->zza:Lcom/google/android/gms/internal/ads/zzbjf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbjf;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzcaa;->zze(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Service can\'t call client"

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzd:Lcom/google/android/gms/internal/ads/zzcqv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcqv;->zzF()Lcom/google/android/gms/internal/ads/zzcdy;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbzr;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzegw;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzegw;-><init>(Lcom/google/android/gms/internal/ads/zzehn;Lcom/google/android/gms/internal/ads/zzcaa;Lcom/google/android/gms/internal/ads/zzbzr;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcew;->zzh:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzr(LN2/o;Lcom/google/android/gms/internal/ads/zzhas;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzcai;I)LN2/o;
    .locals 7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbte;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehn;->zza:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzf:Lcom/google/android/gms/internal/ads/zzfpm;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbte;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfpm;)Lcom/google/android/gms/internal/ads/zzbtn;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbki;->zza:Lcom/google/android/gms/internal/ads/zzbjf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbjf;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Signal collection disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzc(Ljava/lang/Throwable;)LN2/o;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzd:Lcom/google/android/gms/internal/ads/zzcqv;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcqv;->zzy(Lcom/google/android/gms/internal/ads/zzcai;I)Lcom/google/android/gms/internal/ads/zzfcr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfcr;->zzd()Lcom/google/android/gms/internal/ads/zzfbs;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbtk;->zza:Lcom/google/android/gms/internal/ads/zzbth;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbtk;->zzb:Lcom/google/android/gms/internal/ads/zzbtf;

    const-string v5, "google.afma.request.getSignals"

    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzbtn;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtg;Lcom/google/android/gms/internal/ads/zzbtf;)Lcom/google/android/gms/internal/ads/zzbtd;

    move-result-object v0

    const/16 v3, 0x16

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzfoz;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfoz;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfcr;->zze()Lcom/google/android/gms/internal/ads/zzfop;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfoj;->zzl:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzcai;->zza:Landroid/os/Bundle;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzfoh;->zza(Ljava/lang/Object;LN2/o;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfpi;->zzc(Lcom/google/android/gms/internal/ads/zzfoz;)Lcom/google/android/gms/internal/ads/zzfnp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfog;->zzb(Lcom/google/android/gms/internal/ads/zzfnp;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzehe;

    invoke-direct {v4, v2, p1}, Lcom/google/android/gms/internal/ads/zzehe;-><init>(Lcom/google/android/gms/internal/ads/zzfbs;Lcom/google/android/gms/internal/ads/zzcai;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfog;->zzc(Lcom/google/android/gms/internal/ads/zzhad;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfoj;->zzm:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzfog;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfog;->zzc(Lcom/google/android/gms/internal/ads/zzhad;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfog;->zzi()Lcom/google/android/gms/internal/ads/zzfnw;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfcr;->zzf()Lcom/google/android/gms/internal/ads/zzfpj;

    move-result-object p2

    const-string v0, "ad_types"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfpj;->zzb(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfpj;

    const-string v0, "extras"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfpj;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfpj;

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfpi;->zze(LN2/o;Lcom/google/android/gms/internal/ads/zzfpj;Lcom/google/android/gms/internal/ads/zzfoz;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjv;->zzj:Lcom/google/android/gms/internal/ads/zzbjf;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbjf;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzc:Lcom/google/android/gms/internal/ads/zzehv;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzehl;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzehl;-><init>(Lcom/google/android/gms/internal/ads/zzehv;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzehn;->zzb:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-interface {p1, v0, p2}, LN2/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-object p1
.end method

.method public final synthetic zzl(LN2/o;LN2/o;Lcom/google/android/gms/internal/ads/zzcai;Lcom/google/android/gms/internal/ads/zzfoz;)Ljava/io/InputStream;
    .locals 7

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcak;->zzi()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lorg/json/JSONObject;

    iget-object v4, p3, Lcom/google/android/gms/internal/ads/zzcai;->zzh:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzehi;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcak;

    move-object v1, p2

    move-object v5, v0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzehi;-><init>(Lcom/google/android/gms/internal/ads/zzcak;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfoz;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzehn;->zzq(Lcom/google/android/gms/internal/ads/zzehi;)V

    new-instance p1, Ljava/io/ByteArrayInputStream;

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method
