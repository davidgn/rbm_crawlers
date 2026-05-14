.class final synthetic Lcom/google/android/gms/internal/ads/zzhub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhkq;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhub;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhub;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhub;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhub;->zza:Lcom/google/android/gms/internal/ads/zzhub;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzhde;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhco;
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhtv;

    sget v0, Lcom/google/android/gms/internal/ads/zzhud;->zza:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhtv;->zzd()Lcom/google/android/gms/internal/ads/zzhtr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhtr;->zza()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhyy;->zze:Lcom/google/android/gms/internal/ads/zzhyy;

    const-string v2, "EC"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhyy;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyPairGenerator;

    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhty;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhty;-><init>([B)V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzhty;->zza(Lcom/google/android/gms/internal/ads/zzhtv;)Lcom/google/android/gms/internal/ads/zzhty;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzhty;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhty;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzhty;->zzb(Ljava/security/spec/ECPoint;)Lcom/google/android/gms/internal/ads/zzhty;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhty;->zzd()Lcom/google/android/gms/internal/ads/zzhtz;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhtw;

    invoke-direct {p2, v3}, Lcom/google/android/gms/internal/ads/zzhtw;-><init>([B)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzhtw;->zza(Lcom/google/android/gms/internal/ads/zzhtz;)Lcom/google/android/gms/internal/ads/zzhtw;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhzz;->zza(Ljava/math/BigInteger;Lcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zzhzz;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzhtw;->zzb(Lcom/google/android/gms/internal/ads/zzhzz;)Lcom/google/android/gms/internal/ads/zzhtw;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhtw;->zzc()Lcom/google/android/gms/internal/ads/zzhtx;

    move-result-object p1

    return-object p1
.end method
