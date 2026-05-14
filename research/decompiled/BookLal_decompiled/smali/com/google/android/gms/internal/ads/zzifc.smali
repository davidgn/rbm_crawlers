.class final Lcom/google/android/gms/internal/ads/zzifc;
.super Lcom/google/android/gms/internal/ads/zzibs;
.source "SourceFile"


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzife;

.field zzb:Lcom/google/android/gms/internal/ads/zzibu;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zziff;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zziff;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzifc;->zzc:Lcom/google/android/gms/internal/ads/zziff;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibs;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzife;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzife;-><init>(Lcom/google/android/gms/internal/ads/zzibz;[B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzifc;->zza:Lcom/google/android/gms/internal/ads/zzife;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzifc;->zzb()Lcom/google/android/gms/internal/ads/zzibu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzifc;->zzb:Lcom/google/android/gms/internal/ads/zzibu;

    return-void
.end method

.method private final zzb()Lcom/google/android/gms/internal/ads/zzibu;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzifc;->zza:Lcom/google/android/gms/internal/ads/zzife;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzife;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzife;->zza()Lcom/google/android/gms/internal/ads/zzibw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibz;->zzq()Lcom/google/android/gms/internal/ads/zzibu;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzifc;->zzb:Lcom/google/android/gms/internal/ads/zzibu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzifc;->zzb:Lcom/google/android/gms/internal/ads/zzibu;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzibu;->zza()B

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzifc;->zzb:Lcom/google/android/gms/internal/ads/zzibu;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzifc;->zzb()Lcom/google/android/gms/internal/ads/zzibu;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzifc;->zzb:Lcom/google/android/gms/internal/ads/zzibu;

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
