.class public final Lcom/google/android/gms/internal/ads/zzhum;
.super Lcom/google/android/gms/internal/ads/zzhwp;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhuf;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhzy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhzy;

.field private final zzd:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhuf;Lcom/google/android/gms/internal/ads/zzhzy;Lcom/google/android/gms/internal/ads/zzhzy;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhum;->zza:Lcom/google/android/gms/internal/ads/zzhuf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhum;->zzb:Lcom/google/android/gms/internal/ads/zzhzy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhum;->zzc:Lcom/google/android/gms/internal/ads/zzhzy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhum;->zzd:Ljava/lang/Integer;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzhue;Lcom/google/android/gms/internal/ads/zzhzy;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhum;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhuf;->zzb(Lcom/google/android/gms/internal/ads/zzhue;)Lcom/google/android/gms/internal/ads/zzhuf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhue;->zzd:Lcom/google/android/gms/internal/ads/zzhue;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhue;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x3e

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "For given Variant "

    const-string v1, " the value of idRequirement must be non-null"

    invoke-static {v0, p2, p0, v1}, LC/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhzy;->zzd()I

    move-result p0

    const/16 v2, 0x20

    if-ne p0, v2, :cond_8

    new-instance p0, Lcom/google/android/gms/internal/ads/zzhum;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhuf;->zzc()Lcom/google/android/gms/internal/ads/zzhue;

    move-result-object v2

    if-ne v2, v1, :cond_4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhlw;->zza:Lcom/google/android/gms/internal/ads/zzhzy;

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhuf;->zzc()Lcom/google/android/gms/internal/ads/zzhue;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhue;->zzb:Lcom/google/android/gms/internal/ads/zzhue;

    if-eq v1, v2, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhuf;->zzc()Lcom/google/android/gms/internal/ads/zzhue;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhue;->zzc:Lcom/google/android/gms/internal/ads/zzhue;

    if-ne v1, v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhuf;->zzc()Lcom/google/android/gms/internal/ads/zzhue;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhue;->zza:Lcom/google/android/gms/internal/ads/zzhue;

    if-ne v1, v2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhlw;->zzb(I)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v1

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhuf;->zzc()Lcom/google/android/gms/internal/ads/zzhue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhue;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unknown Variant: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhlw;->zza(I)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v1

    :goto_3
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzhum;-><init>(Lcom/google/android/gms/internal/ads/zzhuf;Lcom/google/android/gms/internal/ads/zzhzy;Lcom/google/android/gms/internal/ads/zzhzy;Ljava/lang/Integer;)V

    return-object p0

    :cond_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhzy;->zzd()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x41

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Ed25519 key must be constructed with key of length 32 bytes, not "

    invoke-static {p1, p2, v0}, LC/a;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzhde;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhum;->zza:Lcom/google/android/gms/internal/ads/zzhuf;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhum;->zzd:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzhzy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhum;->zzb:Lcom/google/android/gms/internal/ads/zzhzy;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhzy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhum;->zzc:Lcom/google/android/gms/internal/ads/zzhzy;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhuf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhum;->zza:Lcom/google/android/gms/internal/ads/zzhuf;

    return-object v0
.end method
