.class public final LZ2/a;
.super Lcom/google/protobuf/F;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LZ2/b;

    invoke-static {v0, p1}, LZ2/b;->f(LZ2/b;Ljava/lang/String;)V

    return-void
.end method

.method public final d(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LZ2/b;

    invoke-static {v0, p1, p2}, LZ2/b;->g(LZ2/b;J)V

    return-void
.end method
