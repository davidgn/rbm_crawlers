.class final Lcom/google/android/gms/internal/ads/zzhzk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhpe;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhpe;

.field final zzb:Lcom/google/android/gms/internal/ads/zzhpe;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhpe;Lcom/google/android/gms/internal/ads/zzhpe;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhzk;->zza:Lcom/google/android/gms/internal/ads/zzhpe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhzk;->zzb:Lcom/google/android/gms/internal/ads/zzhpe;

    return-void
.end method


# virtual methods
.method public final zza([BI)[B
    .locals 2

    array-length v0, p1

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzk;->zza:Lcom/google/android/gms/internal/ads/zzhpe;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhpe;->zza([BI)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzk;->zzb:Lcom/google/android/gms/internal/ads/zzhpe;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhpe;->zza([BI)[B

    move-result-object p1

    return-object p1
.end method
