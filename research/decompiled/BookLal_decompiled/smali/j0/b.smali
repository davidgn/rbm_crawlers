.class public abstract Lj0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/lifecycle/t;)Lj0/f;
    .locals 2

    new-instance v0, Lj0/f;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/Y;

    invoke-interface {v1}, Landroidx/lifecycle/Y;->getViewModelStore()Landroidx/lifecycle/X;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lj0/f;-><init>(Landroidx/lifecycle/t;Landroidx/lifecycle/X;)V

    return-object v0
.end method
