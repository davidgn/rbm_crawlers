.class public final LH1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:I


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RoundedTransformation(radius="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, LH1/a;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LH1/a;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", diameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LH1/a;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cornerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LH1/a;->d:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    throw v0

    :pswitch_0
    const-string v1, "DIAGONAL_FROM_TOP_RIGHT"

    goto :goto_0

    :pswitch_1
    const-string v1, "DIAGONAL_FROM_TOP_LEFT"

    goto :goto_0

    :pswitch_2
    const-string v1, "OTHER_BOTTOM_RIGHT"

    goto :goto_0

    :pswitch_3
    const-string v1, "OTHER_BOTTOM_LEFT"

    goto :goto_0

    :pswitch_4
    const-string v1, "OTHER_TOP_RIGHT"

    goto :goto_0

    :pswitch_5
    const-string v1, "OTHER_TOP_LEFT"

    goto :goto_0

    :pswitch_6
    const-string v1, "RIGHT"

    goto :goto_0

    :pswitch_7
    const-string v1, "LEFT"

    goto :goto_0

    :pswitch_8
    const-string v1, "BOTTOM"

    goto :goto_0

    :pswitch_9
    const-string v1, "TOP"

    goto :goto_0

    :pswitch_a
    const-string v1, "BOTTOM_RIGHT"

    goto :goto_0

    :pswitch_b
    const-string v1, "BOTTOM_LEFT"

    goto :goto_0

    :pswitch_c
    const-string v1, "TOP_RIGHT"

    goto :goto_0

    :pswitch_d
    const-string v1, "TOP_LEFT"

    goto :goto_0

    :pswitch_e
    const-string v1, "ALL"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, p1, v6, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v0, v0

    int-to-float v1, v1

    iget v5, p0, LH1/a;->c:F

    sub-float/2addr v0, v5

    sub-float/2addr v1, v5

    iget v6, p0, LH1/a;->d:I

    invoke-static {v6}, Ls/e;->d(I)I

    move-result v6

    iget v7, p0, LH1/a;->b:F

    iget v8, p0, LH1/a;->a:F

    packed-switch v6, :pswitch_data_0

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_0
    new-instance v6, Landroid/graphics/RectF;

    sub-float v9, v0, v7

    add-float v10, v5, v7

    invoke-direct {v6, v9, v5, v0, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v1, v7

    invoke-direct {v6, v5, v7, v10, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v0, v8

    sub-float v9, v1, v8

    invoke-direct {v6, v5, v5, v7, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v5, v8

    invoke-direct {v6, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v6, Landroid/graphics/RectF;

    add-float v9, v5, v7

    invoke-direct {v6, v5, v5, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    sub-float v10, v0, v7

    sub-float v7, v1, v7

    invoke-direct {v6, v10, v7, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v5, v8

    invoke-direct {v6, v5, v7, v10, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    sub-float/2addr v1, v8

    invoke-direct {v6, v9, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v7, v5

    invoke-direct {v6, v5, v5, v0, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5, v5, v7, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v5, v8

    invoke-direct {v6, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v6, Landroid/graphics/RectF;

    add-float v9, v5, v7

    invoke-direct {v6, v5, v5, v0, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v0, v7

    invoke-direct {v6, v7, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v5, v8

    sub-float/2addr v0, v8

    invoke-direct {v6, v5, v7, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v6, Landroid/graphics/RectF;

    add-float v9, v5, v7

    invoke-direct {v6, v5, v5, v9, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v1, v7

    invoke-direct {v6, v5, v7, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v5, v8

    sub-float/2addr v1, v8

    invoke-direct {v6, v7, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v6, Landroid/graphics/RectF;

    sub-float v9, v1, v7

    invoke-direct {v6, v5, v9, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v0, v7

    invoke-direct {v6, v7, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    sub-float/2addr v0, v8

    sub-float/2addr v1, v8

    invoke-direct {v6, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v0, v7

    invoke-direct {v6, v7, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    sub-float/2addr v0, v8

    invoke-direct {v6, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v7, v5

    invoke-direct {v6, v5, v5, v7, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v8, v5

    invoke-direct {v6, v8, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v1, v7

    invoke-direct {v6, v5, v7, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    sub-float/2addr v1, v8

    invoke-direct {v6, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v7, v5

    invoke-direct {v6, v5, v5, v0, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v8, v5

    invoke-direct {v6, v5, v8, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v6, Landroid/graphics/RectF;

    sub-float v9, v0, v7

    sub-float v7, v1, v7

    invoke-direct {v6, v9, v7, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v0, v8

    invoke-direct {v6, v5, v5, v7, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    sub-float/2addr v1, v8

    invoke-direct {v6, v7, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_b
    new-instance v6, Landroid/graphics/RectF;

    sub-float v9, v1, v7

    add-float/2addr v7, v5

    invoke-direct {v6, v5, v9, v7, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    sub-float v9, v1, v8

    invoke-direct {v6, v5, v5, v7, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v8, v5

    invoke-direct {v6, v8, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_c
    new-instance v6, Landroid/graphics/RectF;

    sub-float v9, v0, v7

    add-float/2addr v7, v5

    invoke-direct {v6, v9, v5, v0, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v0, v8

    invoke-direct {v6, v5, v5, v7, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v5, v8

    invoke-direct {v6, v7, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_d
    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v7, v5

    invoke-direct {v6, v5, v5, v7, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v8, v5

    invoke-direct {v6, v5, v8, v8, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v8, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_e
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v6, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const-string p1, "bitmap"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
