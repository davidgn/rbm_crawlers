.class public final Ll3/v1;
.super Lj3/B;
.source "SourceFile"


# instance fields
.field public final a:Ll3/z1;

.field public b:J

.field public final synthetic c:Ll3/B0;


# direct methods
.method public constructor <init>(Ll3/B0;Ll3/z1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/v1;->c:Ll3/B0;

    iput-object p2, p0, Ll3/v1;->a:Ll3/z1;

    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 8

    iget-object v0, p0, Ll3/v1;->c:Ll3/B0;

    iget-object v0, v0, Ll3/B0;->o:Ll3/x1;

    iget-object v0, v0, Ll3/x1;->f:Ll3/z1;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ll3/v1;->c:Ll3/B0;

    iget-object v0, v0, Ll3/B0;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ll3/v1;->c:Ll3/B0;

    iget-object v1, v1, Ll3/B0;->o:Ll3/x1;

    iget-object v1, v1, Ll3/x1;->f:Ll3/z1;

    if-nez v1, :cond_7

    iget-object v1, p0, Ll3/v1;->a:Ll3/z1;

    iget-boolean v2, v1, Ll3/z1;->b:Z

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    iget-wide v2, p0, Ll3/v1;->b:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Ll3/v1;->b:J

    iget-object p1, p0, Ll3/v1;->c:Ll3/B0;

    iget-wide v4, p1, Ll3/B0;->t:J

    cmp-long p2, v2, v4

    if-gtz p2, :cond_2

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    iget-wide v6, p1, Ll3/B0;->k:J

    cmp-long p2, v2, v6

    const/4 v6, 0x1

    if-lez p2, :cond_3

    iput-boolean v6, v1, Ll3/z1;->c:Z

    goto :goto_0

    :cond_3
    iget-object p1, p1, Ll3/B0;->j:Ll3/e;

    sub-long/2addr v2, v4

    iget-object p1, p1, Ll3/e;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    iget-object v1, p0, Ll3/v1;->c:Ll3/B0;

    iget-wide v2, p0, Ll3/v1;->b:J

    iput-wide v2, v1, Ll3/B0;->t:J

    iget-wide v1, v1, Ll3/B0;->l:J

    cmp-long p1, p1, v1

    if-lez p1, :cond_4

    iget-object p1, p0, Ll3/v1;->a:Ll3/z1;

    iput-boolean v6, p1, Ll3/z1;->c:Z

    :cond_4
    :goto_0
    iget-object p1, p0, Ll3/v1;->a:Ll3/z1;

    iget-boolean p2, p1, Ll3/z1;->c:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Ll3/v1;->c:Ll3/B0;

    invoke-virtual {p2, p1}, Ll3/B0;->r(Ll3/z1;)LU0/n;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, LU0/n;->run()V

    :cond_6
    return-void

    :cond_7
    :goto_2
    :try_start_1
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
