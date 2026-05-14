.class public abstract Lj3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public getAttributes()Lj3/b;
    .locals 1

    sget-object v0, Lj3/b;->b:Lj3/b;

    return-object v0
.end method

.method public abstract halfClose()V
.end method

.method public isReady()Z
    .locals 1

    instance-of v0, p0, Lj3/l;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract request(I)V
.end method

.method public abstract sendMessage(Ljava/lang/Object;)V
.end method

.method public setMessageCompression(Z)V
    .locals 0

    return-void
.end method

.method public abstract start(Lj3/j;Lj3/f0;)V
.end method
