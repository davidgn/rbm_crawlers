.class public final LW2/d;
.super Lcom/google/protobuf/F;
.source "SourceFile"

# interfaces
.implements LW2/f;


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/e;

    invoke-virtual {v0}, LW2/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/e;

    invoke-static {v0, p1}, LW2/e;->g(LW2/e;Ljava/util/List;)V

    return-void
.end method

.method public final d(LW2/H0;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/e;

    invoke-static {v0, p1}, LW2/e;->f(LW2/e;LW2/H0;)V

    return-void
.end method

.method public final e(I)LW2/H0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/e;

    invoke-virtual {v0, p1}, LW2/e;->j(I)LW2/H0;

    move-result-object p1

    return-object p1
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/e;

    invoke-virtual {v0}, LW2/e;->k()I

    move-result v0

    return v0
.end method

.method public final g(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/e;

    invoke-static {v0, p1}, LW2/e;->h(LW2/e;I)V

    return-void
.end method
