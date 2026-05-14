.class public final LQ4/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ4/y;


# instance fields
.field public final a:LQ4/s;

.field public final b:Ljava/util/zip/Inflater;

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(LQ4/s;Ljava/util/zip/Inflater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ4/o;->a:LQ4/s;

    iput-object p2, p0, LQ4/o;->b:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public final a()LQ4/A;
    .locals 1

    iget-object v0, p0, LQ4/o;->a:LQ4/s;

    iget-object v0, v0, LQ4/s;->a:LQ4/y;

    invoke-interface {v0}, LQ4/y;->a()LQ4/A;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, LQ4/o;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LQ4/o;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LQ4/o;->d:Z

    iget-object v0, p0, LQ4/o;->a:LQ4/s;

    invoke-virtual {v0}, LQ4/s;->close()V

    return-void
.end method

.method public final l(LQ4/g;J)J
    .locals 10

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_b

    iget-boolean v3, p0, LQ4/o;->d:Z

    if-nez v3, :cond_a

    iget-object v3, p0, LQ4/o;->a:LQ4/s;

    iget-object v4, p0, LQ4/o;->b:Ljava/util/zip/Inflater;

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    move-wide v8, v0

    goto :goto_4

    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, v2}, LQ4/g;->A(I)LQ4/t;

    move-result-object v2

    iget v5, v2, LQ4/t;->c:I

    rsub-int v5, v5, 0x2000

    int-to-long v5, v5

    invoke-static {p2, p3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, LQ4/s;->b()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    iget-object v6, v3, LQ4/s;->b:LQ4/g;

    iget-object v6, v6, LQ4/g;->a:LQ4/t;

    invoke-static {v6}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget v7, v6, LQ4/t;->c:I

    iget v8, v6, LQ4/t;->b:I

    sub-int/2addr v7, v8

    iput v7, p0, LQ4/o;->c:I

    iget-object v6, v6, LQ4/t;->a:[B

    invoke-virtual {v4, v6, v8, v7}, Ljava/util/zip/Inflater;->setInput([BII)V

    :goto_2
    iget-object v6, v2, LQ4/t;->a:[B

    iget v7, v2, LQ4/t;->c:I

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v5

    iget v6, p0, LQ4/o;->c:I

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, LQ4/o;->c:I

    sub-int/2addr v7, v6

    iput v7, p0, LQ4/o;->c:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, LQ4/s;->w(J)V

    :goto_3
    if-lez v5, :cond_5

    iget v6, v2, LQ4/t;->c:I

    add-int/2addr v6, v5

    iput v6, v2, LQ4/t;->c:I

    iget-wide v6, p1, LQ4/g;->b:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p1, LQ4/g;->b:J

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_6

    :cond_5
    iget v5, v2, LQ4/t;->b:I

    iget v6, v2, LQ4/t;->c:I

    if-ne v5, v6, :cond_0

    invoke-virtual {v2}, LQ4/t;->a()LQ4/t;

    move-result-object v5

    iput-object v5, p1, LQ4/g;->a:LQ4/t;

    invoke-static {v2}, LQ4/u;->a(LQ4/t;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_4
    cmp-long v0, v8, v0

    if-lez v0, :cond_6

    return-wide v8

    :cond_6
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v3}, LQ4/s;->b()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_5
    const-wide/16 p1, -0x1

    return-wide p1

    :goto_6
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const-string p1, "byteCount < 0: "

    invoke-static {p2, p3, p1}, Le1/i;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
