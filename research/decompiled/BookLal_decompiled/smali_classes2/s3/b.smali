.class public final Ls3/b;
.super Lj3/S;
.source "SourceFile"


# instance fields
.field public final synthetic c:Ls3/d;


# direct methods
.method public constructor <init>(Ls3/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/b;->c:Ls3/d;

    return-void
.end method


# virtual methods
.method public final c(Lj3/r0;)V
    .locals 3

    iget-object v0, p0, Ls3/b;->c:Ls3/d;

    iget-object v0, v0, Ls3/d;->d:Ls3/c;

    sget-object v1, Lj3/q;->c:Lj3/q;

    new-instance v2, Ls3/a;

    invoke-direct {v2, p1}, Ls3/a;-><init>(Lj3/r0;)V

    invoke-virtual {v0, v1, v2}, Ls3/c;->i(Lj3/q;Lj3/B;)V

    return-void
.end method

.method public final d(Lj3/O;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GracefulSwitchLoadBalancer must switch to a load balancing policy before handling ResolvedAddresses"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f()V
    .locals 0

    return-void
.end method
