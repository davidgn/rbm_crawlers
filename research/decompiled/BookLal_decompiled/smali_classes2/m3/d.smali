.class public final Lm3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final d:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lm3/n;

.field public final b:Lm3/b;

.field public final c:Lj3/G;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lm3/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lm3/d;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lm3/n;Lm3/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj3/G;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v0, v1}, Lj3/G;-><init>(Ljava/util/logging/Level;)V

    iput-object v0, p0, Lm3/d;->c:Lj3/G;

    iput-object p1, p0, Lm3/d;->a:Lm3/n;

    iput-object p2, p0, Lm3/d;->b:Lm3/b;

    return-void
.end method


# virtual methods
.method public final b(ZILQ4/g;I)V
    .locals 6

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lm3/d;->c:Lj3/G;

    const/4 v1, 0x2

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lj3/G;->v(IILQ4/g;IZ)V

    :try_start_0
    iget-object v0, p0, Lm3/d;->b:Lm3/b;

    iget-object v0, v0, Lm3/b;->a:Lo3/i;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v1, v0, Lo3/i;->e:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    int-to-byte p1, p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v0, p2, p4, v1, p1}, Lo3/i;->b(IIBB)V

    if-lez p4, :cond_1

    iget-object p1, v0, Lo3/i;->a:LQ4/r;

    int-to-long v1, p4

    invoke-virtual {p1, p3, v1, v2}, LQ4/r;->o(LQ4/g;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_2
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lm3/d;->a:Lm3/n;

    invoke-virtual {p2, p1}, Lm3/n;->o(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public final c(Lo3/a;[B)V
    .locals 5

    iget-object v0, p0, Lm3/d;->b:Lm3/b;

    invoke-static {p2}, LQ4/j;->h([B)LQ4/j;

    move-result-object v1

    iget-object v2, p0, Lm3/d;->c:Lj3/G;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1, v1}, Lj3/G;->w(IILo3/a;LQ4/j;)V

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lm3/b;->e(Lo3/a;[B)V

    invoke-virtual {v0}, Lm3/b;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lm3/d;->a:Lm3/n;

    invoke-virtual {p2, p1}, Lm3/n;->o(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public final close()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lm3/d;->b:Lm3/b;

    invoke-virtual {v0}, Lm3/b;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/io/IOException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_0
    const-string v2, "Failed closing connection"

    sget-object v3, Lm3/d;->d:Ljava/util/logging/Logger;

    invoke-virtual {v3, v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final e(IIZ)V
    .locals 8

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    iget-object v3, p0, Lm3/d;->c:Lj3/G;

    if-eqz p3, :cond_0

    int-to-long v4, p1

    shl-long/2addr v4, v2

    int-to-long v6, p2

    and-long/2addr v0, v6

    or-long/2addr v0, v4

    invoke-virtual {v3}, Lj3/G;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OUTBOUND"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " PING: ack=true bytes="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lj3/G;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/logging/Logger;

    iget-object v2, v3, Lj3/G;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    int-to-long v4, p1

    shl-long/2addr v4, v2

    int-to-long v6, p2

    and-long/2addr v0, v6

    or-long/2addr v0, v4

    const/4 v2, 0x2

    invoke-virtual {v3, v2, v0, v1}, Lj3/G;->x(IJ)V

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lm3/d;->b:Lm3/b;

    invoke-virtual {v0, p1, p2, p3}, Lm3/b;->f(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lm3/d;->a:Lm3/n;

    invoke-virtual {p2, p1}, Lm3/n;->o(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public final f(ILo3/a;)V
    .locals 2

    const/4 v0, 0x2

    iget-object v1, p0, Lm3/d;->c:Lj3/G;

    invoke-virtual {v1, v0, p1, p2}, Lj3/G;->y(IILo3/a;)V

    :try_start_0
    iget-object v0, p0, Lm3/d;->b:Lm3/b;

    invoke-virtual {v0, p1, p2}, Lm3/b;->g(ILo3/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lm3/d;->a:Lm3/n;

    invoke-virtual {p2, p1}, Lm3/n;->o(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public final flush()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lm3/d;->b:Lm3/b;

    invoke-virtual {v0}, Lm3/b;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lm3/d;->a:Lm3/n;

    invoke-virtual {v1, v0}, Lm3/n;->o(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public final g(IJ)V
    .locals 2

    const/4 v0, 0x2

    iget-object v1, p0, Lm3/d;->c:Lj3/G;

    invoke-virtual {v1, v0, p1, p2, p3}, Lj3/G;->A(IIJ)V

    :try_start_0
    iget-object v0, p0, Lm3/d;->b:Lm3/b;

    invoke-virtual {v0, p1, p2, p3}, Lm3/b;->n(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lm3/d;->a:Lm3/n;

    invoke-virtual {p2, p1}, Lm3/n;->o(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
