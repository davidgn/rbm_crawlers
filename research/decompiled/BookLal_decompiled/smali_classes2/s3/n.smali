.class public final Ls3/n;
.super Ls3/q;
.source "SourceFile"


# instance fields
.field public final a:Lj3/r0;


# direct methods
.method public constructor <init>(Lj3/r0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "status"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ls3/n;->a:Lj3/r0;

    return-void
.end method


# virtual methods
.method public final c(Ll3/f1;)Lj3/N;
    .locals 1

    iget-object p1, p0, Ls3/n;->a:Lj3/r0;

    invoke-virtual {p1}, Lj3/r0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lj3/N;->e:Lj3/N;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lj3/N;->a(Lj3/r0;)Lj3/N;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final h(Ls3/q;)Z
    .locals 2

    instance-of v0, p1, Ls3/n;

    if-eqz v0, :cond_1

    check-cast p1, Ls3/n;

    iget-object v0, p1, Ls3/n;->a:Lj3/r0;

    iget-object v1, p0, Ls3/n;->a:Lj3/r0;

    invoke-static {v1, v0}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lj3/r0;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Ls3/n;->a:Lj3/r0;

    invoke-virtual {p1}, Lj3/r0;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, LE4/d;

    const-class v1, Ls3/n;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LE4/d;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    iget-object v2, p0, Ls3/n;->a:Lj3/r0;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
