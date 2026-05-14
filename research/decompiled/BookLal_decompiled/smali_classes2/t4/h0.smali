.class public final Lt4/h0;
.super Lt4/A;
.source "SourceFile"


# instance fields
.field public final d:Lkotlin/coroutines/Continuation;


# direct methods
.method public constructor <init>(Lb4/h;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lt4/a;-><init>(Lb4/h;Z)V

    check-cast p2, Ld4/a;

    invoke-virtual {p2, p0, p0}, Ld4/a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    iput-object p1, p0, Lt4/h0;->d:Lkotlin/coroutines/Continuation;

    return-void
.end method


# virtual methods
.method public final M()V
    .locals 3

    iget-object v0, p0, Lt4/h0;->d:Lkotlin/coroutines/Continuation;

    :try_start_0
    invoke-static {v0}, Lc4/b;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    sget-object v1, LY3/j;->a:LY3/j;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ly4/a;->i(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lk4/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS4/b;->j(Ljava/lang/Throwable;)LY3/f;

    move-result-object v1

    invoke-virtual {p0, v1}, Lt4/a;->resumeWith(Ljava/lang/Object;)V

    throw v0
.end method
