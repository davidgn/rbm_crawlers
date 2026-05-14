.class public final Lq3/a;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lj3/M;


# instance fields
.field public a:Lcom/google/protobuf/t0;

.field public final b:Lcom/google/protobuf/B0;

.field public c:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/t0;Lcom/google/protobuf/B0;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lq3/a;->a:Lcom/google/protobuf/t0;

    iput-object p2, p0, Lq3/a;->b:Lcom/google/protobuf/B0;

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    iget-object v0, p0, Lq3/a;->a:Lcom/google/protobuf/t0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/t0;->getSerializedSize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lq3/a;->c:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/a;->a:Lcom/google/protobuf/t0;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lq3/a;->a:Lcom/google/protobuf/t0;

    invoke-interface {v1}, Lcom/google/protobuf/t0;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lq3/a;->c:Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lq3/a;->a:Lcom/google/protobuf/t0;

    .line 4
    :cond_0
    iget-object v0, p0, Lq3/a;->c:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final read([BII)I
    .locals 4

    .line 6
    iget-object v0, p0, Lq3/a;->a:Lcom/google/protobuf/t0;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0}, Lcom/google/protobuf/t0;->getSerializedSize()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 8
    iput-object v2, p0, Lq3/a;->a:Lcom/google/protobuf/t0;

    .line 9
    iput-object v2, p0, Lq3/a;->c:Ljava/io/ByteArrayInputStream;

    return v1

    :cond_0
    if-lt p3, v0, :cond_2

    .line 10
    sget-object p3, Lcom/google/protobuf/u;->d:Ljava/util/logging/Logger;

    .line 11
    new-instance p3, Lcom/google/protobuf/s;

    invoke-direct {p3, p1, p2, v0}, Lcom/google/protobuf/s;-><init>([BII)V

    .line 12
    iget-object p1, p0, Lq3/a;->a:Lcom/google/protobuf/t0;

    invoke-interface {p1, p3}, Lcom/google/protobuf/t0;->writeTo(Lcom/google/protobuf/u;)V

    .line 13
    invoke-virtual {p3}, Lcom/google/protobuf/s;->R0()I

    move-result p1

    if-nez p1, :cond_1

    .line 14
    iput-object v2, p0, Lq3/a;->a:Lcom/google/protobuf/t0;

    .line 15
    iput-object v2, p0, Lq3/a;->c:Ljava/io/ByteArrayInputStream;

    return v0

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Did not write as much data as expected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lq3/a;->a:Lcom/google/protobuf/t0;

    invoke-interface {v3}, Lcom/google/protobuf/t0;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lq3/a;->c:Ljava/io/ByteArrayInputStream;

    .line 18
    iput-object v2, p0, Lq3/a;->a:Lcom/google/protobuf/t0;

    .line 19
    :cond_3
    iget-object v0, p0, Lq3/a;->c:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p1

    return p1

    :cond_4
    return v1
.end method
