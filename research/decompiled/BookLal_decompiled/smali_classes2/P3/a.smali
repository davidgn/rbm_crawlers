.class public final LP3/a;
.super Lz3/o;
.source "SourceFile"


# instance fields
.field public final a:LB3/a;

.field public final b:LB3/a;

.field public final c:LB3/a;

.field public final d:LP3/c;

.field public volatile e:Z


# direct methods
.method public constructor <init>(LP3/c;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP3/a;->d:LP3/c;

    new-instance p1, LB3/a;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, LB3/a;-><init>(I)V

    iput-object p1, p0, LP3/a;->a:LB3/a;

    new-instance v0, LB3/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LB3/a;-><init>(I)V

    iput-object v0, p0, LP3/a;->b:LB3/a;

    new-instance v1, LB3/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LB3/a;-><init>(I)V

    iput-object v1, p0, LP3/a;->c:LB3/a;

    invoke-virtual {v1, p1}, LB3/a;->a(LB3/b;)Z

    invoke-virtual {v1, v0}, LB3/a;->a(LB3/b;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)LB3/b;
    .locals 2

    iget-boolean v0, p0, LP3/a;->e:Z

    if-eqz v0, :cond_0

    sget-object p1, LF3/b;->a:LF3/b;

    return-object p1

    :cond_0
    iget-object v0, p0, LP3/a;->d:LP3/c;

    iget-object v1, p0, LP3/a;->b:LB3/a;

    invoke-virtual {v0, p1, p2, v1}, LP3/j;->d(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;LB3/a;)LP3/n;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, LP3/a;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LP3/a;->e:Z

    iget-object v0, p0, LP3/a;->c:LB3/a;

    invoke-virtual {v0}, LB3/a;->b()V

    :cond_0
    return-void
.end method

.method public final c(LK3/I;)V
    .locals 3

    iget-boolean v0, p0, LP3/a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LP3/a;->d:LP3/c;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, LP3/a;->a:LB3/a;

    invoke-virtual {v0, p1, v1, v2}, LP3/j;->d(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;LB3/a;)LP3/n;

    return-void
.end method
