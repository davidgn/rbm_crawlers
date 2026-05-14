.class public abstract Lcom/google/protobuf/O0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/M0;

.field public static final b:Lcom/google/protobuf/N0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/M0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/protobuf/O0;->a:Lcom/google/protobuf/M0;

    new-instance v0, Lcom/google/protobuf/N0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/protobuf/O0;->b:Lcom/google/protobuf/N0;

    return-void
.end method

.method public static A([BILcom/google/protobuf/Y;LQ1/d;)I
    .locals 2

    check-cast p2, Lcom/google/protobuf/O;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p1

    iget v0, p3, LQ1/d;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p1

    iget v1, p3, LQ1/d;->a:I

    invoke-virtual {p2, v1}, Lcom/google/protobuf/O;->h(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->j()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static B([BILcom/google/protobuf/Y;LQ1/d;)I
    .locals 3

    check-cast p2, Lcom/google/protobuf/j0;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p1

    iget v0, p3, LQ1/d;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/O0;->P([BILQ1/d;)I

    move-result p1

    iget-wide v1, p3, LQ1/d;->b:J

    invoke-virtual {p2, v1, v2}, Lcom/google/protobuf/j0;->h(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->j()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static C(I[BIILcom/google/protobuf/Y;LQ1/d;)I
    .locals 2

    check-cast p4, Lcom/google/protobuf/O;

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p2

    iget v0, p5, LQ1/d;->a:I

    invoke-static {v0}, Lcom/google/protobuf/r;->b(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/protobuf/O;->h(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result v0

    iget v1, p5, LQ1/d;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p2

    iget v0, p5, LQ1/d;->a:I

    invoke-static {v0}, Lcom/google/protobuf/r;->b(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/protobuf/O;->h(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static D(I[BIILcom/google/protobuf/Y;LQ1/d;)I
    .locals 2

    check-cast p4, Lcom/google/protobuf/j0;

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->P([BILQ1/d;)I

    move-result p2

    iget-wide v0, p5, LQ1/d;->b:J

    invoke-static {v0, v1}, Lcom/google/protobuf/r;->c(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/j0;->h(J)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result v0

    iget v1, p5, LQ1/d;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/O0;->P([BILQ1/d;)I

    move-result p2

    iget-wide v0, p5, LQ1/d;->b:J

    invoke-static {v0, v1}, Lcom/google/protobuf/r;->c(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/j0;->h(J)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static E([BILQ1/d;)I
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p1

    iget v0, p2, LQ1/d;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, LQ1/d;->c:Ljava/lang/Object;

    return p1

    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/protobuf/Z;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, LQ1/d;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->g()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static F(I[BIILcom/google/protobuf/Y;LQ1/d;)I
    .locals 4

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p2

    iget v0, p5, LQ1/d;->a:I

    if-ltz v0, :cond_5

    const-string v1, ""

    if-nez v0, :cond_0

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/protobuf/Z;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    add-int/2addr p2, v0

    :goto_1
    if-ge p2, p3, :cond_4

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result v0

    iget v2, p5, LQ1/d;->a:I

    if-eq p0, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p2

    iget v0, p5, LQ1/d;->a:I

    if-ltz v0, :cond_3

    if-nez v0, :cond_2

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/protobuf/Z;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/protobuf/b0;->g()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_4
    :goto_2
    return p2

    :cond_5
    invoke-static {}, Lcom/google/protobuf/b0;->g()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static G(I[BIILcom/google/protobuf/Y;LQ1/d;)I
    .locals 6

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p2

    iget v0, p5, LQ1/d;->a:I

    if-ltz v0, :cond_7

    const/4 v1, 0x0

    const-string v2, ""

    if-nez v0, :cond_0

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int v3, p2, v0

    sget-object v4, Lcom/google/protobuf/h1;->a:Lcom/google/protobuf/O0;

    invoke-virtual {v4, v1, p1, p2, v3}, Lcom/google/protobuf/O0;->W(I[BII)I

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/protobuf/Z;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, p2, v0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move p2, v3

    :goto_1
    if-ge p2, p3, :cond_5

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result v0

    iget v3, p5, LQ1/d;->a:I

    if-eq p0, v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p2

    iget v0, p5, LQ1/d;->a:I

    if-ltz v0, :cond_4

    if-nez v0, :cond_2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int v3, p2, v0

    sget-object v4, Lcom/google/protobuf/h1;->a:Lcom/google/protobuf/O0;

    invoke-virtual {v4, v1, p1, p2, v3}, Lcom/google/protobuf/O0;->W(I[BII)I

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/protobuf/Z;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, p2, v0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/protobuf/b0;->c()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Lcom/google/protobuf/b0;->g()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    return p2

    :cond_6
    invoke-static {}, Lcom/google/protobuf/b0;->c()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lcom/google/protobuf/b0;->g()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static H([BILQ1/d;)I
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p1

    iget v0, p2, LQ1/d;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, LQ1/d;->c:Ljava/lang/Object;

    return p1

    :cond_0
    sget-object v1, Lcom/google/protobuf/h1;->a:Lcom/google/protobuf/O0;

    invoke-virtual {v1, p1, p0, v0}, Lcom/google/protobuf/O0;->J(I[BI)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, LQ1/d;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->g()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static I(I[BIILcom/google/protobuf/V0;LQ1/d;)I
    .locals 9

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_b

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    invoke-static {p2, p1}, Lcom/google/protobuf/O0;->j(I[B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/V0;->f(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_0
    invoke-static {}, Lcom/google/protobuf/b0;->b()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_1
    new-instance v6, Lcom/google/protobuf/V0;

    invoke-direct {v6}, Lcom/google/protobuf/V0;-><init>()V

    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v7, v0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result v2

    iget p2, p5, LQ1/d;->a:I

    if-ne p2, v7, :cond_2

    move v0, p2

    move p2, v2

    goto :goto_1

    :cond_2
    move v0, p2

    move-object v1, p1

    move v3, p3

    move-object v4, v6

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/O0;->I(I[BIILcom/google/protobuf/V0;LQ1/d;)I

    move-result v0

    move v8, v0

    move v0, p2

    move p2, v8

    goto :goto_0

    :cond_3
    :goto_1
    if-gt p2, p3, :cond_4

    if-ne v0, v7, :cond_4

    invoke-virtual {p4, p0, v6}, Lcom/google/protobuf/V0;->f(ILjava/lang/Object;)V

    return p2

    :cond_4
    invoke-static {}, Lcom/google/protobuf/b0;->h()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p2

    iget p3, p5, LQ1/d;->a:I

    if-ltz p3, :cond_8

    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_7

    if-nez p3, :cond_6

    sget-object p1, Lcom/google/protobuf/m;->b:Lcom/google/protobuf/l;

    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/V0;->f(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-static {p2, p1, p3}, Lcom/google/protobuf/m;->m(I[BI)Lcom/google/protobuf/l;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/V0;->f(ILjava/lang/Object;)V

    :goto_2
    add-int/2addr p2, p3

    return p2

    :cond_7
    invoke-static {}, Lcom/google/protobuf/b0;->j()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_8
    invoke-static {}, Lcom/google/protobuf/b0;->g()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_9
    invoke-static {p2, p1}, Lcom/google/protobuf/O0;->l(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/V0;->f(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_a
    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->P([BILQ1/d;)I

    move-result p1

    iget-wide p2, p5, LQ1/d;->b:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/protobuf/V0;->f(ILjava/lang/Object;)V

    return p1

    :cond_b
    invoke-static {}, Lcom/google/protobuf/b0;->b()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static K(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 9

    or-int v0, p1, p2

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    or-int/2addr v0, v1

    if-ltz v0, :cond_b

    add-int v0, p1, p2

    new-array p2, p2, [C

    const/4 v7, 0x0

    move v1, v7

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/O0;->b(B)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v1, 0x1

    int-to-char v2, v2

    aput-char v2, p2, v1

    move v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    move v8, v1

    :goto_2
    if-ge p1, v0, :cond_a

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/O0;->b(B)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 p1, v8, 0x1

    int-to-char v2, v2

    aput-char v2, p2, v8

    :goto_3
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/O0;->b(B)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, p1, 0x1

    int-to-char v2, v2

    aput-char v2, p2, p1

    move p1, v3

    goto :goto_3

    :cond_3
    :goto_4
    move v8, p1

    move p1, v1

    goto :goto_2

    :cond_4
    const/16 v3, -0x20

    if-ge v2, v3, :cond_6

    if-ge v1, v0, :cond_5

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    add-int/lit8 v3, v8, 0x1

    invoke-static {v2, v1, p2, v8}, Lcom/google/protobuf/O0;->c(BB[CI)V

    move v8, v3

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/google/protobuf/b0;->c()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_6
    const/16 v3, -0x10

    if-ge v2, v3, :cond_8

    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_7

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 v4, v8, 0x1

    invoke-static {v2, v1, v3, p2, v8}, Lcom/google/protobuf/O0;->d(BBB[CI)V

    move v8, v4

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/google/protobuf/b0;->c()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_8
    add-int/lit8 v3, v0, -0x2

    if-ge v1, v3, :cond_9

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    move v1, v2

    move v2, v4

    move v4, v5

    move-object v5, p2

    move v6, v8

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/O0;->a(BBBB[CI)V

    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/google/protobuf/b0;->c()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2, v7, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static M(I[BILQ1/d;)I
    .locals 2

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    if-ltz v1, :cond_0

    shl-int/lit8 p1, v1, 0x7

    or-int/2addr p0, p1

    iput p0, p3, LQ1/d;->a:I

    return v0

    :cond_0
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr p0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v0, p1, v0

    if-ltz v0, :cond_1

    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    iput p0, p3, LQ1/d;->a:I

    return v1

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x3

    aget-byte v1, p1, v1

    if-ltz v1, :cond_2

    shl-int/lit8 p1, v1, 0x15

    or-int/2addr p0, p1

    iput p0, p3, LQ1/d;->a:I

    return v0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr p0, v1

    add-int/lit8 p2, p2, 0x4

    aget-byte v0, p1, v0

    if-ltz v0, :cond_3

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, LQ1/d;->a:I

    return p2

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_0

    :cond_4
    iput p0, p3, LQ1/d;->a:I

    return v0
.end method

.method public static N([BILQ1/d;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, LQ1/d;->a:I

    return v0

    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/google/protobuf/O0;->M(I[BILQ1/d;)I

    move-result p0

    return p0
.end method

.method public static O(I[BIILcom/google/protobuf/Y;LQ1/d;)I
    .locals 2

    check-cast p4, Lcom/google/protobuf/O;

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p2

    iget v0, p5, LQ1/d;->a:I

    invoke-virtual {p4, v0}, Lcom/google/protobuf/O;->h(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result v0

    iget v1, p5, LQ1/d;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p2

    iget v0, p5, LQ1/d;->a:I

    invoke-virtual {p4, v0}, Lcom/google/protobuf/O;->h(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static P([BILQ1/d;)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    iput-wide v1, p2, LQ1/d;->b:J

    return v0

    :cond_0
    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    add-int/lit8 p1, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    move v3, v5

    :goto_0
    if-gez v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_0

    :cond_1
    iput-wide v1, p2, LQ1/d;->b:J

    return p1
.end method

.method public static Q(I[BIILcom/google/protobuf/Y;LQ1/d;)I
    .locals 2

    check-cast p4, Lcom/google/protobuf/j0;

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->P([BILQ1/d;)I

    move-result p2

    iget-wide v0, p5, LQ1/d;->b:J

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/j0;->h(J)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result v0

    iget v1, p5, LQ1/d;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/O0;->P([BILQ1/d;)I

    move-result p2

    iget-wide v0, p5, LQ1/d;->b:J

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/j0;->h(J)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static S(Lcom/google/protobuf/m;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/m;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/m;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/protobuf/m;->j(I)B

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    const/16 v3, 0x27

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    const/16 v4, 0x20

    if-lt v2, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_0

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v2, "\\v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_6
    const-string v2, "\\a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, "\\\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static T(B)Z
    .locals 1

    const/16 v0, -0x41

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static U(Ljava/lang/Object;Lcom/google/protobuf/J0;[BIIILQ1/d;)I
    .locals 7

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/w0;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/w0;->L(Ljava/lang/Object;[BIIILQ1/d;)I

    move-result p1

    iput-object p0, p6, LQ1/d;->c:Ljava/lang/Object;

    return p1
.end method

.method public static V(Ljava/lang/Object;Lcom/google/protobuf/J0;[BIILQ1/d;)I
    .locals 6

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_0

    invoke-static {p3, p2, v0, p5}, Lcom/google/protobuf/O0;->M(I[BILQ1/d;)I

    move-result v0

    iget p3, p5, LQ1/d;->a:I

    :cond_0
    move v3, v0

    if-ltz p3, :cond_1

    sub-int/2addr p4, v3

    if-gt p3, p4, :cond_1

    add-int/2addr p3, v3

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/protobuf/J0;->h(Ljava/lang/Object;[BIILQ1/d;)V

    iput-object p0, p5, LQ1/d;->c:Ljava/lang/Object;

    return p3

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->j()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static X(I[BIILQ1/d;)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_8

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p0, 0x5

    if-ne v0, p0, :cond_0

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_0
    invoke-static {}, Lcom/google/protobuf/b0;->b()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_1
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2, p4}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p2

    iget v0, p4, LQ1/d;->a:I

    if-ne v0, p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/protobuf/O0;->X(I[BIILQ1/d;)I

    move-result p2

    goto :goto_0

    :cond_3
    :goto_1
    if-gt p2, p3, :cond_4

    if-ne v0, p0, :cond_4

    return p2

    :cond_4
    invoke-static {}, Lcom/google/protobuf/b0;->h()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {p1, p2, p4}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p0

    iget p1, p4, LQ1/d;->a:I

    add-int/2addr p0, p1

    return p0

    :cond_6
    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_7
    invoke-static {p1, p2, p4}, Lcom/google/protobuf/O0;->P([BILQ1/d;)I

    move-result p0

    return p0

    :cond_8
    invoke-static {}, Lcom/google/protobuf/b0;->b()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static a(BBBB[CI)V
    .locals 2

    invoke-static {p1}, Lcom/google/protobuf/O0;->T(B)Z

    move-result v0

    if-nez v0, :cond_0

    shl-int/lit8 v0, p0, 0x1c

    add-int/lit8 v1, p1, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/google/protobuf/O0;->T(B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/google/protobuf/O0;->T(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x12

    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x3f

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    and-int/lit8 p1, p3, 0x3f

    or-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0xa

    const p2, 0xd7c0

    add-int/2addr p1, p2

    int-to-char p1, p1

    aput-char p1, p4, p5

    add-int/lit8 p5, p5, 0x1

    and-int/lit16 p0, p0, 0x3ff

    const p1, 0xdc00

    add-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p4, p5

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/b0;->c()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static b(B)Z
    .locals 0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(BB[CI)V
    .locals 1

    const/16 v0, -0x3e

    if-lt p0, v0, :cond_0

    invoke-static {p1}, Lcom/google/protobuf/O0;->T(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p2, p3

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/b0;->c()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static d(BBB[CI)V
    .locals 2

    invoke-static {p1}, Lcom/google/protobuf/O0;->T(B)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, -0x20

    const/16 v1, -0x60

    if-ne p0, v0, :cond_0

    if-lt p1, v1, :cond_2

    :cond_0
    const/16 v0, -0x13

    if-ne p0, v0, :cond_1

    if-ge p1, v1, :cond_2

    :cond_1
    invoke-static {p2}, Lcom/google/protobuf/O0;->T(B)Z

    move-result v0

    if-nez v0, :cond_2

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0xc

    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x3f

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p3, p4

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/b0;->c()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static e(I[BIILcom/google/protobuf/Y;LQ1/d;)I
    .locals 7

    check-cast p4, Lcom/google/protobuf/g;

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->P([BILQ1/d;)I

    move-result p2

    iget-wide v0, p5, LQ1/d;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p4, v0}, Lcom/google/protobuf/g;->h(Z)V

    :goto_1
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result v0

    iget v5, p5, LQ1/d;->a:I

    if-eq p0, v5, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/O0;->P([BILQ1/d;)I

    move-result p2

    iget-wide v5, p5, LQ1/d;->b:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p4, v0}, Lcom/google/protobuf/g;->h(Z)V

    goto :goto_1

    :cond_3
    :goto_3
    return p2
.end method

.method public static f([BILQ1/d;)I
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p1

    iget v0, p2, LQ1/d;->a:I

    if-ltz v0, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/protobuf/m;->b:Lcom/google/protobuf/l;

    iput-object p0, p2, LQ1/d;->c:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p1, p0, v0}, Lcom/google/protobuf/m;->m(I[BI)Lcom/google/protobuf/l;

    move-result-object p0

    iput-object p0, p2, LQ1/d;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->j()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/protobuf/b0;->g()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static g(I[BIILcom/google/protobuf/Y;LQ1/d;)I
    .locals 2

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p2

    iget v0, p5, LQ1/d;->a:I

    if-ltz v0, :cond_7

    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_6

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/m;->b:Lcom/google/protobuf/l;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {p2, p1, v0}, Lcom/google/protobuf/m;->m(I[BI)Lcom/google/protobuf/l;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    add-int/2addr p2, v0

    :goto_1
    if-ge p2, p3, :cond_5

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result v0

    iget v1, p5, LQ1/d;->a:I

    if-eq p0, v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p2

    iget v0, p5, LQ1/d;->a:I

    if-ltz v0, :cond_4

    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_3

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/protobuf/m;->b:Lcom/google/protobuf/l;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p2, p1, v0}, Lcom/google/protobuf/m;->m(I[BI)Lcom/google/protobuf/l;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/protobuf/b0;->j()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Lcom/google/protobuf/b0;->g()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    return p2

    :cond_6
    invoke-static {}, Lcom/google/protobuf/b0;->j()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lcom/google/protobuf/b0;->g()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static h(I[B)D
    .locals 0

    invoke-static {p0, p1}, Lcom/google/protobuf/O0;->l(I[B)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static i(I[BIILcom/google/protobuf/Y;LQ1/d;)I
    .locals 3

    check-cast p4, Lcom/google/protobuf/v;

    invoke-static {p2, p1}, Lcom/google/protobuf/O0;->h(I[B)D

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/v;->h(D)V

    add-int/lit8 p2, p2, 0x8

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result v0

    iget v1, p5, LQ1/d;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0, p1}, Lcom/google/protobuf/O0;->l(I[B)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/google/protobuf/v;->h(D)V

    add-int/lit8 p2, v0, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static j(I[B)I
    .locals 2

    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p0, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p0, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x3

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static k(I[BIILcom/google/protobuf/Y;LQ1/d;)I
    .locals 2

    check-cast p4, Lcom/google/protobuf/O;

    invoke-static {p2, p1}, Lcom/google/protobuf/O0;->j(I[B)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/protobuf/O;->h(I)V

    add-int/lit8 p2, p2, 0x4

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result v0

    iget v1, p5, LQ1/d;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0, p1}, Lcom/google/protobuf/O0;->j(I[B)I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/google/protobuf/O;->h(I)V

    add-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static l(I[B)J
    .locals 7

    aget-byte v0, p1, p0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p0, 0x1

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p0, 0x2

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p0, 0x3

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p0, 0x4

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p0, 0x5

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p0, 0x6

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p0, p0, 0x7

    aget-byte p0, p1, p0

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static m(I[BIILcom/google/protobuf/Y;LQ1/d;)I
    .locals 3

    check-cast p4, Lcom/google/protobuf/j0;

    invoke-static {p2, p1}, Lcom/google/protobuf/O0;->l(I[B)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/protobuf/j0;->h(J)V

    add-int/lit8 p2, p2, 0x8

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result v0

    iget v1, p5, LQ1/d;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0, p1}, Lcom/google/protobuf/O0;->l(I[B)J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/google/protobuf/j0;->h(J)V

    add-int/lit8 p2, v0, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static n(I[B)F
    .locals 0

    invoke-static {p0, p1}, Lcom/google/protobuf/O0;->j(I[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static o(I[BIILcom/google/protobuf/Y;LQ1/d;)I
    .locals 2

    check-cast p4, Lcom/google/protobuf/D;

    invoke-static {p2, p1}, Lcom/google/protobuf/O0;->n(I[B)F

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/protobuf/D;->h(F)V

    add-int/lit8 p2, p2, 0x4

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result v0

    iget v1, p5, LQ1/d;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0, p1}, Lcom/google/protobuf/O0;->j(I[B)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-virtual {p4, p2}, Lcom/google/protobuf/D;->h(F)V

    add-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static p(Lcom/google/protobuf/J0;[BIIILQ1/d;)I
    .locals 8

    invoke-interface {p0}, Lcom/google/protobuf/J0;->j()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/O0;->U(Ljava/lang/Object;Lcom/google/protobuf/J0;[BIIILQ1/d;)I

    move-result p1

    invoke-interface {p0, v7}, Lcom/google/protobuf/J0;->d(Ljava/lang/Object;)V

    iput-object v7, p5, LQ1/d;->c:Ljava/lang/Object;

    return p1
.end method

.method public static q(Lcom/google/protobuf/J0;I[BIILcom/google/protobuf/Y;LQ1/d;)I
    .locals 7

    and-int/lit8 v0, p1, -0x8

    or-int/lit8 v0, v0, 0x4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, v0

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/O0;->p(Lcom/google/protobuf/J0;[BIIILQ1/d;)I

    move-result p3

    iget-object v1, p6, LQ1/d;->c:Ljava/lang/Object;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    invoke-static {p2, p3, p6}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result v3

    iget v1, p6, LQ1/d;->a:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p0

    move-object v2, p2

    move v4, p4

    move v5, v0

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/O0;->p(Lcom/google/protobuf/J0;[BIIILQ1/d;)I

    move-result p3

    iget-object v1, p6, LQ1/d;->c:Ljava/lang/Object;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method public static r(Lcom/google/protobuf/J0;[BIILQ1/d;)I
    .locals 7

    invoke-interface {p0}, Lcom/google/protobuf/J0;->j()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/O0;->V(Ljava/lang/Object;Lcom/google/protobuf/J0;[BIILQ1/d;)I

    move-result p1

    invoke-interface {p0, v6}, Lcom/google/protobuf/J0;->d(Ljava/lang/Object;)V

    iput-object v6, p4, LQ1/d;->c:Ljava/lang/Object;

    return p1
.end method

.method public static s(Lcom/google/protobuf/J0;I[BIILcom/google/protobuf/Y;LQ1/d;)I
    .locals 2

    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/protobuf/O0;->r(Lcom/google/protobuf/J0;[BIILQ1/d;)I

    move-result p3

    iget-object v0, p6, LQ1/d;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    invoke-static {p2, p3, p6}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result v0

    iget v1, p6, LQ1/d;->a:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/protobuf/O0;->r(Lcom/google/protobuf/J0;[BIILQ1/d;)I

    move-result p3

    iget-object v0, p6, LQ1/d;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method public static t([BILcom/google/protobuf/Y;LQ1/d;)I
    .locals 5

    check-cast p2, Lcom/google/protobuf/g;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p1

    iget v0, p3, LQ1/d;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/O0;->P([BILQ1/d;)I

    move-result p1

    iget-wide v1, p3, LQ1/d;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Lcom/google/protobuf/g;->h(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    return p1

    :cond_2
    invoke-static {}, Lcom/google/protobuf/b0;->j()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static u([BILcom/google/protobuf/Y;LQ1/d;)I
    .locals 2

    check-cast p2, Lcom/google/protobuf/v;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p1

    iget p3, p3, LQ1/d;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p1, p0}, Lcom/google/protobuf/O0;->l(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/v;->h(D)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->j()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static v([BILcom/google/protobuf/Y;LQ1/d;)I
    .locals 1

    check-cast p2, Lcom/google/protobuf/O;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p1

    iget p3, p3, LQ1/d;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p1, p0}, Lcom/google/protobuf/O0;->j(I[B)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/O;->h(I)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->j()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static w([BILcom/google/protobuf/Y;LQ1/d;)I
    .locals 2

    check-cast p2, Lcom/google/protobuf/j0;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p1

    iget p3, p3, LQ1/d;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p1, p0}, Lcom/google/protobuf/O0;->l(I[B)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/j0;->h(J)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->j()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static x([BILcom/google/protobuf/Y;LQ1/d;)I
    .locals 1

    check-cast p2, Lcom/google/protobuf/D;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p1

    iget p3, p3, LQ1/d;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p1, p0}, Lcom/google/protobuf/O0;->j(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/D;->h(F)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->j()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static y([BILcom/google/protobuf/Y;LQ1/d;)I
    .locals 2

    check-cast p2, Lcom/google/protobuf/O;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p1

    iget v0, p3, LQ1/d;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p1

    iget v1, p3, LQ1/d;->a:I

    invoke-static {v1}, Lcom/google/protobuf/r;->b(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/protobuf/O;->h(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->j()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static z([BILcom/google/protobuf/Y;LQ1/d;)I
    .locals 3

    check-cast p2, Lcom/google/protobuf/j0;

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/O0;->N([BILQ1/d;)I

    move-result p1

    iget v0, p3, LQ1/d;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/O0;->P([BILQ1/d;)I

    move-result p1

    iget-wide v1, p3, LQ1/d;->b:J

    invoke-static {v1, v2}, Lcom/google/protobuf/r;->c(J)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/protobuf/j0;->h(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->j()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public abstract J(I[BI)Ljava/lang/String;
.end method

.method public abstract L(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
.end method

.method public abstract R(Ljava/lang/String;[BII)I
.end method

.method public abstract W(I[BII)I
.end method

.method public abstract Y(I[BI)V
.end method
