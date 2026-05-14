.class final Lcom/google/android/gms/internal/consent_sdk/zzpr;
.super Lcom/google/android/gms/internal/consent_sdk/zzpv;
.source "SourceFile"


# instance fields
.field private final zza:[B

.field private final zzb:I

.field private zzc:I


# direct methods
.method public constructor <init>([BII)V
    .locals 2

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpv;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzpu;)V

    array-length p2, p1

    sub-int v0, p2, p3

    or-int/2addr v0, p3

    if-ltz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    iput p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "Array range is invalid. Buffer.length="

    const-string v1, ", offset=0, length="

    invoke-static {p2, p3, v0, v1}, Lcom/google/android/gms/ads/internal/util/client/a;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zzI()V
    .locals 0

    return-void
.end method

.method public final zzJ(B)V
    .locals 9

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v0, 0x1

    :try_start_1
    aput-byte p1, v1, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    move v0, v2

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v7, p1

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    new-instance v8, Lcom/google/android/gms/internal/consent_sdk/zzps;

    int-to-long v2, v0

    int-to-long v4, p1

    const/4 v6, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/consent_sdk/zzps;-><init>(JJILjava/lang/Throwable;)V

    throw v8
.end method

.method public final zzK(IZ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzJ(B)V

    return-void
.end method

.method public final zzL([BII)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zze([BII)V

    return-void
.end method

.method public final zza([BII)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zze([BII)V

    return-void
.end method

.method public final zzb()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zze([BII)V
    .locals 7

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    return-void

    :catch_0
    move-exception p1

    move-object v6, p1

    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzps;

    iget p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    int-to-long v1, p2

    int-to-long v3, v0

    move-object v0, p1

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/consent_sdk/zzps;-><init>(JJILjava/lang/Throwable;)V

    throw p1
.end method

.method public final zzh(ILcom/google/android/gms/internal/consent_sdk/zzpm;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzi(Lcom/google/android/gms/internal/consent_sdk/zzpm;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/consent_sdk/zzpm;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzg(Lcom/google/android/gms/internal/consent_sdk/zzpe;)V

    return-void
.end method

.method public final zzj(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzk(I)V

    return-void
.end method

.method public final zzk(I)V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x2

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    int-to-long v2, v0

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzps;

    int-to-long v4, p1

    const/4 v6, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/consent_sdk/zzps;-><init>(JJILjava/lang/Throwable;)V

    throw v0
.end method

.method public final zzl(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzm(J)V

    return-void
.end method

.method public final zzm(J)V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x8

    shr-long v4, p1, v3

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x2

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x3

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x4

    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x5

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x6

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x7

    const/16 v4, 0x38

    shr-long/2addr p1, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    int-to-long v2, v0

    new-instance p2, Lcom/google/android/gms/internal/consent_sdk/zzps;

    int-to-long v4, p1

    const/16 v6, 0x8

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/consent_sdk/zzps;-><init>(JJILjava/lang/Throwable;)V

    throw p2
.end method

.method public final zzn(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzo(I)V

    return-void
.end method

.method public final zzo(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzy(J)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/consent_sdk/zzrq;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/android/gms/internal/consent_sdk/zzrq;->zzn()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/consent_sdk/zzrq;->zzB(Lcom/google/android/gms/internal/consent_sdk/zzpv;)V

    return-void
.end method

.method public final zzq(ILcom/google/android/gms/internal/consent_sdk/zzrq;)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzv(II)V

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzp(Lcom/google/android/gms/internal/consent_sdk/zzrq;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    return-void
.end method

.method public final zzr(ILcom/google/android/gms/internal/consent_sdk/zzpm;)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzv(II)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzh(ILcom/google/android/gms/internal/consent_sdk/zzpm;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    return-void
.end method

.method public final zzs(ILjava/lang/String;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzt(Ljava/lang/String;)V

    return-void
.end method

.method public final zzt(Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B

    iget v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    sub-int/2addr v4, v1

    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/consent_sdk/zzsy;->zza(Ljava/lang/String;[BII)I

    move-result v1

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzsy;->zzb(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B

    iget v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    iget v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    sub-int/2addr v3, v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/consent_sdk/zzsy;->zza(Ljava/lang/String;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/consent_sdk/zzsx; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzps;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzps;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzE(Ljava/lang/String;Lcom/google/android/gms/internal/consent_sdk/zzsx;)V

    return-void
.end method

.method public final zzu(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    return-void
.end method

.method public final zzv(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    return-void
.end method

.method public final zzw(I)V
    .locals 9

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    :goto_0
    and-int/lit8 v1, p1, -0x80

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v0, 0x1

    int-to-byte p1, p1

    :try_start_1
    aput-byte p1, v1, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    move v0, v2

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v2, v0, 0x1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    :try_start_3
    aput-byte v3, v1, v0
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    move v0, v2

    goto :goto_0

    :goto_1
    move-object v7, p1

    :goto_2
    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    new-instance v8, Lcom/google/android/gms/internal/consent_sdk/zzps;

    int-to-long v2, v0

    int-to-long v4, p1

    const/4 v6, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/consent_sdk/zzps;-><init>(JJILjava/lang/Throwable;)V

    throw v8
.end method

.method public final zzx(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzy(J)V

    return-void
.end method

.method public final zzy(J)V
    .locals 10

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzF()Z

    move-result v1

    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x80

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    sub-int/2addr v1, v0

    const/16 v7, 0xa

    if-lt v1, v7, :cond_1

    :goto_0
    and-long v7, p1, v5

    cmp-long v1, v7, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B

    add-int/lit8 v2, v0, 0x1

    int-to-long v3, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v1, v3, v4, p1}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzn([BJB)V

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B

    add-int/lit8 v7, v0, 0x1

    int-to-long v8, v0

    long-to-int v0, p1

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v1, v8, v9, v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzn([BJB)V

    ushr-long/2addr p1, v2

    move v0, v7

    goto :goto_0

    :cond_1
    :goto_1
    and-long v7, p1, v5

    cmp-long v1, v7, v3

    if-nez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v0, 0x1

    long-to-int p1, p1

    int-to-byte p1, p1

    :try_start_1
    aput-byte p1, v1, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    move v0, v2

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v7, v0, 0x1

    long-to-int v8, p1

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    :try_start_3
    aput-byte v8, v1, v0
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    ushr-long/2addr p1, v2

    move v0, v7

    goto :goto_1

    :catch_2
    move-exception p1

    move v0, v7

    :goto_3
    move-object v7, p1

    :goto_4
    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    new-instance p2, Lcom/google/android/gms/internal/consent_sdk/zzps;

    int-to-long v2, v0

    int-to-long v4, p1

    const/4 v6, 0x1

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/consent_sdk/zzps;-><init>(JJILjava/lang/Throwable;)V

    throw p2
.end method
