.class public final LD0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LD0/e;LD0/d;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LD0/c;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/c;->c:Ljava/lang/Object;

    iput-object p2, p0, LD0/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LO1/g;LO1/j;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LD0/c;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LD0/c;->b:Ljava/lang/Object;

    iput-object p2, p0, LD0/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LO1/g;Ljava/util/ArrayList;LO1/k;)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, LD0/c;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, LD0/c;->b:Ljava/lang/Object;

    iput-object p3, p0, LD0/c;->c:Ljava/lang/Object;

    return-void
.end method

.method private final a(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final b(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final c(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final d(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final e(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final f(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final g(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final h(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, LD0/c;->a:I

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, LD0/c;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LD0/c;->c:Ljava/lang/Object;

    check-cast p1, LO1/j;

    instance-of v0, p1, LO1/h;

    iget-object v1, p0, LD0/c;->b:Ljava/lang/Object;

    check-cast v1, LO1/g;

    if-eqz v0, :cond_0

    sget-object p1, LO1/l;->a:LO1/l;

    invoke-static {v1, p1}, LO1/g;->a(LO1/g;LO1/l;)V

    goto :goto_0

    :cond_0
    instance-of p1, p1, LO1/i;

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-static {v1, p1}, LO1/g;->a(LO1/g;LO1/l;)V

    invoke-virtual {v1}, LO1/g;->getDismissListener()Lk4/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lk4/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LY3/j;

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, LD0/c;->c:Ljava/lang/Object;

    check-cast p1, LO1/k;

    if-eqz p1, :cond_2

    iget-object p1, p1, LO1/k;->a:LO1/f;

    iget-object v0, p0, LD0/c;->b:Ljava/lang/Object;

    check-cast v0, LO1/g;

    iget-object v1, v0, LO1/g;->t:Landroid/widget/TextView;

    iget-object v1, v0, LO1/g;->C:LO1/n;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LO1/g;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    :cond_2
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 5

    iget v0, p0, LD0/c;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, LD0/c;->c:Ljava/lang/Object;

    check-cast v0, LD0/e;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, LD0/c;->b:Ljava/lang/Object;

    check-cast v2, LD0/d;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, LD0/e;->a(FLD0/d;Z)V

    iget v4, v2, LD0/d;->e:F

    iput v4, v2, LD0/d;->k:F

    iget v4, v2, LD0/d;->f:F

    iput v4, v2, LD0/d;->l:F

    iget v4, v2, LD0/d;->g:F

    iput v4, v2, LD0/d;->m:F

    iget v4, v2, LD0/d;->j:I

    add-int/2addr v4, v3

    iget-object v3, v2, LD0/d;->i:[I

    array-length v3, v3

    rem-int/2addr v4, v3

    invoke-virtual {v2, v4}, LD0/d;->a(I)V

    iget-boolean v3, v0, LD0/e;->f:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, LD0/e;->f:Z

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const-wide/16 v3, 0x534

    invoke-virtual {p1, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    iget-boolean p1, v2, LD0/d;->n:Z

    if-eqz p1, :cond_1

    iput-boolean v1, v2, LD0/d;->n:Z

    goto :goto_0

    :cond_0
    iget p1, v0, LD0/e;->e:F

    add-float/2addr p1, v1

    iput p1, v0, LD0/e;->e:F

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, LD0/c;->a:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    iget-object p1, p0, LD0/c;->c:Ljava/lang/Object;

    check-cast p1, LD0/e;

    const/4 v0, 0x0

    iput v0, p1, LD0/e;->e:F

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
