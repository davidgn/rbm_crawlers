.class public final LW2/C;
.super Lcom/google/protobuf/F;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# virtual methods
.method public final c(Ljava/util/Map;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/E;

    invoke-static {v0}, LW2/E;->f(LW2/E;)Lcom/google/protobuf/o0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final d(LW2/z0;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/E;

    invoke-static {v0, p1}, LW2/E;->h(LW2/E;LW2/z0;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/E;

    invoke-static {v0, p1}, LW2/E;->g(LW2/E;Ljava/lang/String;)V

    return-void
.end method

.method public final f(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/E;

    invoke-static {v0, p1}, LW2/E;->i(LW2/E;I)V

    return-void
.end method
