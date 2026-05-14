.class public final LZ2/c;
.super Lcom/google/protobuf/F;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# virtual methods
.method public final c(LZ2/b;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, LZ2/d;

    invoke-static {v0, p1}, LZ2/d;->f(LZ2/d;LZ2/b;)V

    return-void
.end method
