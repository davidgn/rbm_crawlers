.class public final Ly1/c;
.super Lr/b;
.source "SourceFile"


# instance fields
.field public n:I


# virtual methods
.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ly1/c;->n:I

    invoke-super {p0}, Lr/k;->clear()V

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Ly1/c;->n:I

    if-nez v0, :cond_0

    invoke-super {p0}, Lr/k;->hashCode()I

    move-result v0

    iput v0, p0, Ly1/c;->n:I

    :cond_0
    iget v0, p0, Ly1/c;->n:I

    return v0
.end method

.method public final i(Lr/k;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ly1/c;->n:I

    invoke-super {p0, p1}, Lr/k;->i(Lr/k;)V

    return-void
.end method

.method public final j(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ly1/c;->n:I

    invoke-super {p0, p1}, Lr/k;->j(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final k(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ly1/c;->n:I

    invoke-super {p0, p1, p2}, Lr/k;->k(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ly1/c;->n:I

    invoke-super {p0, p1, p2}, Lr/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
