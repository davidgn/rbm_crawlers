.class final Lcom/google/android/gms/internal/ads/zzibr;
.super Lcom/google/android/gms/internal/ads/zzibs;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzibz;

.field private zzb:I

.field private final zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzibz;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzibr;->zza:Lcom/google/android/gms/internal/ads/zzibz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibs;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzibr;->zzb:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibz;->zzb()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzibr;->zzc:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzibr;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzibr;->zzc:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzibr;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzibr;->zzc:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzibr;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzibr;->zza:Lcom/google/android/gms/internal/ads/zzibz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzibz;->zza(I)B

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
