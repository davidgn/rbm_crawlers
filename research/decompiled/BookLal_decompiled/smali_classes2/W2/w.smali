.class public final LW2/w;
.super Lcom/google/protobuf/F;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# virtual methods
.method public final c(LW2/d;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/y;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, LW2/e;

    invoke-static {v0, p1}, LW2/y;->f(LW2/y;LW2/e;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/y;

    invoke-static {v0, p1}, LW2/y;->g(LW2/y;Ljava/lang/String;)V

    return-void
.end method

.method public final e(LW2/H0;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/y;

    invoke-static {v0, p1}, LW2/y;->j(LW2/y;LW2/H0;)V

    return-void
.end method

.method public final f(LW2/d;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/y;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, LW2/e;

    invoke-static {v0, p1}, LW2/y;->h(LW2/y;LW2/e;)V

    return-void
.end method

.method public final g()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/y;

    invoke-static {v0}, LW2/y;->i(LW2/y;)V

    return-void
.end method
