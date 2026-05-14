.class public final Lg1/e;
.super Ly1/h;
.source "SourceFile"


# instance fields
.field public d:Le1/n;


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Le1/A;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Le1/A;->b()I

    move-result p1

    :goto_0
    return p1
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lb1/e;

    check-cast p2, Le1/A;

    iget-object p1, p0, Lg1/e;->d:Le1/n;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p1, Le1/n;->e:LK/g;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, LK/g;->d(Le1/A;Z)V

    :cond_0
    return-void
.end method
