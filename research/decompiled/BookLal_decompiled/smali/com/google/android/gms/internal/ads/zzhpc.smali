.class public final Lcom/google/android/gms/internal/ads/zzhpc;
.super Lcom/google/android/gms/internal/ads/zzhpf;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhpd;

.field private final zzb:Lcom/google/android/gms/internal/ads/zziaa;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhpd;Lcom/google/android/gms/internal/ads/zziaa;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhpf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhpc;->zza:Lcom/google/android/gms/internal/ads/zzhpd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhpc;->zzb:Lcom/google/android/gms/internal/ads/zziaa;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzhpd;Lcom/google/android/gms/internal/ads/zziaa;)Lcom/google/android/gms/internal/ads/zzhpc;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhpd;->zzc()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziaa;->zzd()I

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhpc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhpc;-><init>(Lcom/google/android/gms/internal/ads/zzhpd;Lcom/google/android/gms/internal/ads/zziaa;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Key size mismatch"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzhde;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhpc;->zza:Lcom/google/android/gms/internal/ads/zzhpd;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zziaa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhpc;->zzb:Lcom/google/android/gms/internal/ads/zziaa;

    return-object v0
.end method
