.class public final Ll3/X0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/Y;


# instance fields
.field public final a:Ll3/b;

.field public b:I

.field public c:Lm3/t;

.field public d:Lj3/o;

.field public e:Z

.field public final f:LX/n;

.field public final g:Ljava/nio/ByteBuffer;

.field public final h:Ld3/a;

.field public final i:Ll3/N1;

.field public j:Z

.field public k:I

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>(Ll3/b;Ld3/a;Ll3/N1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ll3/X0;->b:I

    sget-object v1, Lj3/n;->b:Lj3/n;

    iput-object v1, p0, Ll3/X0;->d:Lj3/o;

    const/4 v1, 0x1

    iput-boolean v1, p0, Ll3/X0;->e:Z

    new-instance v1, LX/n;

    invoke-direct {v1, p0}, LX/n;-><init>(Ll3/X0;)V

    iput-object v1, p0, Ll3/X0;->f:LX/n;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Ll3/X0;->g:Ljava/nio/ByteBuffer;

    iput v0, p0, Ll3/X0;->l:I

    iput-object p1, p0, Ll3/X0;->a:Ll3/b;

    iput-object p2, p0, Ll3/X0;->h:Ld3/a;

    iput-object p3, p0, Ll3/X0;->i:Ll3/N1;

    return-void
.end method

.method public static i(Lq3/a;Ljava/io/OutputStream;)I
    .locals 8

    iget-object v0, p0, Lq3/a;->a:Lcom/google/protobuf/t0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/t0;->getSerializedSize()I

    move-result v0

    iget-object v2, p0, Lq3/a;->a:Lcom/google/protobuf/t0;

    invoke-interface {v2, p1}, Lcom/google/protobuf/t0;->writeTo(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lq3/a;->a:Lcom/google/protobuf/t0;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lq3/a;->c:Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v3, Lq3/c;->a:Lcom/google/protobuf/y;

    const-string v3, "outputStream cannot be null!"

    invoke-static {p1, v3}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x2000

    new-array v3, v3, [B

    const-wide/16 v4, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    long-to-int v0, v4

    iput-object v1, p0, Lq3/a;->c:Ljava/io/ByteArrayInputStream;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_1
    return v0
.end method


# virtual methods
.method public final a(Lj3/o;)Ll3/Y;
    .locals 0

    iput-object p1, p0, Ll3/X0;->d:Lj3/o;

    return-object p0
.end method

.method public final b(Z)Ll3/Y;
    .locals 0

    iput-boolean p1, p0, Ll3/X0;->e:Z

    return-object p0
.end method

.method public final c(I)V
    .locals 2

    iget v0, p0, Ll3/X0;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "max size already set"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iput p1, p0, Ll3/X0;->b:I

    return-void
.end method

.method public final close()V
    .locals 2

    iget-boolean v0, p0, Ll3/X0;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll3/X0;->j:Z

    iget-object v1, p0, Ll3/X0;->c:Lm3/t;

    if-eqz v1, :cond_0

    iget v1, v1, Lm3/t;->c:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Ll3/X0;->c:Lm3/t;

    :cond_0
    invoke-virtual {p0, v0, v0}, Ll3/X0;->e(ZZ)V

    :cond_1
    return-void
.end method

.method public final d(Lq3/a;)V
    .locals 8

    const-string v0, "Failed to frame message"

    iget-boolean v1, p0, Ll3/X0;->j:Z

    if-nez v1, :cond_8

    iget v1, p0, Ll3/X0;->k:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ll3/X0;->k:I

    iget v1, p0, Ll3/X0;->l:I

    add-int/2addr v1, v2

    iput v1, p0, Ll3/X0;->l:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Ll3/X0;->m:J

    iget-object v1, p0, Ll3/X0;->i:Ll3/N1;

    iget-object v3, v1, Ll3/N1;->a:[Lj3/B;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Ll3/X0;->e:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Ll3/X0;->d:Lj3/o;

    sget-object v4, Lj3/n;->b:Lj3/n;

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lq3/a;->available()I

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Ll3/X0;->g(Lq3/a;)I

    move-result p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_7

    :catch_1
    move-exception p1

    goto :goto_8

    :cond_2
    invoke-virtual {p0, p1, v3}, Ll3/X0;->j(Lq3/a;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v0, -0x1

    if-eq v3, v0, :cond_4

    if-ne p1, v3, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "Message length inaccurate "

    const-string v1, " != "

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/ads/internal/util/client/a;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lj3/r0;->l:Lj3/r0;

    invoke-virtual {v0, p1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    invoke-virtual {p1}, Lj3/r0;->a()Lj3/t0;

    move-result-object p1

    throw p1

    :cond_4
    :goto_3
    iget-object p1, v1, Ll3/N1;->a:[Lj3/B;

    array-length v0, p1

    move v2, v5

    :goto_4
    if-ge v2, v0, :cond_5

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    iget-wide v2, p0, Ll3/X0;->m:J

    array-length v0, p1

    move v4, v5

    :goto_5
    if-ge v4, v0, :cond_6

    aget-object v6, p1, v4

    invoke-virtual {v6, v2, v3}, Lj3/B;->b(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    iget-object p1, v1, Ll3/N1;->a:[Lj3/B;

    array-length v0, p1

    :goto_6
    if-ge v5, v0, :cond_7

    aget-object v1, p1, v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    return-void

    :goto_7
    sget-object v1, Lj3/r0;->l:Lj3/r0;

    invoke-virtual {v1, v0}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object p1

    invoke-virtual {p1}, Lj3/r0;->a()Lj3/t0;

    move-result-object p1

    throw p1

    :goto_8
    sget-object v1, Lj3/r0;->l:Lj3/r0;

    invoke-virtual {v1, v0}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object p1

    invoke-virtual {p1}, Lj3/r0;->a()Lj3/t0;

    move-result-object p1

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Framer already closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(ZZ)V
    .locals 3

    iget-object v0, p0, Ll3/X0;->c:Lm3/t;

    const/4 v1, 0x0

    iput-object v1, p0, Ll3/X0;->c:Lm3/t;

    iget v1, p0, Ll3/X0;->k:I

    iget-object v2, p0, Ll3/X0;->a:Ll3/b;

    invoke-virtual {v2, v0, p1, p2, v1}, Ll3/b;->x(Lm3/t;ZZI)V

    const/4 p1, 0x0

    iput p1, p0, Ll3/X0;->k:I

    return-void
.end method

.method public final f(Ll3/W0;Z)V
    .locals 5

    iget-object p1, p1, Ll3/W0;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm3/t;

    iget v3, v3, Lm3/t;->c:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ll3/X0;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Ll3/X0;->h:Ld3/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x5

    invoke-static {p2}, Ld3/a;->o(I)Lm3/t;

    move-result-object p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p2, v3, v1, v0}, Lm3/t;->a([BII)V

    if-nez v2, :cond_1

    iput-object p2, p0, Ll3/X0;->c:Lm3/t;

    return-void

    :cond_1
    iget v0, p0, Ll3/X0;->k:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iget-object v4, p0, Ll3/X0;->a:Ll3/b;

    invoke-virtual {v4, p2, v1, v1, v0}, Ll3/b;->x(Lm3/t;ZZI)V

    iput v3, p0, Ll3/X0;->k:I

    move p2, v1

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ge p2, v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm3/t;

    invoke-virtual {v4, v0, v1, v1, v1}, Ll3/b;->x(Lm3/t;ZZI)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm3/t;

    iput-object p1, p0, Ll3/X0;->c:Lm3/t;

    int-to-long p1, v2

    iput-wide p1, p0, Ll3/X0;->m:J

    return-void
.end method

.method public final flush()V
    .locals 2

    iget-object v0, p0, Ll3/X0;->c:Lm3/t;

    if-eqz v0, :cond_0

    iget v0, v0, Lm3/t;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ll3/X0;->e(ZZ)V

    :cond_0
    return-void
.end method

.method public final g(Lq3/a;)I
    .locals 4

    new-instance v0, Ll3/W0;

    invoke-direct {v0, p0}, Ll3/W0;-><init>(Ll3/X0;)V

    iget-object v1, p0, Ll3/X0;->d:Lj3/o;

    invoke-interface {v1, v0}, Lj3/o;->h(Ll3/W0;)Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    invoke-static {p1, v1}, Ll3/X0;->i(Lq3/a;Ljava/io/OutputStream;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget v1, p0, Ll3/X0;->b:I

    if-ltz v1, :cond_1

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lj3/r0;->k:Lj3/r0;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message too large "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    invoke-virtual {p1}, Lj3/r0;->a()Lj3/t0;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ll3/X0;->f(Ll3/W0;Z)V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw p1
.end method

.method public final h(I[BI)V
    .locals 2

    :goto_0
    if-lez p3, :cond_2

    iget-object v0, p0, Ll3/X0;->c:Lm3/t;

    if-eqz v0, :cond_0

    iget v0, v0, Lm3/t;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Ll3/X0;->e(ZZ)V

    :cond_0
    iget-object v0, p0, Ll3/X0;->c:Lm3/t;

    if-nez v0, :cond_1

    iget-object v0, p0, Ll3/X0;->h:Ld3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Ld3/a;->o(I)Lm3/t;

    move-result-object v0

    iput-object v0, p0, Ll3/X0;->c:Lm3/t;

    :cond_1
    iget-object v0, p0, Ll3/X0;->c:Lm3/t;

    iget v0, v0, Lm3/t;->b:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Ll3/X0;->c:Lm3/t;

    invoke-virtual {v1, p2, p1, v0}, Lm3/t;->a([BII)V

    add-int/2addr p1, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final isClosed()Z
    .locals 1

    iget-boolean v0, p0, Ll3/X0;->j:Z

    return v0
.end method

.method public final j(Lq3/a;I)I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, " > "

    const-string v3, "message too large "

    if-eq p2, v0, :cond_3

    int-to-long v4, p2

    iput-wide v4, p0, Ll3/X0;->m:J

    iget v0, p0, Ll3/X0;->b:I

    if-ltz v0, :cond_1

    if-gt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lj3/r0;->k:Lj3/r0;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    invoke-virtual {p1}, Lj3/r0;->a()Lj3/t0;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Ll3/X0;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Ll3/X0;->c:Lm3/t;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, p2

    iget-object p2, p0, Ll3/X0;->h:Ld3/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ld3/a;->o(I)Lm3/t;

    move-result-object p2

    iput-object p2, p0, Ll3/X0;->c:Lm3/t;

    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0, v1, p2, v0}, Ll3/X0;->h(I[BI)V

    iget-object p2, p0, Ll3/X0;->f:LX/n;

    invoke-static {p1, p2}, Ll3/X0;->i(Lq3/a;Ljava/io/OutputStream;)I

    move-result p1

    return p1

    :cond_3
    new-instance p2, Ll3/W0;

    invoke-direct {p2, p0}, Ll3/W0;-><init>(Ll3/X0;)V

    invoke-static {p1, p2}, Ll3/X0;->i(Lq3/a;Ljava/io/OutputStream;)I

    move-result p1

    iget v0, p0, Ll3/X0;->b:I

    if-ltz v0, :cond_5

    if-gt p1, v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object p2, Lj3/r0;->k:Lj3/r0;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    invoke-virtual {p1}, Lj3/r0;->a()Lj3/t0;

    move-result-object p1

    throw p1

    :cond_5
    :goto_1
    invoke-virtual {p0, p2, v1}, Ll3/X0;->f(Ll3/W0;Z)V

    return p1
.end method
