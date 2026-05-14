.class public final LE4/j;
.super LQ4/k;
.source "SourceFile"


# instance fields
.field public final b:Lkotlin/jvm/internal/j;

.field public c:Z


# direct methods
.method public constructor <init>(LQ4/b;Lk4/l;)V
    .locals 0

    invoke-direct {p0, p1}, LQ4/k;-><init>(LQ4/w;)V

    check-cast p2, Lkotlin/jvm/internal/j;

    iput-object p2, p0, LE4/j;->b:Lkotlin/jvm/internal/j;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-boolean v0, p0, LE4/j;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, LQ4/k;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, LE4/j;->c:Z

    iget-object v1, p0, LE4/j;->b:Lkotlin/jvm/internal/j;

    invoke-interface {v1, v0}, Lk4/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final flush()V
    .locals 2

    iget-boolean v0, p0, LE4/j;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, LQ4/k;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, LE4/j;->c:Z

    iget-object v1, p0, LE4/j;->b:Lkotlin/jvm/internal/j;

    invoke-interface {v1, v0}, Lk4/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final o(LQ4/g;J)V
    .locals 1

    iget-boolean v0, p0, LE4/j;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, LQ4/g;->x(J)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LQ4/k;->a:LQ4/w;

    invoke-interface {v0, p1, p2, p3}, LQ4/w;->o(LQ4/g;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, LE4/j;->c:Z

    iget-object p2, p0, LE4/j;->b:Lkotlin/jvm/internal/j;

    invoke-interface {p2, p1}, Lk4/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
