.class public final LE4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field public static final A:Ljava/lang/String;

.field public static final B:Ljava/lang/String;

.field public static final x:Ls4/d;

.field public static final y:Ljava/lang/String;

.field public static final z:Ljava/lang/String;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:J

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public final e:Ljava/io/File;

.field public f:J

.field public l:LQ4/r;

.field public final m:Ljava/util/LinkedHashMap;

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:J

.field public final v:LF4/b;

.field public final w:LE4/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls4/d;

    const-string v1, "[a-z0-9_-]{1,120}"

    invoke-direct {v0, v1}, Ls4/d;-><init>(Ljava/lang/String;)V

    sput-object v0, LE4/i;->x:Ls4/d;

    const-string v0, "CLEAN"

    sput-object v0, LE4/i;->y:Ljava/lang/String;

    const-string v0, "DIRTY"

    sput-object v0, LE4/i;->z:Ljava/lang/String;

    const-string v0, "REMOVE"

    sput-object v0, LE4/i;->A:Ljava/lang/String;

    const-string v0, "READ"

    sput-object v0, LE4/i;->B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JLF4/c;)V
    .locals 4

    const-string v0, "taskRunner"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE4/i;->a:Ljava/io/File;

    iput-wide p2, p0, LE4/i;->b:J

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, LE4/i;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p4}, LF4/c;->e()LF4/b;

    move-result-object p4

    iput-object p4, p0, LE4/i;->v:LF4/b;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, LD4/c;->g:Ljava/lang/String;

    const-string v1, " Cache"

    invoke-static {p4, v0, v1}, LC/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance v0, LE4/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p4, v1}, LE4/h;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v0, p0, LE4/i;->w:LE4/h;

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-lez p2, :cond_0

    new-instance p2, Ljava/io/File;

    const-string p3, "journal"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, LE4/i;->c:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    const-string p3, "journal.tmp"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, LE4/i;->d:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    const-string p3, "journal.bkp"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, LE4/i;->e:Ljava/io/File;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    sget-object v0, LE4/i;->x:Ls4/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "input"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Ls4/d;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LE4/i;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "cache is closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c(LE4/d;Z)V
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "editor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LE4/d;->c:Ljava/lang/Object;

    check-cast v0, LE4/f;

    iget-object v1, v0, LE4/f;->g:LE4/d;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    iget-boolean v3, v0, LE4/f;->e:Z

    if-nez v3, :cond_2

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p1, LE4/d;->d:Ljava/lang/Object;

    check-cast v4, [Z

    invoke-static {v4}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_1

    iget-object v4, v0, LE4/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    const-string v5, "file"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, LE4/d;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, LE4/d;->b()V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move p1, v2

    :goto_1
    if-ge p1, v1, :cond_6

    iget-object v3, v0, LE4/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    if-eqz p2, :cond_3

    iget-boolean v4, v0, LE4/f;->f:Z

    if-nez v4, :cond_3

    sget-object v4, LK4/a;->a:LK4/a;

    invoke-virtual {v4, v3}, LK4/a;->c(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v0, LE4/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v4, v3, v5}, LK4/a;->d(Ljava/io/File;Ljava/io/File;)V

    iget-object v3, v0, LE4/f;->b:[J

    aget-wide v6, v3, p1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v5, v0, LE4/f;->b:[J

    aput-wide v3, v5, p1

    iget-wide v8, p0, LE4/i;->f:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v3

    iput-wide v8, p0, LE4/i;->f:J

    goto :goto_2

    :cond_3
    const-string v4, "file"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "failed to delete "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    iput-object p1, v0, LE4/f;->g:LE4/d;

    iget-boolean p1, v0, LE4/f;->f:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0, v0}, LE4/i;->u(LE4/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :try_start_2
    iget p1, p0, LE4/i;->n:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, LE4/i;->n:I

    iget-object p1, p0, LE4/i;->l:LQ4/r;

    invoke-static {p1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-boolean v3, v0, LE4/f;->e:Z

    const/16 v4, 0x20

    const/16 v5, 0xa

    if-nez v3, :cond_9

    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    iget-object p2, p0, LE4/i;->m:Ljava/util/LinkedHashMap;

    iget-object v1, v0, LE4/f;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, LE4/i;->A:Ljava/lang/String;

    invoke-virtual {p1, p2}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {p1, v4}, LQ4/r;->d(I)LQ4/h;

    iget-object p2, v0, LE4/f;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {p1, v5}, LQ4/r;->d(I)LQ4/h;

    goto :goto_5

    :cond_9
    :goto_3
    iput-boolean v1, v0, LE4/f;->e:Z

    sget-object v1, LE4/i;->y:Ljava/lang/String;

    invoke-virtual {p1, v1}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {p1, v4}, LQ4/r;->d(I)LQ4/h;

    iget-object v1, v0, LE4/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    iget-object v1, v0, LE4/f;->b:[J

    array-length v3, v1

    :goto_4
    if-ge v2, v3, :cond_a

    aget-wide v6, v1, v2

    invoke-virtual {p1, v4}, LQ4/r;->d(I)LQ4/h;

    invoke-virtual {p1, v6, v7}, LQ4/r;->p(J)LQ4/h;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p1, v5}, LQ4/r;->d(I)LQ4/h;

    if-eqz p2, :cond_b

    iget-wide v1, p0, LE4/i;->u:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, LE4/i;->u:J

    iput-wide v1, v0, LE4/f;->i:J

    :cond_b
    :goto_5
    invoke-virtual {p1}, LQ4/r;->flush()V

    iget-wide p1, p0, LE4/i;->f:J

    iget-wide v0, p0, LE4/i;->b:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_c

    invoke-virtual {p0}, LE4/i;->m()Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    iget-object p1, p0, LE4/i;->v:LF4/b;

    iget-object p2, p0, LE4/i;->w:LE4/h;

    invoke-static {p1, p2}, LF4/b;->d(LF4/b;LF4/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_d
    monitor-exit p0

    return-void

    :cond_e
    :try_start_3
    const-string p1, "Check failed."

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LE4/i;->q:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, LE4/i;->r:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, LE4/i;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v2, "lruEntries.values"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v3, v2, [LE4/f;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LE4/f;

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    iget-object v4, v4, LE4/f;->g:LE4/d;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, LE4/d;->h()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LE4/i;->v()V

    iget-object v0, p0, LE4/i;->l:LQ4/r;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, LQ4/r;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, LE4/i;->l:LQ4/r;

    iput-boolean v1, p0, LE4/i;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_2
    :try_start_1
    iput-boolean v1, p0, LE4/i;->r:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized e(JLjava/lang/String;)LE4/d;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LE4/i;->g()V

    invoke-virtual {p0}, LE4/i;->b()V

    invoke-static {p3}, LE4/i;->w(Ljava/lang/String;)V

    iget-object v0, p0, LE4/i;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE4/f;

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-wide v3, v0, LE4/f;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, v3, p1

    if-eqz p1, :cond_1

    :cond_0
    monitor-exit p0

    return-object v2

    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    iget-object p1, v0, LE4/f;->g:LE4/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_3

    monitor-exit p0

    return-object v2

    :cond_3
    if-eqz v0, :cond_4

    :try_start_2
    iget p1, v0, LE4/f;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_4

    monitor-exit p0

    return-object v2

    :cond_4
    :try_start_3
    iget-boolean p1, p0, LE4/i;->s:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, LE4/i;->t:Z

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, LE4/i;->l:LQ4/r;

    invoke-static {p1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    sget-object p2, LE4/i;->z:Ljava/lang/String;

    invoke-virtual {p1, p2}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, LQ4/r;->d(I)LQ4/h;

    invoke-interface {p1, p3}, LQ4/h;->h(Ljava/lang/String;)LQ4/h;

    const/16 p2, 0xa

    invoke-interface {p1, p2}, LQ4/h;->d(I)LQ4/h;

    invoke-virtual {p1}, LQ4/r;->flush()V

    iget-boolean p1, p0, LE4/i;->o:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_6

    monitor-exit p0

    return-object v2

    :cond_6
    if-nez v0, :cond_7

    :try_start_4
    new-instance v0, LE4/f;

    invoke-direct {v0, p0, p3}, LE4/f;-><init>(LE4/i;Ljava/lang/String;)V

    iget-object p1, p0, LE4/i;->m:Ljava/util/LinkedHashMap;

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_7
    :goto_1
    new-instance p1, LE4/d;

    invoke-direct {p1, p0, v0}, LE4/d;-><init>(LE4/i;LE4/f;)V

    iput-object p1, v0, LE4/f;->g:LE4/d;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_8
    :goto_2
    :try_start_5
    iget-object p1, p0, LE4/i;->v:LF4/b;

    iget-object p2, p0, LE4/i;->w:LE4/h;

    invoke-static {p1, p2}, LF4/b;->d(LF4/b;LF4/a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public final declared-synchronized f(Ljava/lang/String;)LE4/g;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LE4/i;->g()V

    invoke-virtual {p0}, LE4/i;->b()V

    invoke-static {p1}, LE4/i;->w(Ljava/lang/String;)V

    iget-object v0, p0, LE4/i;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE4/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, LE4/f;->a()LE4/g;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget v1, p0, LE4/i;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LE4/i;->n:I

    iget-object v1, p0, LE4/i;->l:LQ4/r;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    sget-object v2, LE4/i;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, LQ4/r;->d(I)LQ4/h;

    invoke-interface {v1, p1}, LQ4/h;->h(Ljava/lang/String;)LQ4/h;

    const/16 p1, 0xa

    invoke-interface {v1, p1}, LQ4/h;->d(I)LQ4/h;

    invoke-virtual {p0}, LE4/i;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, LE4/i;->v:LF4/b;

    iget-object v1, p0, LE4/i;->w:LE4/h;

    invoke-static {p1, v1}, LF4/b;->d(LF4/b;LF4/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LE4/i;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, LE4/i;->b()V

    invoke-virtual {p0}, LE4/i;->v()V

    iget-object v0, p0, LE4/i;->l:LQ4/r;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, LQ4/r;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 7

    const-string v0, "DiskLruCache "

    monitor-enter p0

    :try_start_0
    sget-object v1, LD4/c;->a:[B

    iget-boolean v1, p0, LE4/i;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, LK4/a;->a:LK4/a;

    iget-object v2, p0, LE4/i;->e:Ljava/io/File;

    invoke-virtual {v1, v2}, LK4/a;->c(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, LE4/i;->c:Ljava/io/File;

    invoke-virtual {v1, v2}, LK4/a;->c(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, LE4/i;->e:Ljava/io/File;

    invoke-virtual {v1, v2}, LK4/a;->a(Ljava/io/File;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    iget-object v2, p0, LE4/i;->e:Ljava/io/File;

    iget-object v3, p0, LE4/i;->c:Ljava/io/File;

    invoke-virtual {v1, v2, v3}, LK4/a;->d(Ljava/io/File;Ljava/io/File;)V

    :cond_2
    :goto_0
    iget-object v2, p0, LE4/i;->e:Ljava/io/File;

    const-string v3, "file"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, LK4/a;->e(Ljava/io/File;)LQ4/b;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v1, v2}, LK4/a;->a(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v3, v6}, LL4/l;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v5

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-static {v3, v0}, LL4/l;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    invoke-static {v3, v6}, LL4/l;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, LK4/a;->a(Ljava/io/File;)V

    move v1, v4

    :goto_1
    iput-boolean v1, p0, LE4/i;->p:Z

    iget-object v1, p0, LE4/i;->c:Ljava/io/File;

    const-string v2, "file"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {p0}, LE4/i;->r()V

    invoke-virtual {p0}, LE4/i;->q()V

    iput-boolean v5, p0, LE4/i;->q:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :catch_1
    move-exception v1

    :try_start_7
    sget-object v2, LL4/n;->a:LL4/n;

    sget-object v2, LL4/n;->a:LL4/n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, LE4/i;->a:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is corrupt: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", removing"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, LL4/n;->i(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {p0}, LE4/i;->close()V

    iget-object v0, p0, LE4/i;->a:Ljava/io/File;

    sget-object v1, LK4/a;->a:LK4/a;

    invoke-virtual {v1, v0}, LK4/a;->b(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    iput-boolean v4, p0, LE4/i;->r:Z

    goto :goto_2

    :catchall_3
    move-exception v0

    iput-boolean v4, p0, LE4/i;->r:Z

    throw v0

    :cond_3
    :goto_2
    invoke-virtual {p0}, LE4/i;->t()V

    iput-boolean v5, p0, LE4/i;->q:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0
.end method

.method public final m()Z
    .locals 2

    iget v0, p0, LE4/i;->n:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, LE4/i;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n()LQ4/r;
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, LE4/i;->c:Ljava/io/File;

    const-string v2, "file"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v2, LQ4/p;->a:Ljava/util/logging/Logger;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v3, LQ4/b;

    new-instance v4, LQ4/A;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-direct {v3, v0, v2, v4}, LQ4/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    sget-object v2, LQ4/p;->a:Ljava/util/logging/Logger;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v3, LQ4/b;

    new-instance v1, LQ4/A;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v3, v0, v2, v1}, LQ4/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    new-instance v1, LE4/j;

    new-instance v2, LB4/g;

    invoke-direct {v2, p0, v0}, LB4/g;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v3, v2}, LE4/j;-><init>(LQ4/b;Lk4/l;)V

    invoke-static {v1}, LL4/l;->f(LQ4/w;)LQ4/r;

    move-result-object v0

    return-object v0
.end method

.method public final q()V
    .locals 10

    iget-object v0, p0, LE4/i;->d:Ljava/io/File;

    sget-object v1, LK4/a;->a:LK4/a;

    invoke-virtual {v1, v0}, LK4/a;->a(Ljava/io/File;)V

    iget-object v0, p0, LE4/i;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "i.next()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, LE4/f;

    iget-object v3, v2, LE4/f;->g:LE4/d;

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v3, :cond_1

    :goto_1
    if-ge v5, v4, :cond_0

    iget-wide v6, p0, LE4/i;->f:J

    iget-object v3, v2, LE4/f;->b:[J

    aget-wide v8, v3, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, LE4/i;->f:J

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    iput-object v3, v2, LE4/f;->g:LE4/d;

    :goto_2
    if-ge v5, v4, :cond_2

    iget-object v3, v2, LE4/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v1, v3}, LK4/a;->a(Ljava/io/File;)V

    iget-object v3, v2, LE4/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v1, v3}, LK4/a;->a(Ljava/io/File;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final r()V
    .locals 11

    const-string v0, ", "

    const-string v1, "unexpected journal header: ["

    iget-object v2, p0, LE4/i;->c:Ljava/io/File;

    const-string v3, "file"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, LQ4/p;->a:Ljava/util/logging/Logger;

    new-instance v3, LQ4/c;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, LQ4/A;->d:LQ4/z;

    invoke-direct {v3, v4, v2}, LQ4/c;-><init>(Ljava/io/InputStream;LQ4/A;)V

    invoke-static {v3}, LL4/l;->g(LQ4/y;)LQ4/s;

    move-result-object v2

    const-wide v3, 0x7fffffffffffffffL

    :try_start_0
    invoke-virtual {v2, v3, v4}, LQ4/s;->t(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4}, LQ4/s;->t(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4}, LQ4/s;->t(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v4}, LQ4/s;->t(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v4}, LQ4/s;->t(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "libcore.io.DiskLruCache"

    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "1"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x31191

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v7, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v2, v3, v4}, LQ4/s;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, LE4/i;->s(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_2
    iget-object v1, p0, LE4/i;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, LE4/i;->n:I

    invoke-virtual {v2}, LQ4/s;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LE4/i;->t()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LE4/i;->n()LQ4/r;

    move-result-object v0

    iput-object v0, p0, LE4/i;->l:LQ4/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    const/4 v0, 0x0

    invoke-static {v2, v0}, LL4/l;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v2, v0}, LL4/l;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final s(Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x1

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p1, v1, v2, v2, v3}, Ls4/e;->R(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    const-string v4, "unexpected journal line: "

    const/4 v5, -0x1

    if-eq v3, v5, :cond_8

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x4

    invoke-static {p1, v1, v6, v2, v7}, Ls4/e;->R(Ljava/lang/CharSequence;CIZI)I

    move-result v7

    iget-object v8, p0, LE4/i;->m:Ljava/util/LinkedHashMap;

    const-string v9, "this as java.lang.String).substring(startIndex)"

    if-ne v7, v5, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, LE4/i;->A:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v3, v11, :cond_1

    invoke-static {p1, v10, v2}, Ls4/m;->M(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v8, v6}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v10, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v8, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LE4/f;

    if-nez v10, :cond_2

    new-instance v10, LE4/f;

    invoke-direct {v10, p0, v6}, LE4/f;-><init>(LE4/i;Ljava/lang/String;)V

    invoke-interface {v8, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eq v7, v5, :cond_4

    sget-object v6, LE4/i;->y:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v3, v8, :cond_4

    invoke-static {p1, v6, v2}, Ls4/m;->M(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/2addr v7, v0

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v9}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v0, [C

    aput-char v1, v3, v2

    invoke-static {p1, v3}, Ls4/e;->a0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p1

    iput-boolean v0, v10, LE4/f;->e:Z

    const/4 v1, 0x0

    iput-object v1, v10, LE4/f;->g:LE4/d;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, v10, LE4/f;->j:LE4/i;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_6

    iget-object v3, v10, LE4/f;->b:[J

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v3, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-ne v7, v5, :cond_5

    sget-object v0, LE4/i;->z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v3, v1, :cond_5

    invoke-static {p1, v0, v2}, Ls4/m;->M(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, LE4/d;

    invoke-direct {p1, p0, v10}, LE4/d;-><init>(LE4/i;LE4/f;)V

    iput-object p1, v10, LE4/f;->g:LE4/d;

    goto :goto_1

    :cond_5
    if-ne v7, v5, :cond_7

    sget-object v0, LE4/i;->B:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v3, v1, :cond_7

    invoke-static {p1, v0, v2}, Ls4/m;->M(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_1
    return-void

    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized t()V
    .locals 11

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, LE4/i;->l:LQ4/r;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LQ4/r;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    iget-object v1, p0, LE4/i;->d:Ljava/io/File;

    const-string v2, "file"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    sget-object v3, LQ4/p;->a:Ljava/util/logging/Logger;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v4, LQ4/b;

    new-instance v5, LQ4/A;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-direct {v4, v0, v3, v5}, LQ4/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    sget-object v3, LQ4/p;->a:Ljava/util/logging/Logger;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v4, LQ4/b;

    new-instance v1, LQ4/A;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v4, v0, v3, v1}, LQ4/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    invoke-static {v4}, LL4/l;->f(LQ4/w;)LQ4/r;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v3, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v3}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, LQ4/r;->d(I)LQ4/h;

    const-string v4, "1"

    invoke-virtual {v1, v4}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {v1, v3}, LQ4/r;->d(I)LQ4/h;

    const v4, 0x31191

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, LQ4/r;->p(J)LQ4/h;

    invoke-virtual {v1, v3}, LQ4/r;->d(I)LQ4/h;

    const/4 v4, 0x2

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, LQ4/r;->p(J)LQ4/h;

    invoke-virtual {v1, v3}, LQ4/r;->d(I)LQ4/h;

    invoke-virtual {v1, v3}, LQ4/r;->d(I)LQ4/h;

    iget-object v4, p0, LE4/i;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LE4/f;

    iget-object v6, v5, LE4/f;->g:LE4/d;

    const/16 v7, 0x20

    if-eqz v6, :cond_1

    sget-object v6, LE4/i;->z:Ljava/lang/String;

    invoke-virtual {v1, v6}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {v1, v7}, LQ4/r;->d(I)LQ4/h;

    iget-object v5, v5, LE4/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {v1, v3}, LQ4/r;->d(I)LQ4/h;

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_1
    sget-object v6, LE4/i;->y:Ljava/lang/String;

    invoke-virtual {v1, v6}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {v1, v7}, LQ4/r;->d(I)LQ4/h;

    iget-object v6, v5, LE4/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    iget-object v5, v5, LE4/f;->b:[J

    array-length v6, v5

    move v8, v2

    :goto_3
    if-ge v8, v6, :cond_2

    aget-wide v9, v5, v8

    invoke-virtual {v1, v7}, LQ4/r;->d(I)LQ4/h;

    invoke-virtual {v1, v9, v10}, LQ4/r;->p(J)LQ4/h;

    add-int/2addr v8, v0

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v3}, LQ4/r;->d(I)LQ4/h;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-static {v1, v0}, LL4/l;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    sget-object v0, LK4/a;->a:LK4/a;

    iget-object v1, p0, LE4/i;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, LK4/a;->c(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, LE4/i;->c:Ljava/io/File;

    iget-object v3, p0, LE4/i;->e:Ljava/io/File;

    invoke-virtual {v0, v1, v3}, LK4/a;->d(Ljava/io/File;Ljava/io/File;)V

    :cond_4
    iget-object v1, p0, LE4/i;->d:Ljava/io/File;

    iget-object v3, p0, LE4/i;->c:Ljava/io/File;

    invoke-virtual {v0, v1, v3}, LK4/a;->d(Ljava/io/File;Ljava/io/File;)V

    iget-object v1, p0, LE4/i;->e:Ljava/io/File;

    invoke-virtual {v0, v1}, LK4/a;->a(Ljava/io/File;)V

    invoke-virtual {p0}, LE4/i;->n()LQ4/r;

    move-result-object v0

    iput-object v0, p0, LE4/i;->l:LQ4/r;

    iput-boolean v2, p0, LE4/i;->o:Z

    iput-boolean v2, p0, LE4/i;->t:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_6
    invoke-static {v1, v0}, LL4/l;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :goto_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public final u(LE4/f;)V
    .locals 10

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LE4/i;->p:Z

    const/16 v1, 0xa

    const/16 v2, 0x20

    const/4 v3, 0x1

    iget-object v4, p1, LE4/f;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    iget v0, p1, LE4/f;->h:I

    if-lez v0, :cond_0

    iget-object v0, p0, LE4/i;->l:LQ4/r;

    if-eqz v0, :cond_0

    sget-object v5, LE4/i;->z:Ljava/lang/String;

    invoke-virtual {v0, v5}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {v0, v2}, LQ4/r;->d(I)LQ4/h;

    invoke-virtual {v0, v4}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {v0, v1}, LQ4/r;->d(I)LQ4/h;

    invoke-virtual {v0}, LQ4/r;->flush()V

    :cond_0
    iget v0, p1, LE4/f;->h:I

    if-gtz v0, :cond_1

    iget-object v0, p1, LE4/f;->g:LE4/d;

    if-eqz v0, :cond_2

    :cond_1
    iput-boolean v3, p1, LE4/f;->f:Z

    return-void

    :cond_2
    iget-object v0, p1, LE4/f;->g:LE4/d;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LE4/d;->h()V

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v0, v5, :cond_6

    iget-object v5, p1, LE4/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    const-string v6, "file"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to delete "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    iget-wide v5, p0, LE4/i;->f:J

    iget-object v7, p1, LE4/f;->b:[J

    aget-wide v8, v7, v0

    sub-long/2addr v5, v8

    iput-wide v5, p0, LE4/i;->f:J

    const-wide/16 v5, 0x0

    aput-wide v5, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iget p1, p0, LE4/i;->n:I

    add-int/2addr p1, v3

    iput p1, p0, LE4/i;->n:I

    iget-object p1, p0, LE4/i;->l:LQ4/r;

    if-eqz p1, :cond_7

    sget-object v0, LE4/i;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {p1, v2}, LQ4/r;->d(I)LQ4/h;

    invoke-virtual {p1, v4}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {p1, v1}, LQ4/r;->d(I)LQ4/h;

    :cond_7
    iget-object p1, p0, LE4/i;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LE4/i;->m()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, LE4/i;->v:LF4/b;

    iget-object v0, p0, LE4/i;->w:LE4/h;

    invoke-static {p1, v0}, LF4/b;->d(LF4/b;LF4/a;)V

    :cond_8
    return-void
.end method

.method public final v()V
    .locals 4

    :goto_0
    iget-wide v0, p0, LE4/i;->f:J

    iget-wide v2, p0, LE4/i;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, LE4/i;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE4/f;

    iget-boolean v2, v1, LE4/f;->f:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, LE4/i;->u(LE4/f;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, LE4/i;->s:Z

    return-void
.end method
