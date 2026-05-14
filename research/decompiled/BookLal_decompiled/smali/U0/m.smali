.class public final LU0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final l:Ljava/lang/String;


# instance fields
.field public final a:LV0/j;

.field public final b:Landroid/content/Context;

.field public final c:LT0/i;

.field public final d:Landroidx/work/ListenableWorker;

.field public final e:LU0/o;

.field public final f:LJ2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkForegroundRunnable"

    invoke-static {v0}, Landroidx/work/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LU0/m;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LT0/i;Landroidx/work/ListenableWorker;LU0/o;LJ2/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LV0/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LU0/m;->a:LV0/j;

    iput-object p1, p0, LU0/m;->b:Landroid/content/Context;

    iput-object p2, p0, LU0/m;->c:LT0/i;

    iput-object p3, p0, LU0/m;->d:Landroidx/work/ListenableWorker;

    iput-object p4, p0, LU0/m;->e:LU0/o;

    iput-object p5, p0, LU0/m;->f:LJ2/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, LU0/m;->c:LT0/i;

    iget-boolean v0, v0, LT0/i;->q:Z

    if-eqz v0, :cond_1

    invoke-static {}, LI/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LV0/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, LU0/m;->f:LJ2/e;

    iget-object v2, v1, LJ2/e;->d:Ljava/lang/Object;

    check-cast v2, LS1/q;

    new-instance v3, LU0/l;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, LU0/l;-><init>(LU0/m;LV0/j;I)V

    invoke-virtual {v2, v3}, LS1/q;->execute(Ljava/lang/Runnable;)V

    new-instance v2, LU0/l;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, LU0/l;-><init>(LU0/m;LV0/j;I)V

    iget-object v1, v1, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, LS1/q;

    invoke-virtual {v0, v2, v1}, LV0/h;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, LU0/m;->a:LV0/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LV0/j;->i(Ljava/lang/Object;)Z

    return-void
.end method
