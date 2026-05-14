.class public final LW2/L;
.super Lcom/google/protobuf/F;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/M;

    invoke-static {v0, p1}, LW2/M;->f(LW2/M;Ljava/lang/String;)V

    return-void
.end method

.method public final d(LW2/X;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LW2/M;

    invoke-static {v0, p1}, LW2/M;->g(LW2/M;LW2/X;)V

    return-void
.end method
