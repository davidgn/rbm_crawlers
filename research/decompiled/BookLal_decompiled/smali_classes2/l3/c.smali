.class public abstract Ll3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public final b(I)V
    .locals 1

    invoke-virtual {p0}, Ll3/c;->r()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 1

    instance-of v0, p0, Ll3/i1;

    return v0
.end method

.method public abstract f(I)Ll3/c;
.end method

.method public abstract g(I[BI)V
.end method

.method public abstract m(Ljava/io/OutputStream;I)V
.end method

.method public abstract n(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract q()I
.end method

.method public abstract r()I
.end method

.method public s()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract t(I)V
.end method
