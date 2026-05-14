.class public final LW3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lio/supercharge/shimmerlayout/ShimmerLayout;


# direct methods
.method public constructor <init>(Lio/supercharge/shimmerlayout/ShimmerLayout;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW3/c;->c:Lio/supercharge/shimmerlayout/ShimmerLayout;

    iput p2, p0, LW3/c;->a:I

    iput p3, p0, LW3/c;->b:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, LW3/c;->a:I

    add-int/2addr p1, v0

    iget-object v0, p0, LW3/c;->c:Lio/supercharge/shimmerlayout/ShimmerLayout;

    iput p1, v0, Lio/supercharge/shimmerlayout/ShimmerLayout;->a:I

    iget p1, v0, Lio/supercharge/shimmerlayout/ShimmerLayout;->a:I

    iget v1, p0, LW3/c;->b:I

    add-int/2addr p1, v1

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
