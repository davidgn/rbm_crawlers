.class public Lj1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/r;
.implements Ll/C0;
.implements Lk/y;
.implements Ll/Z;
.implements Lk/k;
.implements LM/x;
.implements Ll3/a1;
.implements Lm2/a;
.implements Lr1/i;
.implements Lu0/f0;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lj1/a;->a:I

    sparse-switch p1, :sswitch_data_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, LC4/o;

    const/16 v0, 0x1c

    invoke-direct {p1, v0}, LC4/o;-><init>(I)V

    iput-object p1, p0, Lj1/a;->b:Ljava/lang/Object;

    return-void

    .line 4
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, Li1/D;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Li1/D;-><init>(I)V

    iput-object p1, p0, Lj1/a;->b:Ljava/lang/Object;

    return-void

    .line 6
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lj1/a;->a:I

    iput-object p1, p0, Lj1/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final u(Lk/m;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lu0/G;

    iget-object v1, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v1, Lu0/F;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lu0/G;

    iget-object p1, p1, Lu0/G;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, p1

    return v1
.end method

.method public c(Lk/m;Z)V
    .locals 2

    instance-of v0, p1, Lk/F;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lk/F;

    iget-object v0, v0, Lk/F;->E:Lk/m;

    invoke-virtual {v0}, Lk/m;->k()Lk/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lk/m;->c(Z)V

    :cond_0
    iget-object v0, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v0, Ll/k;

    iget-object v0, v0, Ll/k;->e:Lk/y;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lk/y;->c(Lk/m;Z)V

    :cond_1
    return-void
.end method

.method public d(Lk/m;Lk/o;)V
    .locals 0

    iget-object p2, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast p2, Lk/g;

    iget-object p2, p2, Lk/g;->f:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lk/m;)Z
    .locals 3

    iget-object v0, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v0, Ll/k;

    iget-object v1, v0, Ll/k;->c:Lk/m;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return v2

    :cond_0
    move-object v1, p1

    check-cast v1, Lk/F;

    iget-object v1, v1, Lk/F;->F:Lk/o;

    iget v1, v1, Lk/o;->a:I

    iput v1, v0, Ll/k;->D:I

    iget-object v0, v0, Ll/k;->e:Lk/y;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lk/y;->e(Lk/m;)Z

    move-result v2

    :cond_1
    return v2
.end method

.method public f(Lk/m;Landroid/view/MenuItem;)Z
    .locals 3

    iget p1, p0, Lj1/a;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v0, p1, Lu2/k;->l:Lu2/h;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p1}, Lu2/k;->getSelectedItemId()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object p1, p1, Lu2/k;->l:Lu2/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lu2/k;->f:Lu2/i;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lu2/i;->a(Landroid/view/MenuItem;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    iget-object p1, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->T:LK0/j;

    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public g(Landroid/view/View;LM/z0;)LM/z0;
    .locals 6

    const/4 p1, 0x1

    iget v0, p0, Lj1/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:LM/z0;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iput-object p2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:LM/z0;

    invoke-virtual {p2}, LM/z0;->d()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v1, p2, LM/z0;->a:LM/x0;

    invoke-virtual {v1}, LM/x0;->m()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    sget-object v5, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lz/e;

    iget-object v4, v4, Lz/e;->a:Lz/c;

    if-eqz v4, :cond_3

    invoke-virtual {v1}, LM/x0;->m()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v2, p1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_5
    return-object p2

    :pswitch_0
    iget-object p1, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast p1, Ll2/g;

    iget-object v0, p1, Ll2/g;->r:Ll2/f;

    if-eqz v0, :cond_6

    iget-object v1, p1, Ll2/g;->f:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    new-instance v0, Ll2/f;

    iget-object v1, p1, Ll2/g;->n:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, p2}, Ll2/f;-><init>(Landroid/view/View;LM/z0;)V

    iput-object v0, p1, Ll2/g;->r:Ll2/f;

    iget-object p1, p1, Ll2/g;->f:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object p2

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public h(Li1/w;)Li1/q;
    .locals 1

    new-instance p1, Lj1/b;

    iget-object v0, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v0, LC4/o;

    invoke-direct {p1, v0}, Lj1/b;-><init>(LC4/o;)V

    return-object p1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v0, Lu0/F;

    invoke-virtual {v0}, Lu0/F;->B()I

    move-result v0

    return v0
