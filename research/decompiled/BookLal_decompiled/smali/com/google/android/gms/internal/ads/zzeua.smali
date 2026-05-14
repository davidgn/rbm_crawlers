.class public final Lcom/google/android/gms/internal/ads/zzeua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfbp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfbp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfkd;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcei;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzewd;Lcom/google/android/gms/internal/ads/zzfkd;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcei;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeua;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeua;->zzb:Lcom/google/android/gms/internal/ads/zzfkd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeua;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeua;->zzd:Lcom/google/android/gms/internal/ads/zzcei;

    return-void
.end method

.method private static final zzd(Landroid/view/WindowInsets;I)I
    .locals 0

    invoke-static {p0, p1}, LM/c;->q(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, LM/c;->c(Landroid/view/RoundedCorner;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final zze(IF)I
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float p0, p0

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private static final zzf(LE/c;F)LE/c;
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    sget-object p0, LE/c;->e:LE/c;

    return-object p0

    :cond_0
    iget v0, p0, LE/c;->a:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, LE/c;->b:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, LE/c;->c:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p0, p0, LE/c;->d:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-static {v0, v1, v2, p0}, LE/c;->a(IIII)LE/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza()LN2/o;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeua;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfbp;->zza()LN2/o;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzetz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzetz;-><init>(Lcom/google/android/gms/internal/ads/zzeua;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcew;->zzh:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzk(LN2/o;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzfby;)Lcom/google/android/gms/internal/ads/zzeub;
    .locals 26

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeua;->zzb:Lcom/google/android/gms/internal/ads/zzfkd;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfkd;->zzf:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v0, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    iget-object v0, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    iget-boolean v6, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    move-object v9, v0

    move v10, v6

    goto :goto_2

    :cond_0
    move v6, v5

    move v7, v6

    move v8, v7

    move v10, v8

    const/4 v9, 0x0

    :goto_0
    array-length v11, v0

    if-ge v6, v11, :cond_5

    aget-object v11, v0, v6

    iget-boolean v12, v11, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    if-nez v12, :cond_1

    if-nez v7, :cond_1

    iget-object v9, v11, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    move v7, v2

    :cond_1
    if-eqz v12, :cond_3

    if-nez v8, :cond_2

    move v8, v2

    move v10, v8

    goto :goto_1

    :cond_2
    move v8, v2

    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    if-nez v8, :cond_5

    :cond_4
    add-int/2addr v6, v2

    goto :goto_0

    :cond_5
    :goto_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeua;->zzc:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzbeq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbeq;->zzd()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_6

    sget-object v11, Lcom/google/android/gms/internal/ads/zzbhv;->zzoU:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v7}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v0, v7, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v7, "AdSizeParcelSignal.Source.readOrientationFromManifest"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v11

    invoke-virtual {v11, v0, v7}, Lcom/google/android/gms/internal/ads/zzcei;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_6
    const/4 v11, -0x1

    :goto_3
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzeua;->zzd:Lcom/google/android/gms/internal/ads/zzcei;

    iget v12, v6, Landroid/util/DisplayMetrics;->density:F

    iget v13, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcei;->zzo()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/ads/internal/util/zzg;->zzu()Ljava/lang/String;

    move-result-object v7

    move/from16 v25, v12

    move-object v12, v7

    move/from16 v7, v25

    goto :goto_4

    :cond_7
    move v6, v5

    move v13, v6

    const/4 v7, 0x0

    const/4 v12, 0x0

    :goto_4
    sget-object v14, Lcom/google/android/gms/internal/ads/zzbhv;->zzoR:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    const/16 v4, 0x1c

    const/16 v5, 0x22

    const/16 v2, 0x1e

    const-string v0, "window"

    if-eqz v15, :cond_9

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v15, v5, :cond_9

    if-lt v15, v4, :cond_9

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzeua;->zzc:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    if-eqz v4, :cond_9

    if-lt v15, v2, :cond_8

    invoke-static {v4}, LM/v0;->j(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v4

    invoke-static {v4}, LM/v0;->f(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {v4}, LM/v0;->f(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    move v15, v4

    move v13, v6

    goto :goto_5

    :cond_8
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v4, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    move v13, v4

    :cond_9
    move v15, v6

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v6, :cond_12

    const/4 v5, 0x0

    const/16 v17, 0x0

    :goto_6
    array-length v2, v6

    const-string v8, "|"

    if-ge v5, v2, :cond_10

    aget-object v2, v6, v5

    move-object/from16 v19, v6

    iget-boolean v6, v2, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    if-eqz v6, :cond_a

    const/4 v2, 0x1

    const/16 v17, 0x1

    goto :goto_9

    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget v6, v2, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_d

    const/16 v16, 0x0

    cmpl-float v6, v7, v16

    if-eqz v6, :cond_c

    iget v6, v2, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    int-to-float v6, v6

    div-float/2addr v6, v7

    float-to-int v6, v6

    goto :goto_7

    :cond_c
    move v6, v8

    :cond_d
    :goto_7
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    const/4 v8, -0x2

    if-ne v6, v8, :cond_f

    const/16 v16, 0x0

    cmpl-float v6, v7, v16

    if-eqz v6, :cond_e

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/zzr;->zzc:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    float-to-int v6, v2

    goto :goto_8

    :cond_e
    move v6, v8

    :cond_f
    :goto_8
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :goto_9
    add-int/2addr v5, v2

    move-object/from16 v6, v19

    goto :goto_6

    :cond_10
    if-eqz v17, :cond_12

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_11
    const/4 v2, 0x0

    :goto_a
    const-string v5, "320x50"

    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzeua;->zzb:Lcom/google/android/gms/internal/ads/zzfkd;

    new-instance v17, Lcom/google/android/gms/internal/ads/zzeub;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v5, LE/c;->e:LE/c;

    const/16 v8, 0x23

    move-object/from16 v18, v5

    if-lt v4, v8, :cond_1f

    sget-object v8, Lcom/google/android/gms/internal/ads/zzbhv;->zzoL:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v14

    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_14

    sget-object v14, Lcom/google/android/gms/internal/ads/zzbhv;->zzoM:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_14

    move-object/from16 v22, v6

    move-object/from16 v24, v9

    move/from16 v23, v10

    move/from16 v20, v11

    move-object/from16 v21, v12

    :cond_13
    :goto_b
    const/4 v14, 0x0

    goto/16 :goto_10

    :cond_14
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbhv;->zzoP:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzeua;->zzc:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    if-nez v14, :cond_17

    :cond_15
    move/from16 v20, v11

    :cond_16
    move-object/from16 v21, v12

    goto :goto_c

    :cond_17
    move/from16 v20, v11

    const/16 v11, 0x1e

    if-lt v4, v11, :cond_16

    invoke-static {v14}, LM/v0;->j(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v11

    invoke-static {v11}, LM/v0;->f(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-static {v11}, LM/v0;->f(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    if-eqz v5, :cond_16

    move-object/from16 v21, v12

    iget v12, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v14, v12, :cond_18

    if-le v11, v5, :cond_19

    :cond_18
    move-object/from16 v22, v6

    move-object/from16 v24, v9

    move/from16 v23, v10

    goto :goto_b

    :cond_19
    :goto_c
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzeua;->zzc:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    if-eqz v11, :cond_1d

    invoke-static {v11}, LM/v0;->j(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v11

    invoke-static {v11}, LM/v0;->h(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object v11

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-static {}, LM/v0;->a()I

    move-result v5

    invoke-static {}, LM/v0;->B()I

    move-result v8

    or-int/2addr v5, v8

    invoke-static {}, LM/v0;->q()I

    move-result v8

    or-int/2addr v5, v8

    invoke-static {}, LM/v0;->u()I

    move-result v8

    or-int/2addr v5, v8

    invoke-static {v11, v5}, LM/v0;->e(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v5

    invoke-static {v5}, LE/c;->b(Landroid/graphics/Insets;)LE/c;

    move-result-object v5

    move-object/from16 v22, v6

    move-object/from16 v24, v9

    move/from16 v23, v10

    goto/16 :goto_d

    :cond_1a
    sget-object v8, Lcom/google/android/gms/internal/ads/zzbhv;->zzoM:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-static {}, LM/v0;->B()I

    move-result v8

    invoke-static {v11, v8}, LM/v0;->e(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v8

    invoke-static {v8}, LE/c;->b(Landroid/graphics/Insets;)LE/c;

    move-result-object v8

    sget-object v11, Lcom/google/android/gms/internal/ads/zzbhv;->zzoN:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    if-eqz v5, :cond_1c

    invoke-static {v5}, LM/v0;->j(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v5

    invoke-static {v5}, LM/v0;->h(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object v5

    const/4 v11, 0x0

    invoke-static {v5, v11}, Lcom/google/android/gms/internal/ads/zzeua;->zzd(Landroid/view/WindowInsets;I)I

    move-result v12

    const/4 v11, 0x1

    invoke-static {v5, v11}, Lcom/google/android/gms/internal/ads/zzeua;->zzd(Landroid/view/WindowInsets;I)I

    move-result v14

    move-object/from16 v22, v6

    const/4 v11, 0x3

    invoke-static {v5, v11}, Lcom/google/android/gms/internal/ads/zzeua;->zzd(Landroid/view/WindowInsets;I)I

    move-result v6

    const/4 v11, 0x2

    invoke-static {v5, v11}, Lcom/google/android/gms/internal/ads/zzeua;->zzd(Landroid/view/WindowInsets;I)I

    move-result v5

    iget v11, v8, LE/c;->d:I

    move/from16 v23, v10

    iget v10, v8, LE/c;->c:I

    move-object/from16 v24, v9

    iget v9, v8, LE/c;->b:I

    iget v8, v8, LE/c;->a:I

    if-lt v15, v13, :cond_1b

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v8, v6, v10, v5}, LE/c;->a(IIII)LE/c;

    move-result-object v5

    goto :goto_d

    :cond_1b
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v6, v9, v5, v11}, LE/c;->a(IIII)LE/c;

    move-result-object v5

    goto :goto_d

    :cond_1c
    move-object/from16 v22, v6

    move-object/from16 v24, v9

    move/from16 v23, v10

    move-object v5, v8

    goto :goto_d

    :cond_1d
    move-object/from16 v22, v6

    move-object/from16 v24, v9

    move/from16 v23, v10

    move-object/from16 v5, v18

    :goto_d
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbhv;->zzoO:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1e

    if-ge v15, v13, :cond_1e

    iget v6, v5, LE/c;->a:I

    iget v8, v5, LE/c;->c:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v8, v5, LE/c;->b:I

    iget v5, v5, LE/c;->d:I

    invoke-static {v6, v8, v6, v5}, LE/c;->a(IIII)LE/c;

    move-result-object v5

    :cond_1e
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzeua;->zzf(LE/c;F)LE/c;

    move-result-object v5

    :goto_e
    move-object v14, v5

    goto/16 :goto_10

    :cond_1f
    move-object/from16 v22, v6

    move-object/from16 v24, v9

    move/from16 v23, v10

    move/from16 v20, v11

    move-object/from16 v21, v12

    const/16 v5, 0x22

    if-gt v4, v5, :cond_13

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_13

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_20

    goto/16 :goto_b

    :cond_20
    const/16 v5, 0x1e

    if-lt v4, v5, :cond_21

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzeua;->zzc:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    if-eqz v5, :cond_22

    invoke-static {v5}, LM/v0;->j(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v5

    invoke-static {v5}, LM/v0;->h(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object v5

    invoke-static {}, LM/v0;->a()I

    move-result v6

    invoke-static {}, LM/v0;->B()I

    move-result v8

    or-int/2addr v6, v8

    invoke-static {}, LM/v0;->q()I

    move-result v8

    or-int/2addr v6, v8

    invoke-static {}, LM/v0;->u()I

    move-result v8

    or-int/2addr v6, v8

    invoke-static {v5, v6}, LM/v0;->e(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v5

    invoke-static {v5}, LE/c;->b(Landroid/graphics/Insets;)LE/c;

    move-result-object v5

    goto :goto_f

    :cond_21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzbeq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbeq;->zzd()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_22

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_22

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_22

    sget-object v6, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-static {v5}, LM/O;->a(Landroid/view/View;)LM/z0;

    move-result-object v5

    if-eqz v5, :cond_22

    iget-object v5, v5, LM/z0;->a:LM/x0;

    const/16 v6, 0x87

    invoke-virtual {v5, v6}, LM/x0;->f(I)LE/c;

    move-result-object v5

    goto :goto_f

    :cond_22
    move-object/from16 v5, v18

    :goto_f
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzeua;->zzf(LE/c;F)LE/c;

    move-result-object v5

    goto/16 :goto_e

    :goto_10
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbhv;->zzoQ:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_23

    const/16 v5, 0x1f

    if-ge v4, v5, :cond_24

    :cond_23
    :goto_11
    const/4 v0, 0x0

    goto :goto_12

    :cond_24
    const/4 v4, 0x0

    cmpl-float v4, v7, v4

    if-nez v4, :cond_25

    goto :goto_11

    :cond_25
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzeua;->zzc:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_23

    invoke-static {v0}, LM/v0;->j(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-static {v0}, LM/v0;->h(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzeua;->zzd(Landroid/view/WindowInsets;I)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzeua;->zzd(Landroid/view/WindowInsets;I)I

    move-result v5

    const/4 v6, 0x3

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzeua;->zzd(Landroid/view/WindowInsets;I)I

    move-result v6

    const/4 v8, 0x2

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/zzeua;->zzd(Landroid/view/WindowInsets;I)I

    move-result v0

    new-instance v8, Lcom/google/android/gms/internal/ads/zzety;

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/zzeua;->zze(IF)I

    move-result v4

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzeua;->zze(IF)I

    move-result v5

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzeua;->zze(IF)I

    move-result v6

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/ads/zzeua;->zze(IF)I

    move-result v0

    invoke-direct {v8, v4, v5, v6, v0}, Lcom/google/android/gms/internal/ads/zzety;-><init>(IIII)V

    move-object v0, v8

    :goto_12
    iget-boolean v12, v2, Lcom/google/android/gms/internal/ads/zzfkd;->zzr:Z

    move-object/from16 v2, v17

    move-object/from16 v4, v24

    move/from16 v5, v23

    move-object/from16 v6, v22

    move v8, v13

    move v9, v15

    move-object/from16 v10, v21

    move/from16 v11, v20

    move-object v13, v14

    move-object v14, v0

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzeub;-><init>(Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;IZLE/c;Lcom/google/android/gms/internal/ads/zzety;)V

    return-object v17
.end method
