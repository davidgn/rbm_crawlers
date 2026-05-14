.class public final Ll1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lb1/g;

.field public static final g:Lb1/g;

.field public static final h:Lb1/g;

.field public static final i:Lb1/g;

.field public static final j:Ld3/a;

.field public static final k:Ljava/util/ArrayDeque;


# instance fields
.field public final a:Lf1/a;

.field public final b:Landroid/util/DisplayMetrics;

.field public final c:Lf1/f;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ll1/u;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lb1/b;->c:Lb1/b;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    invoke-static {v0, v1}, Lb1/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lb1/g;

    move-result-object v0

    sput-object v0, Ll1/o;->f:Lb1/g;

    sget-object v0, Lb1/i;->a:Lb1/i;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    invoke-static {v0, v1}, Lb1/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lb1/g;

    move-result-object v0

    sput-object v0, Ll1/o;->g:Lb1/g;

    sget-object v0, Ll1/m;->b:Ll1/m;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    invoke-static {v0, v1}, Lb1/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lb1/g;

    move-result-object v1

    sput-object v1, Ll1/o;->h:Lb1/g;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    invoke-static {v0, v1}, Lb1/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lb1/g;

    move-result-object v0

    sput-object v0, Ll1/o;->i:Lb1/g;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "image/vnd.wap.wbmp"

    const-string v2, "image/x-ico"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    new-instance v0, Ld3/a;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Ld3/a;-><init>(I)V

    sput-object v0, Ll1/o;->j:Ld3/a;

    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    sget-object v0, Ly1/k;->a:[C

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Ll1/o;->k:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Lf1/a;Lf1/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ll1/u;->a()Ll1/u;

    move-result-object v0

    iput-object v0, p0, Ll1/o;->e:Ll1/u;

    iput-object p1, p0, Ll1/o;->d:Ljava/util/ArrayList;

    const-string p1, "Argument must not be null"

    invoke-static {p2, p1}, LW2/B;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Ll1/o;->b:Landroid/util/DisplayMetrics;

    iput-object p3, p0, Ll1/o;->a:Lf1/a;

    iput-object p4, p0, Ll1/o;->c:Lf1/f;

    return-void
.end method

.method public static c(LJ2/e;Landroid/graphics/BitmapFactory$Options;Ll1/n;Lf1/a;)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "Downsampler"

    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_0

    invoke-interface {p2}, Ll1/n;->j()V

    iget v1, p0, LJ2/e;->a:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v1, Lc1/i;

    iget-object v1, v1, Lc1/i;->b:Ljava/lang/Object;

    check-cast v1, Ll1/v;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Ll1/v;->a:[B

    array-length v2, v2

    iput v2, v1, Ll1/v;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v3, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    sget-object v4, Ll1/x;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_2
    invoke-virtual {p0, p1}, LJ2/e;->m(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Exception decoding bitmap, outWidth: "

    const-string v7, ", outHeight: "

    const-string v8, ", outMimeType: "

    invoke-static {v6, v1, v7, v2, v8}, Le1/i;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", inBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Ll1/o;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    :try_start_4
    invoke-interface {p3, v0}, Lf1/a;->e(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p0, p1, p2, p3}, Ll1/o;->c(LJ2/e;Landroid/graphics/BitmapFactory$Options;Ll1/n;Lf1/a;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget-object p1, Ll1/x;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catch_1
    :try_start_5
    throw v5

    :cond_2
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    sget-object p1, Ll1/x;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/graphics/BitmapFactory$Options;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x1

    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method


# virtual methods
.method public final a(LJ2/e;IILb1/h;Ll1/n;)Ll1/c;
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v0, p4

    iget-object v1, v12, Ll1/o;->c:Lf1/f;

    const/high16 v2, 0x10000

    const-class v3, [B

    invoke-virtual {v1, v2, v3}, Lf1/f;->c(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [B

    const-class v1, Ll1/o;

    monitor-enter v1

    :try_start_0
    sget-object v14, Ll1/o;->k:Ljava/util/ArrayDeque;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v2, :cond_0

    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v2}, Ll1/o;->e(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    move-object v15, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :goto_0
    monitor-exit v1

    iput-object v13, v15, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    sget-object v1, Ll1/o;->f:Lb1/g;

    invoke-virtual {v0, v1}, Lb1/h;->c(Lb1/g;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lb1/b;

    sget-object v1, Ll1/o;->g:Lb1/g;

    invoke-virtual {v0, v1}, Lb1/h;->c(Lb1/g;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lb1/i;

    sget-object v1, Ll1/m;->g:Lb1/g;

    invoke-virtual {v0, v1}, Lb1/h;->c(Lb1/g;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ll1/m;

    sget-object v1, Ll1/o;->h:Lb1/g;

    invoke-virtual {v0, v1}, Lb1/h;->c(Lb1/g;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    sget-object v1, Ll1/o;->i:Lb1/g;

    invoke-virtual {v0, v1}, Lb1/h;->c(Lb1/g;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lb1/h;->c(Lb1/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v7, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p5

    :try_start_3
    invoke-virtual/range {v1 .. v11}, Ll1/o;->b(LJ2/e;Landroid/graphics/BitmapFactory$Options;Ll1/m;Lb1/b;Lb1/i;ZIIZLl1/n;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, v12, Ll1/o;->a:Lf1/a;

    invoke-static {v0, v1}, Ll1/c;->d(Landroid/graphics/Bitmap;Lf1/a;)Ll1/c;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v15}, Ll1/o;->e(Landroid/graphics/BitmapFactory$Options;)V

    monitor-enter v14

    :try_start_4
    invoke-virtual {v14, v15}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v1, v12, Ll1/o;->c:Lf1/f;

    invoke-virtual {v1, v13}, Lf1/f;->g(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    invoke-static {v15}, Ll1/o;->e(Landroid/graphics/BitmapFactory$Options;)V

    sget-object v2, Ll1/o;->k:Ljava/util/ArrayDeque;

    monitor-enter v2

    :try_start_6
    invoke-virtual {v2, v15}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v1, v12, Ll1/o;->c:Lf1/f;

    invoke-virtual {v1, v13}, Lf1/f;->g(Ljava/lang/Object;)V

    throw v0

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    throw v0

    :goto_3
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0
.end method

.method public final b(LJ2/e;Landroid/graphics/BitmapFactory$Options;Ll1/m;Lb1/b;Lb1/i;ZIIZLl1/n;)Landroid/graphics/Bitmap;
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v4, p4

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p10

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    sget v13, Ly1/g;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v13

    iput-boolean v12, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v15, v1, Ll1/o;->a:Lf1/a;

    invoke-static {v2, v3, v7, v15}, Ll1/o;->c(LJ2/e;Landroid/graphics/BitmapFactory$Options;Ll1/n;Lf1/a;)Landroid/graphics/Bitmap;

    iput-boolean v11, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v9, v8}, [I

    move-result-object v8

    aget v9, v8, v11

    aget v8, v8, v12

    iget-object v11, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eq v9, v10, :cond_1

    if-ne v8, v10, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v16, p6

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v16, 0x0

    :goto_1
    iget v12, v2, LJ2/e;->a:I

    packed-switch v12, :pswitch_data_0

    iget-object v12, v2, LJ2/e;->d:Ljava/lang/Object;

    check-cast v12, Lc1/i;

    iget-object v10, v2, LJ2/e;->b:Ljava/lang/Object;

    check-cast v10, Lf1/f;

    move-wide/from16 v18, v13

    iget-object v13, v2, LJ2/e;->c:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v20, v11

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v14, :cond_4

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 p6, v13

    move-object/from16 v13, v21

    check-cast v13, Lb1/d;

    move/from16 v21, v14

    :try_start_0
    new-instance v14, Ll1/v;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v12}, Lc1/i;->e()Landroid/os/ParcelFileDescriptor;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v14, v4, v10}, Ll1/v;-><init>(Ljava/io/InputStream;Lf1/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v13, v14, v10}, Lb1/d;->c(Ljava/io/InputStream;Lf1/f;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v14}, Ll1/v;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    invoke-virtual {v12}, Lc1/i;->e()Landroid/os/ParcelFileDescriptor;

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    move v10, v1

    goto :goto_4

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v11, v1

    move-object/from16 v1, p0

    move-object/from16 v4, p4

    move-object/from16 v13, p6

    move/from16 v14, v21

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v9, v14

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_3

    :try_start_3
    invoke-virtual {v9}, Ll1/v;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_3
    invoke-virtual {v12}, Lc1/i;->e()Landroid/os/ParcelFileDescriptor;

    throw v0

    :cond_4
    const/4 v4, -0x1

    move v10, v4

    goto :goto_4

    :pswitch_0
    move-object/from16 v20, v11

    move-wide/from16 v18, v13

    iget-object v1, v2, LJ2/e;->b:Ljava/lang/Object;

    check-cast v1, Lc1/i;

    iget-object v1, v1, Lc1/i;->b:Ljava/lang/Object;

    check-cast v1, Ll1/v;

    invoke-virtual {v1}, Ll1/v;->reset()V

    iget-object v4, v2, LJ2/e;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v10, v2, LJ2/e;->c:Ljava/lang/Object;

    check-cast v10, Lf1/f;

    invoke-static {v10, v1, v4}, LW2/B;->n(Lf1/f;Ljava/io/InputStream;Ljava/util/ArrayList;)I

    move-result v10

    :goto_4
    const/16 v1, 0x5a

    const/16 v4, 0x10e

    packed-switch v10, :pswitch_data_1

    const/4 v11, 0x0

    goto :goto_5

    :pswitch_1
    move v11, v4

    goto :goto_5

    :pswitch_2
    move v11, v1

    goto :goto_5

    :pswitch_3
    const/16 v11, 0xb4

    :goto_5
    packed-switch v10, :pswitch_data_2

    const/4 v12, 0x0

    goto :goto_6

    :pswitch_4
    const/4 v12, 0x1

    :goto_6
    const/high16 v13, -0x80000000

    if-ne v5, v13, :cond_7

    if-eq v11, v1, :cond_6

    if-ne v11, v4, :cond_5

    goto :goto_7

    :cond_5
    move v14, v9

    goto :goto_8

    :cond_6
    :goto_7
    move v14, v8

    goto :goto_8

    :cond_7
    move v14, v5

    :goto_8
    if-ne v6, v13, :cond_a

    if-eq v11, v1, :cond_9

    if-ne v11, v4, :cond_8

    goto :goto_9

    :cond_8
    move v13, v8

    goto :goto_a

    :cond_9
    :goto_9
    move v13, v9

    goto :goto_a

    :cond_a
    move v13, v6

    :goto_a
    invoke-virtual/range {p1 .. p1}, LJ2/e;->w()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v4

    const-string v1, ", target density: "

    move/from16 v22, v10

    const-string v10, ", density: "

    const-string v6, "x"

    const-string v5, "Downsampler"

    move/from16 v24, v12

    const-string v12, "]"

    if-lez v9, :cond_1f

    if-gtz v8, :cond_b

    move-object v2, v6

    move-object v0, v12

    move-object/from16 p3, v15

    const/4 v6, 0x3

    move v15, v8

    move v8, v14

    move v14, v9

    move v9, v13

    move-object v13, v5

    move-object v5, v10

    goto/16 :goto_18

    :cond_b
    move-object/from16 v17, v12

    const/16 v12, 0x5a

    if-eq v11, v12, :cond_d

    const/16 v12, 0x10e

    if-ne v11, v12, :cond_c

    goto :goto_b

    :cond_c
    move-object/from16 v25, v1

    move v12, v9

    move-object/from16 p6, v10

    move v10, v8

    goto :goto_c

    :cond_d
    :goto_b
    move-object/from16 v25, v1

    move v12, v8

    move-object/from16 p6, v10

    move v10, v9

    :goto_c
    invoke-virtual {v0, v12, v10, v14, v13}, Ll1/m;->b(IIII)F

    move-result v1

    const/16 v23, 0x0

    cmpg-float v26, v1, v23

    if-lez v26, :cond_1e

    move/from16 v26, v11

    invoke-virtual {v0, v12, v10, v14, v13}, Ll1/m;->a(IIII)I

    move-result v11

    if-eqz v11, :cond_1d

    move-object/from16 v27, v6

    int-to-float v6, v12

    move/from16 v28, v8

    mul-float v8, v1, v6

    move/from16 v29, v9

    float-to-double v8, v8

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    add-double v8, v8, v30

    double-to-int v8, v8

    int-to-float v9, v10

    move-object/from16 v32, v5

    mul-float v5, v1, v9

    move/from16 v34, v13

    move/from16 v33, v14

    float-to-double v13, v5

    add-double v13, v13, v30

    double-to-int v5, v13

    div-int v8, v12, v8

    div-int v5, v10, v5

    const/4 v13, 0x1

    if-ne v11, v13, :cond_e

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_d

    :cond_e
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_d
    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ne v11, v13, :cond_f

    int-to-float v8, v5

    const/high16 v11, 0x3f800000    # 1.0f

    div-float v14, v11, v1

    cmpg-float v8, v8, v14

    if-gez v8, :cond_f

    shl-int/2addr v5, v13

    :cond_f
    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v8, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v4, v8, :cond_11

    const/16 v8, 0x8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v6, v4

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    div-float/2addr v9, v4

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v4, v9

    div-int/lit8 v8, v5, 0x8

    if-lez v8, :cond_10

    div-int/2addr v6, v8

    div-int/2addr v4, v8

    :cond_10
    :goto_e
    move/from16 v8, v33

    move/from16 v9, v34

    goto :goto_12

    :cond_11
    sget-object v8, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v4, v8, :cond_17

    sget-object v8, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v4, v8, :cond_12

    goto :goto_11

    :cond_12
    sget-object v8, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v4, v8, :cond_16

    sget-object v8, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v4, v8, :cond_13

    goto :goto_10

    :cond_13
    rem-int v4, v12, v5

    if-nez v4, :cond_14

    rem-int v4, v10, v5

    if-eqz v4, :cond_15

    :cond_14
    const/4 v4, 0x1

    goto :goto_f

    :cond_15
    div-int v6, v12, v5

    div-int v4, v10, v5

    goto :goto_e

    :goto_f
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v2, v3, v7, v15}, Ll1/o;->c(LJ2/e;Landroid/graphics/BitmapFactory$Options;Ll1/n;Lf1/a;)Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v8, v9}, [I

    move-result-object v8

    aget v9, v8, v6

    aget v6, v8, v4

    move v4, v6

    move v6, v9

    goto :goto_e

    :cond_16
    :goto_10
    int-to-float v4, v5

    div-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    div-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_e

    :cond_17
    :goto_11
    int-to-float v4, v5

    div-float/2addr v6, v4

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v6, v10

    div-float/2addr v9, v4

    float-to-double v8, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v4, v8

    goto :goto_e

    :goto_12
    invoke-virtual {v0, v6, v4, v8, v9}, Ll1/m;->b(IIII)F

    move-result v0

    float-to-double v10, v0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v10, v12

    if-gtz v0, :cond_18

    move-wide/from16 v33, v10

    goto :goto_13

    :cond_18
    div-double v33, v12, v10

    :goto_13
    const-wide v35, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v33, v33, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v12, v12

    int-to-double v13, v12

    mul-double/2addr v13, v10

    add-double v13, v13, v30

    double-to-int v13, v13

    int-to-float v14, v13

    int-to-float v12, v12

    div-float/2addr v14, v12

    move-object v12, v15

    float-to-double v14, v14

    div-double v14, v10, v14

    move-object/from16 p3, v12

    int-to-double v12, v13

    mul-double/2addr v14, v12

    add-double v14, v14, v30

    double-to-int v12, v14

    iput v12, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-gtz v0, :cond_19

    move-wide v12, v10

    goto :goto_14

    :cond_19
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double/2addr v12, v10

    :goto_14
    mul-double v12, v12, v35

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v0, v12

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v12, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v12, :cond_1a

    if-lez v0, :cond_1a

    if-eq v12, v0, :cond_1a

    const/4 v12, 0x1

    iput-boolean v12, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    :goto_15
    move-object/from16 v13, v32

    const/4 v12, 0x2

    goto :goto_16

    :cond_1a
    const/4 v12, 0x0

    iput v12, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v12, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_15

    :goto_16
    invoke-static {v13, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "Calculate scaling, source: ["

    const-string v12, "], degreesToRotate: "

    move-object/from16 v2, v27

    move/from16 v15, v28

    move/from16 v14, v29

    invoke-static {v0, v14, v2, v15, v12}, Le1/i;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v12, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", target: ["

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "], power of two scaled: ["

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], exact scale factor: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", power of 2 sample size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adjusted scale factor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_1b
    move-object/from16 v5, p6

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    move/from16 v15, v28

    move/from16 v14, v29

    :cond_1c
    :goto_17
    move-object/from16 v4, p0

    goto/16 :goto_19

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round with null rounding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    move-object v2, v6

    move v15, v8

    move v8, v14

    move v14, v9

    move v9, v13

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot scale with factor: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " from: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", source: ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], target: ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1f
    move-object v2, v6

    move-object v0, v12

    move-object/from16 p3, v15

    move v15, v8

    move v8, v14

    move v14, v9

    move v9, v13

    move-object v13, v5

    move-object v5, v10

    const/4 v6, 0x3

    :goto_18
    invoke-static {v13, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1c

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "Unable to determine dimensions for: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with target ["

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :goto_19
    iget-object v6, v4, Ll1/o;->e:Ll1/u;

    if-eqz v16, :cond_24

    iget-boolean v0, v6, Ll1/u;->a:Z

    if-eqz v0, :cond_25

    if-eqz v24, :cond_20

    goto :goto_1e

    :cond_20
    iget v0, v6, Ll1/u;->c:I

    if-lt v8, v0, :cond_23

    if-lt v9, v0, :cond_23

    const-string v0, "Excluding HARDWARE bitmap config because we\'re over the file descriptor limit, file descriptors "

    monitor-enter v6

    :try_start_4
    iget v10, v6, Ll1/u;->d:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    iput v10, v6, Ll1/u;->d:I

    const/16 v11, 0x32

    if-lt v10, v11, :cond_22

    const/4 v10, 0x0

    iput v10, v6, Ll1/u;->d:I

    sget-object v10, Ll1/u;->f:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    iget v11, v6, Ll1/u;->b:I

    if-ge v10, v11, :cond_21

    const/4 v11, 0x1

    goto :goto_1a

    :cond_21
    const/4 v11, 0x0

    :goto_1a
    iput-boolean v11, v6, Ll1/u;->e:Z

    if-nez v11, :cond_22

    const-string v11, "Downsampler"

    const/4 v12, 0x5

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_22

    const-string v11, "Downsampler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", limit "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Ll1/u;->b:I

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :catchall_2
    move-exception v0

    goto :goto_1c

    :cond_22
    :goto_1b
    iget-boolean v0, v6, Ll1/u;->e:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v6

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_1d

    :goto_1c
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_23
    const/4 v0, 0x0

    :goto_1d
    move v6, v0

    goto :goto_1f

    :cond_24
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_25
    :goto_1e
    const/4 v6, 0x0

    :goto_1f
    if-eqz v6, :cond_26

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x0

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_20

    :cond_26
    const/4 v10, 0x0

    :goto_20
    if-eqz v6, :cond_28

    :cond_27
    const/4 v6, 0x1

    goto :goto_23

    :cond_28
    sget-object v0, Lb1/b;->a:Lb1/b;

    move-object/from16 v6, p4

    if-eq v6, v0, :cond_2b

    :try_start_6
    invoke-virtual/range {p1 .. p1}, LJ2/e;->w()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_21

    :catch_2
    move-exception v0

    const/4 v11, 0x3

    invoke-static {v13, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_29

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Cannot determine whether the image has alpha or not from header, format "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_29
    move v6, v10

    :goto_21
    if-eqz v6, :cond_2a

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_22

    :cond_2a
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_22
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v6, :cond_27

    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_23

    :cond_2b
    const/4 v6, 0x1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :goto_23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ltz v14, :cond_2c

    if-ltz v15, :cond_2c

    if-eqz p9, :cond_2c

    move v6, v8

    move v7, v9

    goto/16 :goto_26

    :cond_2c
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v8, :cond_2d

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v9, :cond_2d

    if-eq v8, v9, :cond_2d

    move v9, v6

    goto :goto_24

    :cond_2d
    move v9, v10

    :goto_24
    if-eqz v9, :cond_2e

    int-to-float v8, v8

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v9, v9

    div-float v11, v8, v9

    goto :goto_25

    :cond_2e
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_25
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v9, v14

    int-to-float v12, v8

    div-float/2addr v9, v12

    float-to-double v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-float v7, v15

    div-float/2addr v7, v12

    move/from16 p4, v11

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    int-to-float v6, v6

    mul-float v6, v6, p4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v7, v7

    mul-float v7, v7, p4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v9, 0x2

    invoke-static {v13, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2f

    const-string v9, "Calculated target ["

    const-string v10, "] for source ["

    invoke-static {v9, v6, v2, v7, v10}, Le1/i;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "], sampleSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", targetDensity: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", density multiplier: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p4

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_26
    if-lez v6, :cond_32

    if-lez v7, :cond_32

    iget-object v8, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v9, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v8, v9, :cond_30

    goto :goto_29

    :cond_30
    iget-object v9, v3, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    if-nez v9, :cond_31

    :goto_27
    move-object/from16 v9, p3

    goto :goto_28

    :cond_31
    move-object v8, v9

    goto :goto_27

    :goto_28
    invoke-interface {v9, v6, v7, v8}, Lf1/a;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_2a

    :cond_32
    :goto_29
    move-object/from16 v9, p3

    :goto_2a
    const/16 v6, 0x1c

    if-lt v0, v6, :cond_35

    sget-object v0, Lb1/i;->b:Lb1/i;

    move-object/from16 v6, p5

    if-ne v6, v0, :cond_33

    iget-object v0, v3, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v11, 0x1

    goto :goto_2b

    :cond_33
    const/4 v11, 0x0

    :goto_2b
    if-eqz v11, :cond_34

    sget-object v0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    goto :goto_2c

    :cond_34
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    :goto_2c
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    :goto_2d
    move-object/from16 v6, p10

    move-object v7, v2

    move-object/from16 v2, p1

    goto :goto_2e

    :cond_35
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    goto :goto_2d

    :goto_2e
    invoke-static {v2, v3, v6, v9}, Ll1/o;->c(LJ2/e;Landroid/graphics/BitmapFactory$Options;Ll1/n;Lf1/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v6, v0, v9}, Ll1/n;->e(Landroid/graphics/Bitmap;Lf1/a;)V

    const/4 v2, 0x2

    invoke-static {v13, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_36

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Decoded "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ll1/o;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " with inBitmap "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v6}, Ll1/o;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p7

    move-object v8, v13

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], sample size: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thread: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Ly1/g;->a(J)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    if-eqz v0, :cond_39

    iget-object v1, v4, Ll1/o;->b:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    packed-switch v22, :pswitch_data_3

    move-object v3, v0

    goto/16 :goto_31

    :pswitch_5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/high16 v6, -0x40800000    # -1.0f

    packed-switch v22, :pswitch_data_4

    goto :goto_2f

    :pswitch_6
    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_2f

    :pswitch_7
    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2f

    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_2f

    :pswitch_9
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2f

    :pswitch_a
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2f

    :pswitch_b
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_2f

    :pswitch_c
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_2f
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v2, v6, v6, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    if-eqz v6, :cond_37

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    goto :goto_30

    :cond_37
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_30
    invoke-interface {v9, v3, v5, v6}, Lf1/a;->j(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget v5, v2, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    invoke-static {v0, v3, v1}, Ll1/x;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    :goto_31
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-interface {v9, v0}, Lf1/a;->e(Landroid/graphics/Bitmap;)V

    :cond_38
    move-object v9, v3

    goto :goto_32

    :cond_39
    const/4 v9, 0x0

    :goto_32
    return-object v9

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
