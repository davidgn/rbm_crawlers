.class public final LZ3/v;
.super Ld4/g;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/util/Iterator;

.field public d:I

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic l:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, LZ3/v;->l:Ljava/util/Iterator;

    invoke-direct {p0, p2}, Ld4/g;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, LZ3/v;

    iget-object v1, p0, LZ3/v;->l:Ljava/util/Iterator;

    invoke-direct {v0, v1, p2}, LZ3/v;-><init>(Ljava/util/Iterator;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, LZ3/v;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lr4/e;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, LZ3/v;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, LZ3/v;

    sget-object p2, LY3/j;->a:LY3/j;

    invoke-virtual {p1, p2}, LZ3/v;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lc4/a;->a:Lc4/a;

    iget v1, p0, LZ3/v;->e:I

    const/4 v2, 0x1

    const/16 v3, 0x14

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_c

    if-eq v1, v2, :cond_b

    if-eq v1, v4, :cond_0

    const/4 v4, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq v1, v7, :cond_3

    if-eq v1, v6, :cond_2

    if-ne v1, v4, :cond_1

    :cond_0
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, p0, LZ3/v;->b:Ljava/lang/Object;

    check-cast v1, LZ3/u;

    iget-object v2, p0, LZ3/v;->f:Ljava/lang/Object;

    check-cast v2, Lr4/e;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    invoke-virtual {v1}, LZ3/u;->h()V

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, LZ3/v;->c:Ljava/util/Iterator;

    iget-object v8, p0, LZ3/v;->b:Ljava/lang/Object;

    check-cast v8, LZ3/u;

    iget-object v9, p0, LZ3/v;->f:Ljava/lang/Object;

    check-cast v9, Lr4/e;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    invoke-virtual {v8}, LZ3/u;->h()V

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v8}, LZ3/u;->a()I

    move-result v10

    iget v11, v8, LZ3/u;->b:I

    if-eq v10, v11, :cond_8

    iget v10, v8, LZ3/u;->c:I

    iget v12, v8, LZ3/u;->d:I

    add-int/2addr v10, v12

    rem-int/2addr v10, v11

    iget-object v13, v8, LZ3/u;->a:[Ljava/lang/Object;

    aput-object p1, v13, v10

    add-int/lit8 v12, v12, 0x1

    iput v12, v8, LZ3/u;->d:I

    invoke-virtual {v8}, LZ3/u;->a()I

    move-result p1

    if-ne p1, v11, :cond_4

    iget p1, v8, LZ3/u;->d:I

    if-ge p1, v3, :cond_7

    shr-int/lit8 p1, v11, 0x1

    add-int/2addr v11, p1

    add-int/2addr v11, v2

    if-le v11, v3, :cond_5

    move v11, v3

    :cond_5
    iget p1, v8, LZ3/u;->c:I

    if-nez p1, :cond_6

    invoke-static {v13, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v10, "copyOf(this, newSize)"

    invoke-static {p1, v10}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-array p1, v11, [Ljava/lang/Object;

    invoke-virtual {v8, p1}, LZ3/u;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    :goto_1
    new-instance v10, LZ3/u;

    iget v8, v8, LZ3/u;->d:I

    invoke-direct {v10, p1, v8}, LZ3/u;-><init>([Ljava/lang/Object;I)V

    move-object v8, v10

    goto :goto_0

    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, p0, LZ3/v;->f:Ljava/lang/Object;

    iput-object v8, p0, LZ3/v;->b:Ljava/lang/Object;

    iput-object v1, p0, LZ3/v;->c:Ljava/util/Iterator;

    iput v7, p0, LZ3/v;->e:I

    invoke-virtual {v9, p1, p0}, Lr4/e;->c(Ljava/lang/Object;Ld4/g;)V

    return-object v0

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ring buffer is full"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    move-object v1, v8

    move-object v2, v9

    :goto_2
    iget p1, v1, LZ3/u;->d:I

    if-le p1, v3, :cond_a

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, LZ3/v;->f:Ljava/lang/Object;

    iput-object v1, p0, LZ3/v;->b:Ljava/lang/Object;

    iput-object v5, p0, LZ3/v;->c:Ljava/util/Iterator;

    iput v6, p0, LZ3/v;->e:I

    invoke-virtual {v2, p1, p0}, Lr4/e;->c(Ljava/lang/Object;Ld4/g;)V

    return-object v0

    :cond_a
    invoke-virtual {v1}, LZ3/c;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    iput-object v5, p0, LZ3/v;->f:Ljava/lang/Object;

    iput-object v5, p0, LZ3/v;->b:Ljava/lang/Object;

    iput-object v5, p0, LZ3/v;->c:Ljava/util/Iterator;

    iput v4, p0, LZ3/v;->e:I

    invoke-virtual {v2, v1, p0}, Lr4/e;->c(Ljava/lang/Object;Ld4/g;)V

    return-object v0

    :cond_b
    iget v1, p0, LZ3/v;->d:I

    iget-object v6, p0, LZ3/v;->c:Ljava/util/Iterator;

    iget-object v7, p0, LZ3/v;->b:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    iget-object v7, p0, LZ3/v;->f:Ljava/lang/Object;

    check-cast v7, Lr4/e;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    move-object v8, v7

    move-object v7, v6

    move v6, v1

    goto :goto_4

    :cond_c
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object p1, p0, LZ3/v;->f:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lr4/e;

    iget-object v6, p0, LZ3/v;->l:Ljava/util/Iterator;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    goto :goto_3

    :cond_d
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    if-lez v1, :cond_e

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_e
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v3, :cond_d

    iput-object v8, p0, LZ3/v;->f:Ljava/lang/Object;

    iput-object p1, p0, LZ3/v;->b:Ljava/lang/Object;

    iput-object v7, p0, LZ3/v;->c:Ljava/util/Iterator;

    iput v6, p0, LZ3/v;->d:I

    iput v2, p0, LZ3/v;->e:I

    invoke-virtual {v8, p1, p0}, Lr4/e;->c(Ljava/lang/Object;Ld4/g;)V

    return-object v0

    :cond_f
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    iput-object v5, p0, LZ3/v;->f:Ljava/lang/Object;

    iput-object v5, p0, LZ3/v;->b:Ljava/lang/Object;

    iput-object v5, p0, LZ3/v;->c:Ljava/util/Iterator;

    iput v4, p0, LZ3/v;->e:I

    invoke-virtual {v8, p1, p0}, Lr4/e;->c(Ljava/lang/Object;Ld4/g;)V

    return-object v0

    :cond_10
    :goto_5
    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1
.end method
