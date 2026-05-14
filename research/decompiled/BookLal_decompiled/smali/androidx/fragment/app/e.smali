.class public final Landroidx/fragment/app/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/fragment/app/v0;

.field public final synthetic e:Landroidx/fragment/app/k;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/v0;Landroidx/fragment/app/k;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/e;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/e;->b:Landroid/view/View;

    iput-boolean p3, p0, Landroidx/fragment/app/e;->c:Z

    iput-object p4, p0, Landroidx/fragment/app/e;->d:Landroidx/fragment/app/v0;

    iput-object p5, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Landroidx/fragment/app/e;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/e;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/fragment/app/e;->d:Landroidx/fragment/app/v0;

    iget-boolean v1, p0, Landroidx/fragment/app/e;->c:Z

    if-eqz v1, :cond_0

    iget v1, p1, Landroidx/fragment/app/v0;->a:I

    invoke-static {v0, v1}, LC/a;->a(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/k;

    invoke-virtual {v0}, Landroidx/fragment/app/l;->a()V

    const/4 v0, 0x2

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Animator from operation "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has ended."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
