.class public final Lcom/google/android/gms/internal/ads/zzhnp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzhnz;

.field private zzb:Lcom/google/android/gms/internal/ads/zziaa;

.field private zzc:Ljava/lang/Integer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zza:Lcom/google/android/gms/internal/ads/zzhnz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zzb:Lcom/google/android/gms/internal/ads/zziaa;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zzc:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zza:Lcom/google/android/gms/internal/ads/zzhnz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zzb:Lcom/google/android/gms/internal/ads/zziaa;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zzc:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzhnz;)Lcom/google/android/gms/internal/ads/zzhnp;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zza:Lcom/google/android/gms/internal/ads/zzhnz;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zziaa;)Lcom/google/android/gms/internal/ads/zzhnp;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zzb:Lcom/google/android/gms/internal/ads/zziaa;

    return-object p0
.end method

.method public final zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhnp;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zzc:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzhnq;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zza:Lcom/google/android/gms/internal/ads/zzhnz;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zzb:Lcom/google/android/gms/internal/ads/zziaa;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhnz;->zzc()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zziaa;->zzd()I

    move-result v1

    if-ne v2, v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhnz;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zzc:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zza:Lcom/google/android/gms/internal/ads/zzhnz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhnz;->zza()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zzc:Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zza:Lcom/google/android/gms/internal/ads/zzhnz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhnz;->zzf()Lcom/google/android/gms/internal/ads/zzhny;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhny;->zzd:Lcom/google/android/gms/internal/ads/zzhny;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhlw;->zza:Lcom/google/android/gms/internal/ads/zzhzy;

    :goto_2
    move-object v4, v0

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zza:Lcom/google/android/gms/internal/ads/zzhnz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhnz;->zzf()Lcom/google/android/gms/internal/ads/zzhny;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhny;->zzc:Lcom/google/android/gms/internal/ads/zzhny;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zza:Lcom/google/android/gms/internal/ads/zzhnz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhnz;->zzf()Lcom/google/android/gms/internal/ads/zzhny;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhny;->zzb:Lcom/google/android/gms/internal/ads/zzhny;

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zza:Lcom/google/android/gms/internal/ads/zzhnz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhnz;->zzf()Lcom/google/android/gms/internal/ads/zzhny;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhny;->zza:Lcom/google/android/gms/internal/ads/zzhny;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zzc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhlw;->zzb(I)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v0

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zza:Lcom/google/android/gms/internal/ads/zzhnz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhnz;->zzf()Lcom/google/android/gms/internal/ads/zzhny;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown HmacParameters.Variant: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zzc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhlw;->zza(I)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v0

    goto :goto_2

    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhnq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zza:Lcom/google/android/gms/internal/ads/zzhnz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zzb:Lcom/google/android/gms/internal/ads/zziaa;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhnp;->zzc:Ljava/lang/Integer;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhnq;-><init>(Lcom/google/android/gms/internal/ads/zzhnz;Lcom/google/android/gms/internal/ads/zziaa;Lcom/google/android/gms/internal/ads/zzhzy;Ljava/lang/Integer;[B)V

    return-object v0

    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Key size mismatch"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters and/or key material"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
