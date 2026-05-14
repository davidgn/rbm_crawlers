.class final Lcom/google/android/gms/internal/ads/zzani;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzb:[I

.field private zzc:Z

.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzes;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzes;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zza:Lcom/google/android/gms/internal/ads/zzes;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzb:[I

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcx;
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzd:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zze:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzh:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzi:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zza:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v2

    if-ne v1, v2, :cond_6

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzc:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzani;->zzh:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzani;->zzi:I

    mul-int/2addr v2, v3

    new-array v3, v2, [I

    move v4, v1

    :cond_1
    :goto_0
    if-ge v4, v2, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzani;->zzb:[I

    aget v5, v7, v5

    aput v5, v3, v4

    :goto_1
    move v4, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v5

    if-eqz v5, :cond_1

    and-int/lit8 v6, v5, 0x3f

    and-int/lit8 v7, v5, 0x40

    if-eqz v7, :cond_3

    shl-int/lit8 v6, v6, 0x8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v7

    or-int/2addr v6, v7

    :cond_3
    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzani;->zzb:[I

    aget v5, v5, v1

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzani;->zzb:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v7

    aget v5, v5, v7

    :goto_2
    add-int/2addr v6, v4

    invoke-static {v3, v4, v6, v5}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzh:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzani;->zzi:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzcw;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzc(Landroid/graphics/Bitmap;)Lcom/google/android/gms/internal/ads/zzcw;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzf:I

    int-to-float v0, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzani;->zzd:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzi(F)Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzj(I)Lcom/google/android/gms/internal/ads/zzcw;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzg:I

    int-to-float v0, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzani;->zze:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(FI)Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzg(I)Lcom/google/android/gms/internal/ads/zzcw;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzh:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzd:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzm(F)Lcom/google/android/gms/internal/ads/zzcw;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzi:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzani;->zze:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(F)Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcw;->zzr()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzb()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzi:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzani;->zza:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzc:Z

    return-void
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzes;I)V
    .locals 20

    move-object/from16 v0, p0

    rem-int/lit8 v2, p2, 0x5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return-void

    :cond_0
    move-object/from16 v2, p1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzani;->zzb:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    div-int/lit8 v5, p2, 0x5

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v11

    int-to-double v12, v8

    add-int/lit8 v9, v9, -0x80

    add-int/lit8 v10, v10, -0x80

    shl-int/lit8 v8, v11, 0x18

    sget-object v11, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    int-to-double v14, v9

    const-wide v16, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double v16, v16, v14

    add-double v1, v16, v12

    double-to-int v1, v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    int-to-double v10, v10

    const-wide v16, 0x3fd60663c74fb54aL    # 0.34414

    mul-double v16, v16, v10

    sub-double v16, v12, v16

    const-wide v18, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v14, v14, v18

    sub-double v14, v16, v14

    double-to-int v14, v14

    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    shl-int/lit8 v14, v14, 0x8

    const-wide v15, 0x3ffc5a1cac083127L    # 1.772

    mul-double/2addr v10, v15

    add-double/2addr v10, v12

    double-to-int v10, v10

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    or-int/2addr v1, v8

    or-int/2addr v1, v14

    or-int/2addr v1, v2

    aput v1, v3, v7

    const/4 v1, 0x1

    add-int/2addr v6, v1

    move-object/from16 v2, p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzani;->zzc:Z

    return-void
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzes;I)V
    .locals 3

    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    add-int/lit8 v2, p2, -0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    if-lt v2, v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzx()I

    move-result v1

    if-lt v1, v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzh:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzi:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zza:Lcom/google/android/gms/internal/ads/zzes;

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    add-int/lit8 v2, p2, -0xb

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzani;->zza:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-lez v2, :cond_2

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzes;I)V
    .locals 1

    const/16 v0, 0x13

    if-ge p2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzani;->zzd:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzani;->zze:I

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzani;->zzf:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzg:I

    return-void
.end method
