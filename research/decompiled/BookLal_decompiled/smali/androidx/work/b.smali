.class public final Landroidx/work/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Landroidx/work/u;

.field public final d:Lz2/e;

.field public final e:LK0/j;

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Ly3/c;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/4 v1, 0x4

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-instance v3, Landroidx/work/a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroidx/work/a;-><init>(Z)V

    invoke-static {p1, v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/b;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-instance v2, Landroidx/work/a;

    invoke-direct {v2, v0}, Landroidx/work/a;-><init>(Z)V

    invoke-static {p1, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/b;->b:Ljava/util/concurrent/ExecutorService;

    sget-object p1, Landroidx/work/v;->a:Ljava/lang/String;

    new-instance p1, Landroidx/work/u;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/b;->c:Landroidx/work/u;

    new-instance p1, Lz2/e;

    const/16 v0, 0xe

    invoke-direct {p1, v0}, Lz2/e;-><init>(I)V

    iput-object p1, p0, Landroidx/work/b;->d:Lz2/e;

    new-instance p1, LK0/j;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, LK0/j;-><init>(I)V

    iput-object p1, p0, Landroidx/work/b;->e:LK0/j;

    iput v1, p0, Landroidx/work/b;->f:I

    const p1, 0x7fffffff

    iput p1, p0, Landroidx/work/b;->g:I

    const/16 p1, 0x14

    iput p1, p0, Landroidx/work/b;->h:I

    return-void
.end method
