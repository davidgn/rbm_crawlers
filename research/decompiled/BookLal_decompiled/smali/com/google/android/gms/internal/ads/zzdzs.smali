.class final Lcom/google/android/gms/internal/ads/zzdzs;
.super Lcom/google/android/gms/internal/ads/zzdzw;
.source "SourceFile"


# instance fields
.field private final zza:J

.field private final zzb:I


# direct methods
.method public synthetic constructor <init>(JI[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdzw;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zza:J

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzb:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzdzw;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzw;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zza:J

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdzw;->zza()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzb:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdzw;->zzb()I

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zza:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzb:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zza:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzb:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v2, v2, 0x22

    add-int/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "OnDeviceStorageKey{id="

    const-string v5, ", eventType="

    invoke-static {v4, v2, v0, v1, v5}, Lcom/google/android/gms/ads/internal/util/client/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    const-string v0, "}"

    invoke-static {v3, v0, v4}, Le1/i;->b(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zza:J

    return-wide v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdzs;->zzb:I

    return v0
.end method
