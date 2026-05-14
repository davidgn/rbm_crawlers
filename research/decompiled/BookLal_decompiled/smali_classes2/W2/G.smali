.class public final LW2/G;
.super Lcom/google/protobuf/F;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# virtual methods
.method public final c(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/I;

    invoke-virtual {v0}, LW2/I;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/util/Map;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/I;

    invoke-static {v0}, LW2/I;->f(LW2/I;)Lcom/google/protobuf/o0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final e(LW2/H0;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/I;

    invoke-static {v0}, LW2/I;->f(LW2/I;)Lcom/google/protobuf/o0;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/google/protobuf/o0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/I;

    invoke-static {v0}, LW2/I;->f(LW2/I;)Lcom/google/protobuf/o0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
