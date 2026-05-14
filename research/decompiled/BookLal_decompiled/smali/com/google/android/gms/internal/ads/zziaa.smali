.class public final Lcom/google/android/gms/internal/ads/zziaa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhzy;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhzy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziaa;->zza:Lcom/google/android/gms/internal/ads/zzhzy;

    return-void
.end method

.method public static zza([BLcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zziaa;
    .locals 0

    new-instance p1, Lcom/google/android/gms/internal/ads/zziaa;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhzy;->zza([B)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zziaa;-><init>(Lcom/google/android/gms/internal/ads/zzhzy;)V

    return-object p1
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/ads/zziaa;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zziaa;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhmt;->zza(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhzy;->zza([B)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zziaa;-><init>(Lcom/google/android/gms/internal/ads/zzhzy;)V

    return-object v0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzhdi;)[B
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziaa;->zza:Lcom/google/android/gms/internal/ads/zzhzy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhzy;->zzc()[B

    move-result-object p1

    return-object p1
.end method

.method public final zzd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaa;->zza:Lcom/google/android/gms/internal/ads/zzhzy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhzy;->zzd()I

    move-result v0

    return v0
.end method
