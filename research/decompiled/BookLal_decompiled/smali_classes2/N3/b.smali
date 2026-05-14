.class public final LN3/b;
.super Lz3/q;
.source "SourceFile"


# virtual methods
.method public final c(Lz3/r;)V
    .locals 1

    sget-object v0, LF3/b;->a:LF3/b;

    invoke-interface {p1, v0}, Lz3/r;->a(LB3/b;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lz3/r;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
