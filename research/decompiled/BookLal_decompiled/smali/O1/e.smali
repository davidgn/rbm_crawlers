.class public final LO1/e;
.super Landroid/widget/PopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final a:Landroid/widget/FrameLayout;

.field public final b:LY3/k;

.field public final c:LY0/q0;


# direct methods
.method public constructor <init>(Lcom/booklal/booklal/ChatActivity;LO1/n;LY0/q0;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, LO1/e;->c:LY0/q0;

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p3, p0, LO1/e;->a:Landroid/widget/FrameLayout;

    new-instance v0, LC4/k;

    const/4 v2, 0x2

    invoke-direct {v0, p0, p1, p2, v2}, LC4/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object p1, LY3/i;->a:LY3/i;

    new-instance p2, LY3/k;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v0, p2, LY3/k;->a:LC4/k;

    iput-object p1, p2, LY3/k;->b:Ljava/lang/Object;

    iput-object p2, p0, LO1/e;->b:LY3/k;

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    iget-object v0, p0, LO1/e;->b:LY3/k;

    invoke-virtual {v0}, LY3/k;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO1/g;

    invoke-virtual {v0}, LO1/g;->c()V

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    iget-object v1, p0, LO1/e;->b:LY3/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {v1}, LY3/k;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO1/g;

    invoke-virtual {v0, p2, p1}, LO1/g;->e(Landroid/view/MotionEvent;Landroid/view/View;)V

    :cond_0
    invoke-virtual {v1}, LY3/k;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LO1/g;

    invoke-virtual {p1, p2}, LO1/g;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method
