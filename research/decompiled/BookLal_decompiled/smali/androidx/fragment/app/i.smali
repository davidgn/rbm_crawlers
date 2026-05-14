.class public final Landroidx/fragment/app/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/fragment/app/i;->a:I

    iput-object p2, p0, Landroidx/fragment/app/i;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/i;->c:Ljava/lang/Object;

    iput-boolean p4, p0, Landroidx/fragment/app/i;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/v0;Landroidx/fragment/app/v0;ZLr/b;)V
    .locals 0

    const/4 p4, 0x0

    iput p4, p0, Landroidx/fragment/app/i;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/i;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/i;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/fragment/app/i;->b:Z

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/v;Landroidx/lifecycle/m;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/i;->a:I

    const-string v0, "registry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/fragment/app/i;->c:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Landroidx/fragment/app/i;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/i;->c:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/fragment/app/i;->d:Ljava/lang/Object;

    iget v2, p0, Landroidx/fragment/app/i;->a:I

    packed-switch v2, :pswitch_data_0

    check-cast v1, Ll3/o0;

    iget-object v1, v1, Ll3/o0;->s:Ll3/h0;

    check-cast v0, Ll3/l0;

    iget-boolean v2, p0, Landroidx/fragment/app/i;->b:Z

    invoke-virtual {v1, v0, v2}, LB/y;->f(Ljava/lang/Object;Z)V

    return-void

    :pswitch_0
    check-cast v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v2, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:LW/d;

    check-cast v0, Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LW/d;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Landroidx/fragment/app/i;->b:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:LA2/i;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, LA2/i;->a(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    iget-boolean v2, p0, Landroidx/fragment/app/i;->b:Z

    if-nez v2, :cond_2

    check-cast v0, Landroidx/lifecycle/v;

    check-cast v1, Landroidx/lifecycle/m;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/i;->b:Z

    :cond_2
    return-void

    :pswitch_2
    check-cast v0, Landroidx/fragment/app/v0;

    check-cast v1, Landroidx/fragment/app/v0;

    sget-object v2, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/p0;

    iget-boolean v2, p0, Landroidx/fragment/app/i;->b:Z

    if-eqz v2, :cond_3

    iget-object v0, v1, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()LB/M;

    goto :goto_1

    :cond_3
    iget-object v0, v0, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()LB/M;

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
