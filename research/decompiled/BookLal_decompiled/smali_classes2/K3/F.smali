.class public final LK3/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/m;
.implements LT4/b;


# instance fields
.field public final a:Lz3/g;

.field public b:LB3/b;


# direct methods
.method public constructor <init>(Lz3/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK3/F;->a:Lz3/g;

    return-void
.end method


# virtual methods
.method public final a(LB3/b;)V
    .locals 0

    iput-object p1, p0, LK3/F;->b:LB3/b;

    iget-object p1, p0, LK3/F;->a:Lz3/g;

    invoke-interface {p1, p0}, Lz3/g;->c(LT4/b;)V

    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, LK3/F;->b:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    return-void
.end method

.method public final f(J)V
    .locals 0

    return-void
.end method

.method public final onComplete()V
    .locals 1

    iget-object v0, p0, LK3/F;->a:Lz3/g;

    invoke-interface {v0}, Lz3/g;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LK3/F;->a:Lz3/g;

    invoke-interface {v0, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LK3/F;->a:Lz3/g;

    invoke-interface {v0, p1}, Lz3/g;->onNext(Ljava/lang/Object;)V

    return-void
.end method
