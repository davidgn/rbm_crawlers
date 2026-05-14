.class public final Lcom/google/android/gms/internal/ads/zzdmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdli;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdli;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zza:Lcom/google/android/gms/internal/ads/zzdli;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdli;)Lcom/google/android/gms/internal/ads/zzdmg;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdmg;-><init>(Lcom/google/android/gms/internal/ads/zzdli;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcjz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zza:Lcom/google/android/gms/internal/ads/zzdli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdli;->zzb()Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zza:Lcom/google/android/gms/internal/ads/zzdli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdli;->zzb()Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object v0

    return-object v0
.end method
