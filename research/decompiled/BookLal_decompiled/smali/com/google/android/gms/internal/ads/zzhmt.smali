.class public final Lcom/google/android/gms/internal/ads/zzhmt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhms;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhms;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmt;->zza:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static zza(I)[B
    .locals 1

    new-array p0, p0, [B

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhmt;->zza:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method

.method public static synthetic zzb()Ljava/security/SecureRandom;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhmt;->zzc()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    return-object v0
.end method

.method private static zzc()Ljava/security/SecureRandom;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjw;->zza()Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "SHA1PRNG"

    invoke-static {v1, v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0
.end method
