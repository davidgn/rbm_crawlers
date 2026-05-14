.class public final Lcom/denzcoskun/imageslider/ImageSlider;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/viewpager/widget/ViewPager;

.field public final b:Landroid/widget/LinearLayout;

.field public c:LC1/b;

.field public d:[Landroid/widget/ImageView;

.field public e:I

.field public f:I

.field public final l:I

.field public final m:J

.field public final n:J

.field public final o:Z

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public w:Ljava/util/Timer;

.field public final x:Z

.field public final y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v1, "LEFT"

    iput-object v1, p0, Lcom/denzcoskun/imageslider/ImageSlider;->u:Ljava/lang/String;

    const-string v1, "CENTER"

    iput-object v1, p0, Lcom/denzcoskun/imageslider/ImageSlider;->v:Ljava/lang/String;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/denzcoskun/imageslider/ImageSlider;->w:Ljava/util/Timer;

    const-string v1, "#FFFFFF"

    iput-object v1, p0, Lcom/denzcoskun/imageslider/ImageSlider;->y:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0061

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f090400

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lcom/denzcoskun/imageslider/ImageSlider;->a:Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f09028e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/denzcoskun/imageslider/ImageSlider;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, LB1/c;->a:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/denzcoskun/imageslider/ImageSlider;->l:I

    const/4 p2, 0x6

    const/16 v1, 0x3e8

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long v2, p2

    iput-wide v2, p0, Lcom/denzcoskun/imageslider/ImageSlider;->m:J

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, p0, Lcom/denzcoskun/imageslider/ImageSlider;->n:J

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/denzcoskun/imageslider/ImageSlider;->o:Z

    const/4 p2, 0x7

    const v1, 0x7f080099

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/denzcoskun/imageslider/ImageSlider;->s:I

    const/4 p2, 0x3

    const v1, 0x7f080097

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/denzcoskun/imageslider/ImageSlider;->r:I

    const/16 p2, 0x8

    const v1, 0x7f08009b

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/denzcoskun/imageslider/ImageSlider;->p:I

    const/16 p2, 0xc

    const v1, 0x7f08009c

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/denzcoskun/imageslider/ImageSlider;->q:I

    const/16 p2, 0xb

    const v1, 0x7f080098

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/denzcoskun/imageslider/ImageSlider;->t:I

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/denzcoskun/imageslider/ImageSlider;->x:Z

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/denzcoskun/imageslider/ImageSlider;->u:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :cond_1
    :goto_0
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    iput-object p2, p0, Lcom/denzcoskun/imageslider/ImageSlider;->v:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :cond_3
    :goto_1
    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/denzcoskun/imageslider/ImageSlider;->y:Ljava/lang/String;

    goto :goto_2

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :cond_5
    :goto_2
    return-void
.end method

.method private final setAdapter(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LG1/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/denzcoskun/imageslider/ImageSlider;->a:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/denzcoskun/imageslider/ImageSlider;->c:LC1/b;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(LI0/a;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/denzcoskun/imageslider/ImageSlider;->f:I

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/denzcoskun/imageslider/ImageSlider;->x:Z

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/denzcoskun/imageslider/ImageSlider;->setupDots(I)V

    :cond_0
    iget-boolean p1, p0, Lcom/denzcoskun/imageslider/ImageSlider;->o:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/denzcoskun/imageslider/ImageSlider;->w:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    iget-object p1, p0, Lcom/denzcoskun/imageslider/ImageSlider;->w:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    new-instance p1, LB1/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x3e8

    iput v2, p1, LB1/d;->a:I

    :try_start_0
    const-class v2, Landroidx/viewpager/widget/ViewPager;

    const-string v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "ViewPager::class.java.ge\u2026eclaredField(\"mScroller\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, LA2/h;

    invoke-direct {v1, p0, v0}, LA2/h;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/denzcoskun/imageslider/ImageSlider;->w:Ljava/util/Timer;

    new-instance v3, LB1/a;

    invoke-direct {v3, p1, v1}, LB1/a;-><init>(Landroid/os/Handler;LA2/h;)V

    iget-wide v4, p0, Lcom/denzcoskun/imageslider/ImageSlider;->n:J

    iget-wide v6, p0, Lcom/denzcoskun/imageslider/ImageSlider;->m:J

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method private final setupDots(I)V
    .locals 7

    iget-object v0, p0, Lcom/denzcoskun/imageslider/ImageSlider;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/denzcoskun/imageslider/ImageSlider;->v:Ljava/lang/String;

    const-string v3, "textAlign"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x239807

    if-eq v3, v4, :cond_1

    const v4, 0x4a5c9fc

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "RIGHT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    goto :goto_1

    :cond_1
    const-string v3, "LEFT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v2, 0x11

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-array v2, p1, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/denzcoskun/imageslider/ImageSlider;->d:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, p1, :cond_7

    iget-object v4, p0, Lcom/denzcoskun/imageslider/ImageSlider;->d:[Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v3

    iget-object v4, p0, Lcom/denzcoskun/imageslider/ImageSlider;->d:[Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    aget-object v4, v4, v3

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/denzcoskun/imageslider/ImageSlider;->q:I

    invoke-static {v5, v6}, LC/i;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x8

    invoke-virtual {v4, v5, v2, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/denzcoskun/imageslider/ImageSlider;->d:[Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    aget-object v5, v5, v3

    invoke-virtual {v0, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :cond_7
    iget-object p1, p0, Lcom/denzcoskun/imageslider/ImageSlider;->d:[Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    aget-object p1, p1, v2

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/denzcoskun/imageslider/ImageSlider;->p:I

    invoke-static {v0, v2}, LC/i;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/denzcoskun/imageslider/ImageSlider;->a:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_9

    new-instance v0, LB1/b;

    invoke-direct {v0, p0}, LB1/b;-><init>(Lcom/denzcoskun/imageslider/ImageSlider;)V

    iget-object v1, p1, Landroidx/viewpager/widget/ViewPager;->V:Ljava/util/ArrayList;

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Landroidx/viewpager/widget/ViewPager;->V:Ljava/util/ArrayList;

    :cond_8
    iget-object p1, p1, Landroidx/viewpager/widget/ViewPager;->V:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :cond_c
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;I)V
    .locals 11

    new-instance v10, LC1/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v8, p0, Lcom/denzcoskun/imageslider/ImageSlider;->u:Ljava/lang/String;

    iget-object v9, p0, Lcom/denzcoskun/imageslider/ImageSlider;->y:Ljava/lang/String;

    iget v3, p0, Lcom/denzcoskun/imageslider/ImageSlider;->l:I

    iget v4, p0, Lcom/denzcoskun/imageslider/ImageSlider;->r:I

    iget v5, p0, Lcom/denzcoskun/imageslider/ImageSlider;->s:I

    iget v6, p0, Lcom/denzcoskun/imageslider/ImageSlider;->t:I

    move-object v0, v10

    move-object v2, p1

    move v7, p2

    invoke-direct/range {v0 .. v9}, LC1/b;-><init>(Landroid/content/Context;Ljava/util/List;IIIIILjava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/denzcoskun/imageslider/ImageSlider;->c:LC1/b;

    invoke-direct {p0, p1}, Lcom/denzcoskun/imageslider/ImageSlider;->setAdapter(Ljava/util/List;)V

    return-void
.end method

.method public final setImageList(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LG1/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "imageList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LC1/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v1, "context"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/denzcoskun/imageslider/ImageSlider;->u:Ljava/lang/String;

    const-string v1, "textAlign"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/denzcoskun/imageslider/ImageSlider;->y:Ljava/lang/String;

    const-string v1, "textColor"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, p0, Lcom/denzcoskun/imageslider/ImageSlider;->l:I

    iget v5, p0, Lcom/denzcoskun/imageslider/ImageSlider;->r:I

    iget v6, p0, Lcom/denzcoskun/imageslider/ImageSlider;->s:I

    iget v7, p0, Lcom/denzcoskun/imageslider/ImageSlider;->t:I

    const/4 v8, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v10}, LC1/b;-><init>(Landroid/content/Context;Ljava/util/List;IIIIILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/denzcoskun/imageslider/ImageSlider;->c:LC1/b;

    invoke-direct {p0, p1}, Lcom/denzcoskun/imageslider/ImageSlider;->setAdapter(Ljava/util/List;)V

    return-void
.end method

.method public final setItemChangeListener(LF1/a;)V
    .locals 1

    const-string v0, "itemChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setItemClickListener(LF1/b;)V
    .locals 1

    const-string v0, "itemClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/denzcoskun/imageslider/ImageSlider;->c:LC1/b;

    if-eqz v0, :cond_0

    iput-object p1, v0, LC1/b;->c:LF1/b;

    :cond_0
    return-void
.end method

.method public final setSlideAnimation(LE1/a;)V
    .locals 2

    const-string v0, "animationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object v0, p0, Lcom/denzcoskun/imageslider/ImageSlider;->a:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    if-eqz v0, :cond_0

    new-instance p1, Lz2/e;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Lz2/e;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->v(LI0/h;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :pswitch_0
    if-eqz v0, :cond_1

    new-instance p1, Ld3/a;

    const/4 v1, 0x5

    invoke-direct {p1, v1}, Ld3/a;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->v(LI0/h;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :pswitch_1
    if-eqz v0, :cond_2

    new-instance p1, Ld3/a;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Ld3/a;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->v(LI0/h;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :pswitch_2
    if-eqz v0, :cond_3

    new-instance p1, Ly3/c;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Ly3/c;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->v(LI0/h;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :pswitch_3
    if-eqz v0, :cond_4

    new-instance p1, Lz2/e;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Lz2/e;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->v(LI0/h;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :pswitch_4
    if-eqz v0, :cond_5

    new-instance p1, Ly3/c;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ly3/c;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->v(LI0/h;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :pswitch_5
    if-eqz v0, :cond_6

    new-instance p1, Lz2/e;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Lz2/e;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->v(LI0/h;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :pswitch_6
    if-eqz v0, :cond_7

    new-instance p1, Ly3/c;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Ly3/c;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->v(LI0/h;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :pswitch_7
    if-eqz v0, :cond_8

    new-instance p1, Ld3/a;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Ld3/a;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->v(LI0/h;)V

    goto :goto_0

    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :pswitch_8
    if-eqz v0, :cond_9

    new-instance p1, Ld3/a;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Ld3/a;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->v(LI0/h;)V

    goto :goto_0

    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :pswitch_9
    if-eqz v0, :cond_a

    new-instance p1, Lz2/e;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lz2/e;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->v(LI0/h;)V

    goto :goto_0

    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :pswitch_a
    if-eqz v0, :cond_b

    new-instance p1, Ly3/c;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Ly3/c;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->v(LI0/h;)V

    goto :goto_0

    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :pswitch_b
    if-eqz v0, :cond_c

    new-instance p1, Lz2/e;

    const/4 v1, 0x5

    invoke-direct {p1, v1}, Lz2/e;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->v(LI0/h;)V

    goto :goto_0

    :cond_c
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :pswitch_c
    if-eqz v0, :cond_d

    new-instance p1, Ly3/c;

    const/4 v1, 0x5

    invoke-direct {p1, v1}, Ly3/c;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->v(LI0/h;)V

    :goto_0
    return-void

    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final setTouchListener(LF1/c;)V
    .locals 1

    const-string v0, "touchListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/denzcoskun/imageslider/ImageSlider;->c:LC1/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    const/4 p1, 0x0

    throw p1
.end method
