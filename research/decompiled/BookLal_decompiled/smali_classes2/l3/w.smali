.class public final Ll3/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lj3/b;

.field public c:Lj3/C;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ll3/w;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ll3/w;

    iget-object v0, p0, Ll3/w;->a:Ljava/lang/String;

    iget-object v2, p1, Ll3/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll3/w;->b:Lj3/b;

    iget-object v2, p1, Ll3/w;->b:Lj3/b;

    invoke-virtual {v0, v2}, Lj3/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0, v0}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll3/w;->c:Lj3/C;

    iget-object p1, p1, Ll3/w;->c:Lj3/C;

    invoke-static {v0, p1}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Ll3/w;->a:Ljava/lang/String;

    iget-object v1, p0, Ll3/w;->b:Lj3/b;

    const/4 v2, 0x0

    iget-object v3, p0, Ll3/w;->c:Lj3/C;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
