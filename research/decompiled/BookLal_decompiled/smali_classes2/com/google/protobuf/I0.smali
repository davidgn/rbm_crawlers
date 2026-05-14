.class public final Lcom/google/protobuf/I0;
.super Lcom/google/protobuf/m;
.source "SourceFile"


# static fields
.field public static final n:[I


# instance fields
.field public final d:I

.field public final e:Lcom/google/protobuf/m;

.field public final f:Lcom/google/protobuf/m;

.field public final l:I

.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/protobuf/I0;->n:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>(Lcom/google/protobuf/m;Lcom/google/protobuf/m;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/m;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/I0;->e:Lcom/google/protobuf/m;

    iput-object p2, p0, Lcom/google/protobuf/I0;->f:Lcom/google/protobuf/m;

    invoke-virtual {p1}, Lcom/google/protobuf/m;->size()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/I0;->l:I

    invoke-virtual {p2}, Lcom/google/protobuf/m;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/I0;->d:I

    invoke-virtual {p1}, Lcom/google/protobuf/m;->p()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/protobuf/m;->p()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/I0;->m:I

    return-void
.end method

.method public static B(I)I
    .locals 1

    const/16 v0, 0x2f

    if-lt p0, v0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    sget-object v0, Lcom/google/protobuf/I0;->n:[I

    aget p0, v0, p0

    return p0
.end method


# virtual methods
.method public final A(Lcom/google/protobuf/u;)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/I0;->e:Lcom/google/protobuf/m;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/m;->A(Lcom/google/protobuf/u;)V

    iget-object v0, p0, Lcom/google/protobuf/I0;->f:Lcom/google/protobuf/m;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/m;->A(Lcom/google/protobuf/u;)V

    return-void
.end method

.method public final a()Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/m;->x()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 13

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/protobuf/m;

    invoke-virtual {p1}, Lcom/google/protobuf/m;->size()I

    move-result v1

    iget v3, p0, Lcom/google/protobuf/I0;->d:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    if-nez v3, :cond_3

    return v0

    :cond_3
    iget v1, p0, Lcom/google/protobuf/m;->a:I

    iget v4, p1, Lcom/google/protobuf/m;->a:I

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    if-eq v1, v4, :cond_4

    return v2

    :cond_4
    new-instance v1, Lcom/google/protobuf/H0;

    invoke-direct {v1, p0}, Lcom/google/protobuf/H0;-><init>(Lcom/google/protobuf/m;)V

    invoke-virtual {v1}, Lcom/google/protobuf/H0;->a()Lcom/google/protobuf/l;

    move-result-object v4

    new-instance v5, Lcom/google/protobuf/H0;

    invoke-direct {v5, p1}, Lcom/google/protobuf/H0;-><init>(Lcom/google/protobuf/m;)V

    invoke-virtual {v5}, Lcom/google/protobuf/H0;->a()Lcom/google/protobuf/l;

    move-result-object p1

    move v6, v2

    move v7, v6

    move v8, v7

    :goto_0
    invoke-virtual {v4}, Lcom/google/protobuf/m;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-virtual {p1}, Lcom/google/protobuf/m;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-nez v6, :cond_5

    invoke-virtual {v4, p1, v7, v11}, Lcom/google/protobuf/l;->B(Lcom/google/protobuf/l;II)Z

    move-result v12

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v4, v6, v11}, Lcom/google/protobuf/l;->B(Lcom/google/protobuf/l;II)Z

    move-result v12

    :goto_1
    if-nez v12, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    add-int/2addr v8, v11

    if-lt v8, v3, :cond_8

    if-ne v8, v3, :cond_7

    :goto_2
    return v0

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    if-ne v11, v9, :cond_9

    invoke-virtual {v1}, Lcom/google/protobuf/H0;->a()Lcom/google/protobuf/l;

    move-result-object v4

    move v6, v2

    goto :goto_3

    :cond_9
    add-int/2addr v6, v11

    :goto_3
    if-ne v11, v10, :cond_a

    invoke-virtual {v5}, Lcom/google/protobuf/H0;->a()Lcom/google/protobuf/l;

    move-result-object p1

    move v7, v2

    goto :goto_0

    :cond_a
    add-int/2addr v7, v11

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/protobuf/G0;

    invoke-direct {v0, p0}, Lcom/google/protobuf/G0;-><init>(Lcom/google/protobuf/I0;)V

    return-object v0
.end method

.method public final j(I)B
    .locals 1

    iget v0, p0, Lcom/google/protobuf/I0;->d:I

    invoke-static {p1, v0}, Lcom/google/protobuf/m;->k(II)V

    invoke-virtual {p0, p1}, Lcom/google/protobuf/I0;->q(I)B

    move-result p1

    return p1
.end method

.method public final o(I[BII)V
    .locals 3

    add-int v0, p1, p4

    iget-object v1, p0, Lcom/google/protobuf/I0;->e:Lcom/google/protobuf/m;

    iget v2, p0, Lcom/google/protobuf/I0;->l:I

    if-gt v0, v2, :cond_0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/protobuf/m;->o(I[BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/I0;->f:Lcom/google/protobuf/m;

    if-lt p1, v2, :cond_1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/protobuf/m;->o(I[BII)V

    goto :goto_0

    :cond_1
    sub-int/2addr v2, p1

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/protobuf/m;->o(I[BII)V

    add-int/2addr p3, v2

    sub-int/2addr p4, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/protobuf/m;->o(I[BII)V

    :goto_0
    return-void
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/I0;->m:I

    return v0
.end method

.method public final q(I)B
    .locals 2

    iget v0, p0, Lcom/google/protobuf/I0;->l:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/I0;->e:Lcom/google/protobuf/m;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/m;->q(I)B

    move-result p1

    return p1

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/I0;->f:Lcom/google/protobuf/m;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/google/protobuf/m;->q(I)B

    move-result p1

    return p1
.end method

.method public final r()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/I0;->m:I

    invoke-static {v0}, Lcom/google/protobuf/I0;->B(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/I0;->d:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final s()Z
    .locals 4

    iget v0, p0, Lcom/google/protobuf/I0;->l:I

    iget-object v1, p0, Lcom/google/protobuf/I0;->e:Lcom/google/protobuf/m;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0}, Lcom/google/protobuf/m;->v(III)I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/I0;->f:Lcom/google/protobuf/m;

    invoke-virtual {v1}, Lcom/google/protobuf/m;->size()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/protobuf/m;->v(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/I0;->d:I

    return v0
.end method

.method public final t()Lcom/google/protobuf/r;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayDeque;

    iget v2, p0, Lcom/google/protobuf/I0;->m:I

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/protobuf/I0;->e:Lcom/google/protobuf/m;

    :goto_0
    instance-of v3, v2, Lcom/google/protobuf/I0;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/protobuf/I0;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/google/protobuf/I0;->e:Lcom/google/protobuf/m;

    goto :goto_0

    :cond_0
    check-cast v2, Lcom/google/protobuf/l;

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v5, v4

    goto :goto_2

    :cond_1
    move v5, v3

    :goto_2
    if-eqz v5, :cond_6

    if-eqz v2, :cond_5

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/I0;

    iget-object v3, v3, Lcom/google/protobuf/I0;->f:Lcom/google/protobuf/m;

    :goto_3
    instance-of v4, v3, Lcom/google/protobuf/I0;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/google/protobuf/I0;

    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/google/protobuf/I0;->e:Lcom/google/protobuf/m;

    goto :goto_3

    :cond_4
    check-cast v3, Lcom/google/protobuf/l;

    invoke-virtual {v3}, Lcom/google/protobuf/m;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_4
    invoke-virtual {v2}, Lcom/google/protobuf/m;->a()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v3

    move v5, v2

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v7

    if-eqz v7, :cond_7

    or-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-eqz v6, :cond_8

    or-int/lit8 v2, v2, 0x2

    goto :goto_5

    :cond_8
    or-int/lit8 v2, v2, 0x4

    goto :goto_5

    :cond_9
    const/4 v1, 0x2

    if-ne v2, v1, :cond_a

    new-instance v1, Lcom/google/protobuf/o;

    invoke-direct {v1, v0, v5}, Lcom/google/protobuf/o;-><init>(Ljava/util/ArrayList;I)V

    goto :goto_7

    :cond_a
    new-instance v1, Lcom/google/protobuf/c0;

    invoke-direct {v1}, Ljava/io/InputStream;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, v1, Lcom/google/protobuf/c0;->a:Ljava/util/Iterator;

    iput v3, v1, Lcom/google/protobuf/c0;->c:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    iget v2, v1, Lcom/google/protobuf/c0;->c:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/google/protobuf/c0;->c:I

    goto :goto_6

    :cond_b
    const/4 v0, -0x1

    iput v0, v1, Lcom/google/protobuf/c0;->d:I

    invoke-virtual {v1}, Lcom/google/protobuf/c0;->b()Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/google/protobuf/Z;->c:Ljava/nio/ByteBuffer;

    iput-object v0, v1, Lcom/google/protobuf/c0;->b:Ljava/nio/ByteBuffer;

    iput v3, v1, Lcom/google/protobuf/c0;->d:I

    iput v3, v1, Lcom/google/protobuf/c0;->e:I

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/protobuf/c0;->n:J

    :cond_c
    invoke-static {v1}, Lcom/google/protobuf/r;->g(Ljava/io/InputStream;)Lcom/google/protobuf/r;

    move-result-object v1

    :goto_7
    return-object v1
.end method

.method public final u(III)I
    .locals 3

    add-int v0, p2, p3

    iget-object v1, p0, Lcom/google/protobuf/I0;->e:Lcom/google/protobuf/m;

    iget v2, p0, Lcom/google/protobuf/I0;->l:I

    if-gt v0, v2, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/protobuf/m;->u(III)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/I0;->f:Lcom/google/protobuf/m;

    if-lt p2, v2, :cond_1

    sub-int/2addr p2, v2

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/m;->u(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v2, p2

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/protobuf/m;->u(III)I

    move-result p1

    const/4 p2, 0x0

    sub-int/2addr p3, v2

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/m;->u(III)I

    move-result p1

    return p1
.end method

.method public final v(III)I
    .locals 3

    add-int v0, p2, p3

    iget-object v1, p0, Lcom/google/protobuf/I0;->e:Lcom/google/protobuf/m;

    iget v2, p0, Lcom/google/protobuf/I0;->l:I

    if-gt v0, v2, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/protobuf/m;->v(III)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/I0;->f:Lcom/google/protobuf/m;

    if-lt p2, v2, :cond_1

    sub-int/2addr p2, v2

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/m;->v(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v2, p2

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/protobuf/m;->v(III)I

    move-result p1

    const/4 p2, 0x0

    sub-int/2addr p3, v2

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/m;->v(III)I

    move-result p1

    return p1
.end method

.method public final w(II)Lcom/google/protobuf/m;
    .locals 4

    iget v0, p0, Lcom/google/protobuf/I0;->d:I

    invoke-static {p1, p2, v0}, Lcom/google/protobuf/m;->l(III)I

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/google/protobuf/m;->b:Lcom/google/protobuf/l;

    return-object p1

    :cond_0
    if-ne v1, v0, :cond_1

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/I0;->e:Lcom/google/protobuf/m;

    iget v1, p0, Lcom/google/protobuf/I0;->l:I

    if-gt p2, v1, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/m;->w(II)Lcom/google/protobuf/m;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/I0;->f:Lcom/google/protobuf/m;

    if-lt p1, v1, :cond_3

    sub-int/2addr p1, v1

    sub-int/2addr p2, v1

    invoke-virtual {v2, p1, p2}, Lcom/google/protobuf/m;->w(II)Lcom/google/protobuf/m;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/m;->size()I

    move-result v3

    invoke-virtual {v0, p1, v3}, Lcom/google/protobuf/m;->w(II)Lcom/google/protobuf/m;

    move-result-object p1

    const/4 v0, 0x0

    sub-int/2addr p2, v1

    invoke-virtual {v2, v0, p2}, Lcom/google/protobuf/m;->w(II)Lcom/google/protobuf/m;

    move-result-object p2

    new-instance v0, Lcom/google/protobuf/I0;

    invoke-direct {v0, p1, p2}, Lcom/google/protobuf/I0;-><init>(Lcom/google/protobuf/m;Lcom/google/protobuf/m;)V

    return-object v0
.end method

.method public final y(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/protobuf/m;->x()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
