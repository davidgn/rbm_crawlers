.class public final Ll3/y;
.super Ll3/c;
.source "SourceFile"


# static fields
.field public static final e:Ll3/P1;

.field public static final f:Ll3/P1;

.field public static final l:Ll3/P1;

.field public static final m:Ll3/P1;

.field public static final n:Ll3/P1;


# instance fields
.field public final a:Ljava/util/ArrayDeque;

.field public b:Ljava/util/ArrayDeque;

.field public c:I

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll3/P1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ll3/P1;-><init>(I)V

    sput-object v0, Ll3/y;->e:Ll3/P1;

    new-instance v0, Ll3/P1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ll3/P1;-><init>(I)V

    sput-object v0, Ll3/y;->f:Ll3/P1;

    new-instance v0, Ll3/P1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ll3/P1;-><init>(I)V

    sput-object v0, Ll3/y;->l:Ll3/P1;

    new-instance v0, Ll3/P1;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ll3/P1;-><init>(I)V

    sput-object v0, Ll3/y;->m:Ll3/P1;

    new-instance v0, Ll3/P1;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ll3/P1;-><init>(I)V

    sput-object v0, Ll3/y;->n:Ll3/P1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ll3/y;->a:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Ll3/y;->a:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    iget-object v0, p0, Ll3/y;->b:Ljava/util/ArrayDeque;

    iget-object v1, p0, Ll3/y;->a:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Ll3/y;->b:Ljava/util/ArrayDeque;

    :cond_0
    :goto_0
    iget-object v0, p0, Ll3/y;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ll3/y;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/c;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ll3/y;->d:Z

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ll3/c;->c()V

    :cond_2
    return-void
.end method

.method public final close()V
    .locals 2

    :goto_0
    iget-object v0, p0, Ll3/y;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/c;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ll3/y;->b:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Ll3/y;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ll3/y;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/c;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Ll3/y;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/c;

    invoke-virtual {v1}, Ll3/c;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final f(I)Ll3/c;
    .locals 7

    if-gtz p1, :cond_0

    sget-object p1, Ll3/j1;->a:Ll3/i1;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Ll3/c;->b(I)V

    iget v0, p0, Ll3/y;->c:I

    sub-int/2addr v0, p1

    iput v0, p0, Ll3/y;->c:I

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget-object v2, p0, Ll3/y;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll3/c;

    invoke-virtual {v3}, Ll3/c;->r()I

    move-result v4

    if-le v4, p1, :cond_1

    invoke-virtual {v3, p1}, Ll3/c;->f(I)Ll3/c;

    move-result-object p1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    iget-boolean v5, p0, Ll3/y;->d:Z

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Ll3/c;->f(I)Ll3/c;

    move-result-object v3

    invoke-virtual {p0}, Ll3/y;->v()V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll3/c;

    :goto_1
    sub-int/2addr p1, v4

    move-object v6, v3

    move v3, p1

    move-object p1, v6

    :goto_2
    if-nez v0, :cond_3

    move-object v0, p1

    goto :goto_4

    :cond_3
    if-nez v1, :cond_5

    new-instance v1, Ll3/y;

    const/4 v4, 0x2

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    add-int/2addr v2, v4

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_3
    invoke-direct {v1, v4}, Ll3/y;-><init>(I)V

    invoke-virtual {v1, v0}, Ll3/y;->u(Ll3/c;)V

    move-object v0, v1

    :cond_5
    invoke-virtual {v1, p1}, Ll3/y;->u(Ll3/c;)V

    :goto_4
    if-gtz v3, :cond_6

    return-object v0

    :cond_6
    move p1, v3

    goto :goto_0
.end method

.method public final g(I[BI)V
    .locals 1

    sget-object v0, Ll3/y;->l:Ll3/P1;

    invoke-virtual {p0, v0, p3, p2, p1}, Ll3/y;->x(Ll3/P1;ILjava/lang/Object;I)I

    return-void
.end method

.method public final m(Ljava/io/OutputStream;I)V
    .locals 2

    sget-object v0, Ll3/y;->n:Ll3/P1;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p1, v1}, Ll3/y;->w(Ll3/x;ILjava/lang/Object;I)I

    return-void
