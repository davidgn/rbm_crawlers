.class public final LV3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB3/b;
.implements LE3/d;


# instance fields
.field public final a:Lz3/m;

.field public final b:LV3/b;

.field public c:Z

.field public d:Z

.field public e:LH4/h;

.field public f:Z

.field public volatile l:Z

.field public m:J


# direct methods
.method public constructor <init>(Lz3/m;LV3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV3/a;->a:Lz3/m;

    iput-object p2, p0, LV3/a;->b:LV3/b;

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, LV3/a;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, LV3/a;->f:Z

    if-nez v0, :cond_6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LV3/a;->l:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, LV3/a;->m:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    iget-boolean p1, p0, LV3/a;->d:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_5

    iget-object p1, p0, LV3/a;->e:LH4/h;

    if-nez p1, :cond_3

    new-instance p1, LH4/h;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, LH4/h;-><init>(I)V

    iput-object p1, p0, LV3/a;->e:LH4/h;

    :cond_3
    iget v0, p1, LH4/h;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p1, LH4/h;->d:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    iput-object v0, p1, LH4/h;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    :cond_4
    iget-object v1, p1, LH4/h;->d:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    add-int/2addr v0, p2

    iput v0, p1, LH4/h;->b:I

    monitor-exit p0

    return-void

    :cond_5
    iput-boolean p2, p0, LV3/a;->c:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p2, p0, LV3/a;->f:Z

    goto :goto_1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    :goto_1
    invoke-virtual {p0, p3}, LV3/a;->test(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, LV3/a;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LV3/a;->l:Z

    iget-object v0, p0, LV3/a;->b:LV3/b;

    invoke-virtual {v0, p0}, LV3/b;->d(LV3/a;)V

    :cond_0
    return-void
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, LV3/a;->l:Z

    if-nez v0, :cond_2

    iget-object v0, p0, LV3/a;->a:Lz3/m;

    sget-object v1, LS3/f;->a:LS3/f;

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Lz3/m;->onComplete()V

    goto :goto_0

    :cond_0
    instance-of v1, p1, LS3/e;

    if-eqz v1, :cond_1

    check-cast p1, LS3/e;

    iget-object p1, p1, LS3/e;->a:Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lz3/m;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lz3/m;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
