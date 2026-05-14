.class public final Lm3/r;
.super Ll3/c;
.source "SourceFile"


# instance fields
.field public final a:LQ4/g;


# direct methods
.method public constructor <init>(LQ4/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/r;->a:LQ4/g;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lm3/r;->a:LQ4/g;

    invoke-virtual {v0}, LQ4/g;->b()V

    return-void
.end method

.method public final f(I)Ll3/c;
    .locals 4

    new-instance v0, LQ4/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lm3/r;->a:LQ4/g;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, LQ4/g;->o(LQ4/g;J)V

    new-instance p1, Lm3/r;

    invoke-direct {p1, v0}, Lm3/r;-><init>(LQ4/g;)V

    return-object p1
.end method

.method public final g(I[BI)V
    .locals 2

    :goto_0
    if-lez p3, :cond_1

    iget-object v0, p0, Lm3/r;->a:LQ4/g;

    invoke-virtual {v0, p2, p1, p3}, LQ4/g;->n([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sub-int/2addr p3, v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "EOF trying to read "

    const-string v0, " bytes"

    invoke-static {p3, p2, v0}, LC/a;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public final m(Ljava/io/OutputStream;I)V
    .locals 10

    int-to-long v6, p2

    iget-object p2, p0, Lm3/r;->a:LQ4/g;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p2, LQ4/g;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, v6

    invoke-static/range {v0 .. v5}, Landroid/support/v4/media/session/a;->f(JJJ)V

    iget-object v0, p2, LQ4/g;->a:LQ4/t;

    :cond_0
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    if-lez v1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget v1, v0, LQ4/t;->c:I

    iget v2, v0, LQ4/t;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, v0, LQ4/t;->a:[B

    iget v3, v0, LQ4/t;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    iget v2, v0, LQ4/t;->b:I

    add-int/2addr v2, v1

    iput v2, v0, LQ4/t;->b:I

    iget-wide v3, p2, LQ4/g;->b:J

    int-to-long v8, v1

    sub-long/2addr v3, v8

    iput-wide v3, p2, LQ4/g;->b:J

    sub-long/2addr v6, v8

    iget v1, v0, LQ4/t;->c:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, LQ4/t;->a()LQ4/t;

    move-result-object v1

    iput-object v1, p2, LQ4/g;->a:LQ4/t;

    invoke-static {v0}, LQ4/u;->a(LQ4/t;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final n(Ljava/nio/ByteBuffer;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final q()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lm3/r;->a:LQ4/g;

    invoke-virtual {v0}, LQ4/g;->q()B

    move-result v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final r()I
    .locals 2

    iget-object v0, p0, Lm3/r;->a:LQ4/g;

    iget-wide v0, v0, LQ4/g;->b:J

    long-to-int v0, v0

    return v0
.end method

.method public final t(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lm3/r;->a:LQ4/g;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, LQ4/g;->x(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
