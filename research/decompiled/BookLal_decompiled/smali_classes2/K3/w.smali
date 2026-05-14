.class public final LK3/w;
.super LQ3/b;
.source "SourceFile"

# interfaces
.implements LH3/a;


# instance fields
.field public final f:LE3/d;


# direct methods
.method public constructor <init>(Lz3/g;LE3/d;)V
    .locals 0

    invoke-direct {p0, p1}, LQ3/b;-><init>(Lz3/g;)V

    iput-object p2, p0, LK3/w;->f:LE3/d;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Z
    .locals 3

    iget-boolean v0, p0, LQ3/b;->d:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, LQ3/b;->e:I

    const/4 v1, 0x1

    iget-object v2, p0, LQ3/b;->a:Lz3/g;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-interface {v2, p1}, Lz3/g;->onNext(Ljava/lang/Object;)V

    return v1

    :cond_1
    :try_start_0
    iget-object v0, p0, LK3/w;->f:LE3/d;

    invoke-interface {v0, p1}, LE3/d;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v2, p1}, Lz3/g;->onNext(Ljava/lang/Object;)V

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, p0, LQ3/b;->b:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    invoke-virtual {p0, p1}, LQ3/b;->onError(Ljava/lang/Throwable;)V

    return v1
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p1}, LK3/w;->e(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LQ3/b;->b:LT4/b;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    :cond_0
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LQ3/b;->c:LH3/e;

    :cond_0
    :goto_0
    invoke-interface {v0}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v2, p0, LK3/w;->f:LE3/d;

    invoke-interface {v2, v1}, LE3/d;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    iget v1, p0, LQ3/b;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, LT4/b;->f(J)V

    goto :goto_0
.end method
