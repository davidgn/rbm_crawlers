.class public final Lp0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr0/f;


# direct methods
.method public constructor <init>(Lr0/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/b;->a:Lr0/f;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lp0/b;
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lm0/a;->a:Lm0/a;

    const/4 v2, 0x0

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_0

    invoke-virtual {v1}, Lm0/a;->a()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x5

    const-string v7, "context.getSystemService\u2026opicsManager::class.java)"

    if-lt v4, v6, :cond_1

    new-instance v0, Lr0/d;

    invoke-static {}, Lcom/google/android/gms/common/api/a;->C()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v7}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/api/a;->l(Ljava/lang/Object;)Landroid/adservices/topics/TopicsManager;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lr0/d;-><init>(Landroid/adservices/topics/TopicsManager;I)V

    goto :goto_1

    :cond_1
    if-lt v0, v3, :cond_2

    invoke-virtual {v1}, Lm0/a;->a()I

    move-result v2

    :cond_2
    const/4 v0, 0x4

    if-ne v2, v0, :cond_3

    new-instance v0, Lr0/d;

    invoke-static {}, Lcom/google/android/gms/common/api/a;->C()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v7}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/api/a;->l(Ljava/lang/Object;)Landroid/adservices/topics/TopicsManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr0/d;-><init>(Landroid/adservices/topics/TopicsManager;I)V

    goto :goto_1

    :cond_3
    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_4

    new-instance v5, Lp0/b;

    invoke-direct {v5, v0}, Lp0/b;-><init>(Lr0/f;)V

    :cond_4
    return-object v5
.end method


# virtual methods
.method public b(Lr0/a;)LN2/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/a;",
            ")",
            "LN2/o;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lt4/E;->a:LA4/e;

    sget-object v0, Ly4/o;->a:Lt4/i0;

    invoke-static {v0}, Lt4/w;->a(Lb4/h;)Ly4/e;

    move-result-object v0

    new-instance v1, Lp0/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lp0/a;-><init>(Lp0/b;Lr0/a;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v0, v2, v1, p1}, Lt4/w;->b(Lt4/u;Lt4/v;Lkotlin/jvm/functions/Function2;I)Lt4/A;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/a;->e(Lt4/A;)Landroidx/concurrent/futures/m;

    move-result-object p1

    return-object p1
.end method
