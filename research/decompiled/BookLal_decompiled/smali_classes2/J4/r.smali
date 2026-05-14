.class public final LJ4/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ4/y;


# instance fields
.field public final a:LQ4/s;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(LQ4/s;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/r;->a:LQ4/s;

    return-void
.end method


# virtual methods
.method public final a()LQ4/A;
    .locals 1

    iget-object v0, p0, LJ4/r;->a:LQ4/s;

    iget-object v0, v0, LQ4/s;->a:LQ4/y;

    invoke-interface {v0}, LQ4/y;->a()LQ4/A;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final l(LQ4/g;J)J
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget v0, p0, LJ4/r;->e:I

    const-wide/16 v1, -0x1

    iget-object v3, p0, LJ4/r;->a:LQ4/s;

    if-nez v0, :cond_4

    iget v0, p0, LJ4/r;->f:I

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, LQ4/s;->w(J)V

    const/4 v0, 0x0

    iput v0, p0, LJ4/r;->f:I

    iget v0, p0, LJ4/r;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget v0, p0, LJ4/r;->d:I

    invoke-static {v3}, LD4/c;->t(LQ4/s;)I

    move-result v1

    iput v1, p0, LJ4/r;->e:I

    iput v1, p0, LJ4/r;->b:I

    invoke-virtual {v3}, LQ4/s;->f()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v3}, LQ4/s;->f()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, LJ4/r;->c:I

    sget-object v2, LJ4/s;->d:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LJ4/f;->a:LQ4/j;

    iget v4, p0, LJ4/r;->d:I

    iget v5, p0, LJ4/r;->b:I

    iget v6, p0, LJ4/r;->c:I

    const/4 v7, 0x1

    invoke-static {v7, v4, v5, v1, v6}, LJ4/f;->a(ZIIII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, LQ4/s;->q()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, LJ4/r;->d:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_3

    if-ne v2, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_CONTINUATION streamId changed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " != TYPE_CONTINUATION"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, LQ4/s;->l(LQ4/g;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_5

    return-wide v1

    :cond_5
    iget p3, p0, LJ4/r;->e:I

    long-to-int v0, p1

    sub-int/2addr p3, v0

    iput p3, p0, LJ4/r;->e:I

    return-wide p1
.end method
