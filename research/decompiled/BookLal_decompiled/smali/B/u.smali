.class public final LB/u;
.super LB/y;
.source "SourceFile"


# instance fields
.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public c:Landroidx/core/graphics/drawable/IconCompat;

.field public d:Z


# virtual methods
.method public final a(LR0/i;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/app/Notification$BigPictureStyle;

    iget-object v3, v1, LR0/i;->b:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    invoke-direct {v2, v3}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v2

    iget-object v4, v0, LB/u;->b:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v5, 0x0

    const/16 v6, 0x1f

    iget-object v1, v1, LR0/i;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    if-eqz v4, :cond_5

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v6, :cond_0

    invoke-static {v4, v1}, LF/c;->c(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-static {v2, v4}, LB/t;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v4}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_5

    iget-object v4, v0, LB/u;->b:Landroidx/core/graphics/drawable/IconCompat;

    iget v8, v4, Landroidx/core/graphics/drawable/IconCompat;->a:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    instance-of v7, v4, Landroid/graphics/Bitmap;

    if-eqz v7, :cond_1

    check-cast v4, Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_1
    move-object v4, v3

    goto/16 :goto_0

    :cond_2
    if-ne v8, v7, :cond_3

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_3
    const/4 v7, 0x5

    if-ne v8, v7, :cond_4

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f2aaaab

    mul-float/2addr v7, v8

    float-to-int v7, v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x3

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    int-to-float v11, v7

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v12, v11

    const v13, 0x3f6aaaab

    mul-float/2addr v13, v12

    const v14, 0x3c2aaaab

    mul-float/2addr v14, v11

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    const v15, 0x3caaaaab

    mul-float/2addr v11, v15

    const/4 v15, 0x0

    const/high16 v5, 0x3d000000    # 0.03125f

    invoke-virtual {v10, v14, v15, v11, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {v9, v12, v12, v13, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v5, 0x1e000000

    invoke-virtual {v10, v14, v15, v15, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {v9, v12, v12, v13, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v10}, Landroid/graphics/Paint;->clearShadowLayer()V

    const/high16 v5, -0x1000000

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v4, v11, v11}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    sub-int/2addr v14, v7

    neg-int v14, v14

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v7

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v15

    invoke-virtual {v11, v14, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v5, v11}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v9, v12, v12, v13, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object v4, v8

    :goto_0
    invoke-virtual {v2, v4}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v2

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "called getBitmap() on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    iget-boolean v4, v0, LB/u;->d:Z

    if-eqz v4, :cond_7

    iget-object v4, v0, LB/u;->c:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v4, :cond_6

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    goto :goto_2

    :cond_6
    invoke-static {v4, v1}, LF/c;->c(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v2, v1}, LB/s;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    :cond_7
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_8

    const/4 v1, 0x0

    invoke-static {v2, v1}, LB/t;->c(Landroid/app/Notification$BigPictureStyle;Z)V

    invoke-static {v2, v3}, LB/t;->b(Landroid/app/Notification$BigPictureStyle;Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "androidx.core.app.NotificationCompat$BigPictureStyle"

    return-object v0
.end method
