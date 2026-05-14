.class public final Ll3/h1;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lj3/M;


# instance fields
.field public a:Ll3/c;


# virtual methods
.method public final available()I
    .locals 1

    iget-object v0, p0, Ll3/h1;->a:Ll3/c;

    invoke-virtual {v0}, Ll3/c;->r()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Ll3/h1;->a:Ll3/c;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final mark(I)V
    .locals 0

    iget-object p1, p0, Ll3/h1;->a:Ll3/c;

    invoke-virtual {p1}, Ll3/c;->c()V

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    iget-object v0, p0, Ll3/h1;->a:Ll3/c;

    invoke-virtual {v0}, Ll3/c;->e()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .locals 2

    .line 1
    iget-object v0, p0, Ll3/h1;->a:Ll3/c;

    invoke-virtual {v0}, Ll3/c;->r()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ll3/c;->q()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 2

    .line 3
    iget-object v0, p0, Ll3/h1;->a:Ll3/c;

    invoke-virtual {v0}, Ll3/c;->r()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_0
    invoke-virtual {v0}, Ll3/c;->r()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 5
    invoke-virtual {v0, p2, p1, p3}, Ll3/c;->g(I[BI)V

    return p3
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Ll3/h1;->a:Ll3/c;

    invoke-virtual {v0}, Ll3/c;->s()V

    return-void
.end method

.method public final skip(J)J
    .locals 3

    iget-object v0, p0, Ll3/h1;->a:Ll3/c;

    invoke-virtual {v0}, Ll3/c;->r()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Ll3/c;->t(I)V

    int-to-long p1, p1

    return-wide p1
.end method
