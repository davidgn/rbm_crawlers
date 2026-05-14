.class public final LB1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI0/g;


# instance fields
.field public final synthetic a:Lcom/denzcoskun/imageslider/ImageSlider;


# direct methods
.method public constructor <init>(Lcom/denzcoskun/imageslider/ImageSlider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB1/b;->a:Lcom/denzcoskun/imageslider/ImageSlider;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 8

    iget-object v0, p0, LB1/b;->a:Lcom/denzcoskun/imageslider/ImageSlider;

    iput p1, v0, Lcom/denzcoskun/imageslider/ImageSlider;->e:I

    iget-object v1, v0, Lcom/denzcoskun/imageslider/ImageSlider;->d:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, v0, Lcom/denzcoskun/imageslider/ImageSlider;->q:I

    invoke-static {v6, v7}, LC/i;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v2

    :cond_1
    iget-object v1, v0, Lcom/denzcoskun/imageslider/ImageSlider;->d:[Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    aget-object p1, v1, p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Lcom/denzcoskun/imageslider/ImageSlider;->p:I

    invoke-static {v1, v2}, LC/i;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v2

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v2

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v2
.end method
