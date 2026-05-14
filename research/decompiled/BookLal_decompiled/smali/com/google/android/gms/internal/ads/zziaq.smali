.class final Lcom/google/android/gms/internal/ads/zziaq;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zziav;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zziav;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziaq;->zza:Lcom/google/android/gms/internal/ads/zziav;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaq;->zza:Lcom/google/android/gms/internal/ads/zziav;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziav;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaq;->zza:Lcom/google/android/gms/internal/ads/zziav;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zziav;->zzc(Ljava/util/Map$Entry;)Lcom/google/android/gms/internal/ads/zziau;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zziap;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zziap;-><init>(Lcom/google/android/gms/internal/ads/zziaq;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaq;->zza:Lcom/google/android/gms/internal/ads/zziav;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zziav;->zzc(Ljava/util/Map$Entry;)Lcom/google/android/gms/internal/ads/zziau;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zziav;->zzd(Lcom/google/android/gms/internal/ads/zziau;Z)V

    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaq;->zza:Lcom/google/android/gms/internal/ads/zziav;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zziav;->zzb:I

    return v0
.end method
