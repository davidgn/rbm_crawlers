.class public final LK0/l;
.super LK0/b;
.source "SourceFile"


# virtual methods
.method public final b()Z
    .locals 2

    invoke-super {p0}, LK0/c;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "MULTI_PROCESS"

    invoke-static {v0}, LL4/d;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, LJ0/e;->a:I

    sget-object v0, LK0/m;->b:LK0/b;

    invoke-virtual {v0}, LK0/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, LK0/n;->a:LK0/o;

    invoke-interface {v0}, LK0/o;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->isMultiProcessEnabled()Z

    move-result v0

    return v0

    :cond_1
    invoke-static {}, LK0/m;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0

    :cond_2
    return v1
.end method
