.class public final LW2/o;
.super Lcom/google/protobuf/F;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# virtual methods
.method public final c(Ljava/util/Map;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/q;

    invoke-static {v0}, LW2/q;->g(LW2/q;)Lcom/google/protobuf/o0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/q;

    invoke-static {v0, p1}, LW2/q;->f(LW2/q;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Lcom/google/protobuf/T0;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/q;

    invoke-static {v0, p1}, LW2/q;->h(LW2/q;Lcom/google/protobuf/T0;)V

    return-void
.end method
