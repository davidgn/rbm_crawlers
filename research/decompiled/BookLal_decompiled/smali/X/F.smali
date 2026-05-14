.class public final LX/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX/f;


# static fields
.field public static final i:Ljava/util/LinkedHashSet;

.field public static final j:Ljava/lang/Object;


# instance fields
.field public final a:Lk4/a;

.field public final b:Lcom/google/android/gms/internal/ads/zzgab;

.field public final c:Li1/D;

.field public final d:Ljava/lang/String;

.field public final e:LY3/h;

.field public final f:Lw4/h;

.field public g:Ljava/util/List;

.field public final h:LR0/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, LX/F;->i:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LX/F;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk4/a;Lcom/google/android/gms/internal/ads/zzgab;Ljava/util/List;Lz2/e;Lt4/u;)V
    .locals 3

    const/4 p4, 0x1

    const/4 v0, 0x2

    const-string v1, "serializer"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/F;->a:Lk4/a;

    iput-object p2, p0, LX/F;->b:Lcom/google/android/gms/internal/ads/zzgab;

    new-instance p1, LX/t;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LX/t;-><init>(LX/F;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Li1/D;

    const/16 v2, 0x12

    invoke-direct {v1, p1, v2}, Li1/D;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, LX/F;->c:Li1/D;

    const-string p1, ".tmp"

    iput-object p1, p0, LX/F;->d:Ljava/lang/String;

    new-instance p1, LC4/t;

    invoke-direct {p1, p0, v0}, LC4/t;-><init>(Ljava/lang/Object;I)V

    new-instance v1, LY3/h;

    invoke-direct {v1, p1}, LY3/h;-><init>(Lk4/a;)V

    iput-object v1, p0, LX/F;->e:LY3/h;

    sget-object p1, LX/H;->a:LX/H;

    new-instance v1, Lw4/h;

    invoke-direct {v1, p1}, Lw4/h;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, LX/F;->f:Lw4/h;

    invoke-static {p3}, LZ3/g;->o0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LX/F;->g:Ljava/util/List;

    new-instance p1, LR0/i;

    new-instance p3, LB4/g;

    invoke-direct {p3, p0, v0}, LB4/g;-><init>(Ljava/lang/Object;I)V

    new-instance v0, LX/p;

    invoke-direct {v0, p0, p2}, LX/p;-><init>(LX/F;Lkotlin/coroutines/Continuation;)V

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p5, p1, LR0/i;->a:Ljava/lang/Object;

    iput-object v0, p1, LR0/i;->b:Ljava/lang/Object;

    sget-object v0, Lv4/a;->a:[Lv4/a;

    new-instance v0, Lv4/b;

    const v1, 0x7fffffff

    invoke-direct {v0, v1, p2}, Lv4/b;-><init>(ILk4/l;)V

    iput-object v0, p1, LR0/i;->c:Ljava/lang/Object;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p1, LR0/i;->d:Ljava/lang/Object;

    invoke-interface {p5}, Lt4/u;->d()Lb4/h;

    move-result-object p2

    sget-object p5, Lt4/t;->b:Lt4/t;

    invoke-interface {p2, p5}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object p2

    check-cast p2, Lt4/W;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p5, LE4/c;

    invoke-direct {p5, p4, p3, p1}, LE4/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast p2, Lt4/g0;

    invoke-virtual {p2, v0, p4, p5}, Lt4/g0;->E(ZZLk4/l;)Lt4/G;

    :goto_0
    iput-object p1, p0, LX/F;->h:LR0/i;

    return-void
.end method

.method public static final a(LX/F;LX/l;Ld4/c;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, LX/u;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LX/u;

    iget v1, v0, LX/u;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LX/u;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, LX/u;

    invoke-direct {v0, p0, p2}, LX/u;-><init>(LX/F;Ld4/c;)V

    :goto_0
    iget-object p2, v0, LX/u;->d:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, LX/u;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LX/u;->a:Ljava/lang/Object;

    check-cast p0, Lt4/k;

    :goto_1
    :try_start_0
    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, LX/u;->c:Lt4/l;

    iget-object p1, v0, LX/u;->b:LX/F;

    iget-object v2, v0, LX/u;->a:Ljava/lang/Object;

    check-cast v2, LX/l;

    :try_start_1
    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p2, p0

    move-object p0, p1

    move-object p1, v2

    goto :goto_4

    :cond_3
    iget-object p0, v0, LX/u;->a:Ljava/lang/Object;

    check-cast p0, Lt4/k;

    goto :goto_1

    :cond_4
    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object p2, p1, LX/l;->b:Lt4/l;

    :try_start_2
    iget-object v2, p0, LX/F;->f:Lw4/h;

    invoke-virtual {v2}, Lw4/h;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX/G;

    instance-of v6, v2, LX/a;

    if-eqz v6, :cond_6

    iget-object v2, p1, LX/l;->a:Ld4/h;

    iget-object p1, p1, LX/l;->d:Lb4/h;

    iput-object p2, v0, LX/u;->a:Ljava/lang/Object;

    iput v5, v0, LX/u;->f:I

    invoke-virtual {p0, p1, v0, v2}, LX/F;->h(Lb4/h;Ld4/c;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto/16 :goto_8

    :cond_5
    move-object v7, p2

    move-object p2, p0

    move-object p0, v7

    goto :goto_6

    :goto_2
    move-object p0, p2

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_6
    instance-of v6, v2, LX/h;

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    instance-of v5, v2, LX/H;

    :goto_3
    if-eqz v5, :cond_a

    iget-object v5, p1, LX/l;->c:LX/G;

    if-ne v2, v5, :cond_9

    iput-object p1, v0, LX/u;->a:Ljava/lang/Object;

    iput-object p0, v0, LX/u;->b:LX/F;

    iput-object p2, v0, LX/u;->c:Lt4/l;

    iput v4, v0, LX/u;->f:I

    invoke-virtual {p0, v0}, LX/F;->d(Ld4/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    goto :goto_8

    :cond_8
    :goto_4
    iget-object v2, p1, LX/l;->a:Ld4/h;

    iget-object p1, p1, LX/l;->d:Lb4/h;

    iput-object p2, v0, LX/u;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v0, LX/u;->b:LX/F;

    iput-object v4, v0, LX/u;->c:Lt4/l;

    iput v3, v0, LX/u;->f:I

    invoke-virtual {p0, p1, v0, v2}, LX/F;->h(Lb4/h;Ld4/c;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_8

    :cond_9
    check-cast v2, LX/h;

    iget-object p0, v2, LX/h;->a:Ljava/lang/Throwable;

    throw p0

    :cond_a
    instance-of p0, v2, LX/g;

    if-eqz p0, :cond_b

    check-cast v2, LX/g;

    iget-object p0, v2, LX/g;->a:Ljava/lang/Throwable;

    throw p0

    :cond_b
    new-instance p0, LB0/c;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, LB0/c;-><init>(I)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    invoke-static {p1}, LS4/b;->j(Ljava/lang/Throwable;)LY3/f;

    move-result-object p2

    :goto_6
    invoke-static {p2}, LY3/g;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p0, Lt4/l;

    if-nez p1, :cond_c

    invoke-virtual {p0, p2}, Lt4/g0;->G(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    invoke-virtual {p0, p1}, Lt4/l;->S(Ljava/lang/Throwable;)Z

    :goto_7
    sget-object v1, LY3/j;->a:LY3/j;

    :goto_8
    return-object v1
.end method


# virtual methods
.method public final b()Ljava/io/File;
    .locals 1

    iget-object v0, p0, LX/F;->e:LY3/h;

    invoke-virtual {v0}, LY3/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public final c(Ld4/c;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p1, LX/v;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LX/v;

    iget v1, v0, LX/v;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LX/v;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, LX/v;

    invoke-direct {v0, p0, p1}, LX/v;-><init>(LX/F;Ld4/c;)V

    :goto_0
    iget-object p1, v0, LX/v;->l:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, LX/v;->n:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, LX/v;->d:Ljava/lang/Object;

    check-cast v1, LB4/a;

    iget-object v2, v0, LX/v;->c:Ljava/io/Serializable;

    check-cast v2, Lkotlin/jvm/internal/l;

    iget-object v3, v0, LX/v;->b:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/m;

    iget-object v0, v0, LX/v;->a:LX/F;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, LX/v;->f:Ljava/util/Iterator;

    iget-object v7, v0, LX/v;->e:LX/x;

    iget-object v8, v0, LX/v;->d:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/l;

    iget-object v9, v0, LX/v;->c:Ljava/io/Serializable;

    check-cast v9, Lkotlin/jvm/internal/m;

    iget-object v10, v0, LX/v;->b:Ljava/lang/Object;

    check-cast v10, LB4/a;

    iget-object v11, v0, LX/v;->a:LX/F;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object v2, v0, LX/v;->d:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/m;

    iget-object v7, v0, LX/v;->c:Ljava/io/Serializable;

    check-cast v7, Lkotlin/jvm/internal/m;

    iget-object v8, v0, LX/v;->b:Ljava/lang/Object;

    check-cast v8, LB4/a;

    iget-object v9, v0, LX/v;->a:LX/F;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object p1, p0, LX/F;->f:Lw4/h;

    invoke-virtual {p1}, Lw4/h;->c()Ljava/lang/Object;

    move-result-object v2

    sget-object v7, LX/H;->a:LX/H;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lw4/h;->c()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, LX/h;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    invoke-static {}, LB4/e;->a()LB4/d;

    move-result-object v8

    new-instance v2, Lkotlin/jvm/internal/m;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, LX/v;->a:LX/F;

    iput-object v8, v0, LX/v;->b:Ljava/lang/Object;

    iput-object v2, v0, LX/v;->c:Ljava/io/Serializable;

    iput-object v2, v0, LX/v;->d:Ljava/lang/Object;

    iput v5, v0, LX/v;->n:I

    invoke-virtual {p0, v0}, LX/F;->g(Ld4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v9, p0

    move-object v7, v2

    :goto_2
    iput-object p1, v2, Lkotlin/jvm/internal/m;->a:Ljava/lang/Object;

    new-instance p1, Lkotlin/jvm/internal/l;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v2, LX/x;

    invoke-direct {v2, v8, p1, v7, v9}, LX/x;-><init>(LB4/a;Lkotlin/jvm/internal/l;Lkotlin/jvm/internal/m;LX/F;)V

    iget-object v10, v9, LX/F;->g:Ljava/util/List;

    if-nez v10, :cond_8

    move-object v2, p1

    move-object p1, v0

    move-object v0, v9

    goto :goto_4

    :cond_8
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v11, v9

    move-object v9, v7

    move-object v7, v2

    move-object v2, v10

    move-object v10, v8

    move-object v8, p1

    :cond_9
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput-object v11, v0, LX/v;->a:LX/F;

    iput-object v10, v0, LX/v;->b:Ljava/lang/Object;

    iput-object v9, v0, LX/v;->c:Ljava/io/Serializable;

    iput-object v8, v0, LX/v;->d:Ljava/lang/Object;

    iput-object v7, v0, LX/v;->e:LX/x;

    iput-object v2, v0, LX/v;->f:Ljava/util/Iterator;

    iput v4, v0, LX/v;->n:I

    invoke-interface {p1, v7, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_a
    move-object p1, v0

    move-object v2, v8

    move-object v7, v9

    move-object v8, v10

    move-object v0, v11

    :goto_4
    iput-object v6, v0, LX/F;->g:Ljava/util/List;

    iput-object v0, p1, LX/v;->a:LX/F;

    iput-object v7, p1, LX/v;->b:Ljava/lang/Object;

    iput-object v2, p1, LX/v;->c:Ljava/io/Serializable;

    iput-object v8, p1, LX/v;->d:Ljava/lang/Object;

    iput-object v6, p1, LX/v;->e:LX/x;

    iput-object v6, p1, LX/v;->f:Ljava/util/Iterator;

    iput v3, p1, LX/v;->n:I

    invoke-interface {v8, p1}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    move-object v3, v7

    move-object v1, v8

    :goto_5
    :try_start_0
    iput-boolean v5, v2, Lkotlin/jvm/internal/l;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, v6}, LB4/a;->b(Ljava/lang/Object;)V

    iget-object p1, v0, LX/F;->f:Lw4/h;

    new-instance v0, LX/a;

    iget-object v1, v3, Lkotlin/jvm/internal/m;->a:Ljava/lang/Object;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    :goto_6
    invoke-direct {v0, v1, v2}, LX/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lw4/h;->d(Ljava/lang/Object;)V

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v1, v6}, LB4/a;->b(Ljava/lang/Object;)V

    throw p1
.end method

.method public final d(Ld4/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, LX/y;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LX/y;

    iget v1, v0, LX/y;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LX/y;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LX/y;

    invoke-direct {v0, p0, p1}, LX/y;-><init>(LX/F;Ld4/c;)V

    :goto_0
    iget-object p1, v0, LX/y;->b:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, LX/y;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, LX/y;->a:LX/F;

    :try_start_0
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    :try_start_1
    iput-object p0, v0, LX/y;->a:LX/F;

    iput v3, v0, LX/y;->d:I

    invoke-virtual {p0, v0}, LX/F;->c(Ld4/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1

    :goto_2
    move-object v0, p0

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_2

    :goto_3
    iget-object v0, v0, LX/F;->f:Lw4/h;

    new-instance v1, LX/h;

    invoke-direct {v1, p1}, LX/h;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lw4/h;->d(Ljava/lang/Object;)V

    throw p1
.end method

.method public final e(Ld4/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, LX/z;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LX/z;

    iget v1, v0, LX/z;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LX/z;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LX/z;

    invoke-direct {v0, p0, p1}, LX/z;-><init>(LX/F;Ld4/c;)V

    :goto_0
    iget-object p1, v0, LX/z;->b:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, LX/z;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, LX/z;->a:LX/F;

    :try_start_0
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    :try_start_1
    iput-object p0, v0, LX/z;->a:LX/F;

    iput v3, v0, LX/z;->d:I

    invoke-virtual {p0, v0}, LX/F;->c(Ld4/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_3

    return-object v1

    :goto_1
    move-object v0, p0

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_1

    :goto_2
    iget-object v0, v0, LX/F;->f:Lw4/h;

    new-instance v1, LX/h;

    invoke-direct {v1, p1}, LX/h;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lw4/h;->d(Ljava/lang/Object;)V

    :cond_3
    :goto_3
    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1
.end method

.method public final f(Ld4/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, LX/A;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LX/A;

    iget v1, v0, LX/A;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LX/A;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LX/A;

    invoke-direct {v0, p0, p1}, LX/A;-><init>(LX/F;Ld4/c;)V

    :goto_0
    iget-object p1, v0, LX/A;->c:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, LX/A;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, LX/A;->b:Ljava/io/FileInputStream;

    iget-object v0, v0, LX/A;->a:LX/F;

    :try_start_0
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, LX/F;->b()Ljava/io/File;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v2, p0, LX/F;->b:Lcom/google/android/gms/internal/ads/zzgab;

    iput-object p0, v0, LX/A;->a:LX/F;

    iput-object p1, v0, LX/A;->b:Ljava/io/FileInputStream;

    iput v3, v0, LX/A;->e:I

    invoke-interface {v2, p1, v0}, LX/i;->readFrom(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    :goto_1
    const/4 v2, 0x0

    :try_start_3
    invoke-static {v1, v2}, LL4/l;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    :goto_2
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-static {v1, p1}, LL4/l;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move-exception p1

    move-object v0, p0

    :goto_3
    invoke-virtual {v0}, LX/F;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p1, v0, LX/F;->b:Lcom/google/android/gms/internal/ads/zzgab;

    invoke-interface {p1}, LX/i;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    throw p1
.end method

.method public final g(Ld4/c;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, LX/B;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LX/B;

    iget v1, v0, LX/B;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LX/B;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LX/B;

    invoke-direct {v0, p0, p1}, LX/B;-><init>(LX/F;Ld4/c;)V

    :goto_0
    iget-object p1, v0, LX/B;->c:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, LX/B;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    if-eq v2, v3, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq v2, v4, :cond_3

    if-ne v2, v5, :cond_2

    iget-object v1, v0, LX/B;->b:Ljava/lang/Object;

    iget-object v0, v0, LX/B;->a:LX/F;

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v2, v0, LX/B;->b:Ljava/lang/Object;

    if-nez v2, :cond_5

    iget-object v2, v0, LX/B;->a:LX/F;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    :try_start_1
    iput-object v3, v0, LX/B;->a:LX/F;

    iput-object p1, v0, LX/B;->b:Ljava/lang/Object;

    iput v5, v0, LX/B;->e:I

    invoke-virtual {v2, v0, p1}, LX/F;->j(Ld4/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    return-object p1

    :goto_2
    invoke-static {v3, p1}, LL4/l;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v3

    :cond_5
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_6
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    iput-object p0, v0, LX/B;->a:LX/F;

    iput v3, v0, LX/B;->e:I

    invoke-virtual {p0, v0}, LX/F;->f(Ld4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    return-object p1
.end method

.method public final h(Lb4/h;Ld4/c;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, LX/C;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LX/C;

    iget v1, v0, LX/C;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LX/C;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, LX/C;

    invoke-direct {v0, p0, p2}, LX/C;-><init>(LX/F;Ld4/c;)V

    :goto_0
    iget-object p2, v0, LX/C;->d:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, LX/C;->f:I

    const-string v3, "Data in DataStore was mutated but DataStore is only compatible with Immutable types."

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v7, :cond_2

    if-ne v2, v6, :cond_1

    iget-object p1, v0, LX/C;->b:Ljava/lang/Object;

    iget-object p3, v0, LX/C;->a:LX/F;

    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, LX/C;->c:Ljava/lang/Object;

    iget-object p3, v0, LX/C;->b:Ljava/lang/Object;

    check-cast p3, LX/a;

    iget-object v2, v0, LX/C;->a:LX/F;

    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object p2, p0, LX/F;->f:Lw4/h;

    invoke-virtual {p2}, Lw4/h;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LX/a;

    iget-object v2, p2, LX/a;->a:Ljava/lang/Object;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    iget v8, p2, LX/a;->b:I

    if-ne v2, v8, :cond_b

    new-instance v2, LX/D;

    iget-object v8, p2, LX/a;->a:Ljava/lang/Object;

    invoke-direct {v2, p3, v8, v5}, LX/D;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, LX/C;->a:LX/F;

    iput-object p2, v0, LX/C;->b:Ljava/lang/Object;

    iput-object v8, v0, LX/C;->c:Ljava/lang/Object;

    iput v7, v0, LX/C;->f:I

    invoke-static {p1, v0, v2}, Lt4/w;->r(Lb4/h;Ld4/c;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    move-object p3, p2

    move-object p2, p1

    move-object p1, v8

    :goto_2
    iget-object v7, p3, LX/a;->a:Ljava/lang/Object;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_3

    :cond_6
    move v7, v4

    :goto_3
    iget p3, p3, LX/a;->b:I

    if-ne v7, p3, :cond_a

    invoke-static {p1, p2}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_5

    :cond_7
    iput-object v2, v0, LX/C;->a:LX/F;

    iput-object p2, v0, LX/C;->b:Ljava/lang/Object;

    iput-object v5, v0, LX/C;->c:Ljava/lang/Object;

    iput v6, v0, LX/C;->f:I

    invoke-virtual {v2, v0, p2}, LX/F;->j(Ld4/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    move-object p1, p2

    move-object p3, v2

    :goto_4
    iget-object p2, p3, LX/F;->f:Lw4/h;

    new-instance p3, LX/a;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :cond_9
    invoke-direct {p3, p1, v4}, LX/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Lw4/h;->d(Ljava/lang/Object;)V

    :goto_5
    return-object p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(Lkotlin/jvm/functions/Function2;Ld4/c;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lt4/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lt4/g0;-><init>(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lt4/g0;->D(Lt4/W;)V

    iget-object v1, p0, LX/F;->f:Lw4/h;

    invoke-virtual {v1}, Lw4/h;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX/G;

    new-instance v2, LX/l;

    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object v3

    invoke-direct {v2, p1, v0, v1, v3}, LX/l;-><init>(Lkotlin/jvm/functions/Function2;Lt4/l;LX/G;Lb4/h;)V

    iget-object p1, p0, LX/F;->h:LR0/i;

    invoke-virtual {p1, v2}, LR0/i;->l(LX/m;)V

    invoke-virtual {v0, p2}, Lt4/l;->R(Ld4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ld4/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, "Unable to rename "

    instance-of v1, p1, LX/E;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, LX/E;

    iget v2, v1, LX/E;->l:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, LX/E;->l:I

    goto :goto_0

    :cond_0
    new-instance v1, LX/E;

    invoke-direct {v1, p0, p1}, LX/E;-><init>(LX/F;Ld4/c;)V

    :goto_0
    iget-object p1, v1, LX/E;->e:Ljava/lang/Object;

    sget-object v2, Lc4/a;->a:Lc4/a;

    iget v3, v1, LX/E;->l:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p2, v1, LX/E;->d:Ljava/io/FileOutputStream;

    iget-object v2, v1, LX/E;->c:Ljava/io/FileOutputStream;

    iget-object v3, v1, LX/E;->b:Ljava/io/File;

    iget-object v1, v1, LX/E;->a:LX/F;

    :try_start_0
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    invoke-virtual {p0}, LX/F;->b()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, LX/F;->b()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, LX/F;->d:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v5, p0, LX/F;->b:Lcom/google/android/gms/internal/ads/zzgab;

    new-instance v6, LX/n;

    invoke-direct {v6, p1}, LX/n;-><init>(Ljava/io/FileOutputStream;)V

    iput-object p0, v1, LX/E;->a:LX/F;

    iput-object v3, v1, LX/E;->b:Ljava/io/File;

    iput-object p1, v1, LX/E;->c:Ljava/io/FileOutputStream;

    iput-object p1, v1, LX/E;->d:Ljava/io/FileOutputStream;

    iput v4, v1, LX/E;->l:I

    invoke-interface {v5, p2, v6, v1}, LX/i;->writeTo(Ljava/lang/Object;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p2, v2, :cond_4

    return-object v2

    :cond_4
    move-object v1, p0

    move-object p2, p1

    move-object v2, p2

    :goto_2
    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, 0x0

    :try_start_4
    invoke-static {v2, p1}, LL4/l;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, LX/F;->b()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz p1, :cond_5

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1

    :cond_5
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    :goto_3
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_7
    invoke-static {v2, p1}, LL4/l;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_6
    throw p1

    :cond_7
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to create parent directories of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