.end method

.method public j(Lk/m;)V
    .locals 3

    iget v0, p0, Lj1/a;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->y:Ll/k;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ll/k;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->L:LM/p;

    iget-object v1, v1, LM/p;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM/r;

    check-cast v2, Landroidx/fragment/app/Q;

    iget-object v2, v2, Landroidx/fragment/app/Q;->a:Landroidx/fragment/app/Y;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Y;->s(Landroid/view/Menu;)Z

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->T:LK0/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, LK0/j;->j(Lk/m;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public k(Lk/m;Lk/o;)V
    .locals 9

    iget-object v0, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v0, Lk/g;

    iget-object v1, v0, Lk/g;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, v0, Lk/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v3, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk/f;

    iget-object v6, v6, Lk/f;->b:Lk/m;

    if-ne p1, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_1
    if-ne v4, v5, :cond_2

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lk/f;

    :cond_3
    move-object v5, v2

    new-instance v1, LU0/p;

    const/4 v8, 0x1

    move-object v3, v1

    move-object v4, p0

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, LU0/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    iget-object p2, v0, Lk/g;->f:Landroid/os/Handler;

    invoke-virtual {p2, v1, p1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public l()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v0, Ll3/L1;

    invoke-static {v0}, Ll3/M1;->a(Ll3/L1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public m()I
    .locals 2

    iget-object v0, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v0, Lu0/F;

    iget v1, v0, Lu0/F;->n:I

    invoke-virtual {v0}, Lu0/F;->C()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public n(I)V
    .locals 0

    return-void
.end method

.method public o(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v0, Lu0/F;

    invoke-virtual {v0, p1}, Lu0/F;->u(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public p(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lu0/G;

    iget-object v1, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v1, Lu0/F;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lu0/G;

    iget-object p1, p1, Lu0/G;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, p1

    return v1
.end method

.method public q(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v0, Ll3/L1;

    invoke-static {v0, p1}, Ll3/M1;->b(Ll3/L1;Ljava/lang/Object;)V

    return-void
.end method

.method public r(Ll3/f1;)Ll3/v;
    .locals 2

    iget-object v0, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v0, Ll3/L0;

    iget-object v0, v0, Ll3/L0;->x:Lj3/B;

    iget-object v1, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v1, Ll3/L0;

    iget-object v1, v1, Ll3/L0;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast p1, Ll3/L0;

    iget-object p1, p1, Ll3/L0;->D:Ll3/J;

    return-object p1

    :cond_0
    if-nez v0, :cond_1

    iget-object p1, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast p1, Ll3/L0;

    iget-object p1, p1, Ll3/L0;->m:Lj3/w0;

    new-instance v0, LA2/h;

    const/16 v1, 0x15

    invoke-direct {v0, p0, v1}, LA2/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast p1, Ll3/L0;

    iget-object p1, p1, Ll3/L0;->D:Ll3/J;

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Lj3/B;->c(Ll3/f1;)Lj3/N;

    move-result-object v0

    iget-object p1, p1, Ll3/f1;->a:Lj3/g;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p1, p1, Lj3/g;->f:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {v0, p1}, Ll3/b0;->f(Lj3/N;Z)Ll3/v;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    iget-object p1, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast p1, Ll3/L0;

    iget-object p1, p1, Ll3/L0;->D:Ll3/J;

    return-object p1
.end method

.method public s(Ljava/lang/CharSequence;Lt3/i;)Z
    .locals 2

    iget-object p2, p2, Lt3/i;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v0, Li1/D;

    invoke-virtual {v0, p2}, Li1/D;->s(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public t()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    const/4 v1, 0x0

    iput-object v1, p0, Lj1/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lj1/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v1, Lr1/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method
