.class public abstract Lr0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/adservices/topics/TopicsManager;


# direct methods
.method public constructor <init>(Landroid/adservices/topics/TopicsManager;)V
    .locals 1

    const-string v0, "mTopicsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/f;->a:Landroid/adservices/topics/TopicsManager;

    return-void
.end method

.method public static c(Lr0/f;Lr0/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/f;",
            "Lr0/a;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lr0/e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lr0/e;

    iget v1, v0, Lr0/e;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr0/e;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr0/e;

    invoke-direct {v0, p0, p2}, Lr0/e;-><init>(Lr0/f;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lr0/e;->b:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, Lr0/e;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lr0/e;->a:Lr0/f;

    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lr0/f;->a(Lr0/a;)Landroid/adservices/topics/GetTopicsRequest;

    move-result-object p1

    iput-object p0, v0, Lr0/e;->a:Lr0/f;

    iput v3, v0, Lr0/e;->d:I

    new-instance p2, Lt4/f;

    invoke-static {v0}, Lc4/b;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-direct {p2, v3, v0}, Lt4/f;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p2}, Lt4/f;->s()V

    iget-object v0, p0, Lr0/f;->a:Landroid/adservices/topics/TopicsManager;

    new-instance v2, Lm/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lm/a;-><init>(I)V

    new-instance v3, LI/h;

    invoke-direct {v3, p2}, LI/h;-><init>(Lt4/f;)V

    invoke-static {v0, p1, v2, v3}, Lcom/google/android/gms/common/api/a;->v(Landroid/adservices/topics/TopicsManager;Landroid/adservices/topics/GetTopicsRequest;Lm/a;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {p2}, Lt4/f;->r()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/common/api/a;->j(Ljava/lang/Object;)Landroid/adservices/topics/GetTopicsResponse;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "response"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a;->q(Landroid/adservices/topics/GetTopicsResponse;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/api/a;->k(Ljava/lang/Object;)Landroid/adservices/topics/Topic;

    move-result-object p2

    new-instance v6, Lr0/c;

    invoke-static {p2}, Lcom/google/android/gms/common/api/a;->c(Landroid/adservices/topics/Topic;)J

    move-result-wide v1

    invoke-static {p2}, Lcom/google/android/gms/common/api/a;->z(Landroid/adservices/topics/Topic;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/common/api/a;->a(Landroid/adservices/topics/Topic;)I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lr0/c;-><init>(JJI)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p1, Lr0/b;

    invoke-direct {p1, p0}, Lr0/b;-><init>(Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public a(Lr0/a;)Landroid/adservices/topics/GetTopicsRequest;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/common/api/a;->f()Landroid/adservices/topics/GetTopicsRequest$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/api/a;->g(Landroid/adservices/topics/GetTopicsRequest$Builder;)Landroid/adservices/topics/GetTopicsRequest$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/api/a;->i(Landroid/adservices/topics/GetTopicsRequest$Builder;)Landroid/adservices/topics/GetTopicsRequest;

    move-result-object p1

    const-string v0, "Builder()\n            .s\u2026ame)\n            .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Lr0/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/a;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lr0/f;->c(Lr0/f;Lr0/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
