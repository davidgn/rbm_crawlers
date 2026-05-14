.class public Lcom/google/android/gms/internal/ads/zzajf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzao;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final zza:J

.field public final zzb:J

.field public final zzc:J

.field public final zzd:J

.field public final zze:J


# direct methods
.method public constructor <init>(JJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajf;->zza:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzb:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzc:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzd:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/zzajf;->zze:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzajf;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajf;->zza:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzajf;->zza:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzb:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzajf;->zzb:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzc:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzajf;->zzc:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzd:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzajf;->zzd:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajf;->zze:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzajf;->zze:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajf;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzb:J

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzc:J

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzd:J

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajf;->zze:J

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 15

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajf;->zza:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzb:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzc:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzd:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    iget-wide v12, p0, Lcom/google/android/gms/internal/ads/zzajf;->zze:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v2, v2, 0x36

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v8

    add-int/lit8 v2, v2, 0x15

    add-int/2addr v2, v11

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0xc

    add-int/2addr v2, v14

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Motion photo metadata: photoStartPosition="

    const-string v8, ", photoSize="

    invoke-static {v5, v2, v0, v1, v8}, Lcom/google/android/gms/ads/internal/util/client/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", photoPresentationTimestampUs="

    const-string v1, ", videoStartPosition="

    invoke-static {v5, v0, v6, v7, v1}, Lcom/google/android/gms/ads/internal/util/client/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", videoSize="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
