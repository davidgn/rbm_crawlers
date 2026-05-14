.class public final Lcom/google/android/gms/internal/ads/zzjm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zzA:I


# instance fields
.field final zza:Landroid/content/Context;

.field zzb:Lcom/google/android/gms/internal/ads/zzdo;

.field zzc:Lcom/google/android/gms/internal/ads/zzgtb;

.field zzd:Lcom/google/android/gms/internal/ads/zzgtb;

.field zze:Lcom/google/android/gms/internal/ads/zzgtb;

.field zzf:Lcom/google/android/gms/internal/ads/zzgtb;

.field zzg:Lcom/google/android/gms/internal/ads/zzgtb;

.field zzh:Lcom/google/android/gms/internal/ads/zzgsa;

.field zzi:Landroid/os/Looper;

.field zzj:I

.field zzk:Lcom/google/android/gms/internal/ads/zzd;

.field zzl:I

.field zzm:Z

.field zzn:Lcom/google/android/gms/internal/ads/zznb;

.field zzo:Lcom/google/android/gms/internal/ads/zzna;

.field zzp:J

.field zzq:J

.field zzr:I

.field zzs:I

.field zzt:I

.field zzu:I

.field zzv:Z

.field zzw:Z

.field zzx:Ljava/lang/String;

.field zzy:Z

.field zzz:Lcom/google/android/gms/internal/ads/zziw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrs;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "emulator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "emu64a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "emu64x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzmy;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzjl;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzjl;-><init>(Lcom/google/android/gms/internal/ads/zzmy;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjg;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzjg;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzjh;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzjh;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzjf;->zza:Lcom/google/android/gms/internal/ads/zzjf;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzji;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzji;-><init>(Landroid/content/Context;)V

    sget-object v7, Lcom/google/android/gms/internal/ads/zzje;->zza:Lcom/google/android/gms/internal/ads/zzje;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zza:Landroid/content/Context;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzc:Lcom/google/android/gms/internal/ads/zzgtb;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzd:Lcom/google/android/gms/internal/ads/zzgtb;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzjm;->zze:Lcom/google/android/gms/internal/ads/zzgtb;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzf:Lcom/google/android/gms/internal/ads/zzgtb;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzg:Lcom/google/android/gms/internal/ads/zzgtb;

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzh:Lcom/google/android/gms/internal/ads/zzgsa;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfk;->zze()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzi:Landroid/os/Looper;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzd;->zza:Lcom/google/android/gms/internal/ads/zzd;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzk:Lcom/google/android/gms/internal/ads/zzd;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzl:I

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzm:Z

    sget-object v2, Lcom/google/android/gms/internal/ads/zznb;->zzc:Lcom/google/android/gms/internal/ads/zznb;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzn:Lcom/google/android/gms/internal/ads/zznb;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzna;->zza:Lcom/google/android/gms/internal/ads/zzna;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzo:Lcom/google/android/gms/internal/ads/zzna;

    new-instance v2, Lcom/google/android/gms/internal/ads/zziw;

    const-wide/16 v3, 0x14

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v9

    const-wide/16 v14, 0x1f4

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v11

    const-wide/16 v6, 0x3e8

    const v8, 0x33d6bf95    # 1.0E-7f

    const v4, 0x3f7851ec    # 0.97f

    const v5, 0x3f83d70a    # 1.03f

    const v13, 0x3f7fbe77    # 0.999f

    const/16 v16, 0x0

    move-object v3, v2

    move-object/from16 v14, v16

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zziw;-><init>(FFJFJJF[B)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzz:Lcom/google/android/gms/internal/ads/zziw;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdo;->zza:Lcom/google/android/gms/internal/ads/zzdo;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzb:Lcom/google/android/gms/internal/ads/zzdo;

    const-wide/16 v2, 0x1f4

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzp:J

    const-wide/16 v2, 0x7d0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzq:J

    const v2, 0x927c0

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzr:I

    const v3, 0x7fffffff

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzs:I

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzt:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzu:I

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzv:Z

    const-string v2, ""

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzx:Ljava/lang/String;

    const/16 v2, -0x3e8

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzj:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x23

    if-lt v2, v3, :cond_0

    sget v2, Lcom/google/android/gms/internal/ads/zzjc;->zza:I

    :cond_0
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzy:Z

    return-void
.end method
