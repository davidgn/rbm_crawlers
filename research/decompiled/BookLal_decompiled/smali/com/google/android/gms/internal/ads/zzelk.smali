.class final Lcom/google/android/gms/internal/ads/zzelk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdmt;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzb:LN2/o;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcjz;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfkd;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzboy;

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/internal/ads/zzejw;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdyq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;LN2/o;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzfkd;ZLcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzdyq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelk;->zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzb:LN2/o;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzc:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzd:Lcom/google/android/gms/internal/ads/zzcjz;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzelk;->zze:Lcom/google/android/gms/internal/ads/zzfkd;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzg:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzf:Lcom/google/android/gms/internal/ads/zzboy;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzh:Lcom/google/android/gms/internal/ads/zzejw;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzi:Lcom/google/android/gms/internal/ads/zzdyq;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdcj;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzelk;->zzb:LN2/o;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhav;->zzt(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcub;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzelk;->zzd:Lcom/google/android/gms/internal/ads/zzcjz;

    const/4 v15, 0x1

    invoke-interface {v6, v15}, Lcom/google/android/gms/internal/ads/zzcjz;->zzag(Z)V

    new-instance v10, Lcom/google/android/gms/ads/internal/zzl;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzelk;->zzg:Z

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzelk;->zzf:Lcom/google/android/gms/internal/ads/zzboy;

    invoke-virtual {v3, v15}, Lcom/google/android/gms/internal/ads/zzboy;->zzc(Z)Z

    move-result v3

    move/from16 v17, v3

    goto :goto_0

    :cond_0
    move/from16 v17, v15

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzelk;->zzf:Lcom/google/android/gms/internal/ads/zzboy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzboy;->zzd()Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v15

    :cond_1
    move/from16 v19, v3

    goto :goto_1

    :cond_2
    move/from16 v19, v3

    move v3, v15

    :goto_1
    if-eqz v3, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzelk;->zzf:Lcom/google/android/gms/internal/ads/zzboy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzboy;->zze()F

    move-result v2

    :goto_2
    move/from16 v20, v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :goto_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzelk;->zzc:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzfjk;->zzO:Z

    const/16 v24, 0x0

    const/16 v18, 0x1

    const/16 v21, -0x1

    move-object/from16 v16, v10

    move/from16 v22, p1

    move/from16 v23, v3

    invoke-direct/range {v16 .. v24}, Lcom/google/android/gms/ads/internal/zzl;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzdcj;->zzb()V

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzb()Lcom/google/android/gms/ads/internal/overlay/zzn;

    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcub;->zzj()Lcom/google/android/gms/internal/ads/zzdmi;

    move-result-object v4

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzfjk;->zzQ:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    goto :goto_4

    :cond_5
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzelk;->zze:Lcom/google/android/gms/internal/ads/zzfkd;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfkd;->zzk:Lcom/google/android/gms/ads/internal/client/zzx;

    if-eqz v3, :cond_7

    iget v3, v3, Lcom/google/android/gms/ads/internal/client/zzx;->zza:I

    if-ne v3, v15, :cond_6

    const/4 v1, 0x7

    :goto_4
    move v7, v1

    goto :goto_5

    :cond_6
    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    const/4 v1, 0x6

    goto :goto_4

    :cond_7
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v3, "Error setting app open orientation; no targeting orientation available."

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzelk;->zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzfjk;->zzB:Ljava/lang/String;

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzfjk;->zzs:Lcom/google/android/gms/internal/ads/zzfjp;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfjp;->zzb:Ljava/lang/String;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzfjp;->zza:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzelk;->zze:Lcom/google/android/gms/internal/ads/zzfkd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfjk;->zzb()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzelk;->zzh:Lcom/google/android/gms/internal/ads/zzejw;

    :goto_6
    move-object/from16 v16, v2

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    :goto_7
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzfkd;->zzg:Ljava/lang/String;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcgs;->zzn()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, v14

    move-object/from16 v25, v14

    move-object/from16 v14, p3

    move-object/from16 v15, v16

    move-object/from16 v16, v1

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzad;Lcom/google/android/gms/internal/ads/zzcjz;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdcj;Lcom/google/android/gms/internal/ads/zzbxz;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzelk;->zzi:Lcom/google/android/gms/internal/ads/zzdyq;

    move-object/from16 v2, p2

    move-object/from16 v4, v25

    const/4 v3, 0x1

    invoke-static {v2, v4, v3, v1}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdyq;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfjk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelk;->zzc:Lcom/google/android/gms/internal/ads/zzfjk;

    return-object v0
.end method
