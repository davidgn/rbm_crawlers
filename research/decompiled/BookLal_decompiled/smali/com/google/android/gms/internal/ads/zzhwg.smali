.class public final Lcom/google/android/gms/internal/ads/zzhwg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzhwd;

.field private zzb:Ljava/math/BigInteger;

.field private zzc:Ljava/lang/Integer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zzb:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zzc:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zzb:Ljava/math/BigInteger;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zzc:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzhwd;)Lcom/google/android/gms/internal/ads/zzhwg;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    return-object p0
.end method

.method public final zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhwg;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zzb:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhwg;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zzc:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzhwh;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zzb:Ljava/math/BigInteger;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhwd;->zzc()I

    move-result v1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwd;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zzc:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwd;->zza()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zzc:Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwd;->zze()Lcom/google/android/gms/internal/ads/zzhwc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhwc;->zzd:Lcom/google/android/gms/internal/ads/zzhwc;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhlw;->zza:Lcom/google/android/gms/internal/ads/zzhzy;

    :goto_2
    move-object v4, v0

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwd;->zze()Lcom/google/android/gms/internal/ads/zzhwc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhwc;->zzc:Lcom/google/android/gms/internal/ads/zzhwc;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwd;->zze()Lcom/google/android/gms/internal/ads/zzhwc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhwc;->zzb:Lcom/google/android/gms/internal/ads/zzhwc;

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwd;->zze()Lcom/google/android/gms/internal/ads/zzhwc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhwc;->zza:Lcom/google/android/gms/internal/ads/zzhwc;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zzc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhlw;->zzb(I)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v0

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhwd;->zze()Lcom/google/android/gms/internal/ads/zzhwc;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown RsaSsaPssParameters.Variant: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zzc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhlw;->zza(I)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v0

    goto :goto_2

    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhwh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zzb:Ljava/math/BigInteger;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhwg;->zzc:Ljava/lang/Integer;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhwh;-><init>(Lcom/google/android/gms/internal/ads/zzhwd;Ljava/math/BigInteger;Lcom/google/android/gms/internal/ads/zzhzy;Ljava/lang/Integer;[B)V

    return-object v0

    :cond_8
    new-instance v2, Ljava/security/GeneralSecurityException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x38

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Got modulus size "

    const-string v4, ", but parameters requires modulus size "

    invoke-static {v5, v3, v0, v4, v1}, Lcom/google/android/gms/ads/internal/util/client/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without modulus"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
