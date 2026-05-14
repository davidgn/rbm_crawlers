.class public final LG4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC4/z;


# static fields
.field public static final a:LG4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LG4/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LG4/a;->a:LG4/a;

    return-void
.end method


# virtual methods
.method public final a(LH4/g;)LC4/I;
    .locals 10

    iget-object v0, p1, LH4/g;->a:LG4/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, LG4/i;->q:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, LG4/i;->p:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, LG4/i;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    monitor-exit v0

    iget-object v1, v0, LG4/i;->l:LG4/e;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object v8, v0, LG4/i;->a:LC4/C;

    const-string v2, "client"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    iget v3, p1, LH4/g;->f:I

    iget v6, p1, LH4/g;->g:I

    iget v7, p1, LH4/g;->h:I

    iget-boolean v4, v8, LC4/C;->f:Z

    iget-object v2, p1, LH4/g;->e:LC4/F;

    iget-object v2, v2, LC4/F;->b:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/String;

    const-string v5, "GET"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x1

    xor-int/lit8 v5, v2, 0x1

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, LG4/e;->a(IZZII)LG4/k;

    move-result-object v2

    invoke-virtual {v2, v8, p1}, LG4/k;->j(LC4/C;LH4/g;)LH4/e;

    move-result-object v2
    :try_end_1
    .catch LG4/m; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v3, LC4/g;

    const-string v4, "call"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "finder"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v0, v3, LC4/g;->b:Ljava/lang/Object;

    iput-object v1, v3, LC4/g;->c:Ljava/lang/Object;

    iput-object v2, v3, LC4/g;->d:Ljava/lang/Object;

    invoke-interface {v2}, LH4/e;->c()LG4/k;

    move-result-object v1

    iput-object v1, v3, LC4/g;->e:Ljava/lang/Object;

    iput-object v3, v0, LG4/i;->n:LC4/g;

    iput-object v3, v0, LG4/i;->s:LC4/g;

    monitor-enter v0

    :try_start_2
    iput-boolean v9, v0, LG4/i;->o:Z

    iput-boolean v9, v0, LG4/i;->p:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    iget-boolean v0, v0, LG4/i;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x3d

    invoke-static {p1, v0, v3, v1, v2}, LH4/g;->a(LH4/g;ILC4/g;LC4/F;I)LH4/g;

    move-result-object v0

    iget-object p1, p1, LH4/g;->e:LC4/F;

    invoke-virtual {v0, p1}, LH4/g;->b(LC4/F;)LC4/I;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-virtual {v1, p1}, LG4/e;->c(Ljava/io/IOException;)V

    new-instance v0, LG4/m;

    invoke-direct {v0, p1}, LG4/m;-><init>(Ljava/io/IOException;)V

    throw v0

    :goto_1
    iget-object v0, p1, LG4/m;->b:Ljava/io/IOException;

    invoke-virtual {v1, v0}, LG4/e;->c(Ljava/io/IOException;)V

    throw p1

    :cond_1
    :try_start_3
    const-string p1, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_2
    const-string p1, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "released"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit v0

    throw p1
.end method
