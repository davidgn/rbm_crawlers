.class public final LW2/W;
.super Lcom/google/protobuf/F;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# virtual methods
.method public final c(Ljava/util/HashSet;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/X;

    invoke-static {v0, p1}, LW2/X;->g(LW2/X;Ljava/util/HashSet;)V

    return-void
.end method

.method public final d(LW2/t0;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/X;

    invoke-static {v0, p1}, LW2/X;->f(LW2/X;LW2/t0;)V

    return-void
.end method
