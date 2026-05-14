.class public final LQ4/m;
.super LQ4/A;
.source "SourceFile"


# instance fields
.field public e:LQ4/A;


# direct methods
.method public constructor <init>(LQ4/A;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ4/m;->e:LQ4/A;

    return-void
.end method


# virtual methods
.method public final a()LQ4/A;
    .locals 1

    iget-object v0, p0, LQ4/m;->e:LQ4/A;

    invoke-virtual {v0}, LQ4/A;->a()LQ4/A;

    move-result-object v0

    return-object v0
.end method

.method public final b()LQ4/A;
    .locals 1

    iget-object v0, p0, LQ4/m;->e:LQ4/A;

    invoke-virtual {v0}, LQ4/A;->b()LQ4/A;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 2

    iget-object v0, p0, LQ4/m;->e:LQ4/A;

    invoke-virtual {v0}, LQ4/A;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(J)LQ4/A;
    .locals 1

    iget-object v0, p0, LQ4/m;->e:LQ4/A;

    invoke-virtual {v0, p1, p2}, LQ4/A;->d(J)LQ4/A;

    move-result-object p1

    return-object p1
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, LQ4/m;->e:LQ4/A;

    invoke-virtual {v0}, LQ4/A;->e()Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, LQ4/m;->e:LQ4/A;

    invoke-virtual {v0}, LQ4/A;->f()V

    return-void
.end method

.method public final g(JLjava/util/concurrent/TimeUnit;)LQ4/A;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LQ4/m;->e:LQ4/A;

    invoke-virtual {v0, p1, p2, p3}, LQ4/A;->g(JLjava/util/concurrent/TimeUnit;)LQ4/A;

    move-result-object p1

    return-object p1
.end method
