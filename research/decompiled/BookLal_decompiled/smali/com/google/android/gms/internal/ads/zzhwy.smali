.class public final Lcom/google/android/gms/internal/ads/zzhwy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhdh;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzhkj;

.field static final zzb:Lcom/google/android/gms/internal/ads/zzhkj;

.field static final zzc:Lcom/google/android/gms/internal/ads/zzhkj;

.field public static final synthetic zzd:I

.field private static final zze:[B

.field private static final zzf:[B


# instance fields
.field private final zzg:Ljava/security/interfaces/ECPublicKey;

.field private final zzh:Ljava/lang/String;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzhyr;

.field private final zzj:[B

.field private final zzk:[B

.field private final zzl:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhwy;->zze:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhwy;->zzf:[B

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkj;->zza()Lcom/google/android/gms/internal/ads/zzhki;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhzh;->zzc:Lcom/google/android/gms/internal/ads/zzhzh;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhts;->zza:Lcom/google/android/gms/internal/ads/zzhts;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhki;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhki;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhzh;->zzd:Lcom/google/android/gms/internal/ads/zzhzh;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhts;->zzb:Lcom/google/android/gms/internal/ads/zzhts;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhki;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhki;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhzh;->zze:Lcom/google/android/gms/internal/ads/zzhzh;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhts;->zzc:Lcom/google/android/gms/internal/ads/zzhts;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhki;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhki;->zzb()Lcom/google/android/gms/internal/ads/zzhkj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhwy;->zza:Lcom/google/android/gms/internal/ads/zzhkj;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkj;->zza()Lcom/google/android/gms/internal/ads/zzhki;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhyr;->zza:Lcom/google/android/gms/internal/ads/zzhyr;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhtt;->zza:Lcom/google/android/gms/internal/ads/zzhtt;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhki;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhki;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhyr;->zzb:Lcom/google/android/gms/internal/ads/zzhyr;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhtt;->zzb:Lcom/google/android/gms/internal/ads/zzhtt;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhki;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhki;->zzb()Lcom/google/android/gms/internal/ads/zzhkj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhwy;->zzb:Lcom/google/android/gms/internal/ads/zzhkj;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkj;->zza()Lcom/google/android/gms/internal/ads/zzhki;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhyq;->zza:Lcom/google/android/gms/internal/ads/zzhyq;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhtr;->zza:Lcom/google/android/gms/internal/ads/zzhtr;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhki;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhki;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhyq;->zzb:Lcom/google/android/gms/internal/ads/zzhyq;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhtr;->zzb:Lcom/google/android/gms/internal/ads/zzhtr;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhki;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhki;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhyq;->zzc:Lcom/google/android/gms/internal/ads/zzhyq;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhtr;->zzc:Lcom/google/android/gms/internal/ads/zzhtr;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhki;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhki;->zzb()Lcom/google/android/gms/internal/ads/zzhkj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhwy;->zzc:Lcom/google/android/gms/internal/ads/zzhkj;

    return-void
.end method

.method private constructor <init>(Ljava/security/interfaces/ECPublicKey;Lcom/google/android/gms/internal/ads/zzhzh;Lcom/google/android/gms/internal/ads/zzhyr;[B[BLjava/security/Provider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhjs;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhzv;->zza(Lcom/google/android/gms/internal/ads/zzhzh;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhwy;->zzh:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhwy;->zzg:Ljava/security/interfaces/ECPublicKey;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhwy;->zzi:Lcom/google/android/gms/internal/ads/zzhyr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhwy;->zzj:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzhwy;->zzk:[B

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzhwy;->zzl:Ljava/security/Provider;

    return-void

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use ECDSA in FIPS-mode, as BoringCrypto is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhtz;Ljava/security/Provider;)Lcom/google/android/gms/internal/ads/zzhdh;
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwy;->zzc:Lcom/google/android/gms/internal/ads/zzhkj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhtz;->zzf()Lcom/google/android/gms/internal/ads/zzhtv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhtv;->zzd()Lcom/google/android/gms/internal/ads/zzhtr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkj;->zzb(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhyq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhys;->zzb(Lcom/google/android/gms/internal/ads/zzhyq;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhtz;->zzd()Ljava/security/spec/ECPoint;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v2, v1, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    const-string v0, "EC"

    if-eqz p1, :cond_0

    invoke-static {v0, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhyy;->zzf:Lcom/google/android/gms/internal/ads/zzhyy;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhyy;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhwy;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhwy;->zza:Lcom/google/android/gms/internal/ads/zzhkj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhtz;->zzf()Lcom/google/android/gms/internal/ads/zzhtv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhtv;->zze()Lcom/google/android/gms/internal/ads/zzhts;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzhkj;->zzb(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhzh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhwy;->zzb:Lcom/google/android/gms/internal/ads/zzhkj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhtz;->zzf()Lcom/google/android/gms/internal/ads/zzhtv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhtv;->zzc()Lcom/google/android/gms/internal/ads/zzhtt;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzhkj;->zzb(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzhyr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhtz;->zze()Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhzy;->zzc()[B

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhtz;->zzf()Lcom/google/android/gms/internal/ads/zzhtv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhtv;->zzf()Lcom/google/android/gms/internal/ads/zzhtu;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhtu;->zzc:Lcom/google/android/gms/internal/ads/zzhtu;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhwy;->zzf:[B

    :goto_1
    move-object v6, p0

    goto :goto_2

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhwy;->zze:[B

    goto :goto_1

    :goto_2
    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhwy;-><init>(Ljava/security/interfaces/ECPublicKey;Lcom/google/android/gms/internal/ads/zzhzh;Lcom/google/android/gms/internal/ads/zzhyr;[B[BLjava/security/Provider;)V

    return-object v0
.end method

.method private final zzc([B[B)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwy;->zzi:Lcom/google/android/gms/internal/ads/zzhyr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhyr;->zza:Lcom/google/android/gms/internal/ads/zzhyr;

    const/16 v2, 0x8

    const-string v3, "Invalid signature"

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwy;->zzg:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    array-length v1, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkh;->zzc(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v2

    add-int/2addr v0, v0

    if-ne v1, v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhys;->zza([B)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    array-length v0, p1

    if-lt v0, v2, :cond_8

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0x81

    const/16 v5, 0x80

    const/4 v6, 0x2

    if-ne v2, v4, :cond_2

    aget-byte v2, p1, v6

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v5, :cond_8

    move v4, v6

    goto :goto_1

    :cond_2
    if-eq v2, v5, :cond_8

    if-gt v2, v4, :cond_8

    move v4, v1

    :goto_1
    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v4

    if-ne v2, v7, :cond_8

    add-int/lit8 v2, v4, 0x1

    aget-byte v2, p1, v2

    if-ne v2, v6, :cond_8

    add-int/lit8 v2, v4, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v7, v4, 0x3

    add-int v8, v7, v2

    add-int/lit8 v9, v8, 0x1

    if-ge v9, v0, :cond_8

    if-eqz v2, :cond_8

    aget-byte v7, p1, v7

    and-int/lit16 v10, v7, 0xff

    if-ge v10, v5, :cond_8

    if-le v2, v1, :cond_3

    if-nez v7, :cond_3

    add-int/lit8 v7, v4, 0x4

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    if-lt v7, v5, :cond_8

    :cond_3
    aget-byte v7, p1, v8

    if-ne v7, v6, :cond_8

    aget-byte v7, p1, v9

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v8, v6

    add-int/2addr v8, v7

    if-ne v8, v0, :cond_8

    if-eqz v7, :cond_8

    add-int/lit8 v0, v4, 0x5

    add-int/2addr v0, v2

    aget-byte v0, p1, v0

    and-int/lit16 v6, v0, 0xff

    if-ge v6, v5, :cond_8

    if-le v7, v1, :cond_4

    if-nez v0, :cond_4

    add-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v2

    aget-byte v0, p1, v4

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v5, :cond_8

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwy;->zzh:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhwy;->zzl:Ljava/security/Provider;

    if-eqz v1, :cond_5

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhyy;->zzc:Lcom/google/android/gms/internal/ads/zzhyy;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhyy;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Signature;

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhwy;->zzg:Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhwy;->zzk:[B

    array-length v1, p2

    if-lez v1, :cond_6

    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    :cond_6
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_7

    return-void

    :catch_0
    :cond_7
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwy;->zzj:[B

    array-length v1, v0

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhwy;->zzc([B[B)V

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhnc;->zze([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhwy;->zzc([B[B)V

    return-void

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature (output prefix mismatch)"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
