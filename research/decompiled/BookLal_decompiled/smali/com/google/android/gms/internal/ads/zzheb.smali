.class public final Lcom/google/android/gms/internal/ads/zzheb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzhek;

.field private zzb:Lcom/google/android/gms/internal/ads/zziaa;

.field private zzc:Lcom/google/android/gms/internal/ads/zziaa;

.field private zzd:Ljava/lang/Integer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzheb;->zza:Lcom/google/android/gms/internal/ads/zzhek;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzb:Lcom/google/android/gms/internal/ads/zziaa;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzc:Lcom/google/android/gms/internal/ads/zziaa;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzd:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzheb;->zza:Lcom/google/android/gms/internal/ads/zzhek;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzb:Lcom/google/android/gms/internal/ads/zziaa;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzc:Lcom/google/android/gms/internal/ads/zziaa;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzd:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzhek;)Lcom/google/android/gms/internal/ads/zzheb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzheb;->zza:Lcom/google/android/gms/internal/ads/zzhek;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zziaa;)Lcom/google/android/gms/internal/ads/zzheb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzb:Lcom/google/android/gms/internal/ads/zziaa;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zziaa;)Lcom/google/android/gms/internal/ads/zzheb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzc:Lcom/google/android/gms/internal/ads/zziaa;

    return-object p0
.end method

.method public final zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzheb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzd:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhec;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzheb;->zza:Lcom/google/android/gms/internal/ads/zzhek;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzb:Lcom/google/android/gms/internal/ads/zziaa;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzc:Lcom/google/android/gms/internal/ads/zziaa;

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhek;->zzc()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zziaa;->zzd()I

    move-result v1

    if-ne v2, v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhek;->zzd()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzc:Lcom/google/android/gms/internal/ads/zziaa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zziaa;->zzd()I

    move-result v1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzheb;->zza:Lcom/google/android/gms/internal/ads/zzhek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhek;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzd:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzheb;->zza:Lcom/google/android/gms/internal/ads/zzhek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhek;->zza()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzd:Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzheb;->zza:Lcom/google/android/gms/internal/ads/zzhek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhek;->zzg()Lcom/google/android/gms/internal/ads/zzhej;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhej;->zzc:Lcom/google/android/gms/internal/ads/zzhej;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhlw;->zza:Lcom/google/android/gms/internal/ads/zzhzy;

    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzheb;->zza:Lcom/google/android/gms/internal/ads/zzhek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhek;->zzg()Lcom/google/android/gms/internal/ads/zzhej;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhej;->zzb:Lcom/google/android/gms/internal/ads/zzhej;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzd:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhlw;->zza(I)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzheb;->zza:Lcom/google/android/gms/internal/ads/zzhek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhek;->zzg()Lcom/google/android/gms/internal/ads/zzhej;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhej;->zza:Lcom/google/android/gms/internal/ads/zzhej;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzd:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhlw;->zzb(I)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v0

    goto :goto_2

    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhec;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzheb;->zza:Lcom/google/android/gms/internal/ads/zzhek;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzb:Lcom/google/android/gms/internal/ads/zziaa;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzc:Lcom/google/android/gms/internal/ads/zziaa;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzheb;->zzd:Ljava/lang/Integer;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhec;-><init>(Lcom/google/android/gms/internal/ads/zzhek;Lcom/google/android/gms/internal/ads/zziaa;Lcom/google/android/gms/internal/ads/zziaa;Lcom/google/android/gms/internal/ads/zzhzy;Ljava/lang/Integer;[B)V

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzheb;->zza:Lcom/google/android/gms/internal/ads/zzhek;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhek;->zzg()Lcom/google/android/gms/internal/ads/zzhej;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown AesCtrHmacAeadParameters.Variant: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HMAC key size mismatch"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "AES key size mismatch"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without key material"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
