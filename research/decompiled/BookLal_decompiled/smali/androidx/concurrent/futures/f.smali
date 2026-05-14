.class public final Landroidx/concurrent/futures/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroidx/concurrent/futures/i;

.field public final b:LN2/o;


# direct methods
.method public constructor <init>(Landroidx/concurrent/futures/i;LN2/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/concurrent/futures/f;->a:Landroidx/concurrent/futures/i;

    iput-object p2, p0, Landroidx/concurrent/futures/f;->b:LN2/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/concurrent/futures/f;->a:Landroidx/concurrent/futures/i;

    iget-object v0, v0, Landroidx/concurrent/futures/i;->value:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/concurrent/futures/f;->b:LN2/o;

    invoke-static {v0}, Landroidx/concurrent/futures/i;->getFutureValue(LN2/o;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/concurrent/futures/i;->ATOMIC_HELPER:Landroidx/concurrent/futures/a;

    iget-object v2, p0, Landroidx/concurrent/futures/f;->a:Landroidx/concurrent/futures/i;

    invoke-virtual {v1, v2, p0, v0}, Landroidx/concurrent/futures/a;->b(Landroidx/concurrent/futures/i;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/concurrent/futures/f;->a:Landroidx/concurrent/futures/i;

    invoke-static {v0}, Landroidx/concurrent/futures/i;->complete(Landroidx/concurrent/futures/i;)V

    :cond_1
    return-void
.end method
