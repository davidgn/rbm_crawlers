.class public final synthetic LM/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic a:LM/p;

.field public final synthetic b:Landroidx/lifecycle/n;

.field public final synthetic c:LM/r;


# direct methods
.method public synthetic constructor <init>(LM/p;Landroidx/lifecycle/n;LM/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM/m;->a:LM/p;

    iput-object p2, p0, LM/m;->b:Landroidx/lifecycle/n;

    iput-object p3, p0, LM/m;->c:LM/r;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 5

    iget-object p1, p0, LM/m;->a:LM/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/lifecycle/m;->Companion:Landroidx/lifecycle/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LM/m;->b:Landroidx/lifecycle/n;

    const-string v1, "state"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    goto :goto_0

    :cond_1
    sget-object v1, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    goto :goto_0

    :cond_2
    sget-object v1, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    :goto_0
    iget-object v2, p1, LM/p;->a:Ljava/lang/Runnable;

    iget-object v3, p1, LM/p;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v4, p0, LM/m;->c:LM/r;

    if-ne p2, v1, :cond_3

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    sget-object v1, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    if-ne p2, v1, :cond_4

    invoke-virtual {p1, v4}, LM/p;->b(LM/r;)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/n;)Landroidx/lifecycle/m;

    move-result-object p1

    if-ne p2, p1, :cond_5

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_1
    return-void
.end method
