.class public final Landroidx/fragment/app/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/i;
.implements Ly0/e;
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final a:Landroidx/fragment/app/Fragment;

.field public final b:Landroidx/lifecycle/X;

.field public c:Landroidx/lifecycle/v;

.field public d:Ly0/d;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/X;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/s0;->c:Landroidx/lifecycle/v;

    iput-object v0, p0, Landroidx/fragment/app/s0;->d:Ly0/d;

    iput-object p1, p0, Landroidx/fragment/app/s0;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/s0;->b:Landroidx/lifecycle/X;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/m;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/s0;->c:Landroidx/lifecycle/v;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/s0;->c:Landroidx/lifecycle/v;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/v;

    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    iput-object v0, p0, Landroidx/fragment/app/s0;->c:Landroidx/lifecycle/v;

    new-instance v0, Ly0/d;

    invoke-direct {v0, p0}, Ly0/d;-><init>(Ly0/e;)V

    iput-object v0, p0, Landroidx/fragment/app/s0;->d:Ly0/d;

    invoke-virtual {v0}, Ly0/d;->a()V

    :cond_0
    return-void
.end method

.method public final getDefaultViewModelCreationExtras()Li0/b;
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/s0;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Li0/d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Li0/d;-><init>(I)V

    iget-object v3, v2, Li0/b;->a:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_2

    sget-object v4, Landroidx/lifecycle/T;->a:Landroidx/lifecycle/T;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v1, Landroidx/lifecycle/M;->a:Landroidx/lifecycle/T;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroidx/lifecycle/M;->b:Landroidx/lifecycle/T;

    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/lifecycle/M;->c:Landroidx/lifecycle/T;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v2
.end method

.method public final getLifecycle()Landroidx/lifecycle/o;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/s0;->b()V

    iget-object v0, p0, Landroidx/fragment/app/s0;->c:Landroidx/lifecycle/v;

    return-object v0
.end method

.method public final getSavedStateRegistry()Ly0/c;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/s0;->b()V

    iget-object v0, p0, Landroidx/fragment/app/s0;->d:Ly0/d;

    iget-object v0, v0, Ly0/d;->b:Ly0/c;

    return-object v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/X;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/s0;->b()V

    iget-object v0, p0, Landroidx/fragment/app/s0;->b:Landroidx/lifecycle/X;

    return-object v0
.end method
