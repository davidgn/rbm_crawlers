.class public final LQ4/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ4/i;


# instance fields
.field public final a:LQ4/y;

.field public final b:LQ4/g;

.field public c:Z


# direct methods
.method public constructor <init>(LQ4/y;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ4/s;->a:LQ4/y;

    new-instance p1, LQ4/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ4/s;->b:LQ4/g;

    return-void
.end method


# virtual methods
.method public final a()LQ4/A;
    .locals 1

    iget-object v0, p0, LQ4/s;->a:LQ4/y;

    invoke-interface {v0}, LQ4/y;->a()LQ4/A;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 4

    iget-boolean v0, p0, LQ4/s;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LQ4/s;->b:LQ4/g;

    invoke-virtual {v0}, LQ4/g;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQ4/s;->a:LQ4/y;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, LQ4/y;->l(LQ4/g;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(BJJ)J
    .locals 9

    iget-boolean p2, p0, LQ4/s;->c:Z

    if-nez p2, :cond_4

    const-wide/16 p2, 0x0

    cmp-long v0, p2, p4

    if-gtz v0, :cond_3

    :goto_0
    cmp-long v0, p2, p4

    const-wide/16 v7, -0x1

    if-gez v0, :cond_2

    iget-object v0, p0, LQ4/s;->b:LQ4/g;

    move-object v1, v0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, LQ4/g;->m(BJJ)J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-eqz v3, :cond_0

    move-wide v7, v1

    goto :goto_1

    :cond_0
    iget-wide v1, v0, LQ4/g;->b:J

    cmp-long v3, v1, p4

    if-gez v3, :cond_2

    iget-object v3, p0, LQ4/s;->a:LQ4/y;

    const-wide/16 v4, 0x2000

    invoke-interface {v3, v0, v4, v5}, LQ4/y;->l(LQ4/g;J)J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v7

    :cond_3
    const-string p1, "fromIndex=0 toIndex="

    invoke-static {p4, p5, p1}, Le1/i;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, LQ4/s;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LQ4/s;->c:Z

    iget-object v0, p0, LQ4/s;->a:LQ4/y;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    iget-object v0, p0, LQ4/s;->b:LQ4/g;

    invoke-virtual {v0}, LQ4/g;->b()V

    :cond_0
    return-void
.end method

.method public final e(JLQ4/j;)Z
    .locals 7

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p3, LQ4/j;->a:[B

    array-length v0, p3

    iget-boolean v1, p0, LQ4/s;->c:Z

    if-nez v1, :cond_5

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_4

    if-ltz v0, :cond_4

    array-length v1, p3

    if-ge v1, v0, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_3

    int-to-long v3, v1

    add-long/2addr v3, p1

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, LQ4/s;->u(J)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, LQ4/s;->b:LQ4/g;

    invoke-virtual {v5, v3, v4}, LQ4/g;->g(J)B

    move-result v3

    aget-byte v4, p3, v1

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    :cond_4
    :goto_1
    return v2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f()B
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, LQ4/s;->v(J)V

    iget-object v0, p0, LQ4/s;->b:LQ4/g;

    invoke-virtual {v0}, LQ4/g;->q()B

    move-result v0

    return v0
.end method

.method public final g(J)LQ4/j;
    .locals 1

    invoke-virtual {p0, p1, p2}, LQ4/s;->v(J)V

    iget-object v0, p0, LQ4/s;->b:LQ4/g;

    invoke-virtual {v0, p1, p2}, LQ4/g;->s(J)LQ4/j;

    move-result-object p1

    return-object p1
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, LQ4/s;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final j(LQ4/q;)I
    .locals 6

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LQ4/s;->c:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, LQ4/s;->b:LQ4/g;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, LR4/a;->b(LQ4/g;LQ4/q;Z)I

    move-result v1

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_1

    iget-object p1, p1, LQ4/q;->a:[LQ4/j;

    aget-object p1, p1, v1

    invoke-virtual {p1}, LQ4/j;->c()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, LQ4/g;->x(J)V

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    goto :goto_1

    :cond_2
    iget-object v1, p0, LQ4/s;->a:LQ4/y;

    const-wide/16 v4, 0x2000

    invoke-interface {v1, v0, v4, v5}, LQ4/y;->l(LQ4/g;J)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    goto :goto_0

    :goto_1
    return v1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LQ4/s;->b:LQ4/g;

    iget-object v1, p0, LQ4/s;->a:LQ4/y;

    invoke-virtual {v0, v1}, LQ4/g;->D(LQ4/y;)V

    iget-wide v1, v0, LQ4/g;->b:J

    invoke-virtual {v0, v1, v2, p1}, LQ4/g;->v(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final l(LQ4/g;J)J
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    iget-boolean v2, p0, LQ4/s;->c:Z

    if-nez v2, :cond_1

    iget-object v2, p0, LQ4/s;->b:LQ4/g;

    iget-wide v3, v2, LQ4/g;->b:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, LQ4/s;->a:LQ4/y;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, LQ4/y;->l(LQ4/g;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, v2, LQ4/g;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v2, p1, p2, p3}, LQ4/g;->l(LQ4/g;J)J

    move-result-wide v3

    :goto_0
    return-wide v3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, "byteCount < 0: "

    invoke-static {p2, p3, p1}, Le1/i;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final m()J
    .locals 20

    move-object/from16 v0, p0

    const/16 v3, 0x2d

    const/16 v4, 0x39

    const/16 v5, 0x30

    const-wide/16 v7, 0x1

    invoke-virtual {v0, v7, v8}, LQ4/s;->v(J)V

    const-wide/16 v9, 0x0

    move-wide v11, v9

    :goto_0
    add-long v13, v11, v7

    invoke-virtual {v0, v13, v14}, LQ4/s;->u(J)Z

    move-result v15

    iget-object v2, v0, LQ4/s;->b:LQ4/g;

    if-eqz v15, :cond_4

    invoke-virtual {v2, v11, v12}, LQ4/g;->g(J)B

    move-result v15

    if-lt v15, v5, :cond_0

    if-le v15, v4, :cond_1

    :cond_0
    cmp-long v11, v11, v9

    if-nez v11, :cond_2

    if-eq v15, v3, :cond_1

    goto :goto_1

    :cond_1
    move-wide v11, v13

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/NumberFormatException;

    const/16 v2, 0x10

    invoke-static {v2}, LL4/d;->f(I)V

    invoke-static {v2}, LL4/d;->f(I)V

    invoke-static {v15, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this, checkRadix(radix))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Expected a digit or \'-\' but was 0x"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_2
    iget-wide v11, v2, LQ4/g;->b:J

    cmp-long v11, v11, v9

    if-eqz v11, :cond_13

    const-wide/16 v11, -0x7

    move-wide v13, v9

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_3
    iget-object v1, v2, LQ4/g;->a:LQ4/t;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget v9, v1, LQ4/t;->b:I

    iget v10, v1, LQ4/t;->c:I

    :goto_4
    if-ge v9, v10, :cond_a

    iget-object v6, v1, LQ4/t;->a:[B

    aget-byte v6, v6, v9

    if-lt v6, v5, :cond_8

    if-gt v6, v4, :cond_8

    rsub-int/lit8 v4, v6, 0x30

    const-wide v18, -0xcccccccccccccccL

    cmp-long v18, v13, v18

    if-ltz v18, :cond_6

    if-nez v18, :cond_5

    int-to-long v7, v4

    cmp-long v7, v7, v11

    if-gez v7, :cond_5

    goto :goto_5

    :cond_5
    const-wide/16 v6, 0xa

    mul-long/2addr v13, v6

    int-to-long v6, v4

    add-long/2addr v13, v6

    const/4 v4, 0x1

    const-wide/16 v6, 0x1

    goto :goto_6

    :cond_6
    :goto_5
    new-instance v1, LQ4/g;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v13, v14}, LQ4/g;->F(J)V

    invoke-virtual {v1, v6}, LQ4/g;->E(I)V

    if-nez v16, :cond_7

    invoke-virtual {v1}, LQ4/g;->q()B

    :cond_7
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-virtual {v1}, LQ4/g;->w()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Number too large: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    if-ne v6, v3, :cond_9

    if-nez v15, :cond_9

    const-wide/16 v6, 0x1

    sub-long/2addr v11, v6

    const/4 v4, 0x1

    const/16 v16, 0x1

    :goto_6
    add-int/2addr v9, v4

    add-int/2addr v15, v4

    move-wide v7, v6

    const/16 v4, 0x39

    goto :goto_4

    :cond_9
    const-wide/16 v6, 0x1

    const/16 v17, 0x1

    goto :goto_7

    :cond_a
    move-wide v6, v7

    :goto_7
    if-ne v9, v10, :cond_b

    invoke-virtual {v1}, LQ4/t;->a()LQ4/t;

    move-result-object v4

    iput-object v4, v2, LQ4/g;->a:LQ4/t;

    invoke-static {v1}, LQ4/u;->a(LQ4/t;)V

    goto :goto_8

    :cond_b
    iput v9, v1, LQ4/t;->b:I

    :goto_8
    if-nez v17, :cond_d

    iget-object v1, v2, LQ4/g;->a:LQ4/t;

    if-nez v1, :cond_c

    goto :goto_9

    :cond_c
    move-wide v7, v6

    const/16 v4, 0x39

    const-wide/16 v9, 0x0

    goto :goto_3

    :cond_d
    :goto_9
    iget-wide v3, v2, LQ4/g;->b:J

    int-to-long v5, v15

    sub-long/2addr v3, v5

    iput-wide v3, v2, LQ4/g;->b:J

    if-eqz v16, :cond_e

    const/4 v1, 0x2

    goto :goto_a

    :cond_e
    const/4 v1, 0x1

    :goto_a
    if-ge v15, v1, :cond_11

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_10

    if-eqz v16, :cond_f

    const-string v1, "Expected a digit"

    goto :goto_b

    :cond_f
    const-string v1, "Expected a digit or \'-\'"

    :goto_b
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, " but was 0x"

    invoke-static {v1, v4}, Ls/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v5, v6}, LQ4/g;->g(J)B

    move-result v2

    sget-object v4, LR4/b;->a:[C

    shr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    const/4 v4, 0x2

    new-array v4, v4, [C

    const/4 v6, 0x0

    aput-char v5, v4, v6

    const/4 v5, 0x1

    aput-char v2, v4, v5

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_10
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_11
    if-eqz v16, :cond_12

    goto :goto_c

    :cond_12
    neg-long v13, v13

    :goto_c
    return-wide v13

    :cond_13
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final n()J
    .locals 24

    move-object/from16 v0, p0

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    const/16 v3, 0x46

    const/16 v4, 0x41

    const/16 v5, 0x66

    const/16 v6, 0x61

    const/16 v7, 0x39

    const/16 v8, 0x30

    const/4 v9, 0x1

    const-wide/16 v10, 0x1

    invoke-virtual {v0, v10, v11}, LQ4/s;->v(J)V

    const/4 v11, 0x0

    :goto_0
    add-int/lit8 v12, v11, 0x1

    int-to-long v13, v12

    invoke-virtual {v0, v13, v14}, LQ4/s;->u(J)Z

    move-result v13

    iget-object v14, v0, LQ4/s;->b:LQ4/g;

    if-eqz v13, :cond_5

    int-to-long v9, v11

    invoke-virtual {v14, v9, v10}, LQ4/g;->g(J)B

    move-result v9

    if-lt v9, v8, :cond_0

    if-le v9, v7, :cond_2

    :cond_0
    if-lt v9, v6, :cond_1

    if-le v9, v5, :cond_2

    :cond_1
    if-lt v9, v4, :cond_3

    if-le v9, v3, :cond_2

    goto :goto_1

    :cond_2
    move v11, v12

    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v11, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/NumberFormatException;

    const/16 v3, 0x10

    invoke-static {v3}, LL4/d;->f(I)V

    invoke-static {v3}, LL4/d;->f(I)V

    invoke-static {v9, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(this, checkRadix(radix))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    iget-wide v9, v14, LQ4/g;->b:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_f

    move-wide v9, v11

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_3
    iget-object v13, v14, LQ4/g;->a:LQ4/t;

    invoke-static {v13}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget v15, v13, LQ4/t;->b:I

    iget v1, v13, LQ4/t;->c:I

    move/from16 v19, v16

    :goto_4
    if-ge v15, v1, :cond_b

    iget-object v11, v13, LQ4/t;->a:[B

    aget-byte v11, v11, v15

    if-lt v11, v8, :cond_6

    if-gt v11, v7, :cond_6

    add-int/lit8 v12, v11, -0x30

    goto :goto_5

    :cond_6
    if-lt v11, v6, :cond_7

    if-gt v11, v5, :cond_7

    add-int/lit8 v12, v11, -0x57

    goto :goto_5

    :cond_7
    if-lt v11, v4, :cond_9

    if-gt v11, v3, :cond_9

    add-int/lit8 v12, v11, -0x37

    :goto_5
    const-wide/high16 v22, -0x1000000000000000L    # -3.105036184601418E231

    and-long v22, v9, v22

    const-wide/16 v20, 0x0

    cmp-long v16, v22, v20

    if-nez v16, :cond_8

    const/16 v16, 0x4

    shl-long v9, v9, v16

    int-to-long v11, v12

    or-long/2addr v9, v11

    const/4 v11, 0x1

    add-int/2addr v15, v11

    move/from16 v12, v19

    add-int/lit8 v19, v12, 0x1

    move-wide/from16 v11, v20

    goto :goto_4

    :cond_8
    new-instance v1, LQ4/g;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v9, v10}, LQ4/g;->G(J)V

    invoke-virtual {v1, v11}, LQ4/g;->E(I)V

    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-virtual {v1}, LQ4/g;->w()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Number too large: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    move/from16 v12, v19

    const-wide/16 v20, 0x0

    if-eqz v12, :cond_a

    const/4 v11, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    :goto_6
    const/16 v18, 0x4

    goto :goto_7

    :cond_a
    new-instance v1, Ljava/lang/NumberFormatException;

    sget-object v3, LR4/b;->a:[C

    const/16 v18, 0x4

    shr-int/lit8 v4, v11, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v3, v4

    and-int/lit8 v5, v11, 0xf

    aget-char v3, v3, v5

    const/4 v5, 0x2

    new-array v5, v5, [C

    const/4 v11, 0x0

    aput-char v4, v5, v11

    const/16 v16, 0x1

    aput-char v3, v5, v16

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    move-wide/from16 v20, v11

    move/from16 v12, v19

    const/4 v11, 0x0

    const/16 v16, 0x1

    goto :goto_6

    :goto_7
    if-ne v15, v1, :cond_c

    invoke-virtual {v13}, LQ4/t;->a()LQ4/t;

    move-result-object v1

    iput-object v1, v14, LQ4/g;->a:LQ4/t;

    invoke-static {v13}, LQ4/u;->a(LQ4/t;)V

    goto :goto_8

    :cond_c
    iput v15, v13, LQ4/t;->b:I

    :goto_8
    if-nez v17, :cond_e

    iget-object v1, v14, LQ4/g;->a:LQ4/t;

    if-nez v1, :cond_d

    goto :goto_9

    :cond_d
    move/from16 v16, v12

    move-wide/from16 v11, v20

    goto/16 :goto_3

    :cond_e
    :goto_9
    iget-wide v1, v14, LQ4/g;->b:J

    int-to-long v3, v12

    sub-long/2addr v1, v3

    iput-wide v1, v14, LQ4/g;->b:J

    return-wide v9

    :cond_f
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final q()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, LQ4/s;->v(J)V

    iget-object v0, p0, LQ4/s;->b:LQ4/g;

    invoke-virtual {v0}, LQ4/g;->t()I

    move-result v0

    return v0
.end method

.method public final r()I
    .locals 3

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, LQ4/s;->v(J)V

    iget-object v0, p0, LQ4/s;->b:LQ4/g;

    invoke-virtual {v0}, LQ4/g;->t()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const v2, 0xff00

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LQ4/s;->b:LQ4/g;

    iget-wide v1, v0, LQ4/g;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, LQ4/s;->a:LQ4/y;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, LQ4/y;->l(LQ4/g;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {v0, p1}, LQ4/g;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final s()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, LQ4/s;->v(J)V

    iget-object v0, p0, LQ4/s;->b:LQ4/g;

    invoke-virtual {v0}, LQ4/g;->u()S

    move-result v0

    return v0
.end method

.method public final t(J)Ljava/lang/String;
    .locals 21

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_3

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v0, v7, v9

    const-wide/16 v11, 0x1

    if-nez v0, :cond_0

    move-wide v13, v9

    goto :goto_0

    :cond_0
    add-long v0, v7, v11

    move-wide v13, v0

    :goto_0
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide v4, v13

    invoke-virtual/range {v0 .. v5}, LQ4/s;->c(BJJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    iget-object v3, v6, LQ4/s;->b:LQ4/g;

    if-eqz v2, :cond_1

    invoke-static {v3, v0, v1}, LR4/a;->a(LQ4/g;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    cmp-long v0, v13, v9

    if-gez v0, :cond_2

    invoke-virtual {v6, v13, v14}, LQ4/s;->u(J)Z

    move-result v0

    if-eqz v0, :cond_2

    sub-long v0, v13, v11

    invoke-virtual {v3, v0, v1}, LQ4/g;->g(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    add-long/2addr v11, v13

    invoke-virtual {v6, v11, v12}, LQ4/s;->u(J)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v13, v14}, LQ4/g;->g(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    invoke-static {v3, v13, v14}, LR4/a;->a(LQ4/g;J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, LQ4/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-wide v1, v3, LQ4/g;->b:J

    const/16 v4, 0x20

    int-to-long v4, v4

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v19

    const-wide/16 v17, 0x0

    move-object v15, v3

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v20}, LQ4/g;->e(LQ4/g;JJ)V

    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\\n not found: limit="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v3, LQ4/g;->b:J

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, LQ4/g;->b:J

    invoke-virtual {v0, v3, v4}, LQ4/g;->s(J)LQ4/j;

    move-result-object v0

    invoke-virtual {v0}, LQ4/j;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2026

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "limit < 0: "

    invoke-static {v7, v8, v0}, Le1/i;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LQ4/s;->a:LQ4/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(J)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    iget-boolean v0, p0, LQ4/s;->c:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, LQ4/s;->b:LQ4/g;

    iget-wide v1, v0, LQ4/g;->b:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    iget-object v1, p0, LQ4/s;->a:LQ4/y;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, LQ4/y;->l(LQ4/g;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v0, "byteCount < 0: "

    invoke-static {p1, p2, v0}, Le1/i;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final v(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LQ4/s;->u(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final w(J)V
    .locals 5

    iget-boolean v0, p0, LQ4/s;->c:Z

    if-nez v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object v2, p0, LQ4/s;->b:LQ4/g;

    iget-wide v3, v2, LQ4/g;->b:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    iget-object v0, p0, LQ4/s;->a:LQ4/y;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, LQ4/y;->l(LQ4/g;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    :goto_1
    iget-wide v0, v2, LQ4/g;->b:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, LQ4/g;->x(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
