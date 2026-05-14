.class final Lcom/google/android/gms/internal/ads/zzaob;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:[I

.field private zzb:J

.field private zzc:J

.field private zzd:Z

.field private zze:Z

.field private zzf:[I

.field private zzg:I

.field private zzh:I

.field private zzi:Landroid/graphics/Rect;

.field private zzj:I

.field private zzk:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzb:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzc:J

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zza:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzj:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzk:I

    return-void
.end method

.method private static zzg([II)I
    .locals 1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    aget p0, p0, p1

    return p0
.end method

.method private static zzh(II)I
    .locals 1

    mul-int/lit8 p1, p1, 0x11

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private final zzi(Lcom/google/android/gms/internal/ads/zzer;ZLandroid/graphics/Rect;[I)V
    .locals 9

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int v2, p2, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    const/4 v3, 0x0

    :goto_0
    move v4, v3

    :cond_0
    move v6, v0

    move v5, v3

    :goto_1
    const/4 v7, 0x4

    if-ge v5, v6, :cond_2

    const/16 v8, 0x40

    if-gt v6, v8, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzc()I

    move-result v8

    if-ge v8, v7, :cond_1

    const/4 v5, -0x1

    move v6, v5

    move v5, v3

    goto :goto_2

    :cond_1
    shl-int/lit8 v5, v5, 0x4

    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v7

    or-int/2addr v5, v7

    shl-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_2
    and-int/lit8 v6, v5, 0x3

    if-ge v5, v7, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    shr-int/lit8 v5, v5, 0x2

    :goto_2
    sub-int v7, v1, v4

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lez v5, :cond_4

    add-int v7, v2, v5

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzaob;->zza:[I

    aget v6, v8, v6

    invoke-static {p4, v2, v7, v6}, Ljava/util/Arrays;->fill([IIII)V

    add-int/2addr v4, v5

    move v2, v7

    :cond_4
    if-lt v4, v1, :cond_0

    add-int/lit8 p2, p2, 0x2

    if-lt p2, p3, :cond_5

    return-void

    :cond_5
    mul-int v2, p2, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzm()V

    goto :goto_0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    const-string v1, "\\r?\\n"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, p1, v4

    const-string v6, "palette: "

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "VobsubParser"

    if-eqz v6, :cond_0

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzf:[I

    move v6, v3

    :goto_1
    array-length v8, v5

    if-ge v6, v8, :cond_2

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzf:[I

    aget-object v9, v5, v6

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v9

    const-string v10, "Parsing color failed"

    invoke-static {v7, v10, v9}, Lcom/google/android/gms/internal/ads/zzef;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v9, v3

    :goto_2
    aput v9, v8, v6

    add-int/2addr v6, v0

    goto :goto_1

    :cond_0
    const-string v6, "size: "

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, "x"

    invoke-virtual {v6, v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x24

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Ignoring malformed IDX size line: \'"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    :try_start_1
    aget-object v5, v6, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzg:I

    aget-object v5, v6, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzh:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzd:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    const-string v6, "Parsing IDX failed"

    invoke-static {v7, v6, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    add-int/2addr v4, v0

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzcx;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzf:[I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzd:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zze:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzi:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzj:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzk:I

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzi:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzi:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v2, v1

    new-array v1, v2, [I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzj:I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzer;->zza(Lcom/google/android/gms/internal/ads/zzes;)V

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzaob;->zzi(Lcom/google/android/gms/internal/ads/zzer;ZLandroid/graphics/Rect;[I)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzk:I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzer;->zza(Lcom/google/android/gms/internal/ads/zzes;)V

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaob;->zzi(Lcom/google/android/gms/internal/ads/zzer;ZLandroid/graphics/Rect;[I)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzcw;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzc(Landroid/graphics/Bitmap;)Lcom/google/android/gms/internal/ads/zzcw;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzg:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzi(F)Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzj(I)Lcom/google/android/gms/internal/ads/zzcw;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzh:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(FI)Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzg(I)Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzg:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzm(F)Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzh:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(F)Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcw;->zzr()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzc()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzb:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzc:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zze:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzi:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzj:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzk:I

    return-void
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzes;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzf:[I

    const-string v3, "VobsubParser"

    if-nez v2, :cond_0

    const-string v1, "Skipping SPU (no palette)"

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzd:Z

    if-nez v2, :cond_1

    const-string v1, "Skipping SPU (no plane)"

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v7

    mul-int/lit16 v7, v7, 0x2710

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v8

    add-int/2addr v8, v2

    const/4 v9, 0x1

    if-eq v8, v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v4

    if-ge v8, v4, :cond_4

    move v4, v9

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_5

    move v10, v8

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v10

    :goto_1
    move v11, v9

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v12

    if-ge v12, v10, :cond_c

    if-eqz v11, :cond_c

    int-to-long v11, v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v13

    const/16 v14, 0xff

    if-eq v13, v14, :cond_b

    const/4 v14, 0x3

    const/4 v15, 0x2

    packed-switch v13, :pswitch_data_0

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x16

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Unrecognized command: "

    invoke-static {v12, v11, v13, v3}, Lcom/google/android/gms/ads/internal/util/client/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    :goto_3
    const/4 v11, 0x0

    goto :goto_2

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v11

    if-ge v11, v5, :cond_6

    const-string v11, "Incomplete offsets command"

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v11

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzj:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v11

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzk:I

    goto :goto_1

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v11

    const/4 v12, 0x6

    if-ge v11, v12, :cond_7

    const-string v11, "Incomplete area command"

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v13

    shl-int/2addr v11, v5

    shr-int/lit8 v14, v12, 0x4

    and-int/lit8 v12, v12, 0xf

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v16

    shl-int/2addr v13, v5

    shr-int/lit8 v17, v15, 0x4

    and-int/lit8 v15, v15, 0xf

    shl-int/lit8 v15, v15, 0x8

    or-int v15, v15, v16

    add-int/2addr v12, v9

    add-int/2addr v15, v9

    new-instance v5, Landroid/graphics/Rect;

    or-int/2addr v11, v14

    or-int v13, v13, v17

    invoke-direct {v5, v11, v13, v12, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzi:Landroid/graphics/Rect;

    :goto_4
    move v11, v9

    const/4 v5, 0x4

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v5

    if-ge v5, v15, :cond_8

    const-string v5, "Incomplete alpha command"

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/4 v5, 0x4

    goto :goto_3

    :cond_8
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzaob;->zze:Z

    if-nez v5, :cond_9

    const-string v5, "Ignoring alpha command before color command"

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v11

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaob;->zza:[I

    aget v13, v12, v14

    shr-int/lit8 v6, v5, 0x4

    invoke-static {v13, v6}, Lcom/google/android/gms/internal/ads/zzaob;->zzh(II)I

    move-result v6

    aput v6, v12, v14

    aget v6, v12, v15

    and-int/lit8 v5, v5, 0xf

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzaob;->zzh(II)I

    move-result v5

    aput v5, v12, v15

    aget v5, v12, v9

    shr-int/lit8 v6, v11, 0x4

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzaob;->zzh(II)I

    move-result v5

    aput v5, v12, v9

    const/4 v5, 0x0

    aget v6, v12, v5

    and-int/lit8 v11, v11, 0xf

    invoke-static {v6, v11}, Lcom/google/android/gms/internal/ads/zzaob;->zzh(II)I

    move-result v6

    aput v6, v12, v5

    goto :goto_4

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v5

    if-ge v5, v15, :cond_a

    const-string v5, "Incomplete color command"

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v6

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaob;->zza:[I

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzf:[I

    shr-int/lit8 v13, v5, 0x4

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzaob;->zzg([II)I

    move-result v12

    aput v12, v11, v14

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzf:[I

    and-int/lit8 v5, v5, 0xf

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/ads/zzaob;->zzg([II)I

    move-result v5

    aput v5, v11, v15

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzf:[I

    shr-int/lit8 v12, v6, 0x4

    invoke-static {v5, v12}, Lcom/google/android/gms/internal/ads/zzaob;->zzg([II)I

    move-result v5

    aput v5, v11, v9

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzf:[I

    and-int/lit8 v6, v6, 0xf

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzaob;->zzg([II)I

    move-result v5

    const/4 v6, 0x0

    aput v5, v11, v6

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzaob;->zze:Z

    goto/16 :goto_4

    :pswitch_4
    const/4 v6, 0x0

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzc:J

    goto/16 :goto_4

    :pswitch_5
    const/4 v6, 0x0

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzb:J

    goto/16 :goto_4

    :pswitch_6
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v6, 0x0

    move v11, v6

    goto/16 :goto_2

    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    :cond_d
    move v6, v4

    :goto_6
    if-nez v6, :cond_2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic zze()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzb:J

    return-wide v0
.end method

.method public final synthetic zzf()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzc:J

    return-wide v0
.end method
