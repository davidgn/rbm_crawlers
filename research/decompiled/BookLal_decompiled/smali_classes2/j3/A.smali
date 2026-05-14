.class public abstract Lj3/A;
.super Lj3/k;
.source "SourceFile"


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Lj3/A;->delegate()Lj3/k;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lj3/A;->delegate()Lj3/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lj3/k;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract delegate()Lj3/k;
.end method

.method public getAttributes()Lj3/b;
    .locals 1

    invoke-virtual {p0}, Lj3/A;->delegate()Lj3/k;

    move-result-object v0

    invoke-virtual {v0}, Lj3/k;->getAttributes()Lj3/b;

    move-result-object v0

    return-object v0
.end method

.method public halfClose()V
    .locals 1

    invoke-virtual {p0}, Lj3/A;->delegate()Lj3/k;

    move-result-object v0

    invoke-virtual {v0}, Lj3/k;->halfClose()V

    return-void
.end method

.method public isReady()Z
    .locals 1

    invoke-virtual {p0}, Lj3/A;->delegate()Lj3/k;

    move-result-object v0

    invoke-virtual {v0}, Lj3/k;->isReady()Z

    move-result v0

    return v0
.end method

.method public request(I)V
    .locals 1

    invoke-virtual {p0}, Lj3/A;->delegate()Lj3/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj3/k;->request(I)V

    return-void
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lj3/A;->delegate()Lj3/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj3/k;->sendMessage(Ljava/lang/Object;)V

    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 1

    invoke-virtual {p0}, Lj3/A;->delegate()Lj3/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj3/k;->setMessageCompression(Z)V

    return-void
.end method

.method public start(Lj3/j;Lj3/f0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj3/j;",
            "Lj3/f0;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lj3/A;->delegate()Lj3/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lj3/k;->start(Lj3/j;Lj3/f0;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lj3/A;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
