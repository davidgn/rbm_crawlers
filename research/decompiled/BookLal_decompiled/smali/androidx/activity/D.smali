.class public final Landroidx/activity/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic a:Lk4/l;

.field public final synthetic b:Lk4/l;

.field public final synthetic c:Lk4/a;

.field public final synthetic d:Lk4/a;


# direct methods
.method public constructor <init>(Lk4/l;Lk4/l;Lk4/a;Lk4/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/D;->a:Lk4/l;

    iput-object p2, p0, Landroidx/activity/D;->b:Lk4/l;

    iput-object p3, p0, Landroidx/activity/D;->c:Lk4/a;

    iput-object p4, p0, Landroidx/activity/D;->d:Lk4/a;

    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/D;->d:Lk4/a;

    invoke-interface {v0}, Lk4/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onBackInvoked()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/D;->c:Lk4/a;

    invoke-interface {v0}, Lk4/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 2

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/activity/D;->b:Lk4/l;

    new-instance v1, Landroidx/activity/b;

    invoke-direct {v1, p1}, Landroidx/activity/b;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {v0, v1}, Lk4/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 2

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/activity/D;->a:Lk4/l;

    new-instance v1, Landroidx/activity/b;

    invoke-direct {v1, p1}, Landroidx/activity/b;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {v0, v1}, Lk4/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
