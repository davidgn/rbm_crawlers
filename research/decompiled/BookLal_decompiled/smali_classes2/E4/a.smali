.class public final LE4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ4/y;


# instance fields
.field public a:Z

.field public final synthetic b:LQ4/i;

.field public final synthetic c:LC4/g;

.field public final synthetic d:LQ4/r;


# direct methods
.method public constructor <init>(LQ4/i;LC4/g;LQ4/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE4/a;->b:LQ4/i;

    iput-object p2, p0, LE4/a;->c:LC4/g;

    iput-object p3, p0, LE4/a;->d:LQ4/r;

    return-void
.end method


# virtual methods
.method public final a()LQ4/A;
    .locals 1

    iget-object v0, p0, LE4/a;->b:LQ4/i;

    invoke-interface {v0}, LQ4/y;->a()LQ4/A;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, LE4/a;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, LD4/c;->h(LQ4/y;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LE4/a;->a:Z

    iget-object v0, p0, LE4/a;->c:LC4/g;

    invoke-virtual {v0}, LC4/g;->e()V

    :cond_0
    iget-object v0, p0, LE4/a;->b:LQ4/i;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final l(LQ4/g;J)J
    .locals 9

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, LE4/a;->b:LQ4/i;

    invoke-interface {v1, p1, p2, p3}, LQ4/y;->l(LQ4/g;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    iget-object v8, p0, LE4/a;->d:LQ4/r;

    if-nez v3, :cond_1

    iget-boolean p1, p0, LE4/a;->a:Z

    if-nez p1, :cond_0

    iput-boolean v0, p0, LE4/a;->a:Z

    invoke-virtual {v8}, LQ4/r;->close()V

    :cond_0
    return-wide v1

    :cond_1
    iget-object v3, v8, LQ4/r;->b:LQ4/g;

    iget-wide v0, p1, LQ4/g;->b:J

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, LQ4/g;->e(LQ4/g;JJ)V

    invoke-virtual {v8}, LQ4/r;->b()LQ4/h;

    return-wide p2

    :catch_0
    move-exception p1

    iget-boolean p2, p0, LE4/a;->a:Z

    if-nez p2, :cond_2

    iput-boolean v0, p0, LE4/a;->a:Z

    iget-object p2, p0, LE4/a;->c:LC4/g;

    invoke-virtual {p2}, LC4/g;->e()V

    :cond_2
    throw p1
.end method
