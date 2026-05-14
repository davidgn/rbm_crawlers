.class public abstract LQ3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH3/a;
.implements LH3/e;


# instance fields
.field public final a:LH3/a;

.field public b:LT4/b;

.field public c:LH3/e;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(LH3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ3/a;->a:LH3/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, p0, LQ3/a;->b:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    invoke-virtual {p0, p1}, LQ3/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(LT4/b;)V
    .locals 1

    iget-object v0, p0, LQ3/a;->b:LT4/b;

    invoke-static {v0, p1}, LR3/f;->e(LT4/b;LT4/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, LQ3/a;->b:LT4/b;

    instance-of v0, p1, LH3/e;

    if-eqz v0, :cond_0

    check-cast p1, LH3/e;

    iput-object p1, p0, LQ3/a;->c:LH3/e;

    :cond_0
    iget-object p1, p0, LQ3/a;->a:LH3/a;

    invoke-interface {p1, p0}, Lz3/g;->c(LT4/b;)V

    :cond_1
    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, LQ3/a;->b:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    return-void
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, LQ3/a;->c:LH3/e;

    invoke-interface {v0}, LH3/h;->clear()V

    return-void
.end method

.method public final f(J)V
    .locals 1

    iget-object v0, p0, LQ3/a;->b:LT4/b;

    invoke-interface {v0, p1, p2}, LT4/b;->f(J)V

    return-void
.end method

.method public g(I)I
    .locals 2

    iget-object v0, p0, LQ3/a;->c:LH3/e;

    if-eqz v0, :cond_0

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, LH3/d;->g(I)I

    move-result p1

    if-eqz p1, :cond_1

    iput p1, p0, LQ3/a;->e:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, LQ3/a;->c:LH3/e;

    invoke-interface {v0}, LH3/h;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, LQ3/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LQ3/a;->d:Z

    iget-object v0, p0, LQ3/a;->a:LH3/a;

    invoke-interface {v0}, Lz3/g;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LQ3/a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LQ3/a;->d:Z

    iget-object v0, p0, LQ3/a;->a:LH3/a;

    invoke-interface {v0, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
