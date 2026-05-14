.class public final Lcom/google/android/gms/internal/ads/zzhxr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhdg;


# static fields
.field private static final zzb:[B

.field private static final zzc:[B

.field private static final zzd:[B


# instance fields
.field zza:Ljava/security/Provider;

.field private final zze:Ljava/security/interfaces/RSAPrivateCrtKey;

.field private final zzf:Ljava/lang/String;

.field private final zzg:[B

.field private final zzh:[B

.field private final zzi:Lcom/google/android/gms/internal/ads/zzhdh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhxr;->zzb:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhxr;->zzc:[B

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhxr;->zzd:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
    .end array-data
.end method

.method private constructor <init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/google/android/gms/internal/ads/zzhvp;[B[BLcom/google/android/gms/internal/ads/zzhdh;Ljava/security/Provider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhjs;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvp;->zza:Lcom/google/android/gms/internal/ads/zzhvp;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvp;->zzb:Lcom/google/android/gms/internal/ads/zzhvp;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvp;->zzc:Lcom/google/android/gms/internal/ads/zzhvp;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Unsupported hash: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzc(I)V

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzd(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhxr;->zze:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhxs;->zzc(Lcom/google/android/gms/internal/ads/zzhvp;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhxr;->zzf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhxr;->zzg:[B

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhxr;->zzh:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzhxr;->zzi:Lcom/google/android/gms/internal/ads/zzhdh;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzhxr;->zza:Ljava/security/Provider;

    return-void

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use RSA PKCS1.5 in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhvt;)Lcom/google/android/gms/internal/ads/zzhdg;
    .locals 16

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhxs;->zzb()Ljava/security/Provider;

    move-result-object v6

    const-string v0, "RSA"

    if-eqz v6, :cond_0

    invoke-static {v0, v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhyy;->zzf:Lcom/google/android/gms/internal/ads/zzhyy;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhyy;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    :goto_0
    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhvt;->zze()Lcom/google/android/gms/internal/ads/zzhvv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhvv;->zzd()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhvt;->zzd()Lcom/google/android/gms/internal/ads/zzhvr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhvr;->zzd()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhvt;->zzi()Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhzz;->zzb(Lcom/google/android/gms/internal/ads/zzhdi;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhvt;->zzf()Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhzz;->zzb(Lcom/google/android/gms/internal/ads/zzhdi;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhvt;->zzh()Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhzz;->zzb(Lcom/google/android/gms/internal/ads/zzhdi;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhvt;->zzj()Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhzz;->zzb(Lcom/google/android/gms/internal/ads/zzhdi;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhvt;->zzk()Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhzz;->zzb(Lcom/google/android/gms/internal/ads/zzhdi;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhvt;->zzl()Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhzz;->zzb(Lcom/google/android/gms/internal/ads/zzhdi;)Ljava/math/BigInteger;

    move-result-object v15

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhvt;->zze()Lcom/google/android/gms/internal/ads/zzhvv;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzhxs;->zze(Lcom/google/android/gms/internal/ads/zzhvv;Ljava/security/Provider;)Lcom/google/android/gms/internal/ads/zzhdh;

    move-result-object v0

    :goto_1
    move-object v5, v0

    goto :goto_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhvt;->zze()Lcom/google/android/gms/internal/ads/zzhvv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzb(Lcom/google/android/gms/internal/ads/zzhvv;)Lcom/google/android/gms/internal/ads/zzhdh;

    move-result-object v0

    goto :goto_1

    :goto_2
    new-instance v7, Lcom/google/android/gms/internal/ads/zzhxr;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhvt;->zzd()Lcom/google/android/gms/internal/ads/zzhvr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhvr;->zzf()Lcom/google/android/gms/internal/ads/zzhvp;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhvt;->zze()Lcom/google/android/gms/internal/ads/zzhvv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhvv;->zze()Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhzy;->zzc()[B

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhvt;->zzd()Lcom/google/android/gms/internal/ads/zzhvr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhvr;->zze()Lcom/google/android/gms/internal/ads/zzhvq;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhvq;->zzc:Lcom/google/android/gms/internal/ads/zzhvq;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhxr;->zzc:[B

    :goto_3
    move-object v4, v0

    goto :goto_4

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhxr;->zzb:[B

    goto :goto_3

    :goto_4
    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzhxr;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/google/android/gms/internal/ads/zzhvp;[B[BLcom/google/android/gms/internal/ads/zzhdh;Ljava/security/Provider;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhxr;->zzd:[B

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/ads/zzhdg;->zza([B)[B

    return-object v7
.end method


# virtual methods
.method public final zza([B)[B
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhxr;->zza:Ljava/security/Provider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhxr;->zzf:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhxr;->zzf:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhyy;->zzc:Lcom/google/android/gms/internal/ads/zzhyy;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhyy;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Signature;

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhxr;->zze:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhxr;->zzh:[B

    array-length v2, v1

    if-lez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    :cond_1
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhxr;->zzg:[B

    array-length v2, v1

    if-lez v2, :cond_2

    filled-new-array {v1, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhyk;->zza([[B)[B

    move-result-object v0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhxr;->zzi:Lcom/google/android/gms/internal/ads/zzhdh;

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzhdh;->zza([B[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RSA signature computation error"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
