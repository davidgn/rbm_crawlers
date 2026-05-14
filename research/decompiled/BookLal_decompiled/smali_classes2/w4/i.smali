.class public abstract Lw4/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LG3/b;

.field public static final b:LG3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LG3/b;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw4/i;->a:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw4/i;->b:LG3/b;

    return-void
.end method

.method public static final a(Li1/D;Ld4/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lw4/e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lw4/e;

    iget v1, v0, Lw4/e;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lw4/e;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lw4/e;

    invoke-direct {v0, p1}, Ld4/c;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lw4/e;->c:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, Lw4/e;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lw4/e;->b:LX/s;

    iget-object v0, v0, Lw4/e;->a:Lkotlin/jvm/internal/m;

    :try_start_0
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Lx4/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/m;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v2, LX/s;

    const/4 v4, 0x1

    invoke-direct {v2, p1, v4}, LX/s;-><init>(Ljava/lang/Object;I)V

    :try_start_1
    iput-object p1, v0, Lw4/e;->a:Lkotlin/jvm/internal/m;

    iput-object v2, v0, Lw4/e;->b:LX/s;

    iput v3, v0, Lw4/e;->d:I

    invoke-virtual {p0, v2, v0}, Li1/D;->r(Lw4/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lx4/a; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, p1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v2

    :goto_1
    iget-object v1, p1, Lx4/a;->a:LX/s;

    if-ne v1, p0, :cond_4

    :goto_2
    iget-object v1, v0, Lkotlin/jvm/internal/m;->a:Ljava/lang/Object;

    :goto_3
    return-object v1

    :cond_4
    throw p1
.end method
