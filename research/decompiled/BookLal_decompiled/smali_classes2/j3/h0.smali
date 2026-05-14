.class public final Lj3/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lj3/g0;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lq3/b;

.field public final e:Lq3/b;

.field public final f:Z


# direct methods
.method public constructor <init>(Lj3/g0;Ljava/lang/String;Lq3/b;Lq3/b;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    const-string v0, "type"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lj3/h0;->a:Lj3/g0;

    const-string p1, "fullMethodName"

    invoke-static {p2, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lj3/h0;->b:Ljava/lang/String;

    const/16 p1, 0x2f

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lj3/h0;->c:Ljava/lang/String;

    const-string p1, "requestMarshaller"

    invoke-static {p3, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lj3/h0;->d:Lq3/b;

    const-string p1, "responseMarshaller"

    invoke-static {p4, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lj3/h0;->e:Lq3/b;

    iput-boolean p5, p0, Lj3/h0;->f:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fullServiceName"

    invoke-static {p0, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "methodName"

    invoke-static {p1, p0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()LC4/g;
    .locals 2

    new-instance v0, LC4/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, LC4/g;->b:Ljava/lang/Object;

    iput-object v1, v0, LC4/g;->c:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/io/InputStream;)Lcom/google/protobuf/t0;
    .locals 7

    iget-object v0, p0, Lj3/h0;->e:Lq3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p1, Lq3/a;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lq3/a;

    iget-object v1, v1, Lq3/a;->b:Lcom/google/protobuf/B0;

    iget-object v2, v0, Lq3/b;->a:Lcom/google/protobuf/B0;

    if-ne v1, v2, :cond_1

    :try_start_0
    move-object v1, p1

    check-cast v1, Lq3/a;

    iget-object v1, v1, Lq3/a;->a:Lcom/google/protobuf/t0;

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "message not available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :try_start_1
    instance-of v1, p1, Lj3/M;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_7

    const/high16 v3, 0x400000

    if-gt v1, v3, :cond_7

    sget-object v3, Lq3/b;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_2

    array-length v5, v4

    if-ge v5, v1, :cond_3

    goto :goto_0

    :catch_1
    move-exception p1

    goto/16 :goto_6

    :cond_2
    :goto_0
    new-array v4, v1, [B

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    move v3, v1

    :goto_1
    if-lez v3, :cond_5

    sub-int v5, v1, v3

    invoke-virtual {p1, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    sub-int/2addr v3, v5

    goto :goto_1

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    invoke-static {v4, v2, v1, v2}, Lcom/google/protobuf/r;->f([BIIZ)Lcom/google/protobuf/n;

    move-result-object v1

    goto :goto_3

    :cond_6
    sub-int p1, v1, v3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size inaccurate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-nez v1, :cond_8

    iget-object v1, v0, Lq3/b;->b:Lcom/google/protobuf/K;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_9

    invoke-static {p1}, Lcom/google/protobuf/r;->g(Ljava/io/InputStream;)Lcom/google/protobuf/r;

    move-result-object v1

    :cond_9
    :try_start_2
    iget-object p1, v0, Lq3/b;->a:Lcom/google/protobuf/B0;

    sget-object v0, Lq3/c;->a:Lcom/google/protobuf/y;

    check-cast p1, Lcom/google/protobuf/G;

    iget-object p1, p1, Lcom/google/protobuf/G;->a:Lcom/google/protobuf/K;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/K;->parsePartialFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/r;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/google/protobuf/u0;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/c;->newUninitializedMessageException()Lcom/google/protobuf/U0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/protobuf/b0;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_4
    invoke-virtual {v1, v2}, Lcom/google/protobuf/r;->a(I)V
    :try_end_2
    .catch Lcom/google/protobuf/b0; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, p1

    :goto_5
    return-object v1

    :catch_2
    move-exception p1

    sget-object v0, Lj3/r0;->l:Lj3/r0;

    const-string v1, "Invalid protobuf byte sequence"

    invoke-virtual {v0, v1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object p1

    invoke-virtual {p1}, Lj3/r0;->a()Lj3/t0;

    move-result-object p1

    throw p1

    :goto_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final d(Ljava/lang/Object;)Lq3/a;
    .locals 2

    iget-object v0, p0, Lj3/h0;->d:Lq3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/protobuf/t0;

    new-instance v1, Lq3/a;

    iget-object v0, v0, Lq3/b;->a:Lcom/google/protobuf/B0;

    invoke-direct {v1, p1, v0}, Lq3/a;-><init>(Lcom/google/protobuf/t0;Lcom/google/protobuf/B0;)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    const-string v1, "fullMethodName"

    iget-object v2, p0, Lj3/h0;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    iget-object v2, p0, Lj3/h0;->a:Lj3/g0;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "idempotent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LE4/d;->e(Ljava/lang/String;Z)V

    const-string v1, "safe"

    invoke-virtual {v0, v1, v2}, LE4/d;->e(Ljava/lang/String;Z)V

    const-string v1, "sampledToLocalTracing"

    iget-boolean v2, p0, Lj3/h0;->f:Z

    invoke-virtual {v0, v1, v2}, LE4/d;->e(Ljava/lang/String;Z)V

    const-string v1, "requestMarshaller"

    iget-object v2, p0, Lj3/h0;->d:Lq3/b;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "responseMarshaller"

    iget-object v2, p0, Lj3/h0;->e:Lq3/b;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "schemaDescriptor"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, LE4/d;->b:Z

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
