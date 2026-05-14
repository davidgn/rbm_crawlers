.class public abstract Lh/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/r;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh/w;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lh/w;->a:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lh/w;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lh/z;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/w;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Lh/w;->a:Ljava/lang/Object;

    check-cast v0, LR0/c;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lh/w;->b:Ljava/lang/Object;

    check-cast v1, Lh/z;

    iget-object v1, v1, Lh/z;->p:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lh/w;->a:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public abstract d()Landroid/content/IntentFilter;
.end method

.method public abstract e()I
.end method

.method public f(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    instance-of v0, p1, LG/a;

    if-eqz v0, :cond_2

    check-cast p1, LG/a;

    iget-object v0, p0, Lh/w;->b:Ljava/lang/Object;

    check-cast v0, Lr/k;

    if-nez v0, :cond_0

    new-instance v0, Lr/k;

    invoke-direct {v0}, Lr/k;-><init>()V

    iput-object v0, p0, Lh/w;->b:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lh/w;->b:Ljava/lang/Object;

    check-cast v0, Lr/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lr/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    if-nez v0, :cond_1

    new-instance v0, Lk/t;

    iget-object v1, p0, Lh/w;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lk/t;-><init>(Landroid/content/Context;LG/a;)V

    iget-object v1, p0, Lh/w;->b:Ljava/lang/Object;

    check-cast v1, Lr/k;

    invoke-virtual {v1, p1, v0}, Lr/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method public abstract g()V
.end method

.method public h(Li1/w;)Li1/q;
    .locals 4

    new-instance v0, Lj1/f;

    iget-object v1, p0, Lh/w;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    const-class v2, Ljava/io/File;

    invoke-virtual {p1, v2, v1}, Li1/w;->a(Ljava/lang/Class;Ljava/lang/Class;)Li1/q;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    invoke-virtual {p1, v3, v1}, Li1/w;->a(Ljava/lang/Class;Ljava/lang/Class;)Li1/q;

    move-result-object p1

    iget-object v3, p0, Lh/w;->a:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-direct {v0, v3, v2, p1, v1}, Lj1/f;-><init>(Landroid/content/Context;Li1/q;Li1/q;Ljava/lang/Class;)V

    return-object v0
.end method

.method public i()V
    .locals 3

    invoke-virtual {p0}, Lh/w;->c()V

    invoke-virtual {p0}, Lh/w;->d()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lh/w;->a:Ljava/lang/Object;

    check-cast v1, LR0/c;

    if-nez v1, :cond_1

    new-instance v1, LR0/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LR0/c;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lh/w;->a:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lh/w;->b:Ljava/lang/Object;

    check-cast v1, Lh/z;

    iget-object v1, v1, Lh/z;->p:Landroid/content/Context;

    iget-object v2, p0, Lh/w;->a:Ljava/lang/Object;

    check-cast v2, LR0/c;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
