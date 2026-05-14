.class public final Lt4/t0;
.super Ly4/t;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:J


# direct methods
.method public constructor <init>(JLd4/c;)V
    .locals 1

    invoke-interface {p3}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ly4/t;-><init>(Lb4/h;Lkotlin/coroutines/Continuation;)V

    iput-wide p1, p0, Lt4/t0;->e:J

    return-void
.end method


# virtual methods
.method public final I()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lt4/g0;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(timeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lt4/t0;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final run()V
    .locals 4

    sget-object v0, Lb4/d;->a:Lb4/d;

    iget-object v1, p0, Lt4/a;->c:Lb4/h;

    invoke-interface {v1, v0}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object v0

    instance-of v1, v0, Lt4/B;

    if-eqz v1, :cond_0

    check-cast v0, Lt4/B;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lt4/y;->a:Lt4/B;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timed out waiting for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lt4/t0;->e:J

    const-string v3, " ms"

    invoke-static {v0, v1, v2, v3}, LC/a;->n(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lt4/s0;

    invoke-direct {v1, v0, p0}, Lt4/s0;-><init>(Ljava/lang/String;Lt4/t0;)V

    invoke-virtual {p0, v1}, Lt4/g0;->o(Ljava/lang/Object;)Z

    return-void
.end method
