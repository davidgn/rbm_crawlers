.class public final Lcom/google/android/gms/internal/ads/zzfgi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfhb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfhb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfhb;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfmo;

.field private final zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/ads/zzdbe;

.field private final zzf:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfhb;Lcom/google/android/gms/internal/ads/zzfhb;Lcom/google/android/gms/internal/ads/zzfmo;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zza:Lcom/google/android/gms/internal/ads/zzfhb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zzb:Lcom/google/android/gms/internal/ads/zzfhb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zzc:Lcom/google/android/gms/internal/ads/zzfmo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zzf:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzfmb;Lcom/google/android/gms/internal/ads/zzfhc;)LN2/o;
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfmb;->zza:Lcom/google/android/gms/internal/ads/zzdbe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zze:Lcom/google/android/gms/internal/ads/zzdbe;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfmb;->zzc:Lcom/google/android/gms/internal/ads/zzcwy;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdbe;->zzc()Lcom/google/android/gms/internal/ads/zzfgy;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzfmb;->zzc:Lcom/google/android/gms/internal/ads/zzcwy;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcwy;->zzp()Lcom/google/android/gms/internal/ads/zzfgy;

    move-result-object p2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfmb;->zza:Lcom/google/android/gms/internal/ads/zzdbe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdbe;->zzc()Lcom/google/android/gms/internal/ads/zzfgy;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzfgy;->zzv(Lcom/google/android/gms/internal/ads/zzfgy;)V

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfmb;->zzc:Lcom/google/android/gms/internal/ads/zzcwy;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdbe;->zza()Lcom/google/android/gms/internal/ads/zzcyc;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfmb;->zzb:Lcom/google/android/gms/internal/ads/zzfjv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcyc;->zzh(Lcom/google/android/gms/internal/ads/zzfjv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zza:Lcom/google/android/gms/internal/ads/zzfhb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfmb;->zza:Lcom/google/android/gms/internal/ads/zzdbe;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfgs;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzfgs;->zzb(Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzfha;Lcom/google/android/gms/internal/ads/zzdbe;)LN2/o;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final declared-synchronized zza()Lcom/google/android/gms/internal/ads/zzdbe;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zze:Lcom/google/android/gms/internal/ads/zzdbe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzfha;Lcom/google/android/gms/internal/ads/zzdbe;)LN2/o;
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    monitor-enter p0

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfhc;->zzb:Lcom/google/android/gms/internal/ads/zzfgz;

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/ads/zzfha;->zza(Lcom/google/android/gms/internal/ads/zzfgz;)Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfgj;

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzfgi;->zzd:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgj;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdbd;->zzi(Lcom/google/android/gms/internal/ads/zzfgj;)Lcom/google/android/gms/internal/ads/zzdbd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdbd;->zzh()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzdbe;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzdbe;->zzb()Lcom/google/android/gms/internal/ads/zzfkd;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzdbe;->zzb()Lcom/google/android/gms/internal/ads/zzfkd;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzdbe;->zzb()Lcom/google/android/gms/internal/ads/zzfkd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfkd;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-nez v2, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzx:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzdbe;->zzb()Lcom/google/android/gms/internal/ads/zzfkd;

    move-result-object v1

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfkd;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzfkd;->zzg:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzfkd;->zzk:Lcom/google/android/gms/ads/internal/client/zzx;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzfgi;->zzf:Ljava/util/concurrent/Executor;

    new-instance v16, Lcom/google/android/gms/internal/ads/zzfgh;

    const/4 v15, 0x0

    move-object/from16 v8, v16

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    move-object v13, v4

    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/zzfgh;-><init>(Lcom/google/android/gms/internal/ads/zzfha;Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/ads/internal/client/zzx;Lcom/google/android/gms/internal/ads/zzfmc;)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzfgi;->zzb:Lcom/google/android/gms/internal/ads/zzfhb;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfgo;

    invoke-virtual {v1, v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzfgo;->zza(Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzfha;Lcom/google/android/gms/internal/ads/zzdbe;)LN2/o;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhan;->zzw(LN2/o;)Lcom/google/android/gms/internal/ads/zzhan;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfgg;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v0, v4

    move-object/from16 v4, v16

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfgg;-><init>(Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzfgh;Lcom/google/android/gms/internal/ads/zzfha;Lcom/google/android/gms/internal/ads/zzdbe;)V

    invoke-static {v8, v9, v0}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzfgi;->zze:Lcom/google/android/gms/internal/ads/zzdbe;

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzfgi;->zza:Lcom/google/android/gms/internal/ads/zzfhb;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfgs;

    invoke-virtual {v1, v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzfgs;->zzb(Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzfha;Lcom/google/android/gms/internal/ads/zzdbe;)LN2/o;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzfha;Ljava/lang/Object;)LN2/o;
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfgi;->zzb(Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzfha;Lcom/google/android/gms/internal/ads/zzdbe;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfgi;->zza()Lcom/google/android/gms/internal/ads/zzdbe;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzfgh;Lcom/google/android/gms/internal/ads/zzfha;Lcom/google/android/gms/internal/ads/zzdbe;Lcom/google/android/gms/internal/ads/zzfgn;)LN2/o;
    .locals 8

    if-eqz p5, :cond_2

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzfgh;->zza:Lcom/google/android/gms/internal/ads/zzfha;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzfgh;->zzb:Lcom/google/android/gms/internal/ads/zzfhc;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzfgh;->zzc:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzfgh;->zzd:Ljava/lang/String;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/zzfgh;->zze:Ljava/util/concurrent/Executor;

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzfgh;->zzf:Lcom/google/android/gms/ads/internal/client/zzx;

    iget-object v7, p5, Lcom/google/android/gms/internal/ads/zzfgn;->zza:Lcom/google/android/gms/internal/ads/zzfmc;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfgh;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfgh;-><init>(Lcom/google/android/gms/internal/ads/zzfha;Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/ads/internal/client/zzx;Lcom/google/android/gms/internal/ads/zzfmc;)V

    iget-object v0, p5, Lcom/google/android/gms/internal/ads/zzfgn;->zzc:Lcom/google/android/gms/internal/ads/zzfmb;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zze:Lcom/google/android/gms/internal/ads/zzdbe;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zzc:Lcom/google/android/gms/internal/ads/zzfmo;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzfmo;->zza(Lcom/google/android/gms/internal/ads/zzfmm;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfgi;->zzg(Lcom/google/android/gms/internal/ads/zzfmb;Lcom/google/android/gms/internal/ads/zzfhc;)LN2/o;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zzc:Lcom/google/android/gms/internal/ads/zzfmo;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzfmo;->zzb(Lcom/google/android/gms/internal/ads/zzfmm;)LN2/o;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zze:Lcom/google/android/gms/internal/ads/zzdbe;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfgf;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfgf;-><init>(Lcom/google/android/gms/internal/ads/zzfgi;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zzf:Ljava/util/concurrent/Executor;

    invoke-static {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzfmo;->zza(Lcom/google/android/gms/internal/ads/zzfmm;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfhc;->zzb:Lcom/google/android/gms/internal/ads/zzfgz;

    iget-object p2, p5, Lcom/google/android/gms/internal/ads/zzfgn;->zzb:Lcom/google/android/gms/internal/ads/zzcai;

    new-instance p5, Lcom/google/android/gms/internal/ads/zzfhc;

    invoke-direct {p5, p1, p2}, Lcom/google/android/gms/internal/ads/zzfhc;-><init>(Lcom/google/android/gms/internal/ads/zzfgz;Lcom/google/android/gms/internal/ads/zzcai;)V

    move-object p1, p5

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zza:Lcom/google/android/gms/internal/ads/zzfhb;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfgs;

    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzfgs;->zzb(Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzfha;Lcom/google/android/gms/internal/ads/zzdbe;)LN2/o;

    move-result-object p1

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zze:Lcom/google/android/gms/internal/ads/zzdbe;

    :goto_0
    return-object p1
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzfmk;)LN2/o;
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfmk;->zza:Lcom/google/android/gms/internal/ads/zzfmb;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfmk;->zzb:Lcom/google/android/gms/internal/ads/zzfmm;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfgh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbha$zzb;->zzs()Lcom/google/android/gms/internal/ads/zzbha$zzb$zzc;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbha$zzb$zza;->zzs()Lcom/google/android/gms/internal/ads/zzbha$zzb$zza$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbha$zzb$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbha$zzb$zzd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbha$zzb$zza$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbha$zzb$zzd;)Lcom/google/android/gms/internal/ads/zzbha$zzb$zza$zza;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbha$zzb$zze;->zzs()Lcom/google/android/gms/internal/ads/zzbha$zzb$zze;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbha$zzb$zza$zza;->zzg(Lcom/google/android/gms/internal/ads/zzbha$zzb$zze;)Lcom/google/android/gms/internal/ads/zzbha$zzb$zza$zza;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbha$zzb$zzc;->zzh(Lcom/google/android/gms/internal/ads/zzbha$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzbha$zzb$zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbha$zzb;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfmb;->zza:Lcom/google/android/gms/internal/ads/zzdbe;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdbe;->zza()Lcom/google/android/gms/internal/ads/zzcyc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcyc;->zzd()Lcom/google/android/gms/internal/ads/zzdhl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzdhl;->zzl(Lcom/google/android/gms/internal/ads/zzbha$zzb;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgh;->zzb:Lcom/google/android/gms/internal/ads/zzfhc;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfgi;->zzg(Lcom/google/android/gms/internal/ads/zzfmb;Lcom/google/android/gms/internal/ads/zzfhc;)LN2/o;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzedi;

    const/4 v0, 0x1

    const-string v1, "Empty prefetch"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzedi;-><init>(ILjava/lang/String;)V

    throw p1
.end method
