.class public final Ll3/F0;
.super Lj3/h;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ll3/I0;


# direct methods
.method public constructor <init>(Ll3/I0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/F0;->a:Ll3/I0;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/F0;->a:Ll3/I0;

    iget-object v0, v0, Ll3/I0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Lj3/h0;Lj3/g;)Lj3/k;
    .locals 8

    new-instance v7, Ll3/r;

    iget-object v0, p0, Ll3/F0;->a:Ll3/I0;

    iget-object v0, v0, Ll3/I0;->d:Ll3/L0;

    sget-object v1, Ll3/L0;->d0:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p2, Lj3/g;->b:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v0, v0, Ll3/L0;->h:Ljava/util/concurrent/Executor;

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v0, p0, Ll3/F0;->a:Ll3/I0;

    iget-object v0, v0, Ll3/I0;->d:Ll3/L0;

    iget-object v4, v0, Ll3/L0;->a0:Lj1/a;

    iget-boolean v0, v0, Ll3/L0;->I:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    move-object v5, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Ll3/F0;->a:Ll3/I0;

    iget-object v0, v0, Ll3/I0;->d:Ll3/L0;

    iget-object v0, v0, Ll3/L0;->f:Ll3/k;

    iget-object v0, v0, Ll3/k;->a:Lm3/f;

    iget-object v0, v0, Lm3/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_1

    :goto_2
    iget-object v0, p0, Ll3/F0;->a:Ll3/I0;

    iget-object v0, v0, Ll3/I0;->d:Ll3/L0;

    iget-object v6, v0, Ll3/L0;->L:LR0/i;

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Ll3/r;-><init>(Lj3/h0;Ljava/util/concurrent/Executor;Lj3/g;Lj1/a;Ljava/util/concurrent/ScheduledExecutorService;LR0/i;)V

    iget-object p1, p0, Ll3/F0;->a:Ll3/I0;

    iget-object p1, p1, Ll3/I0;->d:Ll3/L0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Ll3/F0;->a:Ll3/I0;

    iget-object p1, p1, Ll3/I0;->d:Ll3/L0;

    iget-object p1, p1, Ll3/L0;->n:Lj3/x;

    iput-object p1, v7, Ll3/r;->p:Lj3/x;

    return-object v7
.end method
