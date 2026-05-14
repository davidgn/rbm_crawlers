.class public final LK3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/g;
.implements LB3/b;


# instance fields
.field public final a:Lz3/j;

.field public b:LT4/b;

.field public c:J

.field public d:Z


# direct methods
.method public constructor <init>(Lz3/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK3/s;->a:Lz3/j;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, LK3/s;->b:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    sget-object v0, LR3/f;->a:LR3/f;

    iput-object v0, p0, LK3/s;->b:LT4/b;

    return-void
.end method

.method public final c(LT4/b;)V
    .locals 2

    iget-object v0, p0, LK3/s;->b:LT4/b;

    invoke-static {v0, p1}, LR3/f;->e(LT4/b;LT4/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LK3/s;->b:LT4/b;

    iget-object v0, p0, LK3/s;->a:Lz3/j;

    invoke-interface {v0, p0}, Lz3/j;->a(LB3/b;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    sget-object v0, LR3/f;->a:LR3/f;

    iput-object v0, p0, LK3/s;->b:LT4/b;

    iget-boolean v0, p0, LK3/s;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/s;->d:Z

    iget-object v0, p0, LK3/s;->a:Lz3/j;

    invoke-interface {v0}, Lz3/j;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LK3/s;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/s;->d:Z

    sget-object v0, LR3/f;->a:LR3/f;

    iput-object v0, p0, LK3/s;->b:LT4/b;

    iget-object v0, p0, LK3/s;->a:Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, LK3/s;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, LK3/s;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/s;->d:Z

    iget-object v0, p0, LK3/s;->b:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    sget-object v0, LR3/f;->a:LR3/f;

    iput-object v0, p0, LK3/s;->b:LT4/b;

    iget-object v0, p0, LK3/s;->a:Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LK3/s;->c:J

    return-void
.end method
