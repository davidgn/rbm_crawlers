.class public final Lcom/google/android/gms/internal/ads/zzhzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhdh;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzhkj;

.field private static final zzb:[B

.field private static final zzc:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkj;->zza()Lcom/google/android/gms/internal/ads/zzhki;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhzh;->zzc:Lcom/google/android/gms/internal/ads/zzhzh;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhwb;->zza:Lcom/google/android/gms/internal/ads/zzhwb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhki;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhki;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhzh;->zzd:Lcom/google/android/gms/internal/ads/zzhzh;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhwb;->zzb:Lcom/google/android/gms/internal/ads/zzhwb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhki;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhki;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhzh;->zze:Lcom/google/android/gms/internal/ads/zzhzh;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhwb;->zzc:Lcom/google/android/gms/internal/ads/zzhwb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhki;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhki;->zzb()Lcom/google/android/gms/internal/ads/zzhkj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhzu;->zza:Lcom/google/android/gms/internal/ads/zzhkj;

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhzu;->zzb:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhzu;->zzc:[B

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhwh;)Lcom/google/android/gms/internal/ads/zzhdh;
    .locals 10

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhyb;->zze(Lcom/google/android/gms/internal/ads/zzhwh;)Lcom/google/android/gms/internal/ads/zzhdh;

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

    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwh;->zzd()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwh;->zzf()Lcom/google/android/gms/internal/ads/zzhwd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhwd;->zzd()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwh;->zzf()Lcom/google/android/gms/internal/ads/zzhwd;

    move-result-object v0

    new-instance v9, Lcom/google/android/gms/internal/ads/zzhzt;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwh;->zze()Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhzy;->zzc()[B

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwh;->zzf()Lcom/google/android/gms/internal/ads/zzhwd;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwd;->zze()Lcom/google/android/gms/internal/ads/zzhwc;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwc;->zzc:Lcom/google/android/gms/internal/ads/zzhwc;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhzu;->zzc:[B

    :goto_0
    move-object v7, p0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhzu;->zzb:[B

    goto :goto_0

    :goto_1
    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzhzt;-><init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/android/gms/internal/ads/zzhzh;Lcom/google/android/gms/internal/ads/zzhzh;I[B[B[B)V

    return-object v9
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
