.class public final LQ4/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ4/h;


# instance fields
.field public final a:LQ4/w;

.field public final b:LQ4/g;

.field public c:Z


# direct methods
.method public constructor <init>(LQ4/w;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ4/r;->a:LQ4/w;

    new-instance p1, LQ4/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ4/r;->b:LQ4/g;

    return-void
.end method


# virtual methods
.method public final a()LQ4/A;
    .locals 1

    iget-object v0, p0, LQ4/r;->a:LQ4/w;

    invoke-interface {v0}, LQ4/w;->a()LQ4/A;

    move-result-object v0

    return-object v0
.end method

.method public final b()LQ4/h;
    .locals 5

    iget-boolean v0, p0, LQ4/r;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LQ4/r;->b:LQ4/g;

    invoke-virtual {v0}, LQ4/g;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, LQ4/r;->a:LQ4/w;

    invoke-interface {v3, v0, v1, v2}, LQ4/w;->o(LQ4/g;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c([B)LQ4/h;
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LQ4/r;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LQ4/r;->b:LQ4/g;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, LQ4/g;->C([BII)V

    invoke-virtual {p0}, LQ4/r;->b()LQ4/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 6

    iget-object v0, p0, LQ4/r;->a:LQ4/w;

    iget-boolean v1, p0, LQ4/r;->c:Z

    if-nez v1, :cond_3

    :try_start_0
    iget-object v1, p0, LQ4/r;->b:LQ4/g;

    iget-wide v2, v1, LQ4/g;->b:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-interface {v0, v1, v2, v3}, LQ4/w;->o(LQ4/g;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_0
    :try_start_1
    invoke-interface {v0}, LQ4/w;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LQ4/r;->c:Z

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    throw v1

    :cond_3
    :goto_2
    return-void
.end method

.method public final d(I)LQ4/h;
    .locals 1

    iget-boolean v0, p0, LQ4/r;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LQ4/r;->b:LQ4/g;

    invoke-virtual {v0, p1}, LQ4/g;->E(I)V

    invoke-virtual {p0}, LQ4/r;->b()LQ4/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(I)LQ4/h;
    .locals 1

    iget-boolean v0, p0, LQ4/r;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LQ4/r;->b:LQ4/g;

    invoke-virtual {v0, p1}, LQ4/g;->H(I)V

    invoke-virtual {p0}, LQ4/r;->b()LQ4/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(I)LQ4/h;
    .locals 7

    iget-boolean v0, p0, LQ4/r;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LQ4/r;->b:LQ4/g;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LQ4/g;->A(I)LQ4/t;

    move-result-object v2

    iget v3, v2, LQ4/t;->c:I

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    iget-object v6, v2, LQ4/t;->a:[B

    aput-byte v5, v6, v3

    add-int/2addr v3, v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v6, v4

    iput v3, v2, LQ4/t;->c:I

    iget-wide v1, v0, LQ4/g;->b:J

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    iput-wide v1, v0, LQ4/g;->b:J

    invoke-virtual {p0}, LQ4/r;->b()LQ4/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final flush()V
    .locals 5

    iget-boolean v0, p0, LQ4/r;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LQ4/r;->b:LQ4/g;

    iget-wide v1, v0, LQ4/g;->b:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    iget-object v4, p0, LQ4/r;->a:LQ4/w;

    if-lez v3, :cond_0

    invoke-interface {v4, v0, v1, v2}, LQ4/w;->o(LQ4/g;J)V

    :cond_0
    invoke-interface {v4}, LQ4/w;->flush()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Ljava/lang/String;)LQ4/h;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LQ4/r;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LQ4/r;->b:LQ4/g;

    invoke-virtual {v0, p1}, LQ4/g;->J(Ljava/lang/String;)V

    invoke-virtual {p0}, LQ4/r;->b()LQ4/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, LQ4/r;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final o(LQ4/g;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LQ4/r;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LQ4/r;->b:LQ4/g;

    invoke-virtual {v0, p1, p2, p3}, LQ4/g;->o(LQ4/g;J)V

    invoke-virtual {p0}, LQ4/r;->b()LQ4/h;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p(J)LQ4/h;
    .locals 1

    iget-boolean v0, p0, LQ4/r;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LQ4/r;->b:LQ4/g;

    invoke-virtual {v0, p1, p2}, LQ4/g;->F(J)V

    invoke-virtual {p0}, LQ4/r;->b()LQ4/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LQ4/r;->a:LQ4/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LQ4/r;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LQ4/r;->b:LQ4/g;

    invoke-virtual {v0, p1}, LQ4/g;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p0}, LQ4/r;->b()LQ4/h;

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
