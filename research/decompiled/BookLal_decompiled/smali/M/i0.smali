.class public final synthetic LM/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:LK0/j;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(LK0/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM/i0;->a:LK0/j;

    iput-object p2, p0, LM/i0;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, LM/i0;->a:LK0/j;

    iget-object p1, p1, LK0/j;->b:Ljava/lang/Object;

    check-cast p1, Lh/M;

    iget-object p1, p1, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
