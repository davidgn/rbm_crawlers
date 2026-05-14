.class public final LX/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:LB4/a;

.field public final synthetic b:Lkotlin/jvm/internal/l;

.field public final synthetic c:Lkotlin/jvm/internal/m;

.field public final synthetic d:LX/F;


# direct methods
.method public constructor <init>(LB4/a;Lkotlin/jvm/internal/l;Lkotlin/jvm/internal/m;LX/F;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/x;->a:LB4/a;

    iput-object p2, p0, LX/x;->b:Lkotlin/jvm/internal/l;

    iput-object p3, p0, LX/x;->c:Lkotlin/jvm/internal/m;

    iput-object p4, p0, LX/x;->d:LX/F;

    return-void
.end method


# virtual methods
.method public final a(LX/e;Ld4/c;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, LX/w;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LX/w;

    iget v1, v0, LX/w;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LX/w;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, LX/w;

    invoke-direct {v0, p0, p2}, LX/w;-><init>(LX/x;Ld4/c;)V

    :goto_0
    iget-object p2, v0, LX/w;->f:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, LX/w;->m:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, LX/w;->c:Ljava/lang/Object;

    iget-object v1, v0, LX/w;->b:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/m;

    iget-object v0, v0, LX/w;->a:Ljava/lang/Object;

    check-cast v0, LB4/a;

    :try_start_0
    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, LX/w;->c:Ljava/lang/Object;

    check-cast p1, LX/F;

    iget-object v2, v0, LX/w;->b:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/m;

    iget-object v4, v0, LX/w;->a:Ljava/lang/Object;

    check-cast v4, LB4/a;

    :try_start_1
    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, v4

    goto/16 :goto_5

    :cond_3
    iget-object p1, v0, LX/w;->e:LX/F;

    iget-object v2, v0, LX/w;->d:Lkotlin/jvm/internal/m;

    iget-object v5, v0, LX/w;->c:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/l;

    iget-object v7, v0, LX/w;->b:Ljava/lang/Object;

    check-cast v7, LB4/a;

    iget-object v8, v0, LX/w;->a:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    move-object p2, v7

    move-object v9, v8

    move-object v8, p1

    move-object p1, v9

    goto :goto_1

    :cond_4
    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    iput-object p1, v0, LX/w;->a:Ljava/lang/Object;

    iget-object p2, p0, LX/x;->a:LB4/a;

    iput-object p2, v0, LX/w;->b:Ljava/lang/Object;

    iget-object v2, p0, LX/x;->b:Lkotlin/jvm/internal/l;

    iput-object v2, v0, LX/w;->c:Ljava/lang/Object;

    iget-object v7, p0, LX/x;->c:Lkotlin/jvm/internal/m;

    iput-object v7, v0, LX/w;->d:Lkotlin/jvm/internal/m;

    iget-object v8, p0, LX/x;->d:LX/F;

    iput-object v8, v0, LX/w;->e:LX/F;

    iput v5, v0, LX/w;->m:I

    invoke-interface {p2, v0}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_5

    return-object v1

    :cond_5
    move-object v5, v2

    move-object v2, v7

    :goto_1
    :try_start_2
    iget-boolean v5, v5, Lkotlin/jvm/internal/l;->a:Z

    if-nez v5, :cond_9

    iget-object v5, v2, Lkotlin/jvm/internal/m;->a:Ljava/lang/Object;

    iput-object p2, v0, LX/w;->a:Ljava/lang/Object;

    iput-object v2, v0, LX/w;->b:Ljava/lang/Object;

    iput-object v8, v0, LX/w;->c:Ljava/lang/Object;

    iput-object v6, v0, LX/w;->d:Lkotlin/jvm/internal/m;

    iput-object v6, v0, LX/w;->e:LX/F;

    iput v4, v0, LX/w;->m:I

    invoke-interface {p1, v5, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v4, p2

    move-object p2, p1

    move-object p1, v8

    :goto_2
    :try_start_3
    iget-object v5, v2, Lkotlin/jvm/internal/m;->a:Ljava/lang/Object;

    invoke-static {p2, v5}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iput-object v4, v0, LX/w;->a:Ljava/lang/Object;

    iput-object v2, v0, LX/w;->b:Ljava/lang/Object;

    iput-object p2, v0, LX/w;->c:Ljava/lang/Object;

    iput v3, v0, LX/w;->m:I

    invoke-virtual {p1, v0, p2}, LX/F;->j(Ld4/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object p1, p2

    move-object v1, v2

    move-object v0, v4

    :goto_3
    :try_start_4
    iput-object p1, v1, Lkotlin/jvm/internal/m;->a:Ljava/lang/Object;

    move-object v2, v1

    goto :goto_4

    :cond_8
    move-object v0, v4

    :goto_4
    iget-object p1, v2, Lkotlin/jvm/internal/m;->a:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v0, v6}, LB4/a;->b(Ljava/lang/Object;)V

    return-object p1

    :catchall_2
    move-exception p1

    move-object v0, p2

    goto :goto_5

    :cond_9
    :try_start_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "InitializerApi.updateData should not be called after initialization is complete."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_5
    invoke-interface {v0, v6}, LB4/a;->b(Ljava/lang/Object;)V

    throw p1
.end method
