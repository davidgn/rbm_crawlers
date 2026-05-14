.class final synthetic Lcom/google/android/gms/internal/ads/zzhwj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhkq;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhwj;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhwj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhwj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhwj;->zza:Lcom/google/android/gms/internal/ads/zzhwj;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzhde;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhco;
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhwd;

    sget v0, Lcom/google/android/gms/internal/ads/zzhwl;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhyy;->zze:Lcom/google/android/gms/internal/ads/zzhyy;

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhyy;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPairGenerator;

    new-instance v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhwd;->zzc()I

    move-result v2

    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhwd;->zzd()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhwg;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhwg;-><init>([B)V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzhwg;->zza(Lcom/google/android/gms/internal/ads/zzhwd;)Lcom/google/android/gms/internal/ads/zzhwg;

    invoke-interface {v1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzhwg;->zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhwg;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzhwg;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhwg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhwg;->zzd()Lcom/google/android/gms/internal/ads/zzhwh;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhwe;

    invoke-direct {p2, v3}, Lcom/google/android/gms/internal/ads/zzhwe;-><init>([B)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzhwe;->zza(Lcom/google/android/gms/internal/ads/zzhwh;)Lcom/google/android/gms/internal/ads/zzhwe;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzhzz;->zza(Ljava/math/BigInteger;Lcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object p1

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhzz;->zza(Ljava/math/BigInteger;Lcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzhwe;->zzb(Lcom/google/android/gms/internal/ads/zzhzz;Lcom/google/android/gms/internal/ads/zzhzz;)Lcom/google/android/gms/internal/ads/zzhwe;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzhzz;->zza(Ljava/math/BigInteger;Lcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzhwe;->zzc(Lcom/google/android/gms/internal/ads/zzhzz;)Lcom/google/android/gms/internal/ads/zzhwe;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzhzz;->zza(Ljava/math/BigInteger;Lcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object p1

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhzz;->zza(Ljava/math/BigInteger;Lcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzhwe;->zzd(Lcom/google/android/gms/internal/ads/zzhzz;Lcom/google/android/gms/internal/ads/zzhzz;)Lcom/google/android/gms/internal/ads/zzhwe;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhzz;->zza(Ljava/math/BigInteger;Lcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzhwe;->zze(Lcom/google/android/gms/internal/ads/zzhzz;)Lcom/google/android/gms/internal/ads/zzhwe;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhwe;->zzf()Lcom/google/android/gms/internal/ads/zzhwf;

    move-result-object p1

    return-object p1
.end method
