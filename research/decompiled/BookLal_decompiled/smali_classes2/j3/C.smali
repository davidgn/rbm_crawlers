.class public final Lj3/C;
.super Ljava/net/SocketAddress;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Ljava/net/InetSocketAddress;

.field public final b:Ljava/net/InetSocketAddress;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    const-string v0, "proxyAddress"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetAddress"

    invoke-static {p2, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The proxy address %s is not resolved"

    invoke-static {v0, v1, p1}, LZ2/l;->n(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lj3/C;->a:Ljava/net/InetSocketAddress;

    iput-object p2, p0, Lj3/C;->b:Ljava/net/InetSocketAddress;

    iput-object p3, p0, Lj3/C;->c:Ljava/lang/String;

    iput-object p4, p0, Lj3/C;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lj3/C;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lj3/C;

    iget-object v0, p1, Lj3/C;->a:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lj3/C;->a:Ljava/net/InetSocketAddress;

    invoke-static {v2, v0}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj3/C;->b:Ljava/net/InetSocketAddress;

    iget-object v2, p1, Lj3/C;->b:Ljava/net/InetSocketAddress;

    invoke-static {v0, v2}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj3/C;->c:Ljava/lang/String;

    iget-object v2, p1, Lj3/C;->c:Ljava/lang/String;

    invoke-static {v0, v2}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj3/C;->d:Ljava/lang/String;

    iget-object p1, p1, Lj3/C;->d:Ljava/lang/String;

    invoke-static {v0, p1}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lj3/C;->a:Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lj3/C;->b:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lj3/C;->c:Ljava/lang/String;

    iget-object v3, p0, Lj3/C;->d:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    const-string v1, "proxyAddr"

    iget-object v2, p0, Lj3/C;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "targetAddr"

    iget-object v2, p0, Lj3/C;->b:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "username"

    iget-object v2, p0, Lj3/C;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lj3/C;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "hasPassword"

    invoke-virtual {v0, v2, v1}, LE4/d;->e(Ljava/lang/String;Z)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
