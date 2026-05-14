.class public final Lcom/google/android/gms/internal/ads/zzaej;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaej;->zzb:[I

    return-void

    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzes;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzv;
    .locals 18

    const/16 v0, 0x8

    new-instance v1, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzer;->zza(Lcom/google/android/gms/internal/ads/zzes;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzc()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_3b

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v8

    if-eq v5, v8, :cond_0

    const v8, 0xac44

    goto :goto_0

    :cond_0
    const v8, 0xbb80

    :goto_0
    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    const/16 v10, 0x9

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v10

    const/16 v11, 0x10

    if-le v7, v5, :cond_2

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v12, 0x80

    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto :goto_1

    :cond_1
    const-string v0, "Invalid AC-4 DSI version: 0"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_2
    :goto_1
    if-ne v4, v5, :cond_4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaej;->zzg(Lcom/google/android/gms/internal/ads/zzer;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzm()V

    goto :goto_2

    :cond_3
    const-string v0, "Invalid AC-4 DSI bitrate."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_4
    :goto_2
    new-instance v12, Lcom/google/android/gms/internal/ads/zzaeh;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/google/android/gms/internal/ads/zzaeh;-><init>([B)V

    const/4 v14, 0x0

    :goto_3
    const/4 v6, 0x5

    const/4 v9, 0x2

    if-ge v14, v10, :cond_2d

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v10

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v16

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v17

    move/from16 v15, v16

    move/from16 v0, v17

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v15

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v3

    const/16 v13, 0xff

    if-ne v3, v13, :cond_6

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v3

    add-int/2addr v3, v13

    :cond_6
    if-le v15, v9, :cond_7

    mul-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    add-int/2addr v14, v5

    const/4 v3, 0x3

    const/4 v6, 0x7

    const/4 v9, 0x4

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzc()I

    move-result v10

    sub-int v10, v2, v10

    div-int/2addr v10, v0

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v13

    const/16 v11, 0x1f

    if-ne v13, v11, :cond_8

    move v11, v5

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    :goto_4
    move v0, v15

    move v15, v13

    move v13, v11

    move v11, v10

    const/4 v10, 0x0

    :goto_5
    iput v0, v12, Lcom/google/android/gms/internal/ads/zzaeh;->zzf:I

    if-nez v10, :cond_9

    if-nez v13, :cond_9

    const/4 v5, 0x6

    if-eq v15, v5, :cond_a

    :cond_9
    const/4 v5, 0x3

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v5, 0x7

    goto/16 :goto_17

    :goto_7
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v9

    iput v9, v12, Lcom/google/android/gms/internal/ads/zzaeh;->zzg:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_b
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    const/4 v9, 0x1

    if-ne v4, v9, :cond_d

    if-eq v0, v9, :cond_c

    if-ne v0, v5, :cond_d

    move v0, v5

    :cond_c
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_d
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    if-ne v4, v9, :cond_17

    if-lez v0, :cond_e

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v5

    iput-boolean v5, v12, Lcom/google/android/gms/internal/ads/zzaeh;->zza:Z

    :cond_e
    iget-boolean v5, v12, Lcom/google/android/gms/internal/ads/zzaeh;->zza:Z

    if-eqz v5, :cond_13

    if-eq v0, v9, :cond_10

    const/4 v5, 0x2

    if-ne v0, v5, :cond_f

    const/4 v5, 0x2

    goto :goto_8

    :cond_f
    move v6, v5

    const/16 v9, 0x18

    move v5, v0

    goto :goto_a

    :cond_10
    const/4 v5, 0x1

    :goto_8
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v9

    if-ltz v9, :cond_11

    const/16 v6, 0xf

    if-gt v9, v6, :cond_11

    iput v9, v12, Lcom/google/android/gms/internal/ads/zzaeh;->zzb:I

    :cond_11
    const/16 v6, 0xb

    if-lt v9, v6, :cond_12

    const/16 v6, 0xe

    if-gt v9, v6, :cond_12

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v6

    iput-boolean v6, v12, Lcom/google/android/gms/internal/ads/zzaeh;->zzd:Z

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v9

    iput v9, v12, Lcom/google/android/gms/internal/ads/zzaeh;->zze:I

    goto :goto_9

    :cond_12
    const/4 v6, 0x2

    :goto_9
    const/16 v9, 0x18

    :goto_a
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :goto_b
    const/4 v9, 0x1

    goto :goto_c

    :cond_13
    const/4 v6, 0x2

    move v5, v0

    goto :goto_b

    :goto_c
    if-eq v0, v9, :cond_14

    if-ne v0, v6, :cond_16

    :cond_14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v6

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v6, :cond_16

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    const/4 v0, 0x1

    add-int/2addr v9, v0

    const/16 v0, 0x8

    goto :goto_d

    :cond_16
    move v0, v5

    :cond_17
    if-nez v10, :cond_20

    if-eqz v13, :cond_18

    goto/16 :goto_15

    :cond_18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    const/4 v5, 0x1

    if-eqz v15, :cond_1e

    if-eq v15, v5, :cond_1e

    const/4 v6, 0x2

    if-eq v15, v6, :cond_1e

    const/4 v6, 0x3

    if-eq v15, v6, :cond_1c

    const/4 v6, 0x4

    if-eq v15, v6, :cond_1c

    const/4 v6, 0x5

    if-eq v15, v6, :cond_19

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v9

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v9, :cond_22

    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    add-int/2addr v6, v5

    goto :goto_e

    :cond_19
    if-nez v0, :cond_1b

    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzaej;->zzd(Lcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzaeh;)V

    :cond_1a
    :goto_f
    const/4 v0, 0x0

    goto :goto_16

    :cond_1b
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v9

    const/4 v6, 0x2

    const/4 v10, 0x0

    :goto_10
    add-int/lit8 v13, v9, 0x2

    if-ge v10, v13, :cond_22

    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzaej;->zze(Lcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzaeh;)V

    add-int/2addr v10, v5

    const/4 v6, 0x2

    goto :goto_10

    :cond_1c
    if-nez v0, :cond_1d

    const/4 v0, 0x0

    const/4 v6, 0x3

    :goto_11
    if-ge v0, v6, :cond_1a

    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzaej;->zzd(Lcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzaeh;)V

    add-int/2addr v0, v5

    goto :goto_11

    :cond_1d
    const/4 v6, 0x3

    const/4 v9, 0x0

    :goto_12
    if-ge v9, v6, :cond_22

    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzaej;->zze(Lcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzaeh;)V

    add-int/2addr v9, v5

    const/4 v6, 0x3

    goto :goto_12

    :cond_1e
    if-nez v0, :cond_1f

    const/4 v0, 0x0

    const/4 v6, 0x2

    :goto_13
    if-ge v0, v6, :cond_1a

    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzaej;->zzd(Lcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzaeh;)V

    add-int/2addr v0, v5

    goto :goto_13

    :cond_1f
    const/4 v6, 0x2

    const/4 v9, 0x0

    :goto_14
    if-ge v9, v6, :cond_22

    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzaej;->zze(Lcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzaeh;)V

    add-int/2addr v9, v5

    const/4 v6, 0x2

    goto :goto_14

    :cond_20
    :goto_15
    if-nez v0, :cond_21

    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzaej;->zzd(Lcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzaeh;)V

    goto :goto_f

    :cond_21
    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzaej;->zze(Lcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzaeh;)V

    :cond_22
    :goto_16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v5

    if-eqz v5, :cond_23

    goto/16 :goto_6

    :goto_17
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v6

    const/4 v9, 0x0

    :goto_18
    if-ge v9, v6, :cond_24

    const/16 v10, 0xf

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    const/4 v13, 0x1

    add-int/2addr v9, v13

    goto :goto_18

    :cond_23
    const/4 v5, 0x7

    :cond_24
    if-lez v0, :cond_28

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaej;->zzg(Lcom/google/android/gms/internal/ads/zzer;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_19

    :cond_25
    const-string v0, "Can\'t parse bitrate DSI."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_26
    :goto_19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzm()V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzo(I)V

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v6

    const/4 v13, 0x0

    :goto_1a
    if-ge v13, v6, :cond_27

    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    const/4 v10, 0x1

    add-int/2addr v13, v10

    goto :goto_1a

    :cond_27
    :goto_1b
    const/16 v9, 0x8

    const/4 v10, 0x1

    goto :goto_1c

    :cond_28
    const/4 v0, 0x5

    goto :goto_1b

    :goto_1c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzm()V

    if-ne v4, v10, :cond_2a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzc()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/2addr v2, v9

    sub-int/2addr v2, v11

    if-lt v3, v2, :cond_29

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzo(I)V

    goto :goto_1d

    :cond_29
    const-string v0, "pres_bytes is smaller than presentation bytes read."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_2a
    :goto_1d
    iget-boolean v1, v12, Lcom/google/android/gms/internal/ads/zzaeh;->zza:Z

    if-eqz v1, :cond_2c

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzaeh;->zzb:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2b

    goto :goto_1e

    :cond_2b
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2d

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Can\'t determine channel mode of presentation "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_2c
    const/4 v2, -0x1

    goto :goto_1e

    :cond_2d
    move v9, v0

    move v0, v6

    const/4 v2, -0x1

    const/4 v5, 0x7

    :goto_1e
    iget-boolean v1, v12, Lcom/google/android/gms/internal/ads/zzaeh;->zza:Z

    const/16 v3, 0xc

    if-eqz v1, :cond_32

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzaeh;->zzb:I

    iget-boolean v4, v12, Lcom/google/android/gms/internal/ads/zzaeh;->zzd:Z

    iget v6, v12, Lcom/google/android/gms/internal/ads/zzaeh;->zze:I

    const/16 v10, 0xd

    packed-switch v1, :pswitch_data_0

    move v0, v2

    :goto_1f
    :pswitch_0
    const/16 v2, 0xb

    goto :goto_20

    :pswitch_1
    const/16 v0, 0x18

    goto :goto_1f

    :pswitch_2
    const/16 v0, 0xe

    goto :goto_1f

    :pswitch_3
    move v0, v10

    goto :goto_1f

    :pswitch_4
    move v0, v3

    goto :goto_1f

    :pswitch_5
    const/16 v0, 0xb

    goto :goto_1f

    :pswitch_6
    move v0, v9

    goto :goto_1f

    :pswitch_7
    move v0, v5

    goto :goto_1f

    :pswitch_8
    const/4 v0, 0x6

    goto :goto_1f

    :pswitch_9
    const/4 v0, 0x3

    goto :goto_1f

    :pswitch_a
    const/4 v0, 0x2

    goto :goto_1f

    :pswitch_b
    const/4 v0, 0x1

    goto :goto_1f

    :goto_20
    if-eq v1, v2, :cond_2e

    if-eq v1, v3, :cond_2e

    if-eq v1, v10, :cond_2e

    const/16 v2, 0xe

    if-ne v1, v2, :cond_39

    :cond_2e
    if-nez v4, :cond_2f

    add-int/lit8 v0, v0, -0x2

    :cond_2f
    if-eqz v6, :cond_31

    const/4 v1, 0x1

    if-eq v6, v1, :cond_30

    goto :goto_22

    :cond_30
    add-int/lit8 v0, v0, -0x2

    goto :goto_22

    :cond_31
    add-int/lit8 v0, v0, -0x4

    goto :goto_22

    :cond_32
    const/4 v1, 0x1

    iget v0, v12, Lcom/google/android/gms/internal/ads/zzaeh;->zzc:I

    if-lez v0, :cond_33

    add-int/2addr v0, v1

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzaeh;->zzg:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_39

    const/16 v1, 0x11

    if-ne v0, v1, :cond_39

    const/16 v0, 0x15

    goto :goto_22

    :cond_33
    iget v0, v12, Lcom/google/android/gms/internal/ads/zzaeh;->zzg:I

    if-eqz v0, :cond_38

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    const/4 v1, 0x2

    if-eq v0, v1, :cond_36

    const/4 v2, 0x3

    if-eq v0, v2, :cond_35

    const/4 v2, 0x4

    if-eq v0, v2, :cond_34

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x21

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "AC-4 level "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has not been defined."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ac4Util"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    move v0, v1

    goto :goto_22

    :cond_34
    move v0, v3

    goto :goto_22

    :cond_35
    const/16 v0, 0xa

    goto :goto_22

    :cond_36
    move v0, v9

    goto :goto_22

    :cond_37
    const/4 v0, 0x6

    goto :goto_22

    :cond_38
    const/4 v1, 0x2

    goto :goto_21

    :cond_39
    :goto_22
    if-lez v0, :cond_3a

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzaeh;->zzf:I

    iget v2, v12, Lcom/google/android/gms/internal/ads/zzaeh;->zzg:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "ac-4.%02d.%02d.%02d"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string v3, "audio/ac4"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzt;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzG(I)Lcom/google/android/gms/internal/ads/zzt;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzr(Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzt;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    return-object v0

    :cond_3a
    const-string v0, "Cannot determine channel count of presentation."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_3b
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1e

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unsupported AC-4 DSI version: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzaei;
    .locals 12

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v0

    const v2, 0xffff

    const/4 v3, 0x4

    if-ne v0, v2, :cond_0

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v0

    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    const v2, 0xac41

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x2

    :cond_1
    move v8, v0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v1

    if-nez v1, :cond_2

    add-int/2addr v5, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    shl-int/lit8 v1, v5, 0x2

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_2
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v6

    const v7, 0xbb80

    const v9, 0xac44

    const/4 v10, 0x1

    if-eq v10, v6, :cond_5

    move v11, v9

    goto :goto_3

    :cond_5
    move v11, v7

    :goto_3
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result p0

    if-ne v11, v9, :cond_6

    const/16 v6, 0xd

    if-ne p0, v6, :cond_6

    sget-object p0, Lcom/google/android/gms/internal/ads/zzaej;->zzb:[I

    aget p0, p0, v6

    move v9, p0

    goto :goto_6

    :cond_6
    if-ne v11, v7, :cond_9

    const/16 v6, 0xe

    if-ge p0, v6, :cond_9

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaej;->zzb:[I

    aget v2, v2, p0

    rem-int/lit8 v1, v1, 0x5

    const/16 v6, 0x8

    if-eq v1, v10, :cond_b

    const/16 v7, 0xb

    if-eq v1, v0, :cond_a

    if-eq v1, v4, :cond_b

    if-eq v1, v3, :cond_7

    goto :goto_5

    :cond_7
    if-eq p0, v4, :cond_8

    if-eq p0, v6, :cond_8

    if-ne p0, v7, :cond_9

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    :cond_9
    :goto_5
    move v9, v2

    goto :goto_6

    :cond_a
    if-eq p0, v6, :cond_8

    if-ne p0, v7, :cond_9

    goto :goto_4

    :cond_b
    if-eq p0, v4, :cond_8

    if-ne p0, v6, :cond_9

    goto :goto_4

    :goto_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaei;

    const/4 v6, 0x2

    const/4 v10, 0x0

    move-object v4, p0

    move v7, v11

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzaei;-><init>(IIIII[B)V

    return-object p0
.end method

.method public static zzc(ILcom/google/android/gms/internal/ads/zzes;)V
    .locals 2

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, -0x54

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/16 v1, 0x40

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    const/4 v1, -0x1

    aput-byte v1, p1, v0

    const/4 v0, 0x3

    aput-byte v1, p1, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x4

    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x5

    aput-byte v0, p1, v1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x6

    aput-byte p0, p1, v0

    return-void
.end method

.method private static zzd(Lcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzaeh;)V
    .locals 4

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_0
    const/4 v0, 0x7

    if-lt v1, v0, :cond_1

    const/16 v0, 0xa

    if-gt v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v0

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzaeh;->zzb:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    if-ltz v1, :cond_3

    const/16 v2, 0xf

    if-gt v1, v2, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    :cond_2
    iput v1, p1, Lcom/google/android/gms/internal/ads/zzaeh;->zzb:I

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaej;->zzf(Lcom/google/android/gms/internal/ads/zzer;)V

    :cond_4
    return-void
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzaeh;)V
    .locals 6

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_0
    if-eqz v1, :cond_1

    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_2
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/google/android/gms/internal/ads/zzaeh;->zzc:I

    :cond_3
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaej;->zzf(Lcom/google/android/gms/internal/ads/zzer;)V

    :cond_5
    return-void
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzer;)V
    .locals 2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2a

    if-gt v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Invalid language tag bytes number: %d. Must be between 2 and 42."

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p0

    throw p0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzer;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzc()I

    move-result v0

    const/16 v1, 0x42

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    const/4 p0, 0x1

    return p0
.end method
