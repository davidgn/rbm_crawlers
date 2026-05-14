.class public final Lo0/d;
.super Lo0/e;
.source "SourceFile"


# instance fields
.field public final a:Lq0/b;


# direct methods
.method public constructor <init>(Lq0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/d;->a:Lq0/b;

    return-void
.end method


# virtual methods
.method public b(Landroid/net/Uri;Landroid/view/InputEvent;)LN2/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            ")",
            "LN2/o;"
        }
    .end annotation

    const-string v0, "attributionSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lt4/E;->a:LA4/e;

    invoke-static {v0}, Lt4/w;->a(Lb4/h;)Ly4/e;

    move-result-object v0

    new-instance v1, Lo0/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lo0/b;-><init>(Lo0/d;Landroid/net/Uri;Landroid/view/InputEvent;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v0, v2, v1, p1}, Lt4/w;->b(Lt4/u;Lt4/v;Lkotlin/jvm/functions/Function2;I)Lt4/A;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/a;->e(Lt4/A;)Landroidx/concurrent/futures/m;

    move-result-object p1

    return-object p1
.end method

.method public c(Lq0/a;)LN2/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/a;",
            ")",
            "LN2/o;"
        }
    .end annotation

    const-string v0, "deletionRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public d()LN2/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN2/o;"
        }
    .end annotation

    sget-object v0, Lt4/E;->a:LA4/e;

    invoke-static {v0}, Lt4/w;->a(Lb4/h;)Ly4/e;

    move-result-object v0

    new-instance v1, Lo0/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo0/a;-><init>(Lo0/d;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v1, v3}, Lt4/w;->b(Lt4/u;Lt4/v;Lkotlin/jvm/functions/Function2;I)Lt4/A;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/a;->e(Lt4/A;)Landroidx/concurrent/futures/m;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/net/Uri;)LN2/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "LN2/o;"
        }
    .end annotation

    const-string v0, "trigger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lt4/E;->a:LA4/e;

    invoke-static {v0}, Lt4/w;->a(Lb4/h;)Ly4/e;

    move-result-object v0

    new-instance v1, Lo0/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lo0/c;-><init>(Lo0/d;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v0, v2, v1, p1}, Lt4/w;->b(Lt4/u;Lt4/v;Lkotlin/jvm/functions/Function2;I)Lt4/A;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/a;->e(Lt4/A;)Landroidx/concurrent/futures/m;

    move-result-object p1

    return-object p1
.end method

.method public f(Lq0/c;)LN2/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c;",
            ")",
            "LN2/o;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public g(Lq0/d;)LN2/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/d;",
            ")",
            "LN2/o;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
