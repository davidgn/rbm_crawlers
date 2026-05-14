.class public final Lcom/google/android/gms/internal/ads/zzhty;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzhtv;

.field private zzb:Ljava/security/spec/ECPoint;

.field private zzc:Ljava/lang/Integer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhty;->zza:Lcom/google/android/gms/internal/ads/zzhtv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhty;->zzb:Ljava/security/spec/ECPoint;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhty;->zzc:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhty;->zza:Lcom/google/android/gms/internal/ads/zzhtv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhty;->zzb:Ljava/security/spec/ECPoint;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhty;->zzc:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzhtv;)Lcom/google/android/gms/internal/ads/zzhty;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhty;->zza:Lcom/google/android/gms/internal/ads/zzhtv;

    return-object p0
.end method

.method public final zzb(Ljava/security/spec/ECPoint;)Lcom/google/android/gms/internal/ads/zzhty;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhty;->zzb:Ljava/security/spec/ECPoint;

    return-object p0
.end method

.method public final zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhty;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhty;->zzc:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzhtz;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhty;->zza:Lcom/google/android/gms/internal/ads/zzhtv;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhty;->zzb:Ljava/security/spec/ECPoint;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhtv;->zzd()Lcom/google/android/gms/internal/ads/zzhtr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhtr;->zza()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhkh;->zza(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhty;->zza:Lcom/google/android/gms/internal/ads/zzhtv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhtv;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhty;->zzc:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhty;->zza:Lcom/google/android/gms/internal/ads/zzhtv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhtv;->zza()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhty;->zzc:Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhty;->zza:Lcom/google/android/gms/internal/ads/zzhtv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhtv;->zzf()Lcom/google/android/gms/internal/ads/zzhtu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhtu;->zzd:Lcom/google/android/gms/internal/ads/zzhtu;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhlw;->zza:Lcom/google/android/gms/internal/ads/zzhzy;

    :goto_2
    move-object v4, v0

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhty;->zza:Lcom/google/android/gms/internal/ads/zzhtv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhtv;->zzf()Lcom/google/android/gms/internal/ads/zzhtu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhtu;->zzc:Lcom/google/android/gms/internal/ads/zzhtu;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhty;->zza:Lcom/google/android/gms/internal/ads/zzhtv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhtv;->zzf()Lcom/google/android/gms/internal/ads/zzhtu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhtu;->zzb:Lcom/google/android/gms/internal/ads/zzhtu;

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhty;->zza:Lcom/google/android/gms/internal/ads/zzhtv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhtv;->zzf()Lcom/google/android/gms/internal/ads/zzhtu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhtu;->zza:Lcom/google/android/gms/internal/ads/zzhtu;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhty;->zzc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhlw;->zzb(I)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v0

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhty;->zza:Lcom/google/android/gms/internal/ads/zzhtv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhtv;->zzf()Lcom/google/android/gms/internal/ads/zzhtu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhtu;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown EcdsaParameters.Variant: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhty;->zzc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhlw;->zza(I)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v0

    goto :goto_2

    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhtz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhty;->zza:Lcom/google/android/gms/internal/ads/zzhtv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhty;->zzb:Ljava/security/spec/ECPoint;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhty;->zzc:Ljava/lang/Integer;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhtz;-><init>(Lcom/google/android/gms/internal/ads/zzhtv;Ljava/security/spec/ECPoint;Lcom/google/android/gms/internal/ads/zzhzy;Ljava/lang/Integer;[B)V

    return-object v0

    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without public point"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
