.class public final Lj3/d0;
.super Lj3/c0;
.source "SourceFile"


# instance fields
.field public final e:Lj3/e0;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLj3/e0;)V
    .locals 1

    invoke-direct {p0, p2, p1, p3}, Lj3/c0;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    const-string p2, "-bin"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p3, p0, Lj3/d0;->e:Lj3/e0;

    return-void

    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ASCII header is named %s.  Only binary headers may end with %s"

    invoke-static {p2, p1}, La/a;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method


# virtual methods
.method public final a([B)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj3/d0;->e:Lj3/e0;

    invoke-interface {v0, p1}, Lj3/e0;->g([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)[B
    .locals 1

    iget-object v0, p0, Lj3/d0;->e:Lj3/e0;

    invoke-interface {v0, p1}, Lj3/e0;->a(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method
