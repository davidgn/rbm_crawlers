.class public final LC4/f;
.super LQ4/k;
.source "SourceFile"


# instance fields
.field public final synthetic b:LC4/h;

.field public final synthetic c:LC4/g;


# direct methods
.method public constructor <init>(LC4/h;LC4/g;LQ4/w;)V
    .locals 0

    iput-object p1, p0, LC4/f;->b:LC4/h;

    iput-object p2, p0, LC4/f;->c:LC4/g;

    invoke-direct {p0, p3}, LQ4/k;-><init>(LQ4/w;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, LC4/f;->b:LC4/h;

    iget-object v1, p0, LC4/f;->c:LC4/g;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, v1, LC4/g;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v1, LC4/g;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    invoke-super {p0}, LQ4/k;->close()V

    iget-object v0, p0, LC4/f;->c:LC4/g;

    iget-object v0, v0, LC4/g;->b:Ljava/lang/Object;

    check-cast v0, LE4/d;

    invoke-virtual {v0}, LE4/d;->g()V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
