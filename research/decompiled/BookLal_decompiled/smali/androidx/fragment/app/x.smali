.class public final Landroidx/fragment/app/x;
.super Landroidx/fragment/app/z;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/w;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Lf/a;

.field public final synthetic d:Le/b;

.field public final synthetic e:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/w;Ljava/util/concurrent/atomic/AtomicReference;Lf/a;Le/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/x;->a:Landroidx/fragment/app/w;

    iput-object p3, p0, Landroidx/fragment/app/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Landroidx/fragment/app/x;->c:Lf/a;

    iput-object p5, p0, Landroidx/fragment/app/x;->d:Le/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->generateActivityResultKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/x;->a:Landroidx/fragment/app/w;

    iget v3, v2, Landroidx/fragment/app/w;->a:I

    packed-switch v3, :pswitch_data_0

    iget-object v2, v2, Landroidx/fragment/app/w;->b:Ljava/lang/Object;

    check-cast v2, Le/i;

    goto :goto_0

    :pswitch_0
    iget-object v2, v2, Landroidx/fragment/app/w;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/Fragment;

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/K;

    instance-of v4, v3, Le/j;

    if-eqz v4, :cond_0

    check-cast v3, Le/j;

    invoke-interface {v3}, Le/j;->getActivityResultRegistry()Le/i;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/F;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/activity/p;->getActivityResultRegistry()Le/i;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/x;->c:Lf/a;

    iget-object v4, p0, Landroidx/fragment/app/x;->d:Le/b;

    invoke-virtual {v2, v1, v0, v3, v4}, Le/i;->c(Ljava/lang/String;Landroidx/lifecycle/t;Lf/a;Le/b;)Le/h;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
