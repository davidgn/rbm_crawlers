.class public final Landroidx/emoji2/text/e;
.super LS4/b;
.source "SourceFile"


# instance fields
.field public final synthetic g:Landroidx/emoji2/text/f;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/e;->g:Landroidx/emoji2/text/f;

    return-void
.end method


# virtual methods
.method public final x(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/e;->g:Landroidx/emoji2/text/f;

    iget-object v0, v0, Landroidx/emoji2/text/f;->a:Landroidx/emoji2/text/j;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/j;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final y(LR0/i;)V
    .locals 4

    iget-object v0, p0, Landroidx/emoji2/text/e;->g:Landroidx/emoji2/text/f;

    iput-object p1, v0, Landroidx/emoji2/text/f;->c:LR0/i;

    new-instance p1, LD2/e;

    iget-object v1, v0, Landroidx/emoji2/text/f;->c:LR0/i;

    new-instance v2, Ld3/a;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Ld3/a;-><init>(I)V

    iget-object v3, v0, Landroidx/emoji2/text/f;->a:Landroidx/emoji2/text/j;

    iget-object v3, v3, Landroidx/emoji2/text/j;->h:Landroidx/emoji2/text/d;

    invoke-direct {p1, v1, v2, v3}, LD2/e;-><init>(LR0/i;Ld3/a;Landroidx/emoji2/text/d;)V

    iput-object p1, v0, Landroidx/emoji2/text/f;->b:LD2/e;

    iget-object p1, v0, Landroidx/emoji2/text/f;->a:Landroidx/emoji2/text/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x1

    :try_start_0
    iput v1, p1, Landroidx/emoji2/text/j;->c:I

    iget-object v1, p1, Landroidx/emoji2/text/j;->b:Lr/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p1, Landroidx/emoji2/text/j;->b:Lr/c;

    invoke-virtual {v1}, Lr/c;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p1, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p1, Landroidx/emoji2/text/j;->d:Landroid/os/Handler;

    new-instance v2, LJ/a;

    iget p1, p1, Landroidx/emoji2/text/j;->c:I

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, LJ/a;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object p1, p1, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
