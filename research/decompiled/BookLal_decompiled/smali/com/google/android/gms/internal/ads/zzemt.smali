.class public final Lcom/google/android/gms/internal/ads/zzemt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekx;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdvn;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdml;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfkd;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzboy;

.field private final zzh:Z

.field private final zzi:Lcom/google/android/gms/internal/ads/zzejw;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdyl;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzdyq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfkd;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdml;Lcom/google/android/gms/internal/ads/zzdvn;Lcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzdyl;Lcom/google/android/gms/internal/ads/zzdyq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemt;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzd:Lcom/google/android/gms/internal/ads/zzfkd;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzc:Lcom/google/android/gms/internal/ads/zzdml;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzemt;->zze:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzb:Lcom/google/android/gms/internal/ads/zzdvn;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzg:Lcom/google/android/gms/internal/ads/zzboy;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhv;->zzkl:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzh:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzi:Lcom/google/android/gms/internal/ads/zzejw;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzj:Lcom/google/android/gms/internal/ads/zzdyl;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzk:Lcom/google/android/gms/internal/ads/zzdyq;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;)Z
    .locals 0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfjk;->zzs:Lcom/google/android/gms/internal/ads/zzfjp;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjp;->zza:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;)LN2/o;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdvr;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzemq;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzemq;-><init>(Lcom/google/android/gms/internal/ads/zzemt;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzdvr;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzemt;->zze:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzems;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzems;-><init>(Lcom/google/android/gms/internal/ads/zzdvr;)V

    invoke-interface {p2, v1, p1}, LN2/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p2
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzdvr;Ljava/lang/Object;)LN2/o;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v1, p2

    sget-object v13, Lcom/google/android/gms/internal/ads/zzbhv;->zzcQ:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzemt;->zzj:Lcom/google/android/gms/internal/ads/zzdyl;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdxz;->zzB:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->m(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdyl;)V

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzemt;->zzb:Lcom/google/android/gms/internal/ads/zzdvn;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzemt;->zzd:Lcom/google/android/gms/internal/ads/zzfkd;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfjv;->zzb:Lcom/google/android/gms/internal/ads/zzfju;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfju;->zzb:Lcom/google/android/gms/internal/ads/zzfjn;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzfkd;->zzf:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-virtual {v2, v4, v12, v3}, Lcom/google/android/gms/internal/ads/zzdvn;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjn;)Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object v14

    iget-boolean v2, v12, Lcom/google/android/gms/internal/ads/zzfjk;->zzW:Z

    invoke-interface {v14, v2}, Lcom/google/android/gms/internal/ads/zzcjz;->zzaw(Z)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzemt;->zzj:Lcom/google/android/gms/internal/ads/zzdyl;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdxz;->zzC:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->m(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdyl;)V

    :cond_1
    new-instance v15, Lcom/google/android/gms/internal/ads/zzcfb;

    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/zzcfb;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzemt;->zzc:Lcom/google/android/gms/internal/ads/zzdml;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzcxo;

    const/4 v9, 0x0

    invoke-direct {v10, v1, v12, v9}, Lcom/google/android/gms/internal/ads/zzcxo;-><init>(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzemt;->zza:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzemt;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzemt;->zzh:Z

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzemt;->zzg:Lcom/google/android/gms/internal/ads/zzboy;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzemt;->zzi:Lcom/google/android/gms/internal/ads/zzejw;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzemt;->zzk:Lcom/google/android/gms/internal/ads/zzdyq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdli;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzemr;

    move-object v0, v1

    move-object v1, v12

    move-object/from16 v16, v4

    move-object v4, v15

    move-object/from16 v17, v5

    move-object/from16 v5, p1

    move-object/from16 v18, v6

    move-object v6, v14

    move/from16 p2, v8

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    move-object/from16 p3, v13

    move-object v13, v10

    move-object/from16 v10, v17

    move-object/from16 p4, v15

    move-object v15, v11

    move-object/from16 v11, v16

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzemr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;LN2/o;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzfkd;ZLcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzdyq;)V

    invoke-direct {v0, v12, v14}, Lcom/google/android/gms/internal/ads/zzdli;-><init>(Lcom/google/android/gms/internal/ads/zzdmt;Lcom/google/android/gms/internal/ads/zzcjz;)V

    invoke-virtual {v15, v13, v0}, Lcom/google/android/gms/internal/ads/zzdml;->zzd(Lcom/google/android/gms/internal/ads/zzcxo;Lcom/google/android/gms/internal/ads/zzdli;)Lcom/google/android/gms/internal/ads/zzdlf;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzc(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzemt;->zzj:Lcom/google/android/gms/internal/ads/zzdyl;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdxz;->zzD:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->m(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdyl;)V

    goto :goto_0

    :cond_2
    move-object/from16 v1, p0

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlf;->zzd()Lcom/google/android/gms/internal/ads/zzdco;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzemo;

    invoke-direct {v3, v14}, Lcom/google/android/gms/internal/ads/zzemo;-><init>(Lcom/google/android/gms/internal/ads/zzcjz;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzcew;->zzh:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdhu;->zzq(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzfjk;->zzs:Lcom/google/android/gms/internal/ads/zzfjp;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzfjp;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbhv;->zzgn:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlf;->zzl()Lcom/google/android/gms/internal/ads/zzekq;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzekq;->zza(Z)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzclq;->zzb(Lcom/google/android/gms/internal/ads/zzfjk;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzclq;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlf;->zzk()Lcom/google/android/gms/internal/ads/zzdvm;

    move-result-object v5

    move/from16 v7, p2

    if-eq v6, v7, :cond_4

    move-object/from16 v9, v19

    goto :goto_1

    :cond_4
    move-object/from16 v9, v18

    :goto_1
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzemt;->zzj:Lcom/google/android/gms/internal/ads/zzdyl;

    invoke-virtual {v5, v14, v6, v9, v7}, Lcom/google/android/gms/internal/ads/zzdvm;->zzi(Lcom/google/android/gms/internal/ads/zzcjz;ZLcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/internal/ads/zzdyl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlf;->zzk()Lcom/google/android/gms/internal/ads/zzdvm;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfjp;->zzb:Ljava/lang/String;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdml;->zzc()Lcom/google/android/gms/internal/ads/zzfpj;

    move-result-object v5

    invoke-static {v14, v3, v4, v7, v5}, Lcom/google/android/gms/internal/ads/zzdvm;->zzj(Lcom/google/android/gms/internal/ads/zzcjz;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdyl;Lcom/google/android/gms/internal/ads/zzfpj;)LN2/o;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzemp;

    invoke-direct {v4, v1, v14, v2, v0}, Lcom/google/android/gms/internal/ads/zzemp;-><init>(Lcom/google/android/gms/internal/ads/zzemt;Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzdlf;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzemt;->zze:Ljava/util/concurrent/Executor;

    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzhav;->zzk(LN2/o;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    return-object v0
.end method
