.class public final Lh3/B;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Lh3/v;

.field public final b:Lh3/z;

.field public c:Z

.field public d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lh3/B;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lh3/v;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/B;->a:Lh3/v;

    new-instance p1, Lh3/z;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p2, p1, Lh3/z;->a:Landroid/net/Uri;

    iput-object p1, p0, Lh3/B;->b:Lh3/z;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    sget-object v2, Lh3/F;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v2, v4, :cond_1a

    if-eqz v3, :cond_19

    iget-object v2, v0, Lh3/B;->b:Lh3/z;

    iget-object v4, v2, Lh3/z;->a:Landroid/net/Uri;

    const/4 v5, 0x0

    iget-object v7, v0, Lh3/B;->a:Lh3/v;

    if-nez v4, :cond_1

    invoke-virtual {v7, v3}, Lh3/v;->a(Ljava/lang/Object;)V

    iget v1, v0, Lh3/B;->d:I

    if-eqz v1, :cond_0

    iget-object v2, v7, Lh3/v;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_0
    invoke-static {v3, v5}, Lh3/w;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    iget-boolean v4, v0, Lh3/B;->c:Z

    if-eqz v4, :cond_7

    iget v4, v2, Lh3/z;->b:I

    if-nez v4, :cond_6

    iget v4, v2, Lh3/z;->c:I

    if-nez v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    if-eqz v4, :cond_3

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v4, v6}, Lh3/z;->a(II)V

    goto :goto_1

    :cond_3
    :goto_0
    iget v1, v0, Lh3/B;->d:I

    if-eqz v1, :cond_4

    iget-object v2, v7, Lh3/v;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_4
    invoke-static {v3, v5}, Lh3/w;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lh3/h;

    invoke-direct {v1, v0, v3}, Lh3/h;-><init>(Lh3/B;Landroid/widget/ImageView;)V

    iget-object v2, v7, Lh3/v;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v3}, Lh3/v;->a(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v2, v3, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with resize."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_1
    sget-object v4, Lh3/B;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-boolean v4, v2, Lh3/z;->f:Z

    if-eqz v4, :cond_9

    iget-boolean v6, v2, Lh3/z;->d:Z

    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop and center inside can not be used together."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_2
    iget-boolean v6, v2, Lh3/z;->d:Z

    if-eqz v6, :cond_b

    iget v6, v2, Lh3/z;->b:I

    if-nez v6, :cond_b

    iget v6, v2, Lh3/z;->c:I

    if-eqz v6, :cond_a

    goto :goto_3

    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_3
    if-eqz v4, :cond_d

    iget v4, v2, Lh3/z;->b:I

    if-nez v4, :cond_d

    iget v4, v2, Lh3/z;->c:I

    if-eqz v4, :cond_c

    goto :goto_4

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center inside requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_4
    iget v4, v2, Lh3/z;->h:I

    if-nez v4, :cond_e

    const/4 v4, 0x2

    iput v4, v2, Lh3/z;->h:I

    :cond_e
    new-instance v4, Lh3/A;

    iget-object v10, v2, Lh3/z;->g:Ljava/util/ArrayList;

    iget v11, v2, Lh3/z;->b:I

    iget v12, v2, Lh3/z;->c:I

    iget-boolean v13, v2, Lh3/z;->d:Z

    iget-boolean v14, v2, Lh3/z;->f:Z

    iget v15, v2, Lh3/z;->e:I

    iget v6, v2, Lh3/z;->h:I

    iget-object v2, v2, Lh3/z;->a:Landroid/net/Uri;

    move-object v8, v4

    move-object v9, v2

    move/from16 v16, v6

    invoke-direct/range {v8 .. v16}, Lh3/A;-><init>(Landroid/net/Uri;Ljava/util/ArrayList;IIZZII)V

    sget-object v6, Lh3/F;->a:Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    const/16 v9, 0x32

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_f
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_5
    const/16 v2, 0xa

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lh3/A;->a()Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v9, "resize:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Lh3/A;->c:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x78

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v9, v4, Lh3/A;->d:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    iget-boolean v9, v4, Lh3/A;->e:Z

    if-eqz v9, :cond_11

    const-string v9, "centerCrop:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Lh3/A;->f:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_11
    iget-boolean v9, v4, Lh3/A;->g:Z

    if-eqz v9, :cond_12

    const-string v9, "centerInside"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12
    :goto_6
    iget-object v9, v4, Lh3/A;->b:Ljava/util/List;

    if-eqz v9, :cond_13

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    move v11, v8

    :goto_7
    if-ge v11, v10, :cond_13

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LH1/a;

    invoke-virtual {v12}, LH1/a;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v11, v1

    goto :goto_7

    :cond_13
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, v7, Lh3/v;->d:LC4/o;

    iget-object v2, v2, LC4/o;->b:Ljava/lang/Object;

    check-cast v2, Lh3/m;

    invoke-virtual {v2, v9}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh3/n;

    if-eqz v2, :cond_14

    iget-object v2, v2, Lh3/n;->a:Landroid/graphics/Bitmap;

    goto :goto_8

    :cond_14
    move-object v2, v5

    :goto_8
    iget-object v6, v7, Lh3/v;->e:Lh3/D;

    if-eqz v2, :cond_15

    iget-object v6, v6, Lh3/D;->b:Lh/c;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_9

    :cond_15
    iget-object v6, v6, Lh3/D;->b:Lh/c;

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_9
    if-eqz v2, :cond_17

    invoke-virtual {v7, v3}, Lh3/v;->a(Ljava/lang/Object;)V

    sget v4, Lh3/w;->e:I

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v5, v4, Landroid/graphics/drawable/Animatable;

    if-eqz v5, :cond_16

    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/Animatable;

    invoke-interface {v5}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_16
    new-instance v5, Lh3/w;

    iget-object v6, v7, Lh3/v;->b:Landroid/content/Context;

    invoke-direct {v5, v6, v2, v4, v1}, Lh3/w;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_17
    iget v1, v0, Lh3/B;->d:I

    if-eqz v1, :cond_18

    iget-object v2, v7, Lh3/v;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_18
    invoke-static {v3, v5}, Lh3/w;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Lh3/l;

    iget v5, v0, Lh3/B;->e:I

    move-object v1, v8

    move-object v2, v7

    move-object/from16 v3, p1

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lh3/l;-><init>(Lh3/v;Landroid/widget/ImageView;Lh3/A;ILjava/lang/String;)V

    invoke-virtual {v7, v8}, Lh3/v;->c(Lh3/l;)V

    return-void

    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Method call should happen from the main thread."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
