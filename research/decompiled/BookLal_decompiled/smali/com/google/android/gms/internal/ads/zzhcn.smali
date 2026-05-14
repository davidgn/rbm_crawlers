.class public final Lcom/google/android/gms/internal/ads/zzhcn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhda;


# static fields
.field private static final zza:Ljava/nio/charset/Charset;


# instance fields
.field private final zzb:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhcn;->zza:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcn;->zzb:Ljava/io/InputStream;

    return-void
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhcn;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhcn;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhcn;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhcn;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zziaf;)I
    .locals 4

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zziaj;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziaf;->zzg()Lcom/google/android/gms/internal/ads/zziaj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaj;->zzc()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziaf;->zzg()Lcom/google/android/gms/internal/ads/zziaj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziaj;->zzh()Ljava/lang/Number;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhkp;->zzc(Ljava/lang/Number;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v2, 0xffffffffL

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const-wide/32 v2, -0x80000000

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "invalid key id"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "invalid key id: not a JSON number"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "invalid key id: not a JSON primitive"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzhsa;
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "keyMaterialType"

    const-string v3, "value"

    const-string v4, "typeUrl"

    const-string v5, "outputPrefixType"

    const-string v6, "keyId"

    const-string v7, "status"

    const-string v8, "keyData"

    const-string v9, "primaryKeyId"

    const-string v10, "key"

    :try_start_0
    new-instance v11, Ljava/lang/String;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzhcn;->zzb:Ljava/io/InputStream;

    sget v13, Lcom/google/android/gms/internal/ads/zzhdl;->zza:I

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v14, 0x400

    new-array v14, v14, [B

    :goto_0
    invoke-virtual {v12, v14}, Ljava/io/InputStream;->read([B)I

    move-result v15

    const/4 v0, -0x1

    move-object/from16 v16, v12

    const/4 v12, 0x0

    if-eq v15, v0, :cond_0

    invoke-virtual {v13, v14, v12, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move-object/from16 v12, v16

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/internal/ads/zzhcn;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v11, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzhkp;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zziaf;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zziaf;->zze()Lcom/google/android/gms/internal/ads/zziah;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zziah;->zzc(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zziah;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zziaf;

    move-result-object v10

    instance-of v13, v10, Lcom/google/android/gms/internal/ads/zziae;

    if-eqz v13, :cond_18

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zziaf;->zzf()Lcom/google/android/gms/internal/ads/zziae;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zziae;->zzb()I

    move-result v13

    if-eqz v13, :cond_17

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhsa;->zzh()Lcom/google/android/gms/internal/ads/zzhrx;

    move-result-object v13

    invoke-virtual {v11, v9}, Lcom/google/android/gms/internal/ads/zziah;->zzc(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v11, v9}, Lcom/google/android/gms/internal/ads/zziah;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zziaf;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzhcn;->zzc(Lcom/google/android/gms/internal/ads/zziaf;)I

    move-result v9

    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/zzhrx;->zza(I)Lcom/google/android/gms/internal/ads/zzhrx;

    :cond_1
    move v9, v12

    :goto_1
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zziae;->zzb()I

    move-result v11

    if-ge v9, v11, :cond_16

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zziae;->zzc(I)Lcom/google/android/gms/internal/ads/zziaf;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zziaf;->zze()Lcom/google/android/gms/internal/ads/zziah;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/zziah;->zzc(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zziah;->zzc(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zziah;->zzc(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zziah;->zzc(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/zziah;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zziaf;

    move-result-object v14

    instance-of v15, v14, Lcom/google/android/gms/internal/ads/zziah;

    if-eqz v15, :cond_14

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhrz;->zze()Lcom/google/android/gms/internal/ads/zzhry;

    move-result-object v15

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zziah;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zziaf;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zziaf;->zzd()Ljava/lang/String;

    move-result-object v0

    const-string v12, "unknown status: "

    move-object/from16 v17, v7

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zziai; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v8

    const v8, -0x3524e8df    # -7179152.5f

    move-object/from16 v19, v10

    const/4 v10, 0x2

    if-eq v7, v8, :cond_4

    const v8, 0x1c83a5f9

    if-eq v7, v8, :cond_3

    const v8, 0x3ecc2a7c

    if-eq v7, v8, :cond_2

    goto :goto_2

    :cond_2
    const-string v7, "DISABLED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const-string v7, "DESTROYED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v10

    goto :goto_3

    :cond_4
    const-string v7, "ENABLED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v7, -0x1

    :goto_3
    if-eqz v7, :cond_8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_7

    if-ne v7, v10, :cond_6

    const/4 v0, 0x5

    goto :goto_4

    :cond_6
    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zziai;

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zziai;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const/4 v0, 0x4

    goto :goto_4

    :cond_8
    const/4 v0, 0x3

    :goto_4
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/zzhry;->zze(I)Lcom/google/android/gms/internal/ads/zzhry;

    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zziah;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zziaf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcn;->zzc(Lcom/google/android/gms/internal/ads/zziaf;)I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/zzhry;->zzc(I)Lcom/google/android/gms/internal/ads/zzhry;

    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zziah;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zziaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaf;->zzd()Ljava/lang/String;

    move-result-object v0

    const-string v7, "unknown output prefix type: "

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zziai; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sparse-switch v8, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    const-string v8, "CRUNCHY"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x3

    goto :goto_6

    :sswitch_1
    const-string v8, "TINK"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    goto :goto_6

    :sswitch_2
    const-string v8, "RAW"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    goto :goto_6

    :sswitch_3
    const-string v8, "LEGACY"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    move v8, v10

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v8, -0x1

    :goto_6
    if-eqz v8, :cond_d

    const/4 v11, 0x1

    if-eq v8, v11, :cond_c

    if-eq v8, v10, :cond_b

    const/4 v11, 0x3

    if-ne v8, v11, :cond_a

    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsn;->zze:Lcom/google/android/gms/internal/ads/zzhsn;

    goto :goto_7

    :cond_a
    new-instance v2, Lcom/google/android/gms/internal/ads/zziai;

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zziai;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsn;->zzc:Lcom/google/android/gms/internal/ads/zzhsn;

    goto :goto_7

    :cond_c
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsn;->zzd:Lcom/google/android/gms/internal/ads/zzhsn;

    goto :goto_7

    :cond_d
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsn;->zzb:Lcom/google/android/gms/internal/ads/zzhsn;

    :goto_7
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/zzhry;->zzd(Lcom/google/android/gms/internal/ads/zzhsn;)Lcom/google/android/gms/internal/ads/zzhry;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zziaf;->zze()Lcom/google/android/gms/internal/ads/zziah;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zziah;->zzc(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zziah;->zzc(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zziah;->zzc(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zziah;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zziaf;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zziaf;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Lcom/google/android/gms/internal/ads/zzhyj;->zza(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhrr;->zzd()Lcom/google/android/gms/internal/ads/zzhrp;

    move-result-object v8

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zziah;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zziaf;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zziaf;->zzd()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzhrp;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhrp;

    sget-object v11, Lcom/google/android/gms/internal/ads/zzibz;->zza:Lcom/google/android/gms/internal/ads/zzibz;

    array-length v11, v7

    const/4 v12, 0x0

    invoke-static {v7, v12, v11}, Lcom/google/android/gms/internal/ads/zzibz;->zzs([BII)Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzhrp;->zzb(Lcom/google/android/gms/internal/ads/zzibz;)Lcom/google/android/gms/internal/ads/zzhrp;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zziah;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zziaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziaf;->zzd()Ljava/lang/String;

    move-result-object v0

    const-string v7, "unknown key material type: "

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zziai; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sparse-switch v11, :sswitch_data_1

    goto :goto_8

    :sswitch_4
    const-string v11, "ASYMMETRIC_PUBLIC"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    move v11, v10

    goto :goto_9

    :sswitch_5
    const-string v11, "ASYMMETRIC_PRIVATE"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x1

    goto :goto_9

    :sswitch_6
    const-string v11, "SYMMETRIC"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    move v11, v12

    goto :goto_9

    :sswitch_7
    const-string v11, "REMOTE"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x3

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v11, -0x1

    :goto_9
    if-eqz v11, :cond_12

    const/4 v14, 0x1

    if-eq v11, v14, :cond_11

    if-eq v11, v10, :cond_10

    const/4 v10, 0x3

    if-ne v11, v10, :cond_f

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrq;->zze:Lcom/google/android/gms/internal/ads/zzhrq;

    goto :goto_a

    :cond_f
    new-instance v2, Lcom/google/android/gms/internal/ads/zziai;

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zziai;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrq;->zzd:Lcom/google/android/gms/internal/ads/zzhrq;

    goto :goto_a

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrq;->zzc:Lcom/google/android/gms/internal/ads/zzhrq;

    goto :goto_a

    :cond_12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrq;->zzb:Lcom/google/android/gms/internal/ads/zzhrq;

    :goto_a
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzhrp;->zzc(Lcom/google/android/gms/internal/ads/zzhrq;)Lcom/google/android/gms/internal/ads/zzhrp;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhrr;

    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/zzhry;->zza(Lcom/google/android/gms/internal/ads/zzhrr;)Lcom/google/android/gms/internal/ads/zzhry;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhrz;

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzhrx;->zzb(Lcom/google/android/gms/internal/ads/zzhrz;)Lcom/google/android/gms/internal/ads/zzhrx;

    const/4 v0, 0x1

    add-int/2addr v9, v0

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v10, v19

    const/4 v0, -0x1

    goto/16 :goto_1

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ads/zziai;

    const-string v2, "invalid keyData"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zziai;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/ads/zziai;

    const-string v2, "invalid key: keyData must be an object"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zziai;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Lcom/google/android/gms/internal/ads/zziai;

    const-string v2, "invalid key"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zziai;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhsa;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zziai; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhcn;->zzb:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v0

    :cond_17
    :try_start_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zziai;

    const-string v2, "invalid keyset: key is empty"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zziai;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Lcom/google/android/gms/internal/ads/zziai;

    const-string v2, "invalid keyset: key must be an array"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zziai;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Lcom/google/android/gms/internal/ads/zziai;

    const-string v2, "invalid keyset: no key"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zziai;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zziai; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_b
    :try_start_5
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_c
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhcn;->zzb:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7a621837 -> :sswitch_3
        0x13c08 -> :sswitch_2
        0x274af2 -> :sswitch_1
        0x69012c4c -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x702213ba -> :sswitch_7
        -0x5feeace9 -> :sswitch_6
        0xedb0e1a -> :sswitch_5
        0x5b7856d2 -> :sswitch_4
    .end sparse-switch
.end method
