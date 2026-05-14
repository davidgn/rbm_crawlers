.class public final LG2/b;
.super LG2/A;
.source "SourceFile"


# instance fields
.field public final synthetic l:Landroid/os/IBinder;

.field public final synthetic m:LE2/k;


# direct methods
.method public constructor <init>(LE2/k;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, LG2/b;->m:LE2/k;

    iput-object p2, p0, LG2/b;->l:Landroid/os/IBinder;

    invoke-direct {p0}, LG2/A;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    iget-object v0, p0, LG2/b;->m:LE2/k;

    iget-object v1, v0, LE2/k;->b:Ljava/lang/Object;

    check-cast v1, LG2/d;

    iget-object v1, v1, LG2/d;->i:LG2/C;

    iget-object v2, p0, LG2/b;->l:Landroid/os/IBinder;

    invoke-interface {v1, v2}, LG2/C;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    iget-object v0, v0, LE2/k;->b:Ljava/lang/Object;

    check-cast v0, LG2/d;

    iput-object v1, v0, LG2/d;->n:Landroid/os/IInterface;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "linkToDeath"

    iget-object v4, v0, LG2/d;->b:LG2/z;

    invoke-virtual {v4, v3, v2}, LG2/z;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v2, v0, LG2/d;->n:Landroid/os/IInterface;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, v0, LG2/d;->k:LE2/i;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v5, "linkToDeath failed"

    invoke-virtual {v4, v2, v5, v3}, LG2/z;->a(Landroid/os/RemoteException;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iput-boolean v1, v0, LG2/d;->g:Z

    iget-object v1, v0, LG2/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_0
    iget-object v0, v0, LG2/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
