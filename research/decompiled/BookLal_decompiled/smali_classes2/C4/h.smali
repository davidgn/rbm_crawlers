.class public final LC4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field public final a:LE4/i;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LE4/i;

    sget-object v1, LF4/c;->h:LF4/c;

    invoke-direct {v0, p1, p2, p3, v1}, LE4/i;-><init>(Ljava/io/File;JLF4/c;)V

    iput-object v0, p0, LC4/h;->a:LE4/i;

    return-void
.end method


# virtual methods
.method public final b(LC4/F;)V
    .locals 5

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LC4/h;->a:LE4/i;

    iget-object p1, p1, LC4/F;->c:Ljava/lang/Object;

    check-cast p1, LC4/y;

    invoke-static {p1}, LW2/B;->r(LC4/y;)Ljava/lang/String;

    move-result-object p1

    monitor-enter v0

    :try_start_0
    const-string v1, "key"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/i;->g()V

    invoke-virtual {v0}, LE4/i;->b()V

    invoke-static {p1}, LE4/i;->w(Ljava/lang/String;)V

    iget-object v1, v0, LE4/i;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LE4/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit v0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, LE4/i;->u(LE4/f;)V

    iget-wide v1, v0, LE4/i;->f:J

    iget-wide v3, v0, LE4/i;->b:J

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, v0, LE4/i;->s:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, LC4/h;->a:LE4/i;

    invoke-virtual {v0}, LE4/i;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, LC4/h;->a:LE4/i;

    invoke-virtual {v0}, LE4/i;->flush()V

    return-void
.end method
