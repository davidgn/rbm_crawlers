.class public abstract LI4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ4/y;


# instance fields
.field public final a:LQ4/m;

.field public b:Z

.field public final synthetic c:LG4/o;


# direct methods
.method public constructor <init>(LG4/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI4/b;->c:LG4/o;

    new-instance v0, LQ4/m;

    iget-object p1, p1, LG4/o;->e:Ljava/lang/Object;

    check-cast p1, LQ4/s;

    iget-object p1, p1, LQ4/s;->a:LQ4/y;

    invoke-interface {p1}, LQ4/y;->a()LQ4/A;

    move-result-object p1

    invoke-direct {v0, p1}, LQ4/m;-><init>(LQ4/A;)V

    iput-object v0, p0, LI4/b;->a:LQ4/m;

    return-void
.end method


# virtual methods
.method public final a()LQ4/A;
    .locals 1

    iget-object v0, p0, LI4/b;->a:LQ4/m;

    return-object v0
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, LI4/b;->c:LG4/o;

    iget v1, v0, LG4/o;->b:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    iget-object v1, p0, LI4/b;->a:LQ4/m;

    iget-object v3, v1, LQ4/m;->e:LQ4/A;

    sget-object v4, LQ4/A;->d:LQ4/z;

    iput-object v4, v1, LQ4/m;->e:LQ4/A;

    invoke-virtual {v3}, LQ4/A;->a()LQ4/A;

    invoke-virtual {v3}, LQ4/A;->b()LQ4/A;

    iput v2, v0, LG4/o;->b:I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, LG4/o;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public l(LQ4/g;J)J
    .locals 2

    iget-object v0, p0, LI4/b;->c:LG4/o;

    const-string v1, "sink"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, v0, LG4/o;->e:Ljava/lang/Object;

    check-cast v1, LQ4/s;

    invoke-virtual {v1, p1, p2, p3}, LQ4/s;->l(LQ4/g;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    iget-object p2, v0, LG4/o;->d:Ljava/lang/Object;

    check-cast p2, LG4/k;

    invoke-virtual {p2}, LG4/k;->k()V

    invoke-virtual {p0}, LI4/b;->b()V

    throw p1
.end method
