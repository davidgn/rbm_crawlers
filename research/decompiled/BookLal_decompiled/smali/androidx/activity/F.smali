.class public final Landroidx/activity/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/c;


# instance fields
.field public final a:Landroidx/fragment/app/P;

.field public final synthetic b:Landroidx/activity/G;


# direct methods
.method public constructor <init>(Landroidx/activity/G;Landroidx/fragment/app/P;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/activity/F;->b:Landroidx/activity/G;

    iput-object p2, p0, Landroidx/activity/F;->a:Landroidx/fragment/app/P;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 4

    iget-object v0, p0, Landroidx/activity/F;->b:Landroidx/activity/G;

    iget-object v1, v0, Landroidx/activity/G;->b:LZ3/e;

    iget-object v2, p0, Landroidx/activity/F;->a:Landroidx/fragment/app/P;

    invoke-virtual {v1, v2}, LZ3/e;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/activity/G;->c:Landroidx/fragment/app/P;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Landroidx/activity/G;->c:Landroidx/fragment/app/P;

    :cond_0
    iget-object v0, v2, Landroidx/fragment/app/P;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v2, Landroidx/fragment/app/P;->c:Lkotlin/jvm/internal/h;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lk4/a;->invoke()Ljava/lang/Object;

    :cond_1
    iput-object v3, v2, Landroidx/fragment/app/P;->c:Lkotlin/jvm/internal/h;

    return-void
.end method
