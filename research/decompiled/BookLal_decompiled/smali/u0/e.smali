.class public final Lu0/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lu0/f;

.field public final synthetic c:Landroid/view/ViewPropertyAnimator;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lu0/h;


# direct methods
.method public synthetic constructor <init>(Lu0/h;Lu0/f;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V
    .locals 0

    iput p5, p0, Lu0/e;->a:I

    iput-object p1, p0, Lu0/e;->e:Lu0/h;

    iput-object p2, p0, Lu0/e;->b:Lu0/f;

    iput-object p3, p0, Lu0/e;->c:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lu0/e;->d:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, Lu0/e;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lu0/e;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lu0/e;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lu0/e;->b:Lu0/f;

    iget-object v0, p1, Lu0/f;->b:Lu0/W;

    iget-object v1, p0, Lu0/e;->e:Lu0/h;

    invoke-virtual {v1, v0}, Lu0/C;->c(Lu0/W;)V

    iget-object v0, v1, Lu0/h;->r:Ljava/util/ArrayList;

    iget-object p1, p1, Lu0/f;->b:Lu0/W;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lu0/h;->i()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lu0/e;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lu0/e;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lu0/e;->b:Lu0/f;

    iget-object v0, p1, Lu0/f;->a:Lu0/W;

    iget-object v1, p0, Lu0/e;->e:Lu0/h;

    invoke-virtual {v1, v0}, Lu0/C;->c(Lu0/W;)V

    iget-object v0, v1, Lu0/h;->r:Ljava/util/ArrayList;

    iget-object p1, p1, Lu0/f;->a:Lu0/W;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lu0/h;->i()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Lu0/e;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lu0/e;->b:Lu0/f;

    iget-object p1, p1, Lu0/f;->b:Lu0/W;

    iget-object p1, p0, Lu0/e;->e:Lu0/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    iget-object p1, p0, Lu0/e;->b:Lu0/f;

    iget-object p1, p1, Lu0/f;->a:Lu0/W;

    iget-object p1, p0, Lu0/e;->e:Lu0/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
