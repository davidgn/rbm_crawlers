.class final Lcom/google/android/gms/internal/ads/zzgwz;
.super Lcom/google/android/gms/internal/ads/zzgwy;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgxa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgxa;I)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwz;->zza:Lcom/google/android/gms/internal/ads/zzgxa;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgwy;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgwh;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwz;->zza:Lcom/google/android/gms/internal/ads/zzgxa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxa;->zza()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwx;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgwx;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgxc;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxc;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzgtb;)V

    return-object v2
.end method
