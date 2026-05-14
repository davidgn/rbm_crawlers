.class public final Lcom/google/android/gms/internal/ads/zzcxs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcxo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcxo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zza:Lcom/google/android/gms/internal/ads/zzcxo;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcxo;)Lcom/google/android/gms/internal/ads/zzcxs;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcxs;-><init>(Lcom/google/android/gms/internal/ads/zzcxo;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzcxo;)Lcom/google/android/gms/internal/ads/zzfjv;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcxo;->zza()Lcom/google/android/gms/internal/ads/zzfjv;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzimc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfjv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zza:Lcom/google/android/gms/internal/ads/zzcxo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcxs;->zzd(Lcom/google/android/gms/internal/ads/zzcxo;)Lcom/google/android/gms/internal/ads/zzfjv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxs;->zza:Lcom/google/android/gms/internal/ads/zzcxo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcxs;->zzd(Lcom/google/android/gms/internal/ads/zzcxo;)Lcom/google/android/gms/internal/ads/zzfjv;

    move-result-object v0

    return-object v0
.end method
