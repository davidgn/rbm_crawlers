.class public final Lcom/google/android/gms/internal/ads/zzgcf;
.super Lcom/google/android/gms/internal/ads/zzidd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziep;


# static fields
.field private static final zzC:Lcom/google/android/gms/internal/ads/zzgcf;

.field private static volatile zzD:Lcom/google/android/gms/internal/ads/zziew;


# instance fields
.field private zzA:Z

.field private zzB:Z

.field private zza:I

.field private zzb:I

.field private zzc:I

.field private zzd:Z

.field private zze:Z

.field private zzf:Z

.field private zzg:Ljava/lang/String;

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/ads/zzgcx;

.field private zzj:Z

.field private zzk:J

.field private zzl:J

.field private zzm:Lcom/google/android/gms/internal/ads/zzgcz;

.field private zzn:J

.field private zzo:J

.field private zzp:J

.field private zzu:Ljava/lang/String;

.field private zzv:Ljava/lang/String;

.field private zzw:J

.field private zzx:J

.field private zzy:Z

.field private zzz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgcf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgcf;->zzC:Lcom/google/android/gms/internal/ads/zzgcf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgcf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzidd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzidd;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzc:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzd:Z

    const-string v1, "unknown_host"

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzg:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzh:Z

    const-wide/16 v1, 0x64

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzk:J

    const-wide/16 v3, 0x7d0

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzl:J

    const-wide/16 v3, 0xa

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzn:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzo:J

    const-wide/16 v1, 0x4e20

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzp:J

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzu:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzv:Ljava/lang/String;

    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzw:J

    const-wide/16 v1, 0xbb8

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzx:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzy:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzz:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzA:Z

    return-void
.end method

.method public static synthetic zzF()Lcom/google/android/gms/internal/ads/zzgcf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgcf;->zzC:Lcom/google/android/gms/internal/ads/zzgcf;

    return-object v0
.end method

.method public static zzw()Lcom/google/android/gms/internal/ads/zzgce;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgcf;->zzC:Lcom/google/android/gms/internal/ads/zzgcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbn()Lcom/google/android/gms/internal/ads/zzicx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgce;

    return-object v0
.end method


# virtual methods
.method public final synthetic zzA(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zza:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzk:J

    return-void
.end method

.method public final synthetic zzB(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zza:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzl:J

    return-void
.end method

.method public final synthetic zzC(Lcom/google/android/gms/internal/ads/zzgcz;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzm:Lcom/google/android/gms/internal/ads/zzgcz;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zza:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zza:I

    return-void
.end method

.method public final synthetic zzD(J)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zza:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzx:J

    return-void
.end method

.method public final synthetic zzE(Z)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zza:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zza:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzy:Z

    return-void
.end method

.method public final zzG()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzb:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgch;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final zzH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzc:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgch;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method public final synthetic zzI(I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzb:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zza:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zza:I

    return-void
.end method

.method public final zza()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzd:Z

    return v0
.end method

.method public final zzb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zze:Z

    return v0
.end method

.method public final zzc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzf:Z

    return v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzdc(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgcf;->zzD:Lcom/google/android/gms/internal/ads/zziew;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/ads/zzgcf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgcf;->zzD:Lcom/google/android/gms/internal/ads/zziew;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzicy;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgcf;->zzC:Lcom/google/android/gms/internal/ads/zzgcf;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzicy;-><init>(Lcom/google/android/gms/internal/ads/zzidd;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgcf;->zzD:Lcom/google/android/gms/internal/ads/zziew;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    throw v2

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgcf;->zzC:Lcom/google/android/gms/internal/ads/zzgcf;

    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgce;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgce;-><init>([B)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgcf;-><init>()V

    return-object v0

    :cond_6
    const-string v1, "zza"

    const-string v2, "zzb"

    sget-object v24, Lcom/google/android/gms/internal/ads/zzgcg;->zza:Lcom/google/android/gms/internal/ads/zzidj;

    move-object/from16 v3, v24

    const-string v4, "zzg"

    const-string v5, "zzh"

    const-string v6, "zzi"

    const-string v7, "zzj"

    const-string v8, "zzl"

    const-string v9, "zzm"

    const-string v10, "zzd"

    const-string v11, "zzn"

    const-string v12, "zzo"

    const-string v13, "zzp"

    const-string v14, "zzu"

    const-string v15, "zzv"

    const-string v16, "zzw"

    const-string v17, "zzx"

    const-string v18, "zzy"

    const-string v19, "zzk"

    const-string v20, "zzz"

    const-string v21, "zzA"

    const-string v22, "zzB"

    const-string v23, "zzc"

    const-string v25, "zze"

    const-string v26, "zzf"

    filled-new-array/range {v1 .. v26}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgcf;->zzC:Lcom/google/android/gms/internal/ads/zzgcf;

    const-string v2, "\u0004\u0017\u0000\u0001\u0001\u0018\u0017\u0000\u0000\u0000\u0001\u180c\u0000\u0003\u1008\u0005\u0004\u1007\u0006\u0005\u1009\u0007\u0006\u1007\u0008\u0007\u1002\n\u0008\u1009\u000b\t\u1007\u0002\n\u1002\u000c\u000b\u1002\r\u000c\u1002\u000e\r\u1008\u000f\u000e\u1008\u0010\u000f\u1002\u0011\u0010\u1002\u0012\u0011\u1007\u0013\u0012\u1002\t\u0013\u1007\u0014\u0014\u1007\u0015\u0015\u1007\u0016\u0016\u180c\u0001\u0017\u1007\u0003\u0018\u1007\u0004"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbv(Lcom/google/android/gms/internal/ads/zzieo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzh:Z

    return v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzgcx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzi:Lcom/google/android/gms/internal/ads/zzgcx;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgcx;->zzg()Lcom/google/android/gms/internal/ads/zzgcx;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzj:Z

    return v0
.end method

.method public final zzi()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzk:J

    return-wide v0
.end method

.method public final zzj()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzl:J

    return-wide v0
.end method

.method public final zzk()Lcom/google/android/gms/internal/ads/zzgcz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzm:Lcom/google/android/gms/internal/ads/zzgcz;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgcz;->zzj()Lcom/google/android/gms/internal/ads/zzgcz;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzl()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzn:J

    return-wide v0
.end method

.method public final zzm()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzo:J

    return-wide v0
.end method

.method public final zzn()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzp:J

    return-wide v0
.end method

.method public final zzo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzu:Ljava/lang/String;

    return-object v0
.end method

.method public final zzp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzv:Ljava/lang/String;

    return-object v0
.end method

.method public final zzq()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzw:J

    return-wide v0
.end method

.method public final zzr()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzx:J

    return-wide v0
.end method

.method public final zzs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzy:Z

    return v0
.end method

.method public final zzt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzz:Z

    return v0
.end method

.method public final zzu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzA:Z

    return v0
.end method

.method public final zzv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzB:Z

    return v0
.end method

.method public final synthetic zzx(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zza:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zza:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzd:Z

    return-void
.end method

.method public final synthetic zzy(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zza:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzg:Ljava/lang/String;

    return-void
.end method

.method public final synthetic zzz(Lcom/google/android/gms/internal/ads/zzgcx;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzi:Lcom/google/android/gms/internal/ads/zzgcx;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zza:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zza:I

    return-void
.end method
