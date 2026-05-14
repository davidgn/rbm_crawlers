.class public final Lcom/google/android/gms/internal/ads/zzhtq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzhtt;

.field private zzb:Lcom/google/android/gms/internal/ads/zzhtr;

.field private zzc:Lcom/google/android/gms/internal/ads/zzhts;

.field private zzd:Lcom/google/android/gms/internal/ads/zzhtu;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhtq;->zza:Lcom/google/android/gms/internal/ads/zzhtt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhtq;->zzb:Lcom/google/android/gms/internal/ads/zzhtr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhtq;->zzc:Lcom/google/android/gms/internal/ads/zzhts;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhtu;->zzd:Lcom/google/android/gms/internal/ads/zzhtu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhtq;->zzd:Lcom/google/android/gms/internal/ads/zzhtu;

    return-void
.end method

.method public synthetic constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhtq;->zza:Lcom/google/android/gms/internal/ads/zzhtt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhtq;->zzb:Lcom/google/android/gms/internal/ads/zzhtr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhtq;->zzc:Lcom/google/android/gms/internal/ads/zzhts;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhtu;->zzd:Lcom/google/android/gms/internal/ads/zzhtu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhtq;->zzd:Lcom/google/android/gms/internal/ads/zzhtu;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzhtt;)Lcom/google/android/gms/internal/ads/zzhtq;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhtq;->zza:Lcom/google/android/gms/internal/ads/zzhtt;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhtr;)Lcom/google/android/gms/internal/ads/zzhtq;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhtq;->zzb:Lcom/google/android/gms/internal/ads/zzhtr;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzhts;)Lcom/google/android/gms/internal/ads/zzhtq;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhtq;->zzc:Lcom/google/android/gms/internal/ads/zzhts;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzhtu;)Lcom/google/android/gms/internal/ads/zzhtq;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhtq;->zzd:Lcom/google/android/gms/internal/ads/zzhtu;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhtv;
    .locals 7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhtq;->zza:Lcom/google/android/gms/internal/ads/zzhtt;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhtq;->zzb:Lcom/google/android/gms/internal/ads/zzhtr;

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhtq;->zzc:Lcom/google/android/gms/internal/ads/zzhts;

    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhtq;->zzd:Lcom/google/android/gms/internal/ads/zzhtu;

    if-eqz v4, :cond_6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhtr;->zza:Lcom/google/android/gms/internal/ads/zzhtr;

    if-ne v2, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhts;->zza:Lcom/google/android/gms/internal/ads/zzhts;

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "NIST_P256 requires SHA256"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhtr;->zzb:Lcom/google/android/gms/internal/ads/zzhtr;

    if-ne v2, v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhts;->zzb:Lcom/google/android/gms/internal/ads/zzhts;

    if-eq v3, v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhts;->zzc:Lcom/google/android/gms/internal/ads/zzhts;

    if-ne v3, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "NIST_P384 requires SHA384 or SHA512"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhtr;->zzc:Lcom/google/android/gms/internal/ads/zzhtr;

    if-ne v2, v0, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhts;->zzc:Lcom/google/android/gms/internal/ads/zzhts;

    if-ne v3, v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "NIST_P521 requires SHA512"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    new-instance v6, Lcom/google/android/gms/internal/ads/zzhtv;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhtv;-><init>(Lcom/google/android/gms/internal/ads/zzhtt;Lcom/google/android/gms/internal/ads/zzhtr;Lcom/google/android/gms/internal/ads/zzhts;Lcom/google/android/gms/internal/ads/zzhtu;[B)V

    return-object v6

    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "EC curve type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "signature encoding is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
