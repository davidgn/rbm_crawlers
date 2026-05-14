.class final Lcom/google/android/gms/internal/ads/zzhzp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhdh;


# instance fields
.field private final zza:Ljava/security/interfaces/RSAPublicKey;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhzh;

.field private final zzc:[B

.field private final zzd:[B


# direct methods
.method public synthetic constructor <init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/android/gms/internal/ads/zzhzh;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjt;->zza()Z

    move-result p5

    if-nez p5, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhzw;->zzb(Lcom/google/android/gms/internal/ads/zzhzh;)V

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p5

    invoke-virtual {p5}, Ljava/math/BigInteger;->bitLength()I

    move-result p5

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzhzw;->zzc(I)V

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p5

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzhzw;->zzd(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhzp;->zza:Ljava/security/interfaces/RSAPublicKey;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhzp;->zzb:Lcom/google/android/gms/internal/ads/zzhzh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhzp;->zzc:[B

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhzp;->zzd:[B

    return-void

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Conscrypt is not available, and we cannot use Java Implementation of RSA-PKCS1.5 in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzb([B[B)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzp;->zza:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    array-length v3, p1

    if-ne v2, v3, :cond_8

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_7

    invoke-virtual {v3, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzb(Ljava/math/BigInteger;I)[B

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzp;->zzb:Lcom/google/android/gms/internal/ads/zzhzh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzb(Lcom/google/android/gms/internal/ads/zzhzh;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhyy;->zzd:Lcom/google/android/gms/internal/ads/zzhyy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhzv;->zzb(Lcom/google/android/gms/internal/ads/zzhzh;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzhyy;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/MessageDigest;

    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->update([B)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhzp;->zzd:[B

    array-length v3, p2

    if-eqz v3, :cond_0

    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->update([B)V

    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    const/4 v5, 0x4

    if-ne v1, v5, :cond_1

    const-string v0, "3051300d060960864801650304020305000440"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhzi;->zza(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unsupported hash "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string v0, "3041300d060960864801650304020205000430"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhzi;->zza(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "3031300d060960864801650304020105000420"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhzi;->zza(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    array-length v1, p2

    array-length v5, v0

    add-int/2addr v5, v1

    add-int/lit8 v1, v5, 0xb

    if-lt v2, v1, :cond_6

    new-array v1, v2, [B

    const/4 v6, 0x0

    aput-byte v6, v1, v6

    aput-byte v4, v1, v4

    move v4, v6

    :goto_1
    add-int/lit8 v7, v3, 0x1

    sub-int v8, v2, v5

    add-int/lit8 v8, v8, -0x3

    if-ge v4, v8, :cond_4

    const/4 v8, -0x1

    aput-byte v8, v1, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v7

    goto :goto_1

    :cond_4
    aput-byte v6, v1, v3

    array-length v2, v0

    invoke-static {v0, v6, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p2

    add-int/2addr v7, v2

    invoke-static {p2, v6, v1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid signature"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "intended encoded message length too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "signature out of range"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid signature\'s length"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzp;->zzc:[B

    array-length v1, v0

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhzp;->zzb([B[B)V

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhnc;->zze([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhzp;->zzb([B[B)V

    return-void

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature (output prefix mismatch)"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