.end method

.method public final n(Ljava/nio/ByteBuffer;)V
    .locals 3

    sget-object v0, Ll3/y;->m:Ll3/P1;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Ll3/y;->x(Ll3/P1;ILjava/lang/Object;I)I

    return-void
.end method

.method public final q()I
    .locals 4

    sget-object v0, Ll3/y;->e:Ll3/P1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Ll3/y;->x(Ll3/P1;ILjava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Ll3/y;->c:I

    return v0
.end method

.method public final s()V
    .locals 4

    iget-boolean v0, p0, Ll3/y;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ll3/y;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ll3/c;->r()I

    move-result v2

    invoke-virtual {v1}, Ll3/c;->s()V

    iget v3, p0, Ll3/y;->c:I

    invoke-virtual {v1}, Ll3/c;->r()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    iput v1, p0, Ll3/y;->c:I

    :cond_0
    :goto_0
    iget-object v1, p0, Ll3/y;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/c;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ll3/c;->s()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iget v2, p0, Ll3/y;->c:I

    invoke-virtual {v1}, Ll3/c;->r()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Ll3/y;->c:I

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/nio/InvalidMarkException;

    invoke-direct {v0}, Ljava/nio/InvalidMarkException;-><init>()V

    throw v0
.end method

.method public final t(I)V
    .locals 3

    sget-object v0, Ll3/y;->f:Ll3/P1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Ll3/y;->x(Ll3/P1;ILjava/lang/Object;I)I

    return-void
.end method

.method public final u(Ll3/c;)V
    .locals 5

    iget-boolean v0, p0, Ll3/y;->d:Z

    iget-object v1, p0, Ll3/y;->a:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    instance-of v3, p1, Ll3/y;

    if-nez v3, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget v2, p0, Ll3/y;->c:I

    invoke-virtual {p1}, Ll3/c;->r()I

    move-result p1

    add-int/2addr p1, v2

    iput p1, p0, Ll3/y;->c:I

    goto :goto_2

    :cond_1
    check-cast p1, Ll3/y;

    :goto_1
    iget-object v3, p1, Ll3/y;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Ll3/y;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll3/c;

    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget v3, p0, Ll3/y;->c:I

    iget v4, p1, Ll3/y;->c:I

    add-int/2addr v3, v4

    iput v3, p0, Ll3/y;->c:I

    iput v2, p1, Ll3/y;->c:I

    invoke-virtual {p1}, Ll3/y;->close()V

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll3/c;

    invoke-virtual {p1}, Ll3/c;->c()V

    :cond_3
    return-void
.end method

.method public final v()V
    .locals 3

    iget-boolean v0, p0, Ll3/y;->d:Z

    iget-object v1, p0, Ll3/y;->a:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll3/y;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll3/c;

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ll3/c;->c()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/c;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final w(Ll3/x;ILjava/lang/Object;I)I
    .locals 3

    invoke-virtual {p0, p2}, Ll3/c;->b(I)V

    iget-object v0, p0, Ll3/y;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/c;

    invoke-virtual {v1}, Ll3/c;->r()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ll3/y;->v()V

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/c;

    invoke-virtual {v1}, Ll3/c;->r()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {p1, v1, v2, p3, p4}, Ll3/x;->c(Ll3/c;ILjava/lang/Object;I)I

    move-result p4

    sub-int/2addr p2, v2

    iget v1, p0, Ll3/y;->c:I

    sub-int/2addr v1, v2

    iput v1, p0, Ll3/y;->c:I

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/c;

    invoke-virtual {v1}, Ll3/c;->r()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ll3/y;->v()V

    goto :goto_0

    :cond_1
    if-gtz p2, :cond_2

    return p4

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Failed executing read operation"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final x(Ll3/P1;ILjava/lang/Object;I)I
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ll3/y;->w(Ll3/x;ILjava/lang/Object;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
