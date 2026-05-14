.class public Lt4/A;
.super Lt4/a;
.source "SourceFile"

# interfaces
.implements Lt4/z;


# virtual methods
.method public final e()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lt4/g0;->A()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lt4/T;

    if-nez v1, :cond_1

    instance-of v1, v0, Lt4/n;

    if-nez v1, :cond_0

    invoke-static {v0}, Lt4/w;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Lt4/n;

    iget-object v0, v0, Lt4/n;->a:Ljava/lang/Throwable;

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This job has not completed yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
