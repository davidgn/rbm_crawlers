.class public final Lj3/a0;
.super Lj3/c0;
.source "SourceFile"


# instance fields
.field public final e:Lj3/b0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lj3/b0;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lj3/c0;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "-bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "marshaller"

    invoke-static {p2, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lj3/a0;->e:Lj3/b0;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ASCII header is named %s.  Only binary headers may end with %s"

    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final a([B)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/String;

    sget-object v1, LJ2/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object p1, p0, Lj3/a0;->e:Lj3/b0;

    invoke-interface {p1, v0}, Lj3/b0;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)[B
    .locals 1

    iget-object v0, p0, Lj3/a0;->e:Lj3/b0;

    invoke-interface {v0, p1}, Lj3/b0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, LJ2/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method
