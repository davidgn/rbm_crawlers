.class public final Lcom/google/android/gms/internal/ads/zzhgg;
.super Lcom/google/android/gms/internal/ads/zzhdv;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhgk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhzy;

.field private final zzc:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhgk;Lcom/google/android/gms/internal/ads/zzhzy;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhdv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhgg;->zza:Lcom/google/android/gms/internal/ads/zzhgk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhgg;->zzb:Lcom/google/android/gms/internal/ads/zzhzy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhgg;->zzc:Ljava/lang/Integer;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzhgk;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhgg;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhgk;->zzc()Lcom/google/android/gms/internal/ads/zzhgj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgj;->zzb:Lcom/google/android/gms/internal/ads/zzhgj;

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhlw;->zza:Lcom/google/android/gms/internal/ads/zzhzy;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhgk;->zzc()Lcom/google/android/gms/internal/ads/zzhgj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgj;->zza:Lcom/google/android/gms/internal/ads/zzhgj;

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhlw;->zzb(I)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhgg;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzhgg;-><init>(Lcom/google/android/gms/internal/ads/zzhgk;Lcom/google/android/gms/internal/ads/zzhzy;Ljava/lang/Integer;)V

    return-object v1

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant TINK the value of idRequirement must be non-null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhgk;->zzc()Lcom/google/android/gms/internal/ads/zzhgj;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unknown Variant: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzhde;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgg;->zza:Lcom/google/android/gms/internal/ads/zzhgk;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgg;->zzc:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhzy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgg;->zzb:Lcom/google/android/gms/internal/ads/zzhzy;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhgk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgg;->zza:Lcom/google/android/gms/internal/ads/zzhgk;

    return-object v0
.end method
