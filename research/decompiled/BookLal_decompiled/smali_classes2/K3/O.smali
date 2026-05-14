.class public final LK3/O;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements LT4/b;


# instance fields
.field public final a:Lz3/g;

.field public volatile b:LK3/P;

.field public c:J


# direct methods
.method public constructor <init>(Lz3/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LK3/O;->a:Lz3/g;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, LK3/O;->b:LK3/P;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, LK3/P;->h(LK3/O;)V

    invoke-virtual {v0}, LK3/P;->f()V

    :cond_0
    return-void
.end method

.method public final f(J)V
    .locals 4

    invoke-static {p1, p2}, LR3/f;->c(J)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/media/session/a;->b(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object p1, p0, LK3/O;->b:LK3/P;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, LK3/P;->f()V

    :cond_3
    return-void
.end method
