.class public final Ll3/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/u;


# instance fields
.field public final a:Ll3/u;

.field public volatile b:Z

.field public c:Ljava/util/List;


# direct methods
.method public constructor <init>(Ll3/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll3/M;->c:Ljava/util/List;

    iput-object p1, p0, Ll3/M;->a:Ll3/u;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ll3/M;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ll3/M;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Lj3/f0;)V
    .locals 2

    new-instance v0, Ll3/B;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0, p1}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ll3/M;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Ll3/M;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll3/M;->a:Ll3/u;

    invoke-interface {v0}, Ll3/u;->c()V

    goto :goto_0

    :cond_0
    new-instance v0, LA2/h;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, LA2/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ll3/M;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final d(Lj1/a;)V
    .locals 2

    iget-boolean v0, p0, Ll3/M;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll3/M;->a:Ll3/u;

    invoke-interface {v0, p1}, Ll3/u;->d(Lj1/a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ll3/B;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0, p1}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ll3/M;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final f(Lj3/r0;Ll3/t;Lj3/f0;)V
    .locals 7

    new-instance v6, LU0/p;

    const/4 v5, 0x3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, LU0/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v6}, Ll3/M;->a(Ljava/lang/Runnable;)V

    return-void
.end method
