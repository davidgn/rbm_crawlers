.class public final LK3/H;
.super LQ3/b;
.source "SourceFile"


# instance fields
.field public final f:LK0/j;


# direct methods
.method public constructor <init>(Lz3/g;LK0/j;)V
    .locals 0

    invoke-direct {p0, p1}, LQ3/b;-><init>(Lz3/g;)V

    iput-object p2, p0, LK3/H;->f:LK0/j;

    return-void
.end method


# virtual methods
.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, LQ3/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LQ3/b;->e:I

    iget-object v1, p0, LQ3/b;->a:Lz3/g;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Lz3/g;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, LK3/H;->f:LK0/j;

    invoke-virtual {v0, p1}, LK0/j;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper function returned a null value."

    invoke-static {p1, v0}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, p1}, Lz3/g;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, p0, LQ3/b;->b:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    invoke-virtual {p0, p1}, LQ3/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LQ3/b;->c:LH3/e;

    invoke-interface {v0}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LK3/H;->f:LK0/j;

    invoke-virtual {v1, v0}, LK0/j;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper function returned a null value."

    invoke-static {v0, v1}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
