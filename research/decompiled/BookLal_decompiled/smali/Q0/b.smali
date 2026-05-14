.class public abstract LQ0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/lang/Object;

.field public final c:LR0/e;

.field public d:LP0/c;


# direct methods
.method public constructor <init>(LR0/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LQ0/b;->a:Ljava/util/ArrayList;

    iput-object p1, p0, LQ0/b;->c:LR0/e;

    return-void
.end method


# virtual methods
.method public abstract a(LT0/i;)Z
.end method

.method public abstract b(Ljava/lang/Object;)Z
.end method

.method public final c(Ljava/util/Collection;)V
    .locals 6

    iget-object v0, p0, LQ0/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT0/i;

    invoke-virtual {p0, v0}, LQ0/b;->a(LT0/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQ0/b;->a:Ljava/util/ArrayList;

    iget-object v0, v0, LT0/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, LQ0/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, LQ0/b;->c:LR0/e;

    invoke-virtual {p1, p0}, LR0/e;->b(LQ0/b;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, LQ0/b;->c:LR0/e;

    iget-object v0, p1, LR0/e;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, LR0/e;->d:Ljava/util/LinkedHashSet;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, LR0/e;->d:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, LR0/e;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, LR0/e;->e:Ljava/lang/Object;

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v1

    sget-object v2, LR0/e;->f:Ljava/lang/String;

    const-string v3, "%s: initial state = %s"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, LR0/e;->e:Ljava/lang/Object;

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {p1}, LR0/e;->d()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    iget-object p1, p1, LR0/e;->e:Ljava/lang/Object;

    iput-object p1, p0, LQ0/b;->b:Ljava/lang/Object;

    iget-object v1, p0, LQ0/b;->d:LP0/c;

    invoke-virtual {p0, v1, p1}, LQ0/b;->d(LP0/c;Ljava/lang/Object;)V

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object p1, p0, LQ0/b;->d:LP0/c;

    iget-object v0, p0, LQ0/b;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, LQ0/b;->d(LP0/c;Ljava/lang/Object;)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(LP0/c;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, LQ0/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p2, :cond_5

    invoke-virtual {p0, p2}, LQ0/b;->b(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    iget-object p2, p0, LQ0/b;->a:Ljava/util/ArrayList;

    iget-object v0, p1, LP0/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, LP0/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v3

    sget-object v4, LP0/c;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Constraints met for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v6}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    iget-object p1, p1, LP0/c;->a:LP0/b;

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, LP0/b;->f(Ljava/util/List;)V

    :cond_4
    monitor-exit v0

    goto :goto_3

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_2
    iget-object p2, p0, LQ0/b;->a:Ljava/util/ArrayList;

    iget-object v0, p1, LP0/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p1, p1, LP0/c;->a:LP0/b;

    if-eqz p1, :cond_6

    invoke-interface {p1, p2}, LP0/b;->e(Ljava/util/ArrayList;)V

    :cond_6
    monitor-exit v0

    :goto_3
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_7
    :goto_4
    return-void
.end method
