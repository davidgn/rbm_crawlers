.class final Lcom/google/android/gms/internal/ads/zzibx;
.super Lcom/google/android/gms/internal/ads/zzibw;
.source "SourceFile"


# instance fields
.field private final zzb:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzibw;-><init>([B)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    return-void
.end method


# virtual methods
.method public final zza(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final zzb()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    array-length v0, v0

    return v0
.end method

.method public final zzc(II)Lcom/google/android/gms/internal/ads/zzibz;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    array-length v1, v0

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzibz;->zzC(III)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzibz;->zza:Lcom/google/android/gms/internal/ads/zzibz;

    return-object p1

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzibt;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzibt;-><init>([BII)V

    return-object v1
.end method

.method public final zzd([BIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final zze()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzibq;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzibq;->zza([BII)V

    return-void
.end method

.method public final zzg(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final zzh()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzigf;->zza([B)Z

    move-result v0

    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzibz;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzibx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    check-cast p1, Lcom/google/android/gms/internal/ads/zzibx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzibt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    array-length v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzibx;->zzj(Lcom/google/android/gms/internal/ads/zzibz;II)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzibz;->zzi(Lcom/google/android/gms/internal/ads/zzibz;)Z

    move-result p1

    return p1
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzibz;II)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibz;->zzb()I

    move-result v0

    if-gt p3, v0, :cond_3

    add-int v0, p2, p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibz;->zzb()I

    move-result v1

    if-gt v0, v1, :cond_2

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzibx;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzibx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    invoke-static {v0, v2, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzibz;->zzD([BI[BII)Z

    move-result p1

    return p1

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzibt;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzibt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibt;->zzm()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibt;->zzn()I

    move-result p1

    add-int/2addr p1, p2

    invoke-static {v0, v2, v1, p1, p3}, Lcom/google/android/gms/internal/ads/zzibz;->zzD([BI[BII)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzibz;->zzc(II)Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object p1

    invoke-virtual {p0, v2, p3}, Lcom/google/android/gms/internal/ads/zzibx;->zzc(II)Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzibz;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibz;->zzb()I

    move-result p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x18

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ran off end of other: "

    const-string v2, ", "

    invoke-static {v3, v1, p2, v2, p3}, LC/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-static {p1, v2, v3}, LC/a;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Length too large: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final zzk(III)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    invoke-static {p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzidq;->zzc(I[BII)I

    move-result p1

    return p1
.end method

.method public final zzl()Lcom/google/android/gms/internal/ads/zzicd;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzicd;->zzI([BIIZ)Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzm()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibx;->zzb:[B

    return-object v0
.end method
