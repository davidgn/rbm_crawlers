.class public final Lcom/google/android/gms/internal/ads/zzhkd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:[B

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhjy;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhka;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhjy;

    const/16 v1, 0xa

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    new-array v3, v1, [J

    fill-array-data v3, :array_1

    new-array v4, v1, [J

    fill-array-data v4, :array_2

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhjy;-><init>([J[J[J)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhkd;->zzb:Lcom/google/android/gms/internal/ads/zzhjy;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhka;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhkb;

    new-array v3, v1, [J

    fill-array-data v3, :array_3

    new-array v4, v1, [J

    fill-array-data v4, :array_4

    new-array v5, v1, [J

    fill-array-data v5, :array_5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhkb;-><init>([J[J[J)V

    new-array v1, v1, [J

    fill-array-data v1, :array_6

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhka;-><init>(Lcom/google/android/gms/internal/ads/zzhkb;[J)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhkd;->zzc:Lcom/google/android/gms/internal/ads/zzhka;

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhkd;->zza:[B

    return-void

    :array_0
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 1
        -0x13t
        -0x2dt
        -0xbt
        0x5ct
        0x1at
        0x63t
        0x12t
        0x58t
        -0x2at
        -0x64t
        -0x9t
        -0x5et
        -0x22t
        -0x7t
        -0x22t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
    .end array-data
.end method

.method public static zza([B)[B
    .locals 8

    const/16 v0, 0x40

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    aget-byte v4, p0, v3

    and-int/lit8 v4, v4, 0xf

    add-int v6, v3, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v6

    add-int/2addr v6, v5

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move p0, v2

    move v3, p0

    :goto_1
    const/16 v4, 0x3f

    if-ge p0, v4, :cond_1

    aget-byte v4, v1, p0

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, p0

    add-int/lit8 v4, v3, 0x8

    shr-int/lit8 v4, v4, 0x4

    shl-int/lit8 v6, v4, 0x4

    sub-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, p0

    add-int/lit8 p0, p0, 0x1

    move v3, v4

    goto :goto_1

    :cond_1
    aget-byte p0, v1, v4

    add-int/2addr p0, v3

    int-to-byte p0, p0

    aput-byte p0, v1, v4

    new-instance p0, Lcom/google/android/gms/internal/ads/zzhka;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhkd;->zzc:Lcom/google/android/gms/internal/ads/zzhka;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzhka;-><init>(Lcom/google/android/gms/internal/ads/zzhka;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzhkc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzhkc;-><init>()V

    :goto_2
    if-ge v5, v0, :cond_2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzhjy;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzhkd;->zzb:Lcom/google/android/gms/internal/ads/zzhjy;

    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/ads/zzhjy;-><init>(Lcom/google/android/gms/internal/ads/zzhjy;)V

    div-int/lit8 v6, v5, 0x2

    aget-byte v7, v1, v5

    invoke-static {v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzhkd;->zzk(Lcom/google/android/gms/internal/ads/zzhjy;IB)V

    invoke-static {v3, p0}, Lcom/google/android/gms/internal/ads/zzhkc;->zza(Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhka;)Lcom/google/android/gms/internal/ads/zzhkc;

    invoke-static {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzg(Lcom/google/android/gms/internal/ads/zzhka;Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhjy;)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_2
    new-instance v4, Lcom/google/android/gms/internal/ads/zzhkb;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzhkb;-><init>()V

    invoke-static {v4, p0}, Lcom/google/android/gms/internal/ads/zzhkb;->zza(Lcom/google/android/gms/internal/ads/zzhkb;Lcom/google/android/gms/internal/ads/zzhka;)Lcom/google/android/gms/internal/ads/zzhkb;

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzi(Lcom/google/android/gms/internal/ads/zzhka;Lcom/google/android/gms/internal/ads/zzhkb;)V

    invoke-static {v4, p0}, Lcom/google/android/gms/internal/ads/zzhkb;->zza(Lcom/google/android/gms/internal/ads/zzhkb;Lcom/google/android/gms/internal/ads/zzhka;)Lcom/google/android/gms/internal/ads/zzhkb;

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzi(Lcom/google/android/gms/internal/ads/zzhka;Lcom/google/android/gms/internal/ads/zzhkb;)V

    invoke-static {v4, p0}, Lcom/google/android/gms/internal/ads/zzhkb;->zza(Lcom/google/android/gms/internal/ads/zzhkb;Lcom/google/android/gms/internal/ads/zzhka;)Lcom/google/android/gms/internal/ads/zzhkb;

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzi(Lcom/google/android/gms/internal/ads/zzhka;Lcom/google/android/gms/internal/ads/zzhkb;)V

    invoke-static {v4, p0}, Lcom/google/android/gms/internal/ads/zzhkb;->zza(Lcom/google/android/gms/internal/ads/zzhkb;Lcom/google/android/gms/internal/ads/zzhka;)Lcom/google/android/gms/internal/ads/zzhkb;

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzi(Lcom/google/android/gms/internal/ads/zzhka;Lcom/google/android/gms/internal/ads/zzhkb;)V

    :goto_3
    if-ge v2, v0, :cond_3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzhjy;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhkd;->zzb:Lcom/google/android/gms/internal/ads/zzhjy;

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzhjy;-><init>(Lcom/google/android/gms/internal/ads/zzhjy;)V

    div-int/lit8 v5, v2, 0x2

    aget-byte v6, v1, v2

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzhkd;->zzk(Lcom/google/android/gms/internal/ads/zzhjy;IB)V

    invoke-static {v3, p0}, Lcom/google/android/gms/internal/ads/zzhkc;->zza(Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhka;)Lcom/google/android/gms/internal/ads/zzhkc;

    invoke-static {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzg(Lcom/google/android/gms/internal/ads/zzhka;Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhjy;)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhkb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhkb;-><init>(Lcom/google/android/gms/internal/ads/zzhka;)V

    iget-object p0, v0, Lcom/google/android/gms/internal/ads/zzhkb;->zza:[J

    const/16 v1, 0xa

    new-array v2, v1, [J

    invoke-static {v2, p0}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    iget-object p0, v0, Lcom/google/android/gms/internal/ads/zzhkb;->zzb:[J

    new-array v3, v1, [J

    invoke-static {v3, p0}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    iget-object p0, v0, Lcom/google/android/gms/internal/ads/zzhkb;->zzc:[J

    new-array v4, v1, [J

    invoke-static {v4, p0}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    new-array p0, v1, [J

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    new-array v5, v1, [J

    invoke-static {v5, v3, v2}, Lcom/google/android/gms/internal/ads/zzhkk;->zzb([J[J[J)V

    invoke-static {v5, v5, v4}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    new-array v1, v1, [J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhkf;->zza:[J

    invoke-static {v1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v1, v1, p0}, Lcom/google/android/gms/internal/ads/zzhkk;->zza([J[J[J)V

    invoke-static {v1, v1}, Lcom/google/android/gms/internal/ads/zzhkk;->zzc([J[J)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhkk;->zzh([J)[B

    move-result-object p0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhkk;->zzh([J)[B

    move-result-object v1

    invoke-static {p0, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkb;->zzb()[B

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "arithmetic error in scalar multiplication"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzb([B)[B
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhyy;->zzd:Lcom/google/android/gms/internal/ads/zzhyy;

    const-string v1, "SHA-512"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhyy;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xf8

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    const/16 v0, 0x1f

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v2, v1

    aput-byte v2, p0, v0

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-object p0
.end method

.method public static zzc([B[B[B)Z
    .locals 104

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    const/16 v3, 0x40

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    return v4

    :cond_0
    const/16 v2, 0x20

    const/16 v3, 0x40

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const/16 v3, 0x1f

    move v5, v3

    :goto_0
    if-ltz v5, :cond_17

    aget-byte v6, v2, v5

    const/16 v7, 0xff

    and-int/2addr v6, v7

    sget-object v8, Lcom/google/android/gms/internal/ads/zzhkd;->zza:[B

    aget-byte v8, v8, v5

    and-int/2addr v8, v7

    if-eq v6, v8, :cond_18

    if-ge v6, v8, :cond_17

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhyy;->zzd:Lcom/google/android/gms/internal/ads/zzhyy;

    const-string v6, "SHA-512"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzhyy;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/MessageDigest;

    const/16 v6, 0x20

    invoke-virtual {v5, v0, v4, v6}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v5, v1}, Ljava/security/MessageDigest;->update([B)V

    move-object/from16 v6, p0

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzn([BI)J

    move-result-wide v8

    const-wide/32 v10, 0x1fffff

    and-long/2addr v8, v10

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzhkd;->zzo([BI)J

    move-result-wide v12

    const/4 v14, 0x5

    shr-long/2addr v12, v14

    invoke-static {v5, v14}, Lcom/google/android/gms/internal/ads/zzhkd;->zzn([BI)J

    move-result-wide v15

    shr-long/2addr v15, v6

    const/4 v7, 0x7

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzhkd;->zzo([BI)J

    move-result-wide v17

    shr-long v17, v17, v7

    const/16 v4, 0xa

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzo([BI)J

    move-result-wide v20

    const/16 v22, 0x4

    shr-long v20, v20, v22

    const/16 v4, 0xd

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzn([BI)J

    move-result-wide v23

    const/4 v4, 0x1

    shr-long v23, v23, v4

    const/16 v4, 0xf

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzo([BI)J

    move-result-wide v25

    const/4 v4, 0x6

    shr-long v25, v25, v4

    const/16 v4, 0x12

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzn([BI)J

    move-result-wide v27

    const/4 v4, 0x3

    shr-long v27, v27, v4

    const/16 v4, 0x15

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzn([BI)J

    move-result-wide v29

    and-long v29, v29, v10

    const/16 v4, 0x17

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzo([BI)J

    move-result-wide v32

    shr-long v32, v32, v14

    const/16 v4, 0x1a

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzn([BI)J

    move-result-wide v34

    shr-long v34, v34, v6

    const/16 v4, 0x1c

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzo([BI)J

    move-result-wide v36

    shr-long v36, v36, v7

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzhkd;->zzo([BI)J

    move-result-wide v38

    shr-long v38, v38, v22

    const/16 v4, 0x22

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzn([BI)J

    move-result-wide v40

    const/4 v4, 0x1

    shr-long v40, v40, v4

    const/16 v4, 0x24

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzo([BI)J

    move-result-wide v42

    const/4 v4, 0x6

    shr-long v42, v42, v4

    const/16 v4, 0x27

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzn([BI)J

    move-result-wide v44

    const/4 v4, 0x3

    shr-long v44, v44, v4

    const/16 v4, 0x2a

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzn([BI)J

    move-result-wide v46

    and-long v46, v46, v10

    const/16 v4, 0x2c

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzo([BI)J

    move-result-wide v48

    shr-long v48, v48, v14

    const/16 v4, 0x2f

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzn([BI)J

    move-result-wide v50

    shr-long v50, v50, v6

    const/16 v4, 0x31

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzo([BI)J

    move-result-wide v52

    and-long v50, v50, v10

    and-long v42, v42, v10

    and-long v40, v40, v10

    and-long v38, v38, v10

    and-long v36, v36, v10

    and-long v34, v34, v10

    and-long v32, v32, v10

    and-long v25, v25, v10

    and-long v23, v23, v10

    and-long v20, v20, v10

    and-long v17, v17, v10

    and-long/2addr v15, v10

    and-long/2addr v12, v10

    and-long v48, v48, v10

    shr-long v52, v52, v7

    and-long v52, v52, v10

    const/16 v4, 0x34

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzo([BI)J

    move-result-wide v54

    shr-long v54, v54, v22

    and-long v54, v54, v10

    const/16 v4, 0x37

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzn([BI)J

    move-result-wide v56

    const/4 v4, 0x1

    shr-long v56, v56, v4

    and-long v56, v56, v10

    const/16 v4, 0x39

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzo([BI)J

    move-result-wide v58

    const/4 v4, 0x6

    shr-long v58, v58, v4

    and-long v10, v58, v10

    const/16 v4, 0x3c

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzo([BI)J

    move-result-wide v58

    const/4 v4, 0x3

    shr-long v58, v58, v4

    const-wide/32 v60, 0xa2c13

    mul-long v62, v54, v60

    add-long v62, v62, v29

    mul-long v29, v52, v60

    add-long v29, v29, v27

    mul-long v27, v50, v60

    add-long v27, v27, v25

    const-wide/32 v25, 0x100000

    add-long v64, v27, v25

    const/16 v4, 0x15

    shr-long v64, v64, v4

    shl-long v66, v64, v4

    const-wide/32 v68, 0x72d18

    mul-long v70, v52, v68

    add-long v70, v70, v62

    const-wide/32 v62, 0x9fb67

    mul-long v72, v50, v62

    add-long v72, v72, v70

    add-long v70, v72, v25

    shr-long v70, v70, v4

    shl-long v74, v70, v4

    mul-long v76, v10, v60

    add-long v76, v76, v34

    mul-long v34, v56, v68

    add-long v34, v34, v76

    mul-long v76, v54, v62

    add-long v76, v76, v34

    const-wide/32 v34, 0xf39ad

    mul-long v78, v52, v34

    sub-long v76, v76, v78

    const-wide/32 v78, 0x215d1

    mul-long v80, v50, v78

    add-long v80, v80, v76

    add-long v76, v80, v25

    const/16 v4, 0x15

    shr-long v76, v76, v4

    shl-long v82, v76, v4

    mul-long v84, v58, v68

    add-long v84, v84, v38

    mul-long v38, v10, v62

    add-long v38, v38, v84

    mul-long v84, v56, v34

    sub-long v38, v38, v84

    mul-long v84, v54, v78

    add-long v84, v84, v38

    const-wide/32 v38, 0xa6f7d

    mul-long v86, v52, v38

    sub-long v84, v84, v86

    add-long v86, v84, v25

    const/16 v4, 0x15

    shr-long v86, v86, v4

    shl-long v88, v86, v4

    mul-long v90, v58, v34

    sub-long v42, v42, v90

    mul-long v90, v10, v78

    add-long v90, v90, v42

    mul-long v42, v56, v38

    sub-long v90, v90, v42

    add-long v42, v90, v25

    shr-long v42, v42, v4

    shl-long v92, v42, v4

    mul-long v94, v58, v38

    sub-long v46, v46, v94

    add-long v94, v46, v25

    shr-long v94, v94, v4

    shl-long v96, v94, v4

    mul-long v98, v50, v68

    add-long v98, v98, v29

    add-long v98, v98, v64

    add-long v29, v98, v25

    shr-long v29, v29, v4

    shl-long v64, v29, v4

    mul-long v100, v56, v60

    add-long v100, v100, v32

    mul-long v31, v54, v68

    add-long v31, v31, v100

    mul-long v100, v52, v62

    add-long v100, v100, v31

    mul-long v31, v50, v34

    sub-long v100, v100, v31

    add-long v100, v100, v70

    add-long v31, v100, v25

    shr-long v32, v31, v4

    shl-long v70, v32, v4

    mul-long v102, v58, v60

    add-long v102, v102, v36

    mul-long v36, v10, v68

    add-long v36, v36, v102

    mul-long v102, v56, v62

    add-long v102, v102, v36

    mul-long v36, v54, v34

    sub-long v102, v102, v36

    mul-long v52, v52, v78

    add-long v52, v52, v102

    mul-long v50, v50, v38

    sub-long v52, v52, v50

    add-long v52, v52, v76

    add-long v36, v52, v25

    const/16 v4, 0x15

    shr-long v36, v36, v4

    shl-long v50, v36, v4

    mul-long v76, v58, v62

    add-long v76, v76, v40

    mul-long v40, v10, v34

    sub-long v76, v76, v40

    mul-long v56, v56, v78

    add-long v56, v56, v76

    mul-long v54, v54, v38

    sub-long v56, v56, v54

    add-long v56, v56, v86

    add-long v40, v56, v25

    shr-long v40, v40, v4

    shl-long v54, v40, v4

    mul-long v58, v58, v78

    add-long v58, v58, v44

    mul-long v10, v10, v38

    sub-long v58, v58, v10

    add-long v58, v58, v42

    add-long v10, v58, v25

    shr-long/2addr v10, v4

    shl-long v42, v10, v4

    sub-long v84, v84, v88

    add-long v84, v84, v36

    mul-long v36, v84, v60

    add-long v36, v36, v8

    add-long v8, v36, v25

    shr-long/2addr v8, v4

    shl-long v44, v8, v4

    sub-long v90, v90, v92

    add-long v90, v90, v40

    mul-long v40, v90, v60

    add-long v40, v40, v15

    sub-long v56, v56, v54

    mul-long v15, v56, v68

    add-long v15, v15, v40

    mul-long v40, v84, v62

    add-long v40, v40, v15

    add-long v15, v40, v25

    shr-long/2addr v15, v4

    shl-long v54, v15, v4

    sub-long v46, v46, v96

    add-long v46, v46, v10

    mul-long v10, v46, v60

    add-long v10, v10, v20

    sub-long v58, v58, v42

    mul-long v20, v58, v68

    add-long v20, v20, v10

    mul-long v10, v90, v62

    add-long v10, v10, v20

    mul-long v20, v56, v34

    sub-long v10, v10, v20

    mul-long v20, v84, v78

    add-long v20, v20, v10

    add-long v10, v20, v25

    const/16 v4, 0x15

    shr-long/2addr v10, v4

    shl-long v42, v10, v4

    sub-long v27, v27, v66

    add-long v48, v48, v94

    mul-long v66, v48, v68

    add-long v66, v66, v27

    mul-long v27, v46, v62

    add-long v27, v27, v66

    mul-long v66, v58, v34

    sub-long v27, v27, v66

    mul-long v66, v90, v78

    add-long v66, v66, v27

    mul-long v27, v56, v38

    sub-long v66, v66, v27

    add-long v27, v66, v25

    const/16 v4, 0x15

    shr-long v27, v27, v4

    shl-long v76, v27, v4

    sub-long v72, v72, v74

    add-long v72, v72, v29

    mul-long v29, v48, v34

    sub-long v72, v72, v29

    mul-long v29, v46, v78

    add-long v29, v29, v72

    mul-long v72, v58, v38

    sub-long v29, v29, v72

    add-long v72, v29, v25

    shr-long v72, v72, v4

    shl-long v74, v72, v4

    sub-long v80, v80, v82

    add-long v80, v80, v32

    mul-long v31, v48, v38

    sub-long v80, v80, v31

    add-long v31, v80, v25

    shr-long v32, v31, v4

    shl-long v82, v32, v4

    mul-long v86, v56, v60

    add-long v86, v86, v12

    mul-long v12, v84, v68

    add-long v12, v12, v86

    add-long/2addr v12, v8

    add-long v8, v12, v25

    shr-long/2addr v8, v4

    shl-long v86, v8, v4

    mul-long v88, v58, v60

    add-long v88, v88, v17

    mul-long v17, v90, v68

    add-long v17, v17, v88

    mul-long v88, v56, v62

    add-long v88, v88, v17

    mul-long v17, v84, v34

    sub-long v88, v88, v17

    add-long v88, v88, v15

    add-long v15, v88, v25

    shr-long/2addr v15, v4

    shl-long v17, v15, v4

    mul-long v92, v48, v60

    add-long v92, v92, v23

    mul-long v23, v46, v68

    add-long v23, v23, v92

    mul-long v92, v58, v62

    add-long v92, v92, v23

    mul-long v23, v90, v34

    sub-long v92, v92, v23

    mul-long v56, v56, v78

    add-long v56, v56, v92

    mul-long v84, v84, v38

    sub-long v56, v56, v84

    add-long v56, v56, v10

    add-long v10, v56, v25

    const/16 v4, 0x15

    shr-long/2addr v10, v4

    shl-long v23, v10, v4

    sub-long v98, v98, v64

    mul-long v64, v48, v62

    add-long v64, v64, v98

    mul-long v84, v46, v34

    sub-long v64, v64, v84

    mul-long v58, v58, v78

    add-long v58, v58, v64

    mul-long v90, v90, v38

    sub-long v58, v58, v90

    add-long v58, v58, v27

    add-long v27, v58, v25

    const/16 v4, 0x15

    shr-long v27, v27, v4

    shl-long v64, v27, v4

    sub-long v100, v100, v70

    mul-long v48, v48, v78

    add-long v48, v48, v100

    mul-long v46, v46, v38

    sub-long v48, v48, v46

    add-long v48, v48, v72

    add-long v46, v48, v25

    shr-long v46, v46, v4

    shl-long v70, v46, v4

    sub-long v52, v52, v50

    add-long v52, v52, v32

    add-long v25, v52, v25

    shr-long v25, v25, v4

    shl-long v31, v25, v4

    sub-long v36, v36, v44

    mul-long v44, v25, v60

    add-long v44, v44, v36

    shr-long v36, v44, v4

    shl-long v50, v36, v4

    sub-long v12, v12, v86

    mul-long v72, v25, v68

    add-long v72, v72, v12

    add-long v72, v72, v36

    shr-long v12, v72, v4

    shl-long v36, v12, v4

    sub-long v40, v40, v54

    add-long v40, v40, v8

    mul-long v8, v25, v62

    add-long v8, v8, v40

    add-long/2addr v8, v12

    shr-long v12, v8, v4

    shl-long v40, v12, v4

    sub-long v88, v88, v17

    mul-long v17, v25, v34

    sub-long v88, v88, v17

    add-long v88, v88, v12

    shr-long v12, v88, v4

    shl-long v17, v12, v4

    sub-long v20, v20, v42

    add-long v20, v20, v15

    mul-long v15, v25, v78

    add-long v15, v15, v20

    add-long/2addr v15, v12

    shr-long v12, v15, v4

    shl-long v20, v12, v4

    sub-long v56, v56, v23

    mul-long v25, v25, v38

    sub-long v56, v56, v25

    add-long v56, v56, v12

    shr-long v12, v56, v4

    shl-long v23, v12, v4

    sub-long v66, v66, v76

    add-long v66, v66, v10

    add-long v66, v66, v12

    shr-long v10, v66, v4

    shl-long v12, v10, v4

    sub-long v58, v58, v64

    add-long v58, v58, v10

    shr-long v10, v58, v4

    shl-long v25, v10, v4

    sub-long v29, v29, v74

    add-long v29, v29, v27

    add-long v29, v29, v10

    shr-long v10, v29, v4

    shl-long v27, v10, v4

    sub-long v48, v48, v70

    add-long v48, v48, v10

    shr-long v10, v48, v4

    shl-long v42, v10, v4

    sub-long v80, v80, v82

    add-long v80, v80, v46

    add-long v80, v80, v10

    shr-long v10, v80, v4

    shl-long v46, v10, v4

    sub-long v52, v52, v31

    add-long v52, v52, v10

    shr-long v10, v52, v4

    shl-long v32, v10, v4

    sub-long v44, v44, v50

    mul-long v60, v60, v10

    add-long v60, v60, v44

    shr-long v44, v60, v4

    shl-long v50, v44, v4

    sub-long v72, v72, v36

    mul-long v68, v68, v10

    add-long v68, v68, v72

    add-long v68, v68, v44

    shr-long v36, v68, v4

    shl-long v44, v36, v4

    sub-long v8, v8, v40

    mul-long v62, v62, v10

    add-long v62, v62, v8

    add-long v62, v62, v36

    shr-long v8, v62, v4

    shl-long v36, v8, v4

    sub-long v88, v88, v17

    mul-long v34, v34, v10

    sub-long v88, v88, v34

    add-long v88, v88, v8

    shr-long v8, v88, v4

    shl-long v17, v8, v4

    sub-long v15, v15, v20

    mul-long v78, v78, v10

    add-long v78, v78, v15

    add-long v78, v78, v8

    shr-long v8, v78, v4

    shl-long v15, v8, v4

    sub-long v56, v56, v23

    mul-long v10, v10, v38

    sub-long v56, v56, v10

    add-long v56, v56, v8

    shr-long v8, v56, v4

    shl-long v10, v8, v4

    sub-long v66, v66, v12

    add-long v66, v66, v8

    shr-long v8, v66, v4

    shl-long v12, v8, v4

    sub-long v58, v58, v25

    add-long v58, v58, v8

    shr-long v8, v58, v4

    shl-long v20, v8, v4

    sub-long v29, v29, v27

    add-long v29, v29, v8

    shr-long v8, v29, v4

    shl-long v23, v8, v4

    sub-long v48, v48, v42

    add-long v48, v48, v8

    shr-long v8, v48, v4

    shl-long v25, v8, v4

    sub-long v80, v80, v46

    add-long v80, v80, v8

    shr-long v8, v80, v4

    shl-long v27, v8, v4

    sub-long v3, v60, v50

    long-to-int v7, v3

    int-to-byte v7, v7

    const/16 v19, 0x0

    aput-byte v7, v5, v19

    sub-long v58, v58, v20

    sub-long v66, v66, v12

    sub-long v56, v56, v10

    sub-long v78, v78, v15

    sub-long v88, v88, v17

    sub-long v62, v62, v36

    sub-long v68, v68, v44

    const/16 v7, 0x8

    shr-long v10, v3, v7

    long-to-int v10, v10

    int-to-byte v10, v10

    const/4 v11, 0x1

    aput-byte v10, v5, v11

    const/16 v10, 0x10

    shr-long/2addr v3, v10

    shl-long v10, v68, v14

    or-long/2addr v3, v10

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    const/4 v3, 0x3

    shr-long v10, v68, v3

    long-to-int v4, v10

    int-to-byte v4, v4

    aput-byte v4, v5, v3

    const/16 v3, 0xb

    shr-long v3, v68, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v22

    const/16 v3, 0x13

    shr-long v3, v68, v3

    shl-long v10, v62, v6

    or-long/2addr v3, v10

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v14

    const/4 v3, 0x6

    shr-long v10, v62, v3

    long-to-int v4, v10

    int-to-byte v4, v4

    aput-byte v4, v5, v3

    const/16 v3, 0xe

    shr-long v3, v62, v3

    const/4 v10, 0x7

    shl-long v11, v88, v10

    or-long/2addr v3, v11

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v10

    const/4 v3, 0x1

    shr-long v10, v88, v3

    long-to-int v3, v10

    int-to-byte v3, v3

    aput-byte v3, v5, v7

    const/16 v3, 0x9

    shr-long v3, v88, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x9

    aput-byte v3, v5, v4

    const/16 v3, 0x11

    shr-long v3, v88, v3

    shl-long v10, v78, v22

    or-long/2addr v3, v10

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0xa

    aput-byte v3, v5, v4

    shr-long v3, v78, v22

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0xb

    aput-byte v3, v5, v4

    const/16 v3, 0xc

    shr-long v3, v78, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0xc

    aput-byte v3, v5, v4

    const/16 v3, 0x14

    shr-long v3, v78, v3

    add-long v10, v56, v56

    or-long/2addr v3, v10

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0xd

    aput-byte v3, v5, v4

    const/4 v3, 0x7

    shr-long v10, v56, v3

    long-to-int v3, v10

    int-to-byte v3, v3

    const/16 v4, 0xe

    aput-byte v3, v5, v4

    const/16 v3, 0xf

    shr-long v3, v56, v3

    const/4 v10, 0x6

    shl-long v11, v66, v10

    or-long/2addr v3, v11

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0xf

    aput-byte v3, v5, v4

    shr-long v3, v66, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x10

    aput-byte v3, v5, v4

    const/16 v3, 0xa

    shr-long v10, v66, v3

    long-to-int v3, v10

    int-to-byte v3, v3

    const/16 v4, 0x11

    aput-byte v3, v5, v4

    const/16 v3, 0x12

    shr-long v3, v66, v3

    const/4 v10, 0x3

    shl-long v11, v58, v10

    or-long/2addr v3, v11

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x12

    aput-byte v3, v5, v4

    sub-long v52, v52, v32

    sub-long v80, v80, v27

    add-long v52, v52, v8

    sub-long v48, v48, v25

    sub-long v3, v29, v23

    shr-long v8, v58, v14

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x13

    aput-byte v8, v5, v9

    const/16 v8, 0xd

    shr-long v8, v58, v8

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x14

    aput-byte v8, v5, v9

    long-to-int v8, v3

    int-to-byte v8, v8

    const/16 v9, 0x15

    aput-byte v8, v5, v9

    shr-long v8, v3, v7

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x16

    aput-byte v8, v5, v9

    const/16 v8, 0x10

    shr-long/2addr v3, v8

    shl-long v8, v48, v14

    or-long/2addr v3, v8

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x17

    aput-byte v3, v5, v4

    const/4 v3, 0x3

    shr-long v3, v48, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x18

    aput-byte v3, v5, v4

    const/16 v3, 0xb

    shr-long v3, v48, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x19

    aput-byte v3, v5, v4

    const/16 v3, 0x13

    shr-long v3, v48, v3

    shl-long v8, v80, v6

    or-long/2addr v3, v8

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x1a

    aput-byte v3, v5, v4

    const/4 v3, 0x6

    shr-long v3, v80, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x1b

    aput-byte v3, v5, v4

    const/16 v3, 0xe

    shr-long v3, v80, v3

    const/4 v8, 0x7

    shl-long v9, v52, v8

    or-long/2addr v3, v9

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x1c

    aput-byte v3, v5, v4

    const/4 v3, 0x1

    shr-long v8, v52, v3

    long-to-int v3, v8

    int-to-byte v3, v3

    const/16 v4, 0x1d

    aput-byte v3, v5, v4

    const/16 v3, 0x9

    shr-long v3, v52, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x1e

    aput-byte v3, v5, v4

    const/16 v3, 0x11

    shr-long v3, v52, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x1f

    aput-byte v3, v5, v4

    const/16 v3, 0xa

    new-array v4, v3, [J

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzhkk;->zzg([B)[J

    move-result-object v8

    new-array v9, v3, [J

    const-wide/16 v10, 0x1

    const/4 v12, 0x0

    aput-wide v10, v9, v12

    new-array v10, v3, [J

    new-array v11, v3, [J

    new-array v12, v3, [J

    new-array v13, v3, [J

    new-array v15, v3, [J

    invoke-static {v11, v8}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    sget-object v6, Lcom/google/android/gms/internal/ads/zzhkf;->zza:[J

    invoke-static {v12, v11, v6}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v11, v11, v9}, Lcom/google/android/gms/internal/ads/zzhkk;->zzb([J[J[J)V

    invoke-static {v12, v12, v9}, Lcom/google/android/gms/internal/ads/zzhkk;->zza([J[J[J)V

    new-array v6, v3, [J

    invoke-static {v6, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v6, v6, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v4, v4, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v4, v4, v11}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    new-array v7, v3, [J

    new-array v14, v3, [J

    new-array v0, v3, [J

    invoke-static {v7, v4}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v14, v7}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v14, v14}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v14, v4, v14}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v7, v7, v14}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v7, v7}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v7, v14, v7}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v14, v7}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    move-object/from16 v18, v2

    const/4 v2, 0x5

    const/4 v3, 0x1

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-static {v14, v14}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v7, v14, v7}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v14, v7}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    const/4 v2, 0x1

    :goto_2
    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    invoke-static {v14, v14}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v14, v14, v7}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    const/4 v2, 0x1

    :goto_3
    const/16 v3, 0x14

    if-ge v2, v3, :cond_3

    invoke-static {v0, v0}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-static {v14, v0, v14}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v14, v14}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    const/4 v2, 0x1

    :goto_4
    const/16 v3, 0xa

    if-ge v2, v3, :cond_4

    invoke-static {v14, v14}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    invoke-static {v7, v14, v7}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v14, v7}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    const/4 v2, 0x1

    :goto_5
    const/16 v3, 0x32

    if-ge v2, v3, :cond_5

    invoke-static {v14, v14}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    invoke-static {v14, v14, v7}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    const/4 v2, 0x1

    :goto_6
    const/16 v3, 0x64

    if-ge v2, v3, :cond_6

    invoke-static {v0, v0}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    invoke-static {v14, v0, v14}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v14, v14}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    const/4 v0, 0x1

    :goto_7
    const/16 v2, 0x32

    if-ge v0, v2, :cond_7

    invoke-static {v14, v14}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    invoke-static {v7, v14, v7}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v7, v7}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v7, v7}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v4, v7, v4}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v4, v4, v6}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v4, v4, v11}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v13, v4}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v13, v13, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v15, v13, v11}, Lcom/google/android/gms/internal/ads/zzhkk;->zzb([J[J[J)V

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzhkd;->zze([J)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v15, v13, v11}, Lcom/google/android/gms/internal/ads/zzhkk;->zza([J[J[J)V

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzhkd;->zze([J)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhkf;->zzc:[J

    invoke-static {v4, v4, v0}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    goto :goto_8

    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot convert given bytes to extended projective coordinates. No square root exists for modulo 2^255-19"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_8
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zze([J)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0x1f

    aget-byte v2, v1, v0

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/4 v6, 0x7

    shr-int/2addr v2, v6

    if-nez v2, :cond_a

    goto :goto_9

    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot convert given bytes to extended projective coordinates. Computed x is zero and encoded x\'s least significant bit is not zero"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/16 v0, 0x1f

    const/16 v3, 0xff

    const/4 v6, 0x7

    :goto_9
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzf([J)I

    move-result v2

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    shr-int/2addr v0, v6

    if-ne v2, v0, :cond_c

    invoke-static {v4, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzm([J[J)V

    :cond_c
    invoke-static {v10, v4, v8}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhkc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhkb;

    invoke-direct {v1, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zzhkb;-><init>([J[J[J)V

    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/ads/zzhkc;-><init>(Lcom/google/android/gms/internal/ads/zzhkb;[J)V

    const/16 v1, 0x8

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzhjz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhjz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzhjz;-><init>(Lcom/google/android/gms/internal/ads/zzhkc;)V

    const/4 v4, 0x0

    aput-object v1, v2, v4

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhka;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzhkb;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzhkb;-><init>()V

    const/16 v6, 0xa

    new-array v6, v6, [J

    invoke-direct {v1, v4, v6}, Lcom/google/android/gms/internal/ads/zzhka;-><init>(Lcom/google/android/gms/internal/ads/zzhkb;[J)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhkc;->zza:Lcom/google/android/gms/internal/ads/zzhkb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhkd;->zzi(Lcom/google/android/gms/internal/ads/zzhka;Lcom/google/android/gms/internal/ads/zzhkb;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhkc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkc;-><init>(Lcom/google/android/gms/internal/ads/zzhka;)V

    const/4 v4, 0x1

    const/16 v6, 0x8

    :goto_a
    if-ge v4, v6, :cond_d

    add-int/lit8 v7, v4, -0x1

    aget-object v7, v2, v7

    invoke-static {v1, v0, v7}, Lcom/google/android/gms/internal/ads/zzhkd;->zzg(Lcom/google/android/gms/internal/ads/zzhka;Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhjy;)V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzhjz;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzhkc;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzhkc;-><init>(Lcom/google/android/gms/internal/ads/zzhka;)V

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/ads/zzhjz;-><init>(Lcom/google/android/gms/internal/ads/zzhkc;)V

    aput-object v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_d
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhkd;->zzl([B)[B

    move-result-object v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zzhkd;->zzl([B)[B

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzhka;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhkd;->zzc:Lcom/google/android/gms/internal/ads/zzhka;

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzhka;-><init>(Lcom/google/android/gms/internal/ads/zzhka;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzhkc;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzhkc;-><init>()V

    move v7, v3

    :goto_b
    if-ltz v7, :cond_f

    aget-byte v3, v0, v7

    if-nez v3, :cond_f

    aget-byte v3, v1, v7

    if-eqz v3, :cond_e

    goto :goto_c

    :cond_e
    add-int/lit8 v7, v7, -0x1

    goto :goto_b

    :cond_f
    :goto_c
    if-ltz v7, :cond_14

    new-instance v3, Lcom/google/android/gms/internal/ads/zzhkb;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzhkb;-><init>(Lcom/google/android/gms/internal/ads/zzhka;)V

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzhkd;->zzi(Lcom/google/android/gms/internal/ads/zzhka;Lcom/google/android/gms/internal/ads/zzhkb;)V

    aget-byte v3, v0, v7

    if-lez v3, :cond_10

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkc;->zza(Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhka;)Lcom/google/android/gms/internal/ads/zzhkc;

    aget-byte v3, v0, v7

    const/4 v6, 0x2

    div-int/2addr v3, v6

    aget-object v3, v2, v3

    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhkd;->zzg(Lcom/google/android/gms/internal/ads/zzhka;Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhjy;)V

    goto :goto_d

    :cond_10
    const/4 v6, 0x2

    if-gez v3, :cond_11

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkc;->zza(Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhka;)Lcom/google/android/gms/internal/ads/zzhkc;

    aget-byte v3, v0, v7

    neg-int v3, v3

    div-int/2addr v3, v6

    aget-object v3, v2, v3

    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhkd;->zzh(Lcom/google/android/gms/internal/ads/zzhka;Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhjy;)V

    :cond_11
    :goto_d
    aget-byte v3, v1, v7

    if-lez v3, :cond_12

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkc;->zza(Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhka;)Lcom/google/android/gms/internal/ads/zzhkc;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhkf;->zze:[Lcom/google/android/gms/internal/ads/zzhjy;

    aget-byte v8, v1, v7

    div-int/2addr v8, v6

    aget-object v3, v3, v8

    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhkd;->zzg(Lcom/google/android/gms/internal/ads/zzhka;Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhjy;)V

    goto :goto_e

    :cond_12
    if-gez v3, :cond_13

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhkc;->zza(Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhka;)Lcom/google/android/gms/internal/ads/zzhkc;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhkf;->zze:[Lcom/google/android/gms/internal/ads/zzhjy;

    aget-byte v8, v1, v7

    neg-int v8, v8

    div-int/2addr v8, v6

    aget-object v3, v3, v8

    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhkd;->zzh(Lcom/google/android/gms/internal/ads/zzhka;Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhjy;)V

    :cond_13
    :goto_e
    add-int/lit8 v7, v7, -0x1

    goto :goto_c

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhkb;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzhkb;-><init>(Lcom/google/android/gms/internal/ads/zzhka;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkb;->zzb()[B

    move-result-object v0

    const/4 v1, 0x0

    :goto_f
    const/16 v2, 0x20

    if-ge v1, v2, :cond_16

    aget-byte v2, v0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_15

    const/4 v2, 0x0

    return v2

    :cond_15
    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_16
    const/4 v1, 0x1

    return v1

    :cond_17
    move v2, v4

    goto :goto_10

    :cond_18
    move-object/from16 v6, p0

    move-object/from16 v18, v2

    move v0, v3

    move v2, v4

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v2, v18

    move-object/from16 v0, p1

    goto/16 :goto_0

    :goto_10
    return v2
.end method

.method public static zzd()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhkf;->zza:[J

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not initialize Ed25519."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic zze([J)Z
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [J

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkk;->zzd([J)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkk;->zzh([J)[B

    move-result-object p0

    move v0, v2

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method public static synthetic zzf([J)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhkk;->zzh([J)[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzhka;Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhjy;)V
    .locals 7

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhkc;->zza:Lcom/google/android/gms/internal/ads/zzhkb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhka;->zza:Lcom/google/android/gms/internal/ads/zzhkb;

    const/16 v2, 0xa

    new-array v2, v2, [J

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzhkb;->zza:[J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhkb;->zzb:[J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhkb;->zza:[J

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhkk;->zza([J[J[J)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzhkb;->zzb:[J

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzhkk;->zzb([J[J[J)V

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzhjy;->zzb:[J

    invoke-static {v6, v6, v4}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzhjy;->zza:[J

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhkb;->zzc:[J

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhka;->zzb:[J

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhkc;->zzb:[J

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzhjy;->zzc:[J

    invoke-static {p0, p1, v4}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzhkb;->zzc:[J

    invoke-virtual {p2, v3, p1}, Lcom/google/android/gms/internal/ads/zzhjy;->zza([J[J)V

    invoke-static {v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzhkk;->zza([J[J[J)V

    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/ads/zzhkk;->zzb([J[J[J)V

    invoke-static {v6, v1, v6}, Lcom/google/android/gms/internal/ads/zzhkk;->zza([J[J[J)V

    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzhkk;->zza([J[J[J)V

    invoke-static {p0, v2, p0}, Lcom/google/android/gms/internal/ads/zzhkk;->zzb([J[J[J)V

    return-void
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzhka;Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhjy;)V
    .locals 7

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhkc;->zza:Lcom/google/android/gms/internal/ads/zzhkb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhka;->zza:Lcom/google/android/gms/internal/ads/zzhkb;

    const/16 v2, 0xa

    new-array v2, v2, [J

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzhkb;->zza:[J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhkb;->zzb:[J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhkb;->zza:[J

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhkk;->zza([J[J[J)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzhkb;->zzb:[J

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzhkk;->zzb([J[J[J)V

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzhjy;->zza:[J

    invoke-static {v6, v6, v4}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzhjy;->zzb:[J

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhkb;->zzc:[J

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhka;->zzb:[J

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhkc;->zzb:[J

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzhjy;->zzc:[J

    invoke-static {p0, p1, v4}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzhkb;->zzc:[J

    invoke-virtual {p2, v3, p1}, Lcom/google/android/gms/internal/ads/zzhjy;->zza([J[J)V

    invoke-static {v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzhkk;->zza([J[J[J)V

    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/ads/zzhkk;->zzb([J[J[J)V

    invoke-static {v6, v1, v6}, Lcom/google/android/gms/internal/ads/zzhkk;->zza([J[J[J)V

    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzhkk;->zzb([J[J[J)V

    invoke-static {p0, v2, p0}, Lcom/google/android/gms/internal/ads/zzhkk;->zza([J[J[J)V

    return-void
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzhka;Lcom/google/android/gms/internal/ads/zzhkb;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhka;->zza:Lcom/google/android/gms/internal/ads/zzhkb;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhkb;->zza:[J

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzhkb;->zza:[J

    const/16 v3, 0xa

    new-array v3, v3, [J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhkb;->zzc:[J

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzhkb;->zzb:[J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhka;->zzb:[J

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhkb;->zzc:[J

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {p0, p0, p0}, Lcom/google/android/gms/internal/ads/zzhkk;->zza([J[J[J)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzhkb;->zzb:[J

    invoke-static {p1, v2, v5}, Lcom/google/android/gms/internal/ads/zzhkk;->zza([J[J[J)V

    invoke-static {v3, p1}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzhkk;->zza([J[J[J)V

    invoke-static {v4, v4, v1}, Lcom/google/android/gms/internal/ads/zzhkk;->zzb([J[J[J)V

    invoke-static {v1, v3, p1}, Lcom/google/android/gms/internal/ads/zzhkk;->zzb([J[J[J)V

    invoke-static {p0, p0, v4}, Lcom/google/android/gms/internal/ads/zzhkk;->zzb([J[J[J)V

    return-void
.end method

.method private static zzj(II)I
    .locals 0

    xor-int/2addr p0, p1

    not-int p0, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, p0, 0x4

    and-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x2

    and-int/2addr p0, p1

    add-int p1, p0, p0

    and-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x7

    return p0
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzhjy;IB)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhkf;->zzd:[[Lcom/google/android/gms/internal/ads/zzhjy;

    aget-object v1, v0, p1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    and-int/lit16 v2, p2, 0xff

    const/4 v3, 0x7

    shr-int/2addr v2, v3

    neg-int v4, v2

    and-int/2addr v4, p2

    add-int/2addr v4, v4

    sub-int/2addr p2, v4

    const/4 v4, 0x1

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzj(II)I

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ads/zzhjy;->zzb(Lcom/google/android/gms/internal/ads/zzhjy;I)V

    aget-object v1, v0, p1

    aget-object v1, v1, v4

    const/4 v4, 0x2

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzj(II)I

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ads/zzhjy;->zzb(Lcom/google/android/gms/internal/ads/zzhjy;I)V

    aget-object v1, v0, p1

    aget-object v1, v1, v4

    const/4 v4, 0x3

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzj(II)I

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ads/zzhjy;->zzb(Lcom/google/android/gms/internal/ads/zzhjy;I)V

    aget-object v1, v0, p1

    aget-object v1, v1, v4

    const/4 v4, 0x4

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzj(II)I

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ads/zzhjy;->zzb(Lcom/google/android/gms/internal/ads/zzhjy;I)V

    aget-object v1, v0, p1

    aget-object v1, v1, v4

    const/4 v4, 0x5

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzj(II)I

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ads/zzhjy;->zzb(Lcom/google/android/gms/internal/ads/zzhjy;I)V

    aget-object v1, v0, p1

    aget-object v1, v1, v4

    const/4 v4, 0x6

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/zzhkd;->zzj(II)I

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ads/zzhjy;->zzb(Lcom/google/android/gms/internal/ads/zzhjy;I)V

    aget-object v1, v0, p1

    aget-object v1, v1, v4

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/ads/zzhkd;->zzj(II)I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/google/android/gms/internal/ads/zzhjy;->zzb(Lcom/google/android/gms/internal/ads/zzhjy;I)V

    aget-object p1, v0, p1

    aget-object p1, p1, v3

    const/16 v0, 0x8

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkd;->zzj(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhjy;->zzb(Lcom/google/android/gms/internal/ads/zzhjy;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhjy;->zzc:[J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhjy;->zza:[J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjy;->zzb:[J

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    invoke-static {p1, p1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzm([J[J)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhjy;

    invoke-direct {v1, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzhjy;-><init>([J[J[J)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjy;->zzb(Lcom/google/android/gms/internal/ads/zzhjy;I)V

    return-void
.end method

.method private static zzl([B)[B
    .locals 10

    const/16 v0, 0x100

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_0

    shr-int/lit8 v5, v3, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v6, v3, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_1
    if-ge p0, v0, :cond_5

    aget-byte v3, v1, p0

    if-eqz v3, :cond_4

    move v3, v4

    :goto_2
    const/4 v5, 0x6

    if-gt v3, v5, :cond_4

    add-int v5, p0, v3

    if-ge v5, v0, :cond_4

    aget-byte v6, v1, v5

    if-eqz v6, :cond_3

    aget-byte v7, v1, p0

    shl-int/2addr v6, v3

    add-int v8, v7, v6

    const/16 v9, 0xf

    if-gt v8, v9, :cond_1

    int-to-byte v6, v8

    aput-byte v6, v1, p0

    aput-byte v2, v1, v5

    goto :goto_4

    :cond_1
    sub-int/2addr v7, v6

    const/16 v6, -0xf

    if-lt v7, v6, :cond_4

    int-to-byte v6, v7

    aput-byte v6, v1, p0

    :goto_3
    if-ge v5, v0, :cond_3

    aget-byte v6, v1, v5

    if-nez v6, :cond_2

    aput-byte v4, v1, v5

    goto :goto_4

    :cond_2
    aput-byte v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method private static zzm([J[J)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-wide v1, p1, v0

    neg-long v1, v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static zzn([BI)J
    .locals 6

    aget-byte v0, p0, p1

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x2

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-long v2, v2

    int-to-long p0, p0

    const-wide/16 v4, 0xff

    and-long/2addr v0, v4

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x10

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static zzo([BI)J
    .locals 3

    add-int/lit8 v0, p1, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzn([BI)J

    move-result-wide v1

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    const/16 v0, 0x18

    shl-long/2addr p0, v0

    or-long/2addr p0, v1

    return-wide p0
.end method
