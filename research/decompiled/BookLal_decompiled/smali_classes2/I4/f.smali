.class public final LI4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ4/w;


# instance fields
.field public final a:LQ4/m;

.field public b:Z

.field public final synthetic c:LG4/o;


# direct methods
.method public constructor <init>(LG4/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI4/f;->c:LG4/o;

    new-instance v0, LQ4/m;

    iget-object p1, p1, LG4/o;->f:Ljava/lang/Object;

    check-cast p1, LQ4/r;

    iget-object p1, p1, LQ4/r;->a:LQ4/w;

    invoke-interface {p1}, LQ4/w;->a()LQ4/A;

    move-result-object p1

    invoke-direct {v0, p1}, LQ4/m;-><init>(LQ4/A;)V

    iput-object v0, p0, LI4/f;->a:LQ4/m;

    return-void
.end method


# virtual methods
.method public final a()LQ4/A;
    .locals 1

    iget-object v0, p0, LI4/f;->a:LQ4/m;

    return-object v0
.end method

.method public final close()V
    .locals 4

    iget-boolean v0, p0, LI4/f;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LI4/f;->b:Z

    iget-object v0, p0, LI4/f;->c:LG4/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LI4/f;->a:LQ4/m;

    iget-object v2, v1, LQ4/m;->e:LQ4/A;

    sget-object v3, LQ4/A;->d:LQ4/z;

    iput-object v3, v1, LQ4/m;->e:LQ4/A;

    invoke-virtual {v2}, LQ4/A;->a()LQ4/A;

    invoke-virtual {v2}, LQ4/A;->b()LQ4/A;

    const/4 v1, 0x3

    iput v1, v0, LG4/o;->b:I

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-boolean v0, p0, LI4/f;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LI4/f;->c:LG4/o;

    iget-object v0, v0, LG4/o;->f:Ljava/lang/Object;

    check-cast v0, LQ4/r;

    invoke-virtual {v0}, LQ4/r;->flush()V

    return-void
.end method

.method public final o(LQ4/g;J)V
    .locals 7

    iget-boolean v0, p0, LI4/f;->b:Z

    if-nez v0, :cond_0

    iget-wide v1, p1, LQ4/g;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, LD4/c;->c(JJJ)V

    iget-object v0, p0, LI4/f;->c:LG4/o;

    iget-object v0, v0, LG4/o;->f:Ljava/lang/Object;

    check-cast v0, LQ4/r;

    invoke-virtual {v0, p1, p2, p3}, LQ4/r;->o(LQ4/g;J)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
