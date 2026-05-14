.class final Lcom/google/android/gms/internal/ads/zzias;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zziav;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zziav;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzias;->zza:Lcom/google/android/gms/internal/ads/zziav;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzias;->zza:Lcom/google/android/gms/internal/ads/zziav;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziav;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzias;->zza:Lcom/google/android/gms/internal/ads/zziav;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zziav;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zziar;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zziar;-><init>(Lcom/google/android/gms/internal/ads/zzias;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzias;->zza:Lcom/google/android/gms/internal/ads/zziav;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zziav;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zziau;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzias;->zza:Lcom/google/android/gms/internal/ads/zziav;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zziav;->zzb:I

    return v0
.end method
