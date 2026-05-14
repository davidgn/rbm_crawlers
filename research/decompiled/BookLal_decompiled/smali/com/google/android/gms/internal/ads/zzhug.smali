.class public final Lcom/google/android/gms/internal/ads/zzhug;
.super Lcom/google/android/gms/internal/ads/zzhwo;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhum;

.field private final zzb:Lcom/google/android/gms/internal/ads/zziaa;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhum;Lcom/google/android/gms/internal/ads/zziaa;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhug;->zza:Lcom/google/android/gms/internal/ads/zzhum;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhug;->zzb:Lcom/google/android/gms/internal/ads/zziaa;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzhum;Lcom/google/android/gms/internal/ads/zziaa;)Lcom/google/android/gms/internal/ads/zzhug;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaa;->zzd()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhum;->zzd()Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhzy;->zzc()[B

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zziaa;->zzc(Lcom/google/android/gms/internal/ads/zzhdi;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzb([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zza([B)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhug;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhug;-><init>(Lcom/google/android/gms/internal/ads/zzhum;Lcom/google/android/gms/internal/ads/zziaa;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Ed25519 keys mismatch"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaa;->zzd()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x41

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Ed25519 key must be constructed with key of length 32 bytes, not "

    invoke-static {p1, v0, v1}, LC/a;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzhde;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhug;->zza:Lcom/google/android/gms/internal/ads/zzhum;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhum;->zzf()Lcom/google/android/gms/internal/ads/zzhuf;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzhuf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhug;->zza:Lcom/google/android/gms/internal/ads/zzhum;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhum;->zzf()Lcom/google/android/gms/internal/ads/zzhuf;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhum;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhug;->zza:Lcom/google/android/gms/internal/ads/zzhum;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zziaa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhug;->zzb:Lcom/google/android/gms/internal/ads/zziaa;

    return-object v0
.end method

.method public final synthetic zzg()Lcom/google/android/gms/internal/ads/zzhwp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhug;->zza:Lcom/google/android/gms/internal/ads/zzhum;

    return-object v0
.end method
