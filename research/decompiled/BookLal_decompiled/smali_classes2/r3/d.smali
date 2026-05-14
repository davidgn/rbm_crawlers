.class public final Lr3/d;
.super Lj3/j;
.source "SourceFile"


# instance fields
.field public final a:Lr3/a;

.field public b:Lcom/google/protobuf/t0;

.field public c:Z


# direct methods
.method public constructor <init>(Lr3/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr3/d;->c:Z

    iput-object p1, p0, Lr3/d;->a:Lr3/a;

    return-void
.end method


# virtual methods
.method public final onClose(Lj3/r0;Lj3/f0;)V
    .locals 3

    invoke-virtual {p1}, Lj3/r0;->f()Z

    move-result v0

    iget-object v1, p0, Lr3/d;->a:Lr3/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Lr3/d;->c:Z

    if-nez p1, :cond_0

    sget-object p1, Lj3/r0;->l:Lj3/r0;

    const-string v0, "No value received for unary call"

    invoke-virtual {p1, v0}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    new-instance v0, Lj3/t0;

    invoke-direct {v0, p1, p2}, Lj3/t0;-><init>(Lj3/r0;Lj3/f0;)V

    new-instance p1, LN2/c;

    invoke-direct {p1, v0}, LN2/c;-><init>(Ljava/lang/Throwable;)V

    sget-object p2, LN2/m;->p:LS4/b;

    invoke-virtual {p2, v1, v2, p1}, LS4/b;->e(LN2/m;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v1}, LN2/m;->E(LN2/m;)V

    :cond_0
    iget-object p1, p0, Lr3/d;->b:Lcom/google/protobuf/t0;

    if-nez p1, :cond_1

    sget-object p1, LN2/m;->q:Ljava/lang/Object;

    :cond_1
    sget-object p2, LN2/m;->p:LS4/b;

    invoke-virtual {p2, v1, v2, p1}, LS4/b;->e(LN2/m;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v1}, LN2/m;->E(LN2/m;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lj3/t0;

    invoke-direct {v0, p1, p2}, Lj3/t0;-><init>(Lj3/r0;Lj3/f0;)V

    new-instance p1, LN2/c;

    invoke-direct {p1, v0}, LN2/c;-><init>(Ljava/lang/Throwable;)V

    sget-object p2, LN2/m;->p:LS4/b;

    invoke-virtual {p2, v1, v2, p1}, LS4/b;->e(LN2/m;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v1}, LN2/m;->E(LN2/m;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onHeaders(Lj3/f0;)V
    .locals 0

    return-void
.end method

.method public final onMessage(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lr3/d;->c:Z

    if-nez v0, :cond_0

    check-cast p1, Lcom/google/protobuf/t0;

    iput-object p1, p0, Lr3/d;->b:Lcom/google/protobuf/t0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr3/d;->c:Z

    return-void

    :cond_0
    sget-object p1, Lj3/r0;->l:Lj3/r0;

    const-string v0, "More than one value received for unary call"

    invoke-virtual {p1, v0}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    invoke-virtual {p1}, Lj3/r0;->a()Lj3/t0;

    move-result-object p1

    throw p1
.end method
