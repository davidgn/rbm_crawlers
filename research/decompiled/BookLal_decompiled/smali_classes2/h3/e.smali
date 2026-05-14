.class public final Lh3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final A:Lh3/c;

.field public static final x:Ljava/lang/Object;

.field public static final y:LH4/c;

.field public static final z:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:I

.field public final b:Lh3/v;

.field public final c:Lh3/k;

.field public final d:LC4/o;

.field public final e:Lh3/D;

.field public final f:Ljava/lang/String;

.field public final l:Lh3/A;

.field public m:I

.field public final n:Lh3/C;

.field public o:Lh3/l;

.field public p:Ljava/util/ArrayList;

.field public q:Landroid/graphics/Bitmap;

.field public r:Ljava/util/concurrent/Future;

.field public s:I

.field public t:Ljava/lang/Exception;

.field public u:I

.field public v:I

.field public w:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh3/e;->x:Ljava/lang/Object;

    new-instance v0, LH4/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LH4/c;-><init>(I)V

    sput-object v0, Lh3/e;->y:LH4/c;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lh3/e;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lh3/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh3/e;->A:Lh3/c;

    return-void
.end method

.method public constructor <init>(Lh3/v;Lh3/k;LC4/o;Lh3/D;Lh3/l;Lh3/C;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lh3/e;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lh3/e;->a:I

    iput-object p1, p0, Lh3/e;->b:Lh3/v;

    iput-object p2, p0, Lh3/e;->c:Lh3/k;

    iput-object p3, p0, Lh3/e;->d:LC4/o;

    iput-object p4, p0, Lh3/e;->e:Lh3/D;

    iput-object p5, p0, Lh3/e;->o:Lh3/l;

    iget-object p1, p5, Lh3/l;->e:Ljava/lang/String;

    iput-object p1, p0, Lh3/e;->f:Ljava/lang/String;

    iget-object p1, p5, Lh3/l;->b:Lh3/A;

    iput-object p1, p0, Lh3/e;->l:Lh3/A;

    iget p1, p1, Lh3/A;->h:I

    iput p1, p0, Lh3/e;->w:I

    const/4 p1, 0x0

    iput p1, p0, Lh3/e;->m:I

    iput-object p6, p0, Lh3/e;->n:Lh3/C;

    invoke-virtual {p6}, Lh3/C;->d()I

    move-result p1

    iput p1, p0, Lh3/e;->v:I

    return-void
.end method

.method public static a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LH1/a;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1}, LH1/a;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object p0, Lh3/v;->i:Lh3/t;

    new-instance p1, Lh3/d;

    const/4 v0, 0x0

    invoke-direct {p1, v2, v0}, Lh3/d;-><init>(LH1/a;I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_0
    if-eq v4, p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p0, Lh3/v;->i:Lh3/t;

    new-instance p1, Lh3/d;

    const/4 v0, 0x1

    invoke-direct {p1, v2, v0}, Lh3/d;-><init>(LH1/a;I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-object p1, v4

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lh3/v;->i:Lh3/t;

    new-instance v0, LB/h;

    const/16 v1, 0xe

    invoke-direct {v0, v1, v2, p0}, LB/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_2
    return-object p1
.end method

.method public static c(LQ4/y;Lh3/A;)Landroid/graphics/Bitmap;
    .locals 11

    invoke-static {p0}, LL4/l;->g(LQ4/y;)LQ4/s;

    move-result-object p0

    sget-object v0, Lh3/F;->b:LQ4/j;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, LQ4/s;->e(JLQ4/j;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lh3/F;->c:LQ4/j;

    const-wide/16 v3, 0x8

    invoke-virtual {p0, v3, v4, v0}, LQ4/s;->e(JLQ4/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lh3/C;->c(Lh3/A;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-boolean v3, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iget v4, p1, Lh3/A;->d:I

    iget v5, p1, Lh3/A;->c:I

    if-nez v0, :cond_5

    new-instance v0, LQ4/f;

    const/4 v6, 0x1

    invoke-direct {v0, p0, v6}, LQ4/f;-><init>(LQ4/i;I)V

    const/4 p0, 0x0

    if-eqz v3, :cond_3

    new-instance v10, Lh3/o;

    invoke-direct {v10, v0}, Lh3/o;-><init>(LQ4/f;)V

    iput-boolean v1, v10, Lh3/o;->f:Z

    iget-wide v0, v10, Lh3/o;->b:J

    const/16 v3, 0x400

    int-to-long v6, v3

    add-long/2addr v0, v6

    iget-wide v6, v10, Lh3/o;->d:J

    cmp-long v3, v6, v0

    if-gez v3, :cond_2

    invoke-virtual {v10, v0, v1}, Lh3/o;->c(J)V

    :cond_2
    iget-wide v0, v10, Lh3/o;->b:J

    invoke-static {v10, p0, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v6, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v3, v5

    move v5, v6

    move v6, v7

    move-object v7, v9

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lh3/C;->a(IIIILandroid/graphics/BitmapFactory$Options;Lh3/A;)V

    invoke-virtual {v10, v0, v1}, Lh3/o;->b(J)V

    iput-boolean v2, v10, Lh3/o;->f:Z

    move-object v0, v10

    :cond_3
    invoke-static {v0, p0, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to decode stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, LQ4/s;->b:LQ4/g;

    iget-object p0, p0, LQ4/s;->a:LQ4/y;

    invoke-virtual {v0, p0}, LQ4/g;->D(LQ4/y;)V

    iget-wide v6, v0, LQ4/g;->b:J

    invoke-virtual {v0, v6, v7}, LQ4/g;->r(J)[B

    move-result-object p0

    if-eqz v3, :cond_6

    array-length v0, p0

    invoke-static {p0, v1, v0, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v3, v5

    move v5, v0

    move-object v7, v9

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lh3/C;->a(IIIILandroid/graphics/BitmapFactory$Options;Lh3/A;)V

    :cond_6
    array-length p1, p0

    invoke-static {p0, v1, p1, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lh3/A;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lh3/A;->a()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    if-eqz v1, :cond_17

    :cond_0
    iget v4, v0, Lh3/A;->d:I

    iget v6, v0, Lh3/A;->c:I

    const/4 v7, 0x5

    const/4 v8, 0x2

    if-eqz v1, :cond_5

    const/16 v10, 0x5a

    const/16 v11, 0x10e

    packed-switch v1, :pswitch_data_0

    move v12, v5

    goto :goto_0

    :pswitch_0
    move v12, v11

    goto :goto_0

    :pswitch_1
    move v12, v10

    goto :goto_0

    :pswitch_2
    const/16 v12, 0xb4

    :goto_0
    const/4 v13, 0x1

    if-eq v1, v8, :cond_1

    const/4 v14, 0x7

    if-eq v1, v14, :cond_1

    const/4 v14, 0x4

    if-eq v1, v14, :cond_1

    if-eq v1, v7, :cond_1

    move v1, v13

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-eqz v12, :cond_2

    int-to-float v14, v12

    invoke-virtual {v9, v14}, Landroid/graphics/Matrix;->preRotate(F)Z

    if-eq v12, v10, :cond_3

    if-ne v12, v11, :cond_2

    goto :goto_2

    :cond_2
    move v15, v6

    move v6, v4

    move v4, v15

    :cond_3
    :goto_2
    if-eq v1, v13, :cond_4

    int-to-float v1, v1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v1, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_4
    move v15, v6

    move v6, v4

    move v4, v15

    :cond_5
    iget-boolean v1, v0, Lh3/A;->e:Z

    if-eqz v1, :cond_e

    if-eqz v6, :cond_6

    int-to-float v1, v6

    int-to-float v10, v2

    :goto_3
    div-float/2addr v1, v10

    goto :goto_4

    :cond_6
    int-to-float v1, v4

    int-to-float v10, v3

    goto :goto_3

    :goto_4
    if-eqz v4, :cond_7

    int-to-float v10, v4

    int-to-float v11, v3

    :goto_5
    div-float/2addr v10, v11

    goto :goto_6

    :cond_7
    int-to-float v10, v6

    int-to-float v11, v2

    goto :goto_5

    :goto_6
    cmpl-float v11, v1, v10

    iget v0, v0, Lh3/A;->f:I

    if-lez v11, :cond_a

    int-to-float v6, v3

    div-float/2addr v10, v1

    mul-float/2addr v10, v6

    float-to-double v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    and-int/lit8 v7, v0, 0x30

    const/16 v10, 0x30

    if-ne v7, v10, :cond_8

    move v3, v5

    goto :goto_7

    :cond_8
    const/16 v7, 0x50

    and-int/2addr v0, v7

    if-ne v0, v7, :cond_9

    sub-int/2addr v3, v6

    goto :goto_7

    :cond_9
    sub-int/2addr v3, v6

    div-int/2addr v3, v8

    :goto_7
    int-to-float v0, v4

    int-to-float v4, v6

    div-float v10, v0, v4

    move v0, v3

    move v3, v6

    goto :goto_9

    :cond_a
    cmpg-float v4, v1, v10

    if-gez v4, :cond_d

    int-to-float v4, v2

    div-float/2addr v1, v10

    mul-float/2addr v1, v4

    float-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v1, v11

    and-int/lit8 v4, v0, 0x3

    const/4 v11, 0x3

    if-ne v4, v11, :cond_b

    move v2, v5

    goto :goto_8

    :cond_b
    and-int/2addr v0, v7

    if-ne v0, v7, :cond_c

    sub-int/2addr v2, v1

    goto :goto_8

    :cond_c
    sub-int/2addr v2, v1

    div-int/2addr v2, v8

    :goto_8
    int-to-float v0, v6

    int-to-float v4, v1

    div-float/2addr v0, v4

    move v15, v1

    move v1, v0

    move v0, v5

    move v5, v2

    move v2, v15

    goto :goto_9

    :cond_d
    move v0, v5

    move v1, v10

    :goto_9
    invoke-virtual {v9, v1, v10}, Landroid/graphics/Matrix;->preScale(FF)Z

    move v6, v0

    move v7, v2

    move v8, v3

    goto :goto_14

    :cond_e
    iget-boolean v0, v0, Lh3/A;->g:Z

    if-eqz v0, :cond_12

    if-eqz v6, :cond_f

    int-to-float v0, v6

    int-to-float v1, v2

    :goto_a
    div-float/2addr v0, v1

    goto :goto_b

    :cond_f
    int-to-float v0, v4

    int-to-float v1, v3

    goto :goto_a

    :goto_b
    if-eqz v4, :cond_10

    int-to-float v1, v4

    int-to-float v4, v3

    :goto_c
    div-float/2addr v1, v4

    goto :goto_d

    :cond_10
    int-to-float v1, v6

    int-to-float v4, v2

    goto :goto_c

    :goto_d
    cmpg-float v4, v0, v1

    if-gez v4, :cond_11

    goto :goto_e

    :cond_11
    move v0, v1

    :goto_e
    invoke-virtual {v9, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_13

    :cond_12
    if-nez v6, :cond_13

    if-eqz v4, :cond_17

    :cond_13
    if-ne v6, v2, :cond_14

    if-eq v4, v3, :cond_17

    :cond_14
    if-eqz v6, :cond_15

    int-to-float v0, v6

    int-to-float v1, v2

    :goto_f
    div-float/2addr v0, v1

    goto :goto_10

    :cond_15
    int-to-float v0, v4

    int-to-float v1, v3

    goto :goto_f

    :goto_10
    if-eqz v4, :cond_16

    int-to-float v1, v4

    int-to-float v4, v3

    :goto_11
    div-float/2addr v1, v4

    goto :goto_12

    :cond_16
    int-to-float v1, v6

    int-to-float v4, v2

    goto :goto_11

    :goto_12
    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_17
    :goto_13
    move v7, v2

    move v8, v3

    move v6, v5

    :goto_14
    const/4 v10, 0x1

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_15

    :cond_18
    move-object v0, v1

    :goto_15
    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Lh3/A;)V
    .locals 3

    iget-object p0, p0, Lh3/A;->a:Landroid/net/Uri;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    sget-object v0, Lh3/e;->y:LH4/c;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-object v0, p0, Lh3/e;->o:Lh3/l;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lh3/e;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lh3/e;->r:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final d(Lh3/l;)V
    .locals 5

    iget-object v0, p0, Lh3/e;->o:Lh3/l;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lh3/e;->o:Lh3/l;

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh3/e;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_7

    iget-object p1, p1, Lh3/l;->b:Lh3/A;

    iget v0, p0, Lh3/e;->w:I

    iget p1, p1, Lh3/A;->h:I

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lh3/e;->p:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    iget-object v0, p0, Lh3/e;->o:Lh3/l;

    if-nez v0, :cond_3

    if-eqz p1, :cond_6

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, v0, Lh3/l;->b:Lh3/A;

    iget v1, v0, Lh3/A;->h:I

    :cond_4
    if-eqz p1, :cond_6

    iget-object p1, p0, Lh3/e;->p:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_6

    iget-object v0, p0, Lh3/e;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh3/l;

    iget-object v0, v0, Lh3/l;->b:Lh3/A;

    iget v0, v0, Lh3/A;->h:I

    invoke-static {v0}, Ls/e;->d(I)I

    move-result v3

    invoke-static {v1}, Ls/e;->d(I)I

    move-result v4

    if-le v3, v4, :cond_5

    move v1, v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iput v1, p0, Lh3/e;->w:I

    :cond_7
    iget-object p1, p0, Lh3/e;->b:Lh3/v;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final e()Landroid/graphics/Bitmap;
    .locals 6

    iget-object v0, p0, Lh3/e;->d:LC4/o;

    iget-object v1, p0, Lh3/e;->f:Ljava/lang/String;

    iget-object v0, v0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, Lh3/m;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh3/n;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lh3/n;->a:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lh3/e;->e:Lh3/D;

    iget-object v3, v3, Lh3/D;->b:Lh/c;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput v1, p0, Lh3/e;->s:I

    iget-object v1, p0, Lh3/e;->b:Lh3/v;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_1
    iget v3, p0, Lh3/e;->v:I

    if-nez v3, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :cond_2
    iget v3, p0, Lh3/e;->m:I

    :goto_1
    iput v3, p0, Lh3/e;->m:I

    iget-object v4, p0, Lh3/e;->n:Lh3/C;

    iget-object v5, p0, Lh3/e;->l:Lh3/A;

    invoke-virtual {v4, v5, v3}, Lh3/C;->e(Lh3/A;I)LC4/G;

    move-result-object v3

    if-eqz v3, :cond_3

    iget v0, v3, LC4/G;->a:I

    iput v0, p0, Lh3/e;->s:I

    iget v0, v3, LC4/G;->b:I

    iput v0, p0, Lh3/e;->u:I

    iget-object v0, v3, LC4/G;->c:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-object v0, v3, LC4/G;->d:Ljava/lang/Object;

    check-cast v0, LQ4/y;

    :try_start_0
    iget-object v3, p0, Lh3/e;->l:Lh3/A;

    invoke-static {v0, v3}, Lh3/e;->c(LQ4/y;Lh3/A;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v0, v3

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    throw v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_c

    iget-object v3, p0, Lh3/e;->b:Lh3/v;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lh3/e;->e:Lh3/D;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lh3/F;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v4

    if-ltz v4, :cond_b

    iget-object v3, v3, Lh3/D;->b:Lh/c;

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, p0, Lh3/e;->l:Lh3/A;

    invoke-virtual {v3}, Lh3/A;->a()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v3, v3, Lh3/A;->b:Ljava/util/List;

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    iget v3, p0, Lh3/e;->u:I

    if-eqz v3, :cond_c

    :cond_5
    :goto_3
    sget-object v3, Lh3/e;->x:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v4, p0, Lh3/e;->l:Lh3/A;

    invoke-virtual {v4}, Lh3/A;->a()Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, p0, Lh3/e;->u:I

    if-eqz v4, :cond_7

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_6
    :goto_4
    iget-object v4, p0, Lh3/e;->l:Lh3/A;

    iget v5, p0, Lh3/e;->u:I

    invoke-static {v4, v0, v5}, Lh3/e;->f(Lh3/A;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lh3/e;->b:Lh3/v;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
    iget-object v4, p0, Lh3/e;->l:Lh3/A;

    iget-object v4, v4, Lh3/A;->b:Ljava/util/List;

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    move v1, v2

    :goto_5
    if-eqz v1, :cond_9

    invoke-static {v4, v0}, Lh3/e;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lh3/e;->b:Lh3/v;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_9
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_c

    iget-object v1, p0, Lh3/e;->e:Lh3/D;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v3

    if-ltz v3, :cond_a

    iget-object v1, v1, Lh3/D;->b:Lh/c;

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7

    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Negative size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_6
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Negative size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_7
    return-object v0
.end method

.method public final run()V
    .locals 7

    iget-object v0, p0, Lh3/e;->c:Lh3/k;

    const-string v1, "Picasso-Idle"

    const/4 v2, 0x6

    :try_start_0
    iget-object v3, p0, Lh3/e;->l:Lh3/A;

    invoke-static {v3}, Lh3/e;->g(Lh3/A;)V

    iget-object v3, p0, Lh3/e;->b:Lh3/v;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lh3/e;->e()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lh3/e;->q:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    iget-object v3, v0, Lh3/k;->h:Lh/c;

    invoke-virtual {v3, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lh3/k;->b(Lh3/e;)V
    :try_end_0
    .catch Lh3/r; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_4

    :goto_1
    :try_start_1
    iput-object v3, p0, Lh3/e;->t:Ljava/lang/Exception;

    iget-object v0, v0, Lh3/k;->h:Lh/c;

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :goto_2
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    iget-object v5, p0, Lh3/e;->e:Lh3/D;

    invoke-virtual {v5}, Lh3/D;->a()Lh3/E;

    move-result-object v5

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v5, v6}, Lh3/E;->a(Ljava/io/PrintWriter;)V

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v5, p0, Lh3/e;->t:Ljava/lang/Exception;

    iget-object v0, v0, Lh3/k;->h:Lh/c;

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :goto_3
    iput-object v2, p0, Lh3/e;->t:Ljava/lang/Exception;

    iget-object v0, v0, Lh3/k;->h:Lh/c;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :goto_4
    iput-object v3, p0, Lh3/e;->t:Ljava/lang/Exception;

    iget-object v0, v0, Lh3/k;->h:Lh/c;

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_5
    return-void

    :goto_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method
