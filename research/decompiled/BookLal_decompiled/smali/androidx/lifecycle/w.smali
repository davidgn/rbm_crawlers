.class public abstract Landroidx/lifecycle/w;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/t;


# instance fields
.field public final a:LJ2/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, LJ2/e;

    invoke-direct {v0, p0}, LJ2/e;-><init>(Landroidx/lifecycle/w;)V

    iput-object v0, p0, Landroidx/lifecycle/w;->a:LJ2/e;

    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/o;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/w;->a:LJ2/e;

    iget-object v0, v0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/v;

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    iget-object v0, p0, Landroidx/lifecycle/w;->a:LJ2/e;

    invoke-virtual {v0, p1}, LJ2/e;->L(Landroidx/lifecycle/m;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    sget-object v0, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    iget-object v1, p0, Landroidx/lifecycle/w;->a:LJ2/e;

    invoke-virtual {v1, v0}, LJ2/e;->L(Landroidx/lifecycle/m;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    iget-object v1, p0, Landroidx/lifecycle/w;->a:LJ2/e;

    invoke-virtual {v1, v0}, LJ2/e;->L(Landroidx/lifecycle/m;)V

    sget-object v0, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    invoke-virtual {v1, v0}, LJ2/e;->L(Landroidx/lifecycle/m;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 2

    sget-object v0, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    iget-object v1, p0, Landroidx/lifecycle/w;->a:LJ2/e;

    invoke-virtual {v1, v0}, LJ2/e;->L(Landroidx/lifecycle/m;)V

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method
