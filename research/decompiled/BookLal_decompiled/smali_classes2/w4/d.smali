.class public final Lw4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw4/b;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/l;

.field public final synthetic b:Lw4/b;

.field public final synthetic c:LX/q;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/l;Lw4/b;LX/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw4/d;->a:Lkotlin/jvm/internal/l;

    iput-object p2, p0, Lw4/d;->b:Lw4/b;

    iput-object p3, p0, Lw4/d;->c:LX/q;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ld4/c;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lw4/c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lw4/c;

    iget v1, v0, Lw4/c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lw4/c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lw4/c;

    invoke-direct {v0, p0, p2}, Lw4/c;-><init>(Lw4/d;Ld4/c;)V

    :goto_0
    iget-object p2, v0, Lw4/c;->c:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, Lw4/c;->e:I

    sget-object v3, LY3/j;->a:LY3/j;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lw4/c;->b:Ljava/lang/Object;

    iget-object v2, v0, Lw4/c;->a:Lw4/d;

    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object p2, p0, Lw4/d;->a:Lkotlin/jvm/internal/l;

    iget-boolean p2, p2, Lkotlin/jvm/internal/l;->a:Z

    if-eqz p2, :cond_6

    iput v6, v0, Lw4/c;->e:I

    iget-object p2, p0, Lw4/d;->b:Lw4/b;

    invoke-interface {p2, p1, v0}, Lw4/b;->b(Ljava/lang/Object;Ld4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    return-object v3

    :cond_6
    iput-object p0, v0, Lw4/c;->a:Lw4/d;

    iput-object p1, v0, Lw4/c;->b:Ljava/lang/Object;

    iput v5, v0, Lw4/c;->e:I

    iget-object p2, p0, Lw4/d;->c:LX/q;

    invoke-virtual {p2, p1, v0}, LX/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v2, p0

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, v2, Lw4/d;->a:Lkotlin/jvm/internal/l;

    iput-boolean v6, p2, Lkotlin/jvm/internal/l;->a:Z

    const/4 p2, 0x0

    iput-object p2, v0, Lw4/c;->a:Lw4/d;

    iput-object p2, v0, Lw4/c;->b:Ljava/lang/Object;

    iput v4, v0, Lw4/c;->e:I

    iget-object p2, v2, Lw4/d;->b:Lw4/b;

    invoke-interface {p2, p1, v0}, Lw4/b;->b(Ljava/lang/Object;Ld4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    return-object v3
.end method
