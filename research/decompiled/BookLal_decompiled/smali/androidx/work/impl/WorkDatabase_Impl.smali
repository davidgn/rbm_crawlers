.class public final Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source "SourceFile"


# static fields
.field public static final synthetic s:I


# instance fields
.field public volatile l:LT0/j;

.field public volatile m:LD2/e;

.field public volatile n:LD2/e;

.field public volatile o:LJ2/e;

.field public volatile p:LD2/e;

.field public volatile q:LR0/i;

.field public volatile r:LD2/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Lv0/d;
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Lv0/d;

    const-string v6, "SystemIdInfo"

    const-string v7, "WorkName"

    const-string v3, "Dependency"

    const-string v4, "WorkSpec"

    const-string v5, "WorkTag"

    const-string v8, "WorkProgress"

    const-string v9, "Preference"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lv0/d;-><init>(Landroidx/work/impl/WorkDatabase_Impl;Ljava/util/HashMap;Ljava/util/HashMap;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final e(Lv/e;)Lz0/b;
    .locals 5

    new-instance v0, Lj3/G;

    new-instance v1, LK0/j;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, LK0/j;-><init>(Ljava/lang/Object;I)V

    const/16 v2, 0x15

    invoke-direct {v0, v2, p1, v1}, Lj3/G;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p1, Lv/e;->d:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v2, LE4/d;

    iget-object v3, p1, Lv/e;->e:Ljava/io/Serializable;

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v0, v4}, LE4/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lj3/G;Z)V

    iget-object p1, p1, Lv/e;->c:Ljava/lang/Object;

    check-cast p1, Lz0/a;

    invoke-interface {p1, v2}, Lz0/a;->c(LE4/d;)Lz0/b;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set a non-null context to create the configuration."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i()LD2/e;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:LD2/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:LD2/e;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:LD2/e;

    if-nez v0, :cond_1

    new-instance v0, LD2/e;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, LD2/e;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:LD2/e;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:LD2/e;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j()LD2/e;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:LD2/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:LD2/e;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:LD2/e;

    if-nez v0, :cond_1

    new-instance v0, LD2/e;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, LD2/e;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:LD2/e;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:LD2/e;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final k()LJ2/e;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:LJ2/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:LJ2/e;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:LJ2/e;

    if-nez v0, :cond_1

    new-instance v0, LJ2/e;

    invoke-direct {v0, p0}, LJ2/e;-><init>(Landroidx/work/impl/WorkDatabase_Impl;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:LJ2/e;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:LJ2/e;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final l()LD2/e;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:LD2/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:LD2/e;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:LD2/e;

    if-nez v0, :cond_1

    new-instance v0, LD2/e;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, LD2/e;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:LD2/e;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:LD2/e;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final m()LR0/i;
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:LR0/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:LR0/i;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:LR0/i;

    if-nez v0, :cond_1

    new-instance v0, LR0/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, LR0/i;->a:Ljava/lang/Object;

    new-instance v1, LT0/b;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, LT0/b;-><init>(Lv0/h;I)V

    iput-object v1, v0, LR0/i;->b:Ljava/lang/Object;

    new-instance v1, LT0/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LT0/e;-><init>(Lv0/h;I)V

    iput-object v1, v0, LR0/i;->c:Ljava/lang/Object;

    new-instance v1, LT0/e;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LT0/e;-><init>(Lv0/h;I)V

    iput-object v1, v0, LR0/i;->d:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:LR0/i;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:LR0/i;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final n()LT0/j;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:LT0/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:LT0/j;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:LT0/j;

    if-nez v0, :cond_1

    new-instance v0, LT0/j;

    invoke-direct {v0, p0}, LT0/j;-><init>(Landroidx/work/impl/WorkDatabase_Impl;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:LT0/j;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:LT0/j;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final o()LD2/e;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:LD2/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:LD2/e;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:LD2/e;

    if-nez v0, :cond_1

    new-instance v0, LD2/e;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, LD2/e;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:LD2/e;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:LD2/e;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
