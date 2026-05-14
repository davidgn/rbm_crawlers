.class public final Lj0/c;
.super Landroidx/lifecycle/B;
.source "SourceFile"

# interfaces
.implements Lk0/d;


# instance fields
.field public final l:Lk0/e;

.field public m:Ljava/lang/Object;

.field public n:Lj0/d;


# direct methods
.method public constructor <init>(Lk0/e;)V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/A;-><init>()V

    iput-object p1, p0, Lj0/c;->l:Lk0/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lk0/e;->registerListener(ILk0/d;)V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    iget-object v0, p0, Lj0/c;->l:Lk0/e;

    invoke-virtual {v0}, Lk0/e;->startLoading()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lj0/c;->l:Lk0/e;

    invoke-virtual {v0}, Lk0/e;->stopLoading()V

    return-void
.end method

.method public final h(Landroidx/lifecycle/C;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/A;->h(Landroidx/lifecycle/C;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lj0/c;->m:Ljava/lang/Object;

    iput-object p1, p0, Lj0/c;->n:Lj0/d;

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lj0/c;->m:Ljava/lang/Object;

    iget-object v1, p0, Lj0/c;->n:Lj0/d;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-super {p0, v1}, Landroidx/lifecycle/A;->h(Landroidx/lifecycle/C;)V

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/A;->d(Landroidx/lifecycle/t;Landroidx/lifecycle/C;)V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #0 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj0/c;->l:Lk0/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
