.class abstract Lcom/google/android/gms/internal/ads/zziat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field zza:Lcom/google/android/gms/internal/ads/zziau;

.field zzb:Lcom/google/android/gms/internal/ads/zziau;

.field zzc:I

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zziav;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zziav;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzd:Lcom/google/android/gms/internal/ads/zziav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zziav;->zzd:Lcom/google/android/gms/internal/ads/zziau;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zziau;->zzd:Lcom/google/android/gms/internal/ads/zziau;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zza:Lcom/google/android/gms/internal/ads/zziau;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zzb:Lcom/google/android/gms/internal/ads/zziau;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zziav;->zzc:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zzd:Lcom/google/android/gms/internal/ads/zziav;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziat;->zza:Lcom/google/android/gms/internal/ads/zziau;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zziav;->zzd:Lcom/google/android/gms/internal/ads/zziau;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zzb:Lcom/google/android/gms/internal/ads/zziau;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzd:Lcom/google/android/gms/internal/ads/zziav;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zziav;->zzd(Lcom/google/android/gms/internal/ads/zziau;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zzb:Lcom/google/android/gms/internal/ads/zziau;

    iget v0, v1, Lcom/google/android/gms/internal/ads/zziav;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zziau;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zzd:Lcom/google/android/gms/internal/ads/zziav;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziat;->zza:Lcom/google/android/gms/internal/ads/zziau;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zziav;->zzd:Lcom/google/android/gms/internal/ads/zziau;

    if-eq v1, v2, :cond_1

    iget v0, v0, Lcom/google/android/gms/internal/ads/zziav;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zziat;->zzc:I

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zziau;->zzd:Lcom/google/android/gms/internal/ads/zziau;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziat;->zza:Lcom/google/android/gms/internal/ads/zziau;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zziat;->zzb:Lcom/google/android/gms/internal/ads/zziau;

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
