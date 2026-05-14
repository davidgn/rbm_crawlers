.class public interface abstract Landroidx/webkit/ProfileStore;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getInstance()Landroidx/webkit/ProfileStore;
    .locals 2

    sget-object v0, LK0/m;->f:LK0/l;

    invoke-virtual {v0}, LK0/l;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, LK0/h;->b:LK0/h;

    if-nez v0, :cond_0

    new-instance v0, LK0/h;

    sget-object v1, LK0/n;->a:LK0/o;

    invoke-interface {v1}, LK0/o;->getProfileStore()Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;

    move-result-object v1

    invoke-direct {v0, v1}, LK0/h;-><init>(Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;)V

    sput-object v0, LK0/h;->b:LK0/h;

    :cond_0
    sget-object v0, LK0/h;->b:LK0/h;

    return-object v0

    :cond_1
    invoke-static {}, LK0/m;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public abstract deleteProfile(Ljava/lang/String;)Z
.end method

.method public abstract getAllProfileNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOrCreateProfile(Ljava/lang/String;)LJ0/b;
.end method

.method public abstract getProfile(Ljava/lang/String;)LJ0/b;
.end method
