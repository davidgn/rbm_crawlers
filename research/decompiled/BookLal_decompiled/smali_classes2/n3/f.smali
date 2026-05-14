.class public final Ln3/f;
.super Ln3/j;
.source "SourceFile"


# instance fields
.field public final e:LJ2/e;

.field public final f:LJ2/e;

.field public final g:LJ2/e;

.field public final h:LJ2/e;

.field public final i:I


# direct methods
.method public constructor <init>(LJ2/e;LJ2/e;LJ2/e;LJ2/e;Ljava/security/Provider;I)V
    .locals 0

    invoke-direct {p0, p5}, Ln3/j;-><init>(Ljava/security/Provider;)V

    iput-object p1, p0, Ln3/f;->e:LJ2/e;

    iput-object p2, p0, Ln3/f;->f:LJ2/e;

    iput-object p3, p0, Ln3/f;->g:LJ2/e;

    iput-object p4, p0, Ln3/f;->h:LJ2/e;

    iput p6, p0, Ln3/f;->i:I

    return-void
.end method


# virtual methods
.method public final c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ln3/f;->e:LJ2/e;

    invoke-virtual {v1, p1, v0}, LJ2/e;->G(Ljavax/net/ssl/SSLSocket;[Ljava/lang/Object;)V

    iget-object v0, p0, Ln3/f;->f:LJ2/e;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, LJ2/e;->G(Ljavax/net/ssl/SSLSocket;[Ljava/lang/Object;)V

    :cond_0
    iget-object p2, p0, Ln3/f;->h:LJ2/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, LJ2/e;->x(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Ln3/j;->b(Ljava/util/List;)[B

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, LJ2/e;->H(Ljavax/net/ssl/SSLSocket;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final d(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Ln3/f;->g:LJ2/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, LJ2/e;->x(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, LJ2/e;->H(Ljavax/net/ssl/SSLSocket;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_2

    new-instance v3, Ljava/lang/String;

    sget-object v0, Ln3/m;->b:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_2
    return-object v3
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Ln3/f;->i:I

    return v0
.end method
