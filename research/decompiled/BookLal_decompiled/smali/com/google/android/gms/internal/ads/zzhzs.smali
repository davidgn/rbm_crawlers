.class public final Lcom/google/android/gms/internal/ads/zzhzs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhdg;


# static fields
.field private static final zza:[B

.field private static final zzb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhzs;->zza:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhzs;->zzb:[B

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhwf;)Lcom/google/android/gms/internal/ads/zzhdg;
    .locals 11

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhya;->zzb(Lcom/google/android/gms/internal/ads/zzhwf;)Lcom/google/android/gms/internal/ads/zzhdg;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhyy;->zzf:Lcom/google/android/gms/internal/ads/zzhyy;

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhyy;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    new-instance v10, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwf;->zze()Lcom/google/android/gms/internal/ads/zzhwh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhwh;->zzd()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwf;->zzd()Lcom/google/android/gms/internal/ads/zzhwd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhwd;->zzd()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwf;->zzi()Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzhzz;->zzb(Lcom/google/android/gms/internal/ads/zzhdi;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwf;->zzf()Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzhzz;->zzb(Lcom/google/android/gms/internal/ads/zzhdi;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwf;->zzh()Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzhzz;->zzb(Lcom/google/android/gms/internal/ads/zzhdi;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwf;->zzj()Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzhzz;->zzb(Lcom/google/android/gms/internal/ads/zzhdi;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwf;->zzk()Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzhzz;->zzb(Lcom/google/android/gms/internal/ads/zzhdi;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwf;->zzl()Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzhzz;->zzb(Lcom/google/android/gms/internal/ads/zzhdi;)Ljava/math/BigInteger;

    move-result-object v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v10}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwf;->zzd()Lcom/google/android/gms/internal/ads/zzhwd;

    move-result-object v0

    new-instance v9, Lcom/google/android/gms/internal/ads/zzhzr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhzu;->zza:Lcom/google/android/gms/internal/ads/zzhkj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwd;->zzf()Lcom/google/android/gms/internal/ads/zzhwb;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzhkj;->zzb(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwd;->zzg()Lcom/google/android/gms/internal/ads/zzhwb;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzhkj;->zzb(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzhzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwd;->zzh()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwf;->zze()Lcom/google/android/gms/internal/ads/zzhwh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwh;->zze()Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhzy;->zzc()[B

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwf;->zzd()Lcom/google/android/gms/internal/ads/zzhwd;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwd;->zze()Lcom/google/android/gms/internal/ads/zzhwc;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwc;->zzc:Lcom/google/android/gms/internal/ads/zzhwc;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhzs;->zzb:[B

    :goto_0
    move-object v7, p0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhzs;->zza:[B

    goto :goto_0

    :goto_1
    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzhzr;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/google/android/gms/internal/ads/zzhzh;Lcom/google/android/gms/internal/ads/zzhzh;I[B[B[B)V

    return-object v9
.end method


# virtual methods
.method public final zza([B)[B
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
