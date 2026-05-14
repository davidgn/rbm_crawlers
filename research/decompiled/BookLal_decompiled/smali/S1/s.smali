.class public final LS1/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile e:LS1/k;


# instance fields
.field public final a:Lb2/a;

.field public final b:Lb2/a;

.field public final c:LX1/e;

.field public final d:LY1/k;


# direct methods
.method public constructor <init>(Lb2/a;Lb2/a;LX1/e;LY1/k;LY1/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS1/s;->a:Lb2/a;

    iput-object p2, p0, LS1/s;->b:Lb2/a;

    iput-object p3, p0, LS1/s;->c:LX1/e;

    iput-object p4, p0, LS1/s;->d:LY1/k;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LB/a;

    const/4 p2, 0x6

    invoke-direct {p1, p5, p2}, LB/a;-><init>(Ljava/lang/Object;I)V

    iget-object p2, p5, LY1/m;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()LS1/s;
    .locals 2

    sget-object v0, LS1/s;->e:LS1/k;

    if-eqz v0, :cond_0

    iget-object v0, v0, LS1/k;->l:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS1/s;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    sget-object v0, LS1/s;->e:LS1/k;

    if-nez v0, :cond_1

    const-class v0, LS1/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, LS1/s;->e:LS1/k;

    if-nez v1, :cond_0

    new-instance v1, LG2/i;

    invoke-direct {v1}, LG2/i;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v1, LG2/i;->b:Landroid/content/Context;

    invoke-virtual {v1}, LG2/i;->b()LS1/k;

    move-result-object p0

    sput-object p0, LS1/s;->e:LS1/k;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method
