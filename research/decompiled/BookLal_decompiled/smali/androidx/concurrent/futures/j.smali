.class public final Landroidx/concurrent/futures/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Landroidx/concurrent/futures/m;

.field public c:Landroidx/concurrent/futures/o;

.field public d:Z


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/concurrent/futures/j;->d:Z

    iget-object v0, p0, Landroidx/concurrent/futures/j;->b:Landroidx/concurrent/futures/m;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/concurrent/futures/m;->b:Landroidx/concurrent/futures/l;

    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/i;->set(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/concurrent/futures/j;->a:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/concurrent/futures/j;->b:Landroidx/concurrent/futures/m;

    iput-object p1, p0, Landroidx/concurrent/futures/j;->c:Landroidx/concurrent/futures/o;

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/concurrent/futures/j;->d:Z

    iget-object v0, p0, Landroidx/concurrent/futures/j;->b:Landroidx/concurrent/futures/m;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/concurrent/futures/m;->b:Landroidx/concurrent/futures/l;

    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/i;->setException(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/concurrent/futures/j;->a:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/concurrent/futures/j;->b:Landroidx/concurrent/futures/m;

    iput-object p1, p0, Landroidx/concurrent/futures/j;->c:Landroidx/concurrent/futures/o;

    :cond_0
    return-void
.end method

.method public final finalize()V
    .locals 4

    iget-object v0, p0, Landroidx/concurrent/futures/j;->b:Landroidx/concurrent/futures/m;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/concurrent/futures/m;->b:Landroidx/concurrent/futures/l;

    invoke-virtual {v0}, Landroidx/concurrent/futures/i;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, LN2/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The completer object was garbage collected - this future would otherwise never complete. The tag was: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/concurrent/futures/j;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, LN2/b;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/i;->setException(Ljava/lang/Throwable;)Z

    :cond_0
    iget-boolean v0, p0, Landroidx/concurrent/futures/j;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/concurrent/futures/j;->c:Landroidx/concurrent/futures/o;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/i;->set(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
