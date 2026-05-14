.class public final LY3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY3/d;
.implements Ljava/io/Serializable;


# instance fields
.field public a:LC4/k;

.field public b:Ljava/lang/Object;


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LY3/k;->b:Ljava/lang/Object;

    sget-object v1, LY3/i;->a:LY3/i;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LY3/k;->a:LC4/k;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, LC4/k;->invoke()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LY3/k;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, LY3/k;->a:LC4/k;

    :cond_0
    iget-object v0, p0, LY3/k;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LY3/k;->b:Ljava/lang/Object;

    sget-object v1, LY3/i;->a:LY3/i;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, LY3/k;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Lazy value not initialized yet."

    :goto_0
    return-object v0
.end method
