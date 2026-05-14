.class public Ly4/t;
.super Lt4/a;
.source "SourceFile"

# interfaces
.implements Ld4/d;


# instance fields
.field public final d:Lkotlin/coroutines/Continuation;


# direct methods
.method public constructor <init>(Lb4/h;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lt4/a;-><init>(Lb4/h;Z)V

    iput-object p2, p0, Ly4/t;->d:Lkotlin/coroutines/Continuation;

    return-void
.end method


# virtual methods
.method public final F()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getCallerFrame()Ld4/d;
    .locals 2

    iget-object v0, p0, Ly4/t;->d:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Ld4/d;

    if-eqz v1, :cond_0

    check-cast v0, Ld4/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public k(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ly4/t;->d:Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lc4/b;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {p1}, Lt4/w;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Ly4/a;->j(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public l(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ly4/t;->d:Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lt4/w;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
