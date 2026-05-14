.class public final LL3/m;
.super LL3/a;
.source "SourceFile"


# virtual methods
.method public final c(Lz3/j;)V
    .locals 2

    new-instance v0, LL3/l;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LL3/l;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p0, LL3/a;->a:Lz3/k;

    check-cast p1, Lz3/h;

    invoke-virtual {p1, v0}, Lz3/h;->b(Lz3/j;)V

    return-void
.end method
