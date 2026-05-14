.class public final Ll3/V0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:Ll3/a;

.field public b:I

.field public final c:Ll3/N1;

.field public final d:Ll3/R1;

.field public e:Lj3/o;

.field public f:[B

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:Ll3/y;

.field public q:Ll3/y;

.field public r:J

.field public s:Z

.field public t:Z

.field public volatile u:Z


# direct methods
.method public constructor <init>(Ll3/a;ILl3/N1;Ll3/R1;)V
    .locals 2

    sget-object v0, Lj3/n;->b:Lj3/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Ll3/V0;->m:I

    const/4 v1, 0x5

    iput v1, p0, Ll3/V0;->n:I

    new-instance v1, Ll3/y;

    invoke-direct {v1}, Ll3/y;-><init>()V

    iput-object v1, p0, Ll3/V0;->q:Ll3/y;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ll3/V0;->s:Z

    iput-boolean v1, p0, Ll3/V0;->t:Z

    iput-boolean v1, p0, Ll3/V0;->u:Z

    iput-object p1, p0, Ll3/V0;->a:Ll3/a;

    iput-object v0, p0, Ll3/V0;->e:Lj3/o;

    iput p2, p0, Ll3/V0;->b:I

    iput-object p3, p0, Ll3/V0;->c:Ll3/N1;

    const-string p1, "transportTracer"

    invoke-static {p4, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Ll3/V0;->d:Ll3/R1;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    iget-boolean v0, p0, Ll3/V0;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ll3/V0;->s:Z

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Ll3/V0;->u:Z

    if-nez v2, :cond_5

    iget-wide v2, p0, Ll3/V0;->r:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    invoke-virtual {p0}, Ll3/V0;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Ll3/V0;->m:I

    invoke-static {v2}, Ls/e;->d(I)I

    move-result v2

    if-eqz v2, :cond_4

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Ll3/V0;->c()V

    iget-wide v2, p0, Ll3/V0;->r:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ll3/V0;->r:J

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ll3/V0;->m:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const-string v3, "null"

    goto :goto_1

    :cond_2
    const-string v3, "BODY"

    goto :goto_1

    :cond_3
    const-string v3, "HEADER"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Ll3/V0;->e()V

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Ll3/V0;->u:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Ll3/V0;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Ll3/V0;->s:Z

    return-void

    :cond_6
    :try_start_1
    iget-boolean v2, p0, Ll3/V0;->t:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Ll3/V0;->q:Ll3/y;

    iget v2, v2, Ll3/y;->c:I

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ll3/V0;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    iput-boolean v1, p0, Ll3/V0;->s:Z

    return-void

    :goto_3
    iput-boolean v1, p0, Ll3/V0;->s:Z

    throw v0
.end method

.method public final c()V
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Ll3/V0;->c:Ll3/N1;

    iget-object v2, v1, Ll3/N1;->a:[Lj3/B;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/2addr v5, v0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Ll3/V0;->o:Z

    const-string v3, "buffer"

    if-eqz v2, :cond_2

    iget-object v2, p0, Ll3/V0;->e:Lj3/o;

    sget-object v4, Lj3/n;->b:Lj3/n;

    if-eq v2, v4, :cond_1

    :try_start_0
    iget-object v4, p0, Ll3/V0;->p:Ll3/y;

    sget-object v5, Ll3/j1;->a:Ll3/i1;

    new-instance v5, Ll3/h1;

    invoke-direct {v5}, Ljava/io/InputStream;-><init>()V

    invoke-static {v4, v3}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v5, Ll3/h1;->a:Ll3/c;

    invoke-interface {v2, v5}, Lj3/o;->f(Ll3/h1;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ll3/U0;

    iget v4, p0, Ll3/V0;->b:I

    invoke-direct {v3, v2, v4, v1}, Ll3/U0;-><init>(Ljava/io/InputStream;ILl3/N1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    sget-object v0, Lj3/r0;->l:Lj3/r0;

    const-string v1, "Can\'t decode compressed gRPC message as compression not configured"

    invoke-virtual {v0, v1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    invoke-virtual {v0}, Lj3/r0;->a()Lj3/t0;

    move-result-object v0

    throw v0

    :cond_2
    iget-object v2, p0, Ll3/V0;->p:Ll3/y;

    iget v2, v2, Ll3/y;->c:I

    iget-object v1, v1, Ll3/N1;->a:[Lj3/B;

    array-length v2, v1

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/2addr v4, v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Ll3/V0;->p:Ll3/y;

    sget-object v2, Ll3/j1;->a:Ll3/i1;

    new-instance v2, Ll3/h1;

    invoke-direct {v2}, Ljava/io/InputStream;-><init>()V

    invoke-static {v1, v3}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v2, Ll3/h1;->a:Ll3/c;

    move-object v3, v2

    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Ll3/V0;->p:Ll3/y;

    iget-object v1, p0, Ll3/V0;->a:Ll3/a;

    new-instance v2, Lj1/a;

    const/16 v4, 0x8

    invoke-direct {v2, v4}, Lj1/a;-><init>(I)V

    iput-object v3, v2, Lj1/a;->b:Ljava/lang/Object;

    iget-object v1, v1, Ll3/a;->j:Ll3/u;

    invoke-interface {v1, v2}, Ll3/u;->d(Lj1/a;)V

    iput v0, p0, Ll3/V0;->m:I

    const/4 v0, 0x5

    iput v0, p0, Ll3/V0;->n:I

    return-void
.end method

.method public final close()V
    .locals 3

    invoke-virtual {p0}, Ll3/V0;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ll3/V0;->p:Ll3/y;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Ll3/y;->c:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Ll3/V0;->q:Ll3/y;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ll3/y;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v2, p0, Ll3/V0;->p:Ll3/y;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ll3/y;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iput-object v0, p0, Ll3/V0;->q:Ll3/y;

    iput-object v0, p0, Ll3/V0;->p:Ll3/y;

    iget-object v0, p0, Ll3/V0;->a:Ll3/a;

    invoke-virtual {v0, v1}, Ll3/a;->c(Z)V

    return-void

    :goto_2
    iput-object v0, p0, Ll3/V0;->q:Ll3/y;

    iput-object v0, p0, Ll3/V0;->p:Ll3/y;

    throw v1
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Ll3/V0;->p:Ll3/y;

    invoke-virtual {v0}, Ll3/y;->q()I

    move-result v0

    and-int/lit16 v1, v0, 0xfe

    if-nez v1, :cond_3

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Ll3/V0;->o:Z

    iget-object v0, p0, Ll3/V0;->p:Ll3/y;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ll3/c;->b(I)V

    invoke-virtual {v0}, Ll3/y;->q()I

    move-result v1

    invoke-virtual {v0}, Ll3/y;->q()I

    move-result v3

    invoke-virtual {v0}, Ll3/y;->q()I

    move-result v4

    invoke-virtual {v0}, Ll3/y;->q()I

    move-result v0

    shl-int/lit8 v1, v1, 0x18

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    shl-int/lit8 v3, v4, 0x8

    or-int/2addr v1, v3

    or-int/2addr v0, v1

    iput v0, p0, Ll3/V0;->n:I

    if-ltz v0, :cond_2

    iget v1, p0, Ll3/V0;->b:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Ll3/V0;->c:Ll3/N1;

    iget-object v0, v0, Ll3/N1;->a:[Lj3/B;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ll3/V0;->d:Ll3/R1;

    iget-object v1, v0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v1, Ll3/w0;

    invoke-interface {v1}, Ll3/w0;->a()V

    iget-object v0, v0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v0, Ll3/P1;

    invoke-virtual {v0}, Ll3/P1;->f()J

    const/4 v0, 0x2

    iput v0, p0, Ll3/V0;->m:I

    return-void

    :cond_2
    sget-object v1, Lj3/r0;->k:Lj3/r0;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, p0, Ll3/V0;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gRPC message exceeds maximum size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    invoke-virtual {v0}, Lj3/r0;->a()Lj3/t0;

    move-result-object v0

    throw v0

    :cond_3
    sget-object v0, Lj3/r0;->l:Lj3/r0;

    const-string v1, "gRPC frame header malformed: reserved bits not zero"

    invoke-virtual {v0, v1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    invoke-virtual {v0}, Lj3/r0;->a()Lj3/t0;

    move-result-object v0

    throw v0
.end method

.method public final f()Z
    .locals 8

    iget-object v0, p0, Ll3/V0;->c:Ll3/N1;

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Ll3/V0;->p:Ll3/y;

    if-nez v3, :cond_0

    new-instance v3, Ll3/y;

    invoke-direct {v3}, Ll3/y;-><init>()V

    iput-object v3, p0, Ll3/V0;->p:Ll3/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_0
    :goto_0
    move v3, v2

    :goto_1
    :try_start_1
    iget v4, p0, Ll3/V0;->n:I

    iget-object v5, p0, Ll3/V0;->p:Ll3/y;

    iget v5, v5, Ll3/y;->c:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_3

    iget-object v5, p0, Ll3/V0;->q:Ll3/y;

    iget v5, v5, Ll3/y;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_2

    if-lez v3, :cond_1

    iget-object v4, p0, Ll3/V0;->a:Ll3/a;

    invoke-virtual {v4, v3}, Ll3/a;->a(I)V

    iget v3, p0, Ll3/V0;->m:I

    if-ne v3, v1, :cond_1

    invoke-virtual {v0}, Ll3/N1;->a()V

    :cond_1
    return v2

    :cond_2
    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v5, p0, Ll3/V0;->p:Ll3/y;

    iget-object v6, p0, Ll3/V0;->q:Ll3/y;

    invoke-virtual {v6, v4}, Ll3/y;->f(I)Ll3/c;

    move-result-object v4

    invoke-virtual {v5, v4}, Ll3/y;->u(Ll3/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    move v7, v3

    move-object v3, v2

    move v2, v7

    goto :goto_2

    :cond_3
    if-lez v3, :cond_4

    iget-object v2, p0, Ll3/V0;->a:Ll3/a;

    invoke-virtual {v2, v3}, Ll3/a;->a(I)V

    iget v2, p0, Ll3/V0;->m:I

    if-ne v2, v1, :cond_4

    invoke-virtual {v0}, Ll3/N1;->a()V

    :cond_4
    const/4 v0, 0x1

    return v0

    :goto_2
    if-lez v2, :cond_5

    iget-object v4, p0, Ll3/V0;->a:Ll3/a;

    invoke-virtual {v4, v2}, Ll3/a;->a(I)V

    iget v2, p0, Ll3/V0;->m:I

    if-ne v2, v1, :cond_5

    invoke-virtual {v0}, Ll3/N1;->a()V

    :cond_5
    throw v3
.end method

.method public final isClosed()Z
    .locals 1

    iget-object v0, p0, Ll3/V0;->q:Ll3/y;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
