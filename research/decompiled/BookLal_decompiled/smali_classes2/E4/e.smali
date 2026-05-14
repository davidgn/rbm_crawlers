.class public final LE4/e;
.super LQ4/l;
.source "SourceFile"


# instance fields
.field public b:Z

.field public final synthetic c:LE4/i;

.field public final synthetic d:LE4/f;


# direct methods
.method public constructor <init>(LQ4/c;LE4/i;LE4/f;)V
    .locals 0

    iput-object p2, p0, LE4/e;->c:LE4/i;

    iput-object p3, p0, LE4/e;->d:LE4/f;

    invoke-direct {p0, p1}, LQ4/l;-><init>(LQ4/y;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    invoke-super {p0}, LQ4/l;->close()V

    iget-boolean v0, p0, LE4/e;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LE4/e;->b:Z

    iget-object v0, p0, LE4/e;->c:LE4/i;

    iget-object v1, p0, LE4/e;->d:LE4/f;

    monitor-enter v0

    :try_start_0
    iget v2, v1, LE4/f;->h:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, LE4/f;->h:I

    if-nez v2, :cond_0

    iget-boolean v2, v1, LE4/f;->f:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, LE4/i;->u(LE4/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    return-void
.end method
