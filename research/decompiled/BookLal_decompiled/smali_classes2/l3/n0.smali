.class public final Ll3/n0;
.super Lj3/i;
.source "SourceFile"


# instance fields
.field public d:Lj3/J;


# virtual methods
.method public final e(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ll3/n0;->d:Lj3/J;

    invoke-static {p1}, Ll3/l;->k(I)Ljava/util/logging/Level;

    move-result-object p1

    sget-object v1, Ll3/n;->c:Ljava/util/logging/Logger;

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p1, p2}, Ll3/n;->a(Lj3/J;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final varargs f(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ll3/n0;->d:Lj3/J;

    invoke-static {p1}, Ll3/l;->k(I)Ljava/util/logging/Level;

    move-result-object p1

    sget-object v1, Ll3/n;->c:Ljava/util/logging/Logger;

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Ll3/n;->a(Lj3/J;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
