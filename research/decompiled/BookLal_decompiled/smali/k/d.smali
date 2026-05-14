.class public final Lk/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lk/d;->a:I

    iput-object p1, p0, Lk/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lk/d;->b:Ljava/lang/Object;

    iget v2, p0, Lk/d;->a:I

    packed-switch v2, :pswitch_data_0

    check-cast v1, Lcom/google/android/material/navigation/NavigationView;

    iget-object v2, v1, Lcom/google/android/material/navigation/NavigationView;->o:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, v1, Lcom/google/android/material/navigation/NavigationView;->o:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v4, v1, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget-boolean v5, v4, Ls2/p;->z:Z

    if-eq v5, v2, :cond_2

    iput-boolean v2, v4, Ls2/p;->z:Z

    iget-object v5, v4, Ls2/p;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, v4, Ls2/p;->z:Z

    if-eqz v5, :cond_1

    iget v5, v4, Ls2/p;->B:I

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    iget-object v4, v4, Ls2/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v4, v0, v5, v0, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcom/google/android/material/navigation/NavigationView;->r:Z

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    invoke-virtual {v1, v2}, Ls2/t;->setDrawTopInsetForeground(Z)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    :goto_3
    instance-of v4, v2, Landroid/content/ContextWrapper;

    if-eqz v4, :cond_5

    instance-of v4, v2, Landroid/app/Activity;

    if-eqz v4, :cond_4

    check-cast v2, Landroid/app/Activity;

    goto :goto_4

    :cond_4
    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_9

    const v4, 0x1020002

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_6

    move v4, v3

    goto :goto_5

    :cond_6
    move v4, v0

    :goto_5
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    goto :goto_6

    :cond_7
    move v2, v0

    :goto_6
    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    iget-boolean v2, v1, Lcom/google/android/material/navigation/NavigationView;->s:Z

    if-eqz v2, :cond_8

    move v0, v3

    :cond_8
    invoke-virtual {v1, v0}, Ls2/t;->setDrawBottomInsetForeground(Z)V

    :cond_9
    return-void

    :pswitch_0
    check-cast v1, Ll/N;

    iget-object v0, v1, Ll/N;->K:Ll/Q;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Ll/N;->I:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Ll/N;->s()V

    invoke-virtual {v1}, Ll/B0;->i()V

    goto :goto_7

    :cond_a
    invoke-virtual {v1}, Ll/B0;->dismiss()V

    :goto_7
    return-void

    :pswitch_1
    check-cast v1, Ll/Q;

    invoke-virtual {v1}, Ll/Q;->getInternalPopup()Ll/P;

    move-result-object v0

    invoke-interface {v0}, Ll/P;->a()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v1}, Ll/I;->b(Landroid/view/View;)I

    move-result v0

    invoke-static {v1}, Ll/I;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, v1, Ll/Q;->f:Ll/P;

    invoke-interface {v3, v0, v2}, Ll/P;->n(II)V

    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {v0, p0}, Ll/H;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_c
    return-void

    :pswitch_2
    check-cast v1, Lk/E;

    invoke-virtual {v1}, Lk/E;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lk/E;->m:Ll/H0;

    iget-boolean v2, v0, Ll/B0;->C:Z

    if-nez v2, :cond_f

    iget-object v2, v1, Lk/E;->r:Landroid/view/View;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v0}, Ll/B0;->i()V

    goto :goto_9

    :cond_e
    :goto_8
    invoke-virtual {v1}, Lk/E;->dismiss()V

    :cond_f
    :goto_9
    return-void

    :pswitch_3
    check-cast v1, Lk/g;

    invoke-virtual {v1}, Lk/g;->a()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v1, Lk/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_12

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/f;

    iget-object v0, v0, Lk/f;->a:Ll/H0;

    iget-boolean v0, v0, Ll/B0;->C:Z

    if-nez v0, :cond_12

    iget-object v0, v1, Lk/g;->t:Landroid/view/View;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_b

    :cond_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/f;

    iget-object v1, v1, Lk/f;->a:Ll/H0;

    invoke-virtual {v1}, Ll/B0;->i()V

    goto :goto_a

    :cond_11
    :goto_b
    invoke-virtual {v1}, Lk/g;->dismiss()V

    :cond_12
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
