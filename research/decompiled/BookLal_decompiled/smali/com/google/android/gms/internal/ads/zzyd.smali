.class public final Lcom/google/android/gms/internal/ads/zzyd;
.super Lcom/google/android/gms/internal/ads/zzvs;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzxl;

.field private final zzc:Lcom/google/android/gms/internal/ads/zztw;

.field private final zzd:I

.field private zze:Z

.field private zzf:J

.field private zzg:Z

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/ads/zzig;

.field private zzj:Lcom/google/android/gms/internal/ads/zzak;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzabf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzak;Lcom/google/android/gms/internal/ads/zzhh;Lcom/google/android/gms/internal/ads/zzxl;Lcom/google/android/gms/internal/ads/zztw;Lcom/google/android/gms/internal/ads/zzabf;IZILcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzgtb;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzj:Lcom/google/android/gms/internal/ads/zzak;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyd;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzb:Lcom/google/android/gms/internal/ads/zzxl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzc:Lcom/google/android/gms/internal/ads/zztw;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzk:Lcom/google/android/gms/internal/ads/zzabf;

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzd:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zze:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzf:J

    return-void
.end method

.method private final zzu()V
    .locals 25

    move-object/from16 v0, p0

    new-instance v10, Lcom/google/android/gms/internal/ads/zzyp;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzyd;->zzf:J

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzyd;->zzg:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzyd;->zzh:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzyd;->zzJ()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object v12

    if-eqz v1, :cond_0

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzak;->zzc:Lcom/google/android/gms/internal/ads/zzaf;

    :goto_0
    move-object/from16 v21, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const-wide/16 v14, 0x0

    const/16 v17, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v2, v6

    move-wide v4, v6

    const-wide/16 v18, 0x0

    move-object/from16 v20, v12

    move-wide/from16 v12, v18

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v1, v10

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v16, v11

    move-wide/from16 v10, v22

    invoke-direct/range {v1 .. v21}, Lcom/google/android/gms/internal/ads/zzyp;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzak;Lcom/google/android/gms/internal/ads/zzaf;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzyd;->zze:Z

    if-eqz v1, :cond_1

    new-instance v10, Lcom/google/android/gms/internal/ads/zzya;

    move-object/from16 v1, v24

    invoke-direct {v10, v0, v1}, Lcom/google/android/gms/internal/ads/zzya;-><init>(Lcom/google/android/gms/internal/ads/zzyd;Lcom/google/android/gms/internal/ads/zzbf;)V

    goto :goto_2

    :cond_1
    move-object/from16 v1, v24

    move-object v10, v1

    :goto_2
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzvs;->zze(Lcom/google/android/gms/internal/ads/zzbf;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized zzA(Lcom/google/android/gms/internal/ads/zzak;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzj:Lcom/google/android/gms/internal/ads/zzak;
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

.method public final zzD(Lcom/google/android/gms/internal/ads/zzwr;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzxz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzxz;->zza()V

    return-void
.end method

.method public final zzG(Lcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzaaw;J)Lcom/google/android/gms/internal/ads/zzwr;
    .locals 19

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzyd;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhh;->zza()Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object v2

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzyd;->zzi:Lcom/google/android/gms/internal/ads/zzig;

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzhi;->zze(Lcom/google/android/gms/internal/ads/zzig;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzyd;->zzJ()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzak;->zzb:Lcom/google/android/gms/internal/ads/zzag;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzag;->zza:Landroid/net/Uri;

    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzyd;->zzb:Lcom/google/android/gms/internal/ads/zzxl;

    new-instance v18, Lcom/google/android/gms/internal/ads/zzxz;

    move-object/from16 v0, v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvs;->zzk()Lcom/google/android/gms/internal/ads/zzpy;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzxl;->zza(Lcom/google/android/gms/internal/ads/zzpy;)Lcom/google/android/gms/internal/ads/zzxm;

    move-result-object v3

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzyd;->zzc:Lcom/google/android/gms/internal/ads/zztw;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzvs;->zzh(Lcom/google/android/gms/internal/ads/zzwt;)Lcom/google/android/gms/internal/ads/zztr;

    move-result-object v5

    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzyd;->zzk:Lcom/google/android/gms/internal/ads/zzabf;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzvs;->zzf(Lcom/google/android/gms/internal/ads/zzwt;)Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object v7

    iget v11, v9, Lcom/google/android/gms/internal/ads/zzyd;->zzd:I

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v15

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v17}, Lcom/google/android/gms/internal/ads/zzxz;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzhi;Lcom/google/android/gms/internal/ads/zzxm;Lcom/google/android/gms/internal/ads/zztw;Lcom/google/android/gms/internal/ads/zztr;Lcom/google/android/gms/internal/ads/zzabf;Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzxr;Lcom/google/android/gms/internal/ads/zzaaw;Ljava/lang/String;IZILcom/google/android/gms/internal/ads/zzv;JLcom/google/android/gms/internal/ads/zzabu;)V

    return-object v18
.end method

.method public final declared-synchronized zzJ()Lcom/google/android/gms/internal/ads/zzak;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzj:Lcom/google/android/gms/internal/ads/zzak;
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

.method public final zza(Lcom/google/android/gms/internal/ads/zzig;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzi:Lcom/google/android/gms/internal/ads/zzig;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvs;->zzk()Lcom/google/android/gms/internal/ads/zzpy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyd;->zzu()V

    return-void
.end method

.method public final zzb(JLcom/google/android/gms/internal/ads/zzagj;Z)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzf:J

    :cond_0
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzagj;->zzb()Z

    move-result p3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->zze:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzf:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzg:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzh:Z

    if-ne v0, p4, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzf:J

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzg:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzh:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zze:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyd;->zzu()V

    return-void
.end method

.method public final zzd()V
    .locals 0

    return-void
.end method

.method public final zzt()V
    .locals 0

    return-void
.end method
