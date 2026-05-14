.class public abstract Ll3/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/z;


# virtual methods
.method public final a(Ll3/S0;)Ljava/lang/Runnable;
    .locals 1

    invoke-virtual {p0}, Ll3/W;->f()Ll3/z;

    move-result-object v0

    invoke-interface {v0, p1}, Ll3/T0;->a(Ll3/S0;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public b(Lj3/r0;)V
    .locals 1

    invoke-virtual {p0}, Ll3/W;->f()Ll3/z;

    move-result-object v0

    invoke-interface {v0, p1}, Ll3/T0;->b(Lj3/r0;)V

    return-void
.end method

.method public c(Lj3/r0;)V
    .locals 1

    invoke-virtual {p0}, Ll3/W;->f()Ll3/z;

    move-result-object v0

    invoke-interface {v0, p1}, Ll3/T0;->c(Lj3/r0;)V

    return-void
.end method

.method public final e()Lj3/J;
    .locals 1

    invoke-virtual {p0}, Ll3/W;->f()Ll3/z;

    move-result-object v0

    invoke-interface {v0}, Lj3/I;->e()Lj3/J;

    move-result-object v0

    return-object v0
.end method

.method public abstract f()Ll3/z;
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Ll3/W;->f()Ll3/z;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
