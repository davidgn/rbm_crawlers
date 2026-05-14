.class public final LL1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LL1/b;->a:I

    iput-object p1, p0, LL1/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget p1, p0, LL1/b;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget-object v1, p0, LL1/b;->b:Ljava/lang/Object;

    check-cast v1, Ll/B0;

    if-nez p1, :cond_0

    iget-object v2, v1, Ll/B0;->D:Ll/z;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ltz v0, :cond_0

    iget-object v2, v1, Ll/B0;->D:Ll/z;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, v1, Ll/B0;->D:Ll/z;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object p1, v1, Ll/B0;->z:Landroid/os/Handler;

    iget-object p2, v1, Ll/B0;->v:Ll/z0;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, v1, Ll/B0;->z:Landroid/os/Handler;

    iget-object p2, v1, Ll/B0;->v:Ll/z0;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_0
    iget-object p1, p0, LL1/b;->b:Ljava/lang/Object;

    check-cast p1, Le3/g;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iget-object p1, p1, Le3/g;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return v0

    :pswitch_1
    iget-object p1, p0, LL1/b;->b:Ljava/lang/Object;

    check-cast p1, Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_3

    iput-boolean v2, p1, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->q:Z

    iget-object p2, p1, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->s:Lc3/f;

    if-eqz p2, :cond_7

    iget-object p1, p1, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->r:LM1/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, LM1/b;->a()LC4/o;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, LM1/b;->a()LC4/o;

    move-result-object p1

    iget-object p1, p1, LC4/o;->b:Ljava/lang/Object;

    check-cast p1, LJ2/e;

    invoke-virtual {p1}, LJ2/e;->V()V

    iget-object p1, p1, LJ2/e;->c:Ljava/lang/Object;

    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_4

    :cond_3
    move v0, v2

    goto/16 :goto_4

    :cond_4
    :goto_1
    iget-object v1, p1, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->s:Lc3/f;

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->r:LM1/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, LM1/b;->a()LC4/o;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, LM1/b;->a()LC4/o;

    move-result-object v1

    iget-object v1, v1, LC4/o;->b:Ljava/lang/Object;

    check-cast v1, LJ2/e;

    iget-object v3, v1, LJ2/e;->c:Ljava/lang/Object;

    check-cast v3, Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v3, v1, LJ2/e;->b:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, LJ2/e;->V()V

    iget-object v1, v1, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    iput-boolean v0, p1, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->q:Z

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v1, p1, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    aget v1, v2, v0

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p1, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_2
    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr p2, v1

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget-object v1, p1, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v3, v3

    filled-new-array {v3, v2}, [I

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    aget v1, v3, v2

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_2

    :goto_3
    invoke-virtual {p1, p2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setScrollerPosition(F)V

    invoke-static {p1, p2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a(Lcom/futuremind/recyclerviewfastscroll/FastScroller;F)V

    :cond_7
    :goto_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
