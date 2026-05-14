.class public final Ll3/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/s;


# instance fields
.field public final synthetic a:Ll3/s;

.field public final synthetic b:Ll3/l0;


# direct methods
.method public constructor <init>(Ll3/l0;Ll3/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/k0;->b:Ll3/l0;

    iput-object p2, p0, Ll3/k0;->a:Ll3/s;

    return-void
.end method


# virtual methods
.method public final a(Lj3/o;)V
    .locals 1

    iget-object v0, p0, Ll3/k0;->a:Ll3/s;

    invoke-interface {v0, p1}, Ll3/O1;->a(Lj3/o;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Ll3/k0;->a:Ll3/s;

    invoke-interface {v0, p1}, Ll3/O1;->b(Z)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Ll3/k0;->a:Ll3/s;

    invoke-interface {v0, p1}, Ll3/s;->c(I)V

    return-void
.end method

.method public final d(Lj3/r0;)V
    .locals 1

    iget-object v0, p0, Ll3/k0;->a:Ll3/s;

    invoke-interface {v0, p1}, Ll3/s;->d(Lj3/r0;)V

    return-void
.end method

.method public final e(Lj3/v;)V
    .locals 1

    iget-object v0, p0, Ll3/k0;->a:Ll3/s;

    invoke-interface {v0, p1}, Ll3/s;->e(Lj3/v;)V

    return-void
.end method

.method public final f(Lq3/a;)V
    .locals 1

    iget-object v0, p0, Ll3/k0;->a:Ll3/s;

    invoke-interface {v0, p1}, Ll3/O1;->f(Lq3/a;)V

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Ll3/k0;->a:Ll3/s;

    invoke-interface {v0}, Ll3/O1;->flush()V

    return-void
.end method

.method public final g(Ll3/u;)V
    .locals 2

    iget-object v0, p0, Ll3/k0;->b:Ll3/l0;

    iget-object v0, v0, Ll3/l0;->b:LR0/i;

    iget-object v1, v0, LR0/i;->b:Ljava/lang/Object;

    check-cast v1, Ll3/w0;

    invoke-interface {v1}, Ll3/w0;->a()V

    iget-object v0, v0, LR0/i;->a:Ljava/lang/Object;

    check-cast v0, Ll3/P1;

    invoke-virtual {v0}, Ll3/P1;->f()J

    new-instance v0, Ll3/R1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Ll3/R1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Ll3/k0;->a:Ll3/s;

    invoke-interface {p1, v0}, Ll3/s;->g(Ll3/u;)V

    return-void
.end method

.method public final h(Lj3/x;)V
    .locals 1

    iget-object v0, p0, Ll3/k0;->a:Ll3/s;

    invoke-interface {v0, p1}, Ll3/s;->h(Lj3/x;)V

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Ll3/k0;->a:Ll3/s;

    invoke-interface {v0}, Ll3/O1;->i()Z

    move-result v0

    return v0
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Ll3/k0;->a:Ll3/s;

    invoke-interface {v0}, Ll3/s;->j()V

    return-void
.end method

.method public final k()Lj3/b;
    .locals 1

    iget-object v0, p0, Ll3/k0;->a:Ll3/s;

    invoke-interface {v0}, Ll3/s;->k()Lj3/b;

    move-result-object v0

    return-object v0
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Ll3/k0;->a:Ll3/s;

    invoke-interface {v0, p1}, Ll3/O1;->l(I)V

    return-void
.end method

.method public final m(I)V
    .locals 1

    iget-object v0, p0, Ll3/k0;->a:Ll3/s;

    invoke-interface {v0, p1}, Ll3/s;->m(I)V

    return-void
.end method

.method public final n(LC4/v;)V
    .locals 1

    iget-object v0, p0, Ll3/k0;->a:Ll3/s;

    invoke-interface {v0, p1}, Ll3/s;->n(LC4/v;)V

    return-void
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Ll3/k0;->a:Ll3/s;

    invoke-interface {v0}, Ll3/O1;->o()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    const-string v1, "delegate"

    iget-object v2, p0, Ll3/k0;->a:Ll3/s;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
