.class public final Lcom/google/android/gms/internal/ads/zzgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Z

.field public final zzb:Z

.field public final zzc:Z

.field public final zzd:Z

.field public final zze:Z

.field public final zzf:I

.field public final zzg:I

.field public final zzh:Z

.field public final zzi:Z

.field public final zzj:Z

.field public final zzk:Z

.field public final zzl:B

.field public final zzm:B


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgr;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgr;->zza:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsj;->zza(Z)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgr;->zzb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v3, v0, [B

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgr;->zzb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzer;-><init>([BI)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzg:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzgs;->zza:Z

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-eqz v3, :cond_1

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzb:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzh:Z

    goto/16 :goto_7

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    if-ge v3, v6, :cond_3

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzb:Z

    if-eqz v3, :cond_5

    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto :goto_3

    :cond_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzb:Z

    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzh:Z

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v3

    move v6, v1

    :goto_4
    if-gt v6, v3, :cond_b

    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    const/4 v7, 0x7

    if-nez v6, :cond_6

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v8

    if-le v8, v7, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    goto :goto_5

    :cond_6
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v8

    if-le v8, v7, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    :cond_7
    :goto_5
    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzb:Z

    if-eqz v7, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    :cond_8
    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzh:Z

    if-eqz v7, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v7

    if-eqz v7, :cond_a

    if-nez v6, :cond_9

    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    goto :goto_6

    :cond_9
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_a
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_b
    :goto_7
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v3

    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v4

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzgs;->zza:Z

    if-nez v3, :cond_c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzc:Z

    if-eqz v3, :cond_d

    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto :goto_8

    :cond_c
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzc:Z

    :cond_d
    :goto_8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzgs;->zza:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_e

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgs;->zze:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzd:Z

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzf:I

    goto :goto_b

    :cond_e
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v5

    if-eqz v5, :cond_10

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzd:Z

    goto :goto_9

    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzd:Z

    if-nez v5, :cond_11

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgs;->zze:Z

    goto :goto_a

    :cond_11
    :goto_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v5

    if-eqz v5, :cond_12

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgs;->zze:Z

    goto :goto_a

    :cond_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzgs;->zze:Z

    :goto_a
    if-eqz v3, :cond_13

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzf:I

    goto :goto_b

    :cond_13
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzf:I

    :goto_b
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzg:I

    if-ne v3, v4, :cond_14

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzi:Z

    goto :goto_c

    :cond_14
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzi:Z

    :goto_c
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzg:I

    if-eq v0, v2, :cond_15

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzj:Z

    goto :goto_d

    :cond_15
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzj:Z

    :goto_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzl:B

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzm:B

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v0

    int-to-byte v0, v0

    goto :goto_e

    :cond_16
    iput-byte v1, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzl:B

    iput-byte v1, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzm:B

    move v0, v1

    :goto_e
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzj:Z

    if-eqz v3, :cond_17

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzk:Z

    goto :goto_10

    :cond_17
    iget-byte v3, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzl:B

    if-ne v3, v2, :cond_18

    iget-byte v3, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzm:B

    const/16 v5, 0xd

    if-ne v3, v5, :cond_18

    if-nez v0, :cond_18

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzk:Z

    goto :goto_10

    :cond_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzg:I

    if-nez v0, :cond_19

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzk:Z

    move v1, v2

    goto :goto_f

    :cond_19
    if-ne v0, v2, :cond_1a

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzk:Z

    goto :goto_f

    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzi:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzk:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v1

    goto :goto_f

    :cond_1b
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzk:Z

    :cond_1c
    :goto_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgs;->zzk:Z

    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    :cond_1d
    :goto_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzgr;)Lcom/google/android/gms/internal/ads/zzgs;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Lcom/google/android/gms/internal/ads/zzgr;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgq; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
