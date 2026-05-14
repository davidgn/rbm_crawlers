.class public abstract Lcom/google/android/gms/internal/ads/zzhku;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhzy;

.field private final zzb:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhzy;Ljava/lang/Class;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhku;->zza:Lcom/google/android/gms/internal/ads/zzhzy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhku;->zzb:Ljava/lang/Class;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzhkt;Lcom/google/android/gms/internal/ads/zzhzy;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhks;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzhks;-><init>(Lcom/google/android/gms/internal/ads/zzhzy;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhkt;)V

    return-object v0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/ads/zzhmv;Lcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zzhco;
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzhzy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhku;->zza:Lcom/google/android/gms/internal/ads/zzhzy;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhku;->zzb:Ljava/lang/Class;

    return-object v0
.end method
