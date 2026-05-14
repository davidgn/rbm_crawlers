.class final synthetic Lcom/google/android/gms/internal/ads/zzhfv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhmi;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhfv;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhfv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhfv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhfv;->zza:Lcom/google/android/gms/internal/ads/zzhfv;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzhco;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhgg;

    sget v0, Lcom/google/android/gms/internal/ads/zzhfx;->zza:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhgg;->zze()Lcom/google/android/gms/internal/ads/zzhgk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhgk;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhgg;->zze()Lcom/google/android/gms/internal/ads/zzhgk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhgk;->zzd()Lcom/google/android/gms/internal/ads/zzhdw;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhdc;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhdb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhdb;->zzb()Lcom/google/android/gms/internal/ads/zzhch;

    move-result-object v0

    sget v2, Lcom/google/android/gms/internal/ads/zzhfu;->zza:I

    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhdk;->zza(Lcom/google/android/gms/internal/ads/zzhde;)[B

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzicn;->zza()Lcom/google/android/gms/internal/ads/zzicn;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhru;->zzd([BLcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzhru;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzids; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhfu;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzhfu;-><init>(Lcom/google/android/gms/internal/ads/zzhru;Lcom/google/android/gms/internal/ads/zzhch;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhgg;->zzc()Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzhiy;->zzc(Lcom/google/android/gms/internal/ads/zzhch;Lcom/google/android/gms/internal/ads/zzhzy;)Lcom/google/android/gms/internal/ads/zzhch;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
