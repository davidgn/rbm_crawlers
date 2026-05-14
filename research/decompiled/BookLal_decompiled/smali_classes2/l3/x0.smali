.class public final Ll3/x0;
.super Lj3/H;
.source "SourceFile"


# virtual methods
.method public final a()Lj3/G;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Resolution is pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
