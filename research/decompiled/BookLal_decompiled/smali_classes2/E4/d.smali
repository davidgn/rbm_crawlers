.class public final LE4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/m;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LE4/i;LE4/f;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LE4/d;->a:I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE4/d;->e:Ljava/lang/Object;

    iput-object p2, p0, LE4/d;->c:Ljava/lang/Object;

    .line 26
    iget-boolean p2, p2, LE4/f;->e:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x2

    .line 28
    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, LE4/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LZ0/c;LZ0/b;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LE4/d;->a:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE4/d;->e:Ljava/lang/Object;

    .line 21
    iput-object p2, p0, LE4/d;->c:Ljava/lang/Object;

    .line 22
    iget-boolean p2, p2, LZ0/b;->e:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 23
    :cond_0
    iget p1, p1, LZ0/c;->l:I

    .line 24
    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, LE4/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lj3/G;Z)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LE4/d;->a:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, LE4/d;->c:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, LE4/d;->d:Ljava/lang/Object;

    .line 18
    iput-object p3, p0, LE4/d;->e:Ljava/lang/Object;

    .line 19
    iput-boolean p4, p0, LE4/d;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, LE4/d;->a:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, LJ2/e;

    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1}, LJ2/e;-><init>(I)V

    .line 11
    iput-object v0, p0, LE4/d;->d:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, LE4/d;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, LE4/d;->b:Z

    .line 14
    iput-object p1, p0, LE4/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lz3/m;LM3/n;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LE4/d;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LE4/d;->c:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, LE4/d;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, LE4/d;->b:Z

    .line 5
    new-instance p1, LB3/c;

    const/4 p2, 0x1

    .line 6
    invoke-direct {p1, p2}, LB3/c;-><init>(I)V

    .line 7
    iput-object p1, p0, LE4/d;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(LB3/b;)V
    .locals 1

    iget-object v0, p0, LE4/d;->e:Ljava/lang/Object;

    check-cast v0, LB3/c;

    invoke-virtual {v0, p1}, LB3/c;->e(LB3/b;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget v0, p0, LE4/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LE4/d;->e:Ljava/lang/Object;

    check-cast v0, LZ0/c;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, LZ0/c;->b(LZ0/c;LE4/d;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, LE4/d;->e:Ljava/lang/Object;

    check-cast v0, LE4/i;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LE4/d;->b:Z

    if-nez v1, :cond_1

    iget-object v1, p0, LE4/d;->c:Ljava/lang/Object;

    check-cast v1, LE4/f;

    iget-object v1, v1, LE4/f;->g:LE4/d;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, LE4/i;->c(LE4/d;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LE4/d;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c(JLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, LE4/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    new-instance v0, LJ2/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LJ2/e;-><init>(I)V

    iget-object v1, p0, LE4/d;->e:Ljava/lang/Object;

    check-cast v1, LJ2/e;

    iput-object v0, v1, LJ2/e;->d:Ljava/lang/Object;

    iput-object v0, p0, LE4/d;->e:Ljava/lang/Object;

    iput-object p1, v0, LJ2/e;->c:Ljava/lang/Object;

    iput-object p2, v0, LJ2/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public e(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LE4/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, LJ2/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LJ2/e;-><init>(I)V

    iget-object v1, p0, LE4/d;->e:Ljava/lang/Object;

    check-cast v1, LJ2/e;

    iput-object v0, v1, LJ2/e;->d:Ljava/lang/Object;

    iput-object v0, p0, LE4/d;->e:Ljava/lang/Object;

    iput-object p2, v0, LJ2/e;->c:Ljava/lang/Object;

    iput-object p1, v0, LJ2/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, LE4/d;->e:Ljava/lang/Object;

    check-cast v0, LE4/i;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LE4/d;->b:Z

    if-nez v1, :cond_1

    iget-object v1, p0, LE4/d;->c:Ljava/lang/Object;

    check-cast v1, LE4/f;

    iget-object v1, v1, LE4/f;->g:LE4/d;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, v2}, LE4/i;->c(LE4/d;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iput-boolean v2, p0, LE4/d;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, LE4/d;->c:Ljava/lang/Object;

    check-cast v0, LE4/f;

    iget-object v1, v0, LE4/f;->g:LE4/d;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LE4/d;->e:Ljava/lang/Object;

    check-cast v1, LE4/i;

    iget-boolean v2, v1, LE4/i;->p:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, LE4/i;->c(LE4/d;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, LE4/f;->f:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public i()Ljava/io/File;
    .locals 5

    iget-object v0, p0, LE4/d;->e:Ljava/lang/Object;

    check-cast v0, LZ0/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LE4/d;->c:Ljava/lang/Object;

    check-cast v1, LZ0/b;

    iget-object v2, v1, LZ0/b;->f:LE4/d;

    if-ne v2, p0, :cond_2

    iget-boolean v2, v1, LZ0/b;->e:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, LE4/d;->d:Ljava/lang/Object;

    check-cast v2, [Z

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, v1, LZ0/b;->d:[Ljava/io/File;

    aget-object v1, v1, v3

    iget-object v2, p0, LE4/d;->e:Ljava/lang/Object;

    check-cast v2, LZ0/c;

    iget-object v2, v2, LZ0/c;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, LE4/d;->e:Ljava/lang/Object;

    check-cast v2, LZ0/c;

    iget-object v2, v2, LZ0/c;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    monitor-exit v0

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j(I)LQ4/w;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, LE4/d;->e:Ljava/lang/Object;

    check-cast v2, LE4/i;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, LE4/d;->b:Z

    if-nez v3, :cond_2

    iget-object v3, p0, LE4/d;->c:Ljava/lang/Object;

    check-cast v3, LE4/f;

    iget-object v3, v3, LE4/f;->g:LE4/d;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance p1, LQ4/e;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p1

    :cond_0
    :try_start_1
    iget-object v3, p0, LE4/d;->c:Ljava/lang/Object;

    check-cast v3, LE4/f;

    iget-boolean v3, v3, LE4/f;->e:Z

    if-nez v3, :cond_1

    iget-object v3, p0, LE4/d;->d:Ljava/lang/Object;

    check-cast v3, [Z

    invoke-static {v3}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    aput-boolean v1, v3, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v3, p0, LE4/d;->c:Ljava/lang/Object;

    check-cast v3, LE4/f;

    iget-object v3, v3, LE4/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "file"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v3, LQ4/p;->a:Ljava/util/logging/Logger;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v4, LQ4/b;

    new-instance v5, LQ4/A;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-direct {v4, v1, v3, v5}, LQ4/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    sget-object v3, LQ4/p;->a:Ljava/util/logging/Logger;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v4, LQ4/b;

    new-instance p1, LQ4/A;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v4, v1, v3, p1}, LQ4/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    new-instance p1, LE4/j;

    new-instance v1, LE4/c;

    invoke-direct {v1, v0, v2, p0}, LE4/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v4, v1}, LE4/j;-><init>(LQ4/b;Lk4/l;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v2

    return-object p1

    :catch_1
    :try_start_6
    new-instance p1, LQ4/e;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v2

    return-object p1

    :cond_2
    :try_start_7
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    monitor-exit v2

    throw p1
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, LE4/d;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, LE4/d;->b:Z

    iget-object v0, p0, LE4/d;->d:Ljava/lang/Object;

    check-cast v0, LM3/n;

    invoke-virtual {v0, p0}, Lz3/l;->b(Lz3/m;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LE4/d;->c:Ljava/lang/Object;

    check-cast v0, Lz3/m;

    invoke-interface {v0}, Lz3/m;->onComplete()V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LE4/d;->c:Ljava/lang/Object;

    check-cast v0, Lz3/m;

    invoke-interface {v0, p1}, Lz3/m;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, LE4/d;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, LE4/d;->b:Z

    :cond_0
    iget-object v0, p0, LE4/d;->c:Ljava/lang/Object;

    check-cast v0, Lz3/m;

    invoke-interface {v0, p1}, Lz3/m;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, LE4/d;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-boolean v0, p0, LE4/d;->b:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, LE4/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, LE4/d;->d:Ljava/lang/Object;

    check-cast v2, LJ2/e;

    iget-object v2, v2, LJ2/e;->d:Ljava/lang/Object;

    check-cast v2, LJ2/e;

    const-string v3, ""

    :goto_0
    if-eqz v2, :cond_4

    iget-object v4, v2, LJ2/e;->c:Ljava/lang/Object;

    instance-of v5, v2, LJ2/d;

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, LJ2/e;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, ", "

    :cond_3
    iget-object v2, v2, LJ2/e;->d:Ljava/lang/Object;

    check-cast v2, LJ2/e;

    goto :goto_0

    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
