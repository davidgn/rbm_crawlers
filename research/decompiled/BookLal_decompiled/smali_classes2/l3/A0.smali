.class public final Ll3/A0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic a:Ll3/L0;


# direct methods
.method public constructor <init>(Ll3/L0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/A0;->a:Ll3/L0;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    sget-object p1, Ll3/L0;->d0:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ll3/A0;->a:Ll3/L0;

    iget-object v3, v2, Ll3/L0;->a:Lj3/J;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] Uncaught exception in the SynchronizationContext. Panic!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-boolean p1, v2, Ll3/L0;->y:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, v2, Ll3/L0;->y:Z

    invoke-virtual {v2, p1}, Ll3/L0;->q(Z)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Ll3/L0;->v(Z)V

    new-instance p1, Ll3/z0;

    invoke-direct {p1, p2}, Ll3/z0;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, v2, Ll3/L0;->x:Lj3/B;

    iget-object p2, v2, Ll3/L0;->D:Ll3/J;

    invoke-virtual {p2, p1}, Ll3/J;->h(Lj3/B;)V

    iget-object p1, v2, Ll3/L0;->P:Ll3/I0;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ll3/I0;->i(Lj3/H;)V

    iget-object p1, v2, Ll3/L0;->N:Ll3/l;

    const/4 p2, 0x4

    const-string v0, "PANIC! Entering TRANSIENT_FAILURE"

    invoke-virtual {p1, p2, v0}, Ll3/l;->e(ILjava/lang/String;)V

    sget-object p1, Lj3/q;->c:Lj3/q;

    iget-object p2, v2, Ll3/L0;->r:Le1/m;

    invoke-virtual {p2, p1}, Le1/m;->b(Lj3/q;)V

    :goto_0
    return-void
.end method
