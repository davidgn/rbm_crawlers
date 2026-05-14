.class public final Lcom/google/android/gms/internal/ads/zzapf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzapd;


# static fields
.field private static final zzc:[D


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Lcom/google/android/gms/internal/ads/zzags;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaqv;

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzapu;

.field private final zzh:[Z

.field private final zzi:Lcom/google/android/gms/internal/ads/zzape;

.field private zzj:J

.field private zzk:Z

.field private zzl:Z

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:J

.field private zzq:Z

.field private zzr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzapf;->zzc:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqv;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzd:Lcom/google/android/gms/internal/ads/zzaqv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapf;->zze:Ljava/lang/String;

    const/4 p2, 0x4

    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzh:[Z

    new-instance p2, Lcom/google/android/gms/internal/ads/zzape;

    const/16 v0, 0x80

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzape;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzi:Lcom/google/android/gms/internal/ads/zzape;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzapu;

    const/16 p2, 0xb2

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzapu;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzg:Lcom/google/android/gms/internal/ads/zzapu;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzes;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzf:Lcom/google/android/gms/internal/ads/zzes;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzg:Lcom/google/android/gms/internal/ads/zzapu;

    goto :goto_0

    :goto_1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzn:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzp:J

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzh:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgo;->zzj([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzi:Lcom/google/android/gms/internal/ads/zzape;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzape;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzg:Lcom/google/android/gms/internal/ads/zzapu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapu;->zza()V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzj:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzk:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzn:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzp:J

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzafi;Lcom/google/android/gms/internal/ads/zzaqr;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqr;->zza()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqr;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapf;->zza:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqr;->zzb()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzafi;->zzu(II)Lcom/google/android/gms/internal/ads/zzags;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzb:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzd:Lcom/google/android/gms/internal/ads/zzaqv;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqv;->zza(Lcom/google/android/gms/internal/ads/zzafi;Lcom/google/android/gms/internal/ads/zzaqr;)V

    :cond_0
    return-void
.end method

.method public final zzc(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzn:J

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzes;)V
    .locals 28

    move-object/from16 v0, p0

    const/4 v2, 0x4

    const/4 v4, 0x3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzb:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v7

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzj:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzj:J

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzb:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v9

    move-object/from16 v10, p1

    invoke-interface {v8, v10, v9}, Lcom/google/android/gms/internal/ads/zzags;->zzc(Lcom/google/android/gms/internal/ads/zzes;I)V

    :goto_0
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzh:[Z

    invoke-static {v7, v5, v6, v8}, Lcom/google/android/gms/internal/ads/zzgo;->zzi([BII[Z)I

    move-result v8

    if-ne v8, v6, :cond_2

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzl:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzi:Lcom/google/android/gms/internal/ads/zzape;

    invoke-virtual {v1, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzape;->zzc([BII)V

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzg:Lcom/google/android/gms/internal/ads/zzapu;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzapu;->zzd([BII)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v9

    add-int/lit8 v11, v8, 0x3

    aget-byte v9, v9, v11

    and-int/lit16 v9, v9, 0xff

    sub-int v12, v8, v5

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzl:Z

    if-nez v13, :cond_a

    if-lez v12, :cond_3

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzi:Lcom/google/android/gms/internal/ads/zzape;

    invoke-virtual {v13, v7, v5, v8}, Lcom/google/android/gms/internal/ads/zzape;->zzc([BII)V

    :cond_3
    if-gez v12, :cond_4

    neg-int v13, v12

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    :goto_1
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzi:Lcom/google/android/gms/internal/ads/zzape;

    invoke-virtual {v15, v9, v13}, Lcom/google/android/gms/internal/ads/zzape;->zzb(II)Z

    move-result v13

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzapf;->zza:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzapf;->zze:Ljava/lang/String;

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzape;->zzc:[B

    iget v4, v15, Lcom/google/android/gms/internal/ads/zzape;->zza:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    aget-byte v4, v3, v2

    and-int/lit16 v4, v4, 0xff

    const/16 v17, 0x5

    aget-byte v1, v3, v17

    and-int/lit16 v2, v1, 0xff

    const/16 v18, 0x6

    aget-byte v10, v3, v18

    and-int/lit16 v10, v10, 0xff

    const/16 v18, 0x7

    move/from16 v19, v11

    aget-byte v11, v3, v18

    and-int/lit16 v11, v11, 0xf0

    and-int/lit8 v1, v1, 0xf

    move/from16 v20, v6

    const/4 v6, 0x4

    shl-int/2addr v4, v6

    shr-int/2addr v2, v6

    or-int/2addr v2, v4

    shr-int/lit8 v4, v11, 0x4

    const/16 v11, 0x8

    shl-int/2addr v1, v11

    or-int/2addr v1, v10

    const/4 v10, 0x2

    if-eq v4, v10, :cond_7

    const/4 v10, 0x3

    if-eq v4, v10, :cond_6

    if-eq v4, v6, :cond_5

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2
    const/4 v10, 0x3

    goto :goto_4

    :cond_5
    mul-int/lit8 v4, v1, 0x79

    mul-int/lit8 v6, v2, 0x64

    :goto_3
    int-to-float v4, v4

    int-to-float v6, v6

    div-float/2addr v4, v6

    goto :goto_2

    :cond_6
    mul-int/lit8 v4, v1, 0x10

    mul-int/lit8 v6, v2, 0x9

    goto :goto_3

    :cond_7
    move v4, v6

    mul-int/lit8 v6, v1, 0x4

    const/4 v10, 0x3

    mul-int/lit8 v4, v2, 0x3

    int-to-float v6, v6

    int-to-float v4, v4

    div-float v4, v6, v4

    :goto_4
    new-instance v6, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string v13, "video/mpeg2"

    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/ads/zzt;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzu(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzv(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzA(F)Lcom/google/android/gms/internal/ads/zzt;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzq(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    aget-byte v2, v3, v18

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v13, 0x0

    if-ltz v2, :cond_9

    if-ge v2, v11, :cond_9

    sget-object v4, Lcom/google/android/gms/internal/ads/zzapf;->zzc:[D

    aget-wide v13, v4, v2

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzape;->zzb:I

    add-int/lit8 v2, v2, 0x9

    aget-byte v2, v3, v2

    and-int/lit8 v3, v2, 0x60

    shr-int/lit8 v3, v3, 0x5

    and-int/lit8 v2, v2, 0x1f

    if-eq v3, v2, :cond_8

    int-to-double v3, v3

    const/4 v6, 0x1

    add-int/2addr v2, v6

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v3, v3, v16

    int-to-double v10, v2

    div-double/2addr v3, v10

    mul-double/2addr v13, v3

    :cond_8
    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v13

    double-to-long v13, v2

    :cond_9
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzb:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzv;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzm:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzl:Z

    goto :goto_5

    :cond_a
    move/from16 v20, v6

    move/from16 v19, v11

    :goto_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzg:Lcom/google/android/gms/internal/ads/zzapu;

    if-eqz v1, :cond_e

    if-lez v12, :cond_b

    invoke-virtual {v1, v7, v5, v8}, Lcom/google/android/gms/internal/ads/zzapu;->zzd([BII)V

    const/4 v2, 0x0

    goto :goto_6

    :cond_b
    neg-int v2, v12

    :goto_6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzapu;->zze(I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzapu;->zza:[B

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzapu;->zzb:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgo;->zza([BI)I

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzf:Lcom/google/android/gms/internal/ads/zzes;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzapu;->zza:[B

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzb([BI)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzd:Lcom/google/android/gms/internal/ads/zzaqv;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzp:J

    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzaqv;->zzb(JLcom/google/android/gms/internal/ads/zzes;)V

    :cond_c
    const/16 v2, 0xb2

    if-ne v9, v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v3

    const/4 v4, 0x2

    add-int/lit8 v5, v8, 0x2

    aget-byte v3, v3, v5

    const/4 v5, 0x1

    if-ne v3, v5, :cond_d

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzapu;->zzc(I)V

    :cond_d
    move v9, v2

    goto :goto_7

    :cond_e
    const/4 v4, 0x2

    :goto_7
    if-eqz v9, :cond_11

    const/16 v1, 0xb3

    if-ne v9, v1, :cond_f

    goto :goto_8

    :cond_f
    const/16 v1, 0xb8

    if-ne v9, v1, :cond_10

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzq:Z

    move v2, v1

    goto/16 :goto_d

    :cond_10
    const/4 v2, 0x1

    goto/16 :goto_d

    :cond_11
    :goto_8
    sub-int v6, v20, v8

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzr:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_12

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzl:Z

    if-eqz v1, :cond_12

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzp:J

    cmp-long v1, v10, v2

    if-eqz v1, :cond_12

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzq:Z

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzj:J

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzo:J

    sub-long/2addr v12, v14

    long-to-int v5, v12

    sub-int v25, v5, v6

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzb:Lcom/google/android/gms/internal/ads/zzags;

    const/16 v27, 0x0

    move-object/from16 v21, v5

    move-wide/from16 v22, v10

    move/from16 v24, v1

    move/from16 v26, v6

    invoke-interface/range {v21 .. v27}, Lcom/google/android/gms/internal/ads/zzags;->zze(JIIILcom/google/android/gms/internal/ads/zzagr;)V

    :cond_12
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzk:Z

    if-eqz v1, :cond_14

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzr:Z

    if-eqz v1, :cond_13

    goto :goto_9

    :cond_13
    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_b

    :cond_14
    :goto_9
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzj:J

    int-to-long v5, v6

    sub-long/2addr v10, v5

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzo:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzn:J

    cmp-long v1, v5, v2

    if-eqz v1, :cond_15

    goto :goto_a

    :cond_15
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzp:J

    cmp-long v1, v5, v2

    if-eqz v1, :cond_16

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzm:J

    add-long/2addr v5, v10

    goto :goto_a

    :cond_16
    move-wide v5, v2

    :goto_a
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzp:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzq:Z

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzn:J

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzk:Z

    :goto_b
    if-nez v9, :cond_17

    move v14, v2

    goto :goto_c

    :cond_17
    move v14, v1

    :goto_c
    iput-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzr:Z

    :goto_d
    move-object/from16 v10, p1

    move/from16 v5, v19

    move/from16 v6, v20

    const/4 v2, 0x4

    const/4 v4, 0x3

    goto/16 :goto_0
.end method

.method public final zze(Z)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzb:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzq:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzj:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzo:J

    sub-long/2addr v1, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzapf;->zzp:J

    long-to-int p1, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v1, v4

    move v4, p1

    move v5, v6

    move-object v6, v7

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzags;->zze(JIIILcom/google/android/gms/internal/ads/zzagr;)V

    :cond_0
    return-void
.end method
