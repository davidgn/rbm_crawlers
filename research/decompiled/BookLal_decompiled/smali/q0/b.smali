.class public final Lq0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/adservices/measurement/MeasurementManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/common/api/a;->A()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "context.getSystemService\u2026:class.java\n            )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a;->e(Ljava/lang/Object;)Landroid/adservices/measurement/MeasurementManager;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/b;->a:Landroid/adservices/measurement/MeasurementManager;

    return-void
.end method


# virtual methods
.method public a(Lq0/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/a;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Lt4/f;

    invoke-static {p2}, Lc4/b;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lt4/f;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Lt4/f;->s()V

    invoke-static {}, Lcom/google/android/gms/common/api/a;->r()V

    const/4 p1, 0x0

    throw p1
.end method

.method public b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lt4/f;

    invoke-static {p1}, Lc4/b;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lt4/f;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v0}, Lt4/f;->s()V

    iget-object p1, p0, Lq0/b;->a:Landroid/adservices/measurement/MeasurementManager;

    new-instance v1, Lm/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lm/a;-><init>(I)V

    new-instance v2, LI/h;

    invoke-direct {v2, v0}, LI/h;-><init>(Lt4/f;)V

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/api/a;->u(Landroid/adservices/measurement/MeasurementManager;Lm/a;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Lt4/f;->r()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/net/Uri;Landroid/view/InputEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lt4/f;

    invoke-static {p3}, Lc4/b;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p3

    const/4 v1, 0x1

    invoke-direct {v0, v1, p3}, Lt4/f;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v0}, Lt4/f;->s()V

    iget-object p3, p0, Lq0/b;->a:Landroid/adservices/measurement/MeasurementManager;

    new-instance v1, Lm/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lm/a;-><init>(I)V

    new-instance v2, LI/h;

    invoke-direct {v2, v0}, LI/h;-><init>(Lt4/f;)V

    invoke-static {p3, p1, p2, v1, v2}, Lcom/google/android/gms/common/api/a;->s(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Landroid/view/InputEvent;Lm/a;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Lt4/f;->r()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lc4/a;->a:Lc4/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1
.end method

.method public d(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lt4/f;

    invoke-static {p2}, Lc4/b;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lt4/f;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v0}, Lt4/f;->s()V

    iget-object p2, p0, Lq0/b;->a:Landroid/adservices/measurement/MeasurementManager;

    new-instance v1, Lm/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lm/a;-><init>(I)V

    new-instance v2, LI/h;

    invoke-direct {v2, v0}, LI/h;-><init>(Lt4/f;)V

    invoke-static {p2, p1, v1, v2}, Lcom/google/android/gms/common/api/a;->t(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Lm/a;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Lt4/f;->r()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lc4/a;->a:Lc4/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1
.end method

.method public e(Lq0/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Lt4/f;

    invoke-static {p2}, Lc4/b;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lt4/f;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Lt4/f;->s()V

    invoke-static {}, Lcom/google/android/gms/common/api/a;->B()V

    const/4 p1, 0x0

    throw p1
.end method

.method public f(Lq0/d;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/d;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Lt4/f;

    invoke-static {p2}, Lc4/b;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lt4/f;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Lt4/f;->s()V

    invoke-static {}, Lcom/google/android/gms/common/api/a;->D()V

    const/4 p1, 0x0

    throw p1
.end method
