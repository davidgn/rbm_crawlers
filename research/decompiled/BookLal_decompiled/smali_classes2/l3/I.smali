.class public final Ll3/I;
.super Ll3/N;
.source "SourceFile"


# instance fields
.field public final j:Ll3/f1;

.field public final k:Lj3/u;

.field public final l:[Lj3/B;

.field public final synthetic m:Ll3/J;


# direct methods
.method public constructor <init>(Ll3/J;Ll3/f1;[Lj3/B;)V
    .locals 0

    iput-object p1, p0, Ll3/I;->m:Ll3/J;

    invoke-direct {p0}, Ll3/N;-><init>()V

    invoke-static {}, Lj3/u;->b()Lj3/u;

    move-result-object p1

    iput-object p1, p0, Ll3/I;->k:Lj3/u;

    iput-object p2, p0, Ll3/I;->j:Ll3/f1;

    iput-object p3, p0, Ll3/I;->l:[Lj3/B;

    return-void
.end method


# virtual methods
.method public final d(Lj3/r0;)V
    .locals 2

    invoke-super {p0, p1}, Ll3/N;->d(Lj3/r0;)V

    iget-object p1, p0, Ll3/I;->m:Ll3/J;

    iget-object p1, p1, Ll3/J;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Ll3/I;->m:Ll3/J;

    iget-object v1, v0, Ll3/J;->g:Ll3/H;

    if-eqz v1, :cond_0

    iget-object v0, v0, Ll3/J;->i:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Ll3/I;->m:Ll3/J;

    invoke-virtual {v1}, Ll3/J;->g()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll3/I;->m:Ll3/J;

    iget-object v1, v0, Ll3/J;->d:Lj3/w0;

    iget-object v0, v0, Ll3/J;->f:Ll3/H;

    invoke-virtual {v1, v0}, Lj3/w0;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ll3/I;->m:Ll3/J;

    iget-object v1, v0, Ll3/J;->j:Lj3/r0;

    if-eqz v1, :cond_0

    iget-object v1, v0, Ll3/J;->d:Lj3/w0;

    iget-object v0, v0, Ll3/J;->g:Ll3/H;

    invoke-virtual {v1, v0}, Lj3/w0;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ll3/I;->m:Ll3/J;

    const/4 v1, 0x0

    iput-object v1, v0, Ll3/J;->g:Ll3/H;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ll3/I;->m:Ll3/J;

    iget-object p1, p1, Ll3/J;->d:Lj3/w0;

    invoke-virtual {p1}, Lj3/w0;->a()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final n(LC4/v;)V
    .locals 2

    iget-object v0, p0, Ll3/I;->j:Ll3/f1;

    iget-object v0, v0, Ll3/f1;->a:Lj3/g;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, v0, Lj3/g;->f:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, LC4/v;->b:Ljava/util/ArrayList;

    const-string v1, "wait_for_ready"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-super {p0, p1}, Ll3/N;->n(LC4/v;)V

    return-void
.end method

.method public final s(Lj3/r0;)V
    .locals 4

    iget-object v0, p0, Ll3/I;->l:[Lj3/B;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lj3/B;->g(Lj3/r0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
