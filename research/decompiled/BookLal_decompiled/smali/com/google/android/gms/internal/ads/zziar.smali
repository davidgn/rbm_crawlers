.class final Lcom/google/android/gms/internal/ads/zziar;
.super Lcom/google/android/gms/internal/ads/zziat;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzias;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzias;->zza:Lcom/google/android/gms/internal/ads/zziav;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zziat;-><init>(Lcom/google/android/gms/internal/ads/zziav;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziat;->zza()Lcom/google/android/gms/internal/ads/zziau;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zziau;->zzf:Ljava/lang/Object;

    return-object v0
.end method
