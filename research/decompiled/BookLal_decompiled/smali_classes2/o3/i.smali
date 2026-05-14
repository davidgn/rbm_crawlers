.class public final Lo3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:LQ4/r;

.field public final b:LQ4/g;

.field public final c:Lo3/d;

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(LQ4/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/i;->a:LQ4/r;

    new-instance p1, LQ4/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/i;->b:LQ4/g;

    new-instance v0, Lo3/d;

    invoke-direct {v0, p1}, Lo3/d;-><init>(LQ4/g;)V

    iput-object v0, p0, Lo3/i;->c:Lo3/d;

    const/16 p1, 0x4000

    iput p1, p0, Lo3/i;->d:I

    return-void
.end method


# virtual methods
.method public final b(IIBB)V
    .locals 2

    sget-object v0, Lo3/j;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Lo3/g;->a(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lo3/i;->d:I

    if-gt p2, v0, :cond_2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    ushr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lo3/i;->a:LQ4/r;

    invoke-virtual {v1, v0}, LQ4/r;->d(I)LQ4/h;

    ushr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, LQ4/r;->d(I)LQ4/h;

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {v1, p2}, LQ4/r;->d(I)LQ4/h;

    and-int/lit16 p2, p3, 0xff

    invoke-virtual {v1, p2}, LQ4/r;->d(I)LQ4/h;

    and-int/lit16 p2, p4, 0xff

    invoke-virtual {v1, p2}, LQ4/r;->d(I)LQ4/h;

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    invoke-virtual {v1, p1}, LQ4/r;->e(I)LQ4/h;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p3, "reserved bit set: "

    invoke-static {p1, p3}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p3, "FRAME_SIZE_ERROR length > "

    const-string p4, ": "

    invoke-static {v0, p2, p3, p4}, Lcom/google/android/gms/ads/internal/util/client/a;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(ZILjava/util/ArrayList;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-boolean v2, v0, Lo3/i;->e:Z

    if-nez v2, :cond_e

    iget-object v2, v0, Lo3/i;->c:Lo3/d;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_9

    move-object/from16 v7, p3

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo3/b;

    iget-object v9, v8, Lo3/b;->a:LQ4/j;

    invoke-virtual {v9}, LQ4/j;->l()LQ4/j;

    move-result-object v9

    sget-object v10, Lo3/e;->c:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    const/4 v11, -0x1

    iget-object v12, v8, Lo3/b;->b:LQ4/j;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v13, v10, 0x1

    const/4 v14, 0x2

    if-lt v13, v14, :cond_1

    const/4 v14, 0x7

    if-gt v13, v14, :cond_1

    sget-object v14, Lo3/e;->b:[Lo3/b;

    aget-object v15, v14, v10

    iget-object v15, v15, Lo3/b;->b:LQ4/j;

    invoke-virtual {v15, v12}, LQ4/j;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    move v10, v13

    goto :goto_1

    :cond_0
    aget-object v14, v14, v13

    iget-object v14, v14, Lo3/b;->b:LQ4/j;

    invoke-virtual {v14, v12}, LQ4/j;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    add-int/lit8 v10, v10, 0x2

    move/from16 v16, v13

    move v13, v10

    move/from16 v10, v16

    goto :goto_1

    :cond_1
    move v10, v13

    move v13, v11

    goto :goto_1

    :cond_2
    move v10, v11

    move v13, v10

    :goto_1
    if-ne v13, v11, :cond_5

    iget v14, v2, Lo3/d;->d:I

    add-int/2addr v14, v6

    :goto_2
    iget-object v6, v2, Lo3/d;->b:[Lo3/b;

    array-length v15, v6

    if-ge v14, v15, :cond_5

    aget-object v6, v6, v14

    iget-object v6, v6, Lo3/b;->a:LQ4/j;

    invoke-virtual {v6, v9}, LQ4/j;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v2, Lo3/d;->b:[Lo3/b;

    aget-object v6, v6, v14

    iget-object v6, v6, Lo3/b;->b:LQ4/j;

    invoke-virtual {v6, v12}, LQ4/j;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v2, Lo3/d;->d:I

    sub-int/2addr v14, v6

    sget-object v6, Lo3/e;->b:[Lo3/b;

    array-length v6, v6

    add-int v13, v14, v6

    goto :goto_3

    :cond_3
    if-ne v10, v11, :cond_4

    iget v6, v2, Lo3/d;->d:I

    sub-int v6, v14, v6

    sget-object v10, Lo3/e;->b:[Lo3/b;

    array-length v10, v10

    add-int/2addr v6, v10

    move v10, v6

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-eq v13, v11, :cond_6

    const/16 v6, 0x7f

    const/16 v8, 0x80

    invoke-virtual {v2, v13, v6, v8}, Lo3/d;->c(III)V

    goto :goto_4

    :cond_6
    const/16 v6, 0x40

    if-ne v10, v11, :cond_7

    iget-object v10, v2, Lo3/d;->a:LQ4/g;

    invoke-virtual {v10, v6}, LQ4/g;->E(I)V

    invoke-virtual {v2, v9}, Lo3/d;->b(LQ4/j;)V

    invoke-virtual {v2, v12}, Lo3/d;->b(LQ4/j;)V

    invoke-virtual {v2, v8}, Lo3/d;->a(Lo3/b;)V

    goto :goto_4

    :cond_7
    sget-object v11, Lo3/e;->a:LQ4/j;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v13, "prefix"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, LQ4/j;->c()I

    move-result v13

    invoke-virtual {v9, v11, v13}, LQ4/j;->k(LQ4/j;I)Z

    move-result v11

    if-eqz v11, :cond_8

    sget-object v11, Lo3/b;->h:LQ4/j;

    invoke-virtual {v11, v9}, LQ4/j;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const/16 v6, 0xf

    invoke-virtual {v2, v10, v6, v4}, Lo3/d;->c(III)V

    invoke-virtual {v2, v12}, Lo3/d;->b(LQ4/j;)V

    goto :goto_4

    :cond_8
    const/16 v9, 0x3f

    invoke-virtual {v2, v10, v9, v6}, Lo3/d;->c(III)V

    invoke-virtual {v2, v12}, Lo3/d;->b(LQ4/j;)V

    invoke-virtual {v2, v8}, Lo3/d;->a(Lo3/b;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v2, v0, Lo3/i;->b:LQ4/g;

    iget-wide v7, v2, LQ4/g;->b:J

    iget v3, v0, Lo3/i;->d:I

    int-to-long v9, v3

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v3, v9

    int-to-long v9, v3

    cmp-long v5, v7, v9

    const/4 v11, 0x4

    if-nez v5, :cond_a

    move v12, v11

    goto :goto_5

    :cond_a
    move v12, v4

    :goto_5
    if-eqz p1, :cond_b

    or-int/lit8 v12, v12, 0x1

    int-to-byte v12, v12

    :cond_b
    invoke-virtual {v0, v1, v3, v6, v12}, Lo3/i;->b(IIBB)V

    iget-object v3, v0, Lo3/i;->a:LQ4/r;

    invoke-virtual {v3, v2, v9, v10}, LQ4/r;->o(LQ4/g;J)V

    if-lez v5, :cond_d

    sub-long/2addr v7, v9

    :goto_6
    const-wide/16 v5, 0x0

    cmp-long v9, v7, v5

    if-lez v9, :cond_d

    iget v9, v0, Lo3/i;->d:I

    int-to-long v9, v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    int-to-long v12, v9

    sub-long/2addr v7, v12

    cmp-long v5, v7, v5

    if-nez v5, :cond_c

    move v5, v11

    goto :goto_7

    :cond_c
    move v5, v4

    :goto_7
    const/16 v6, 0x9

    invoke-virtual {v0, v1, v9, v6, v5}, Lo3/i;->b(IIBB)V

    invoke-virtual {v3, v2, v12, v13}, LQ4/r;->o(LQ4/g;J)V

    goto :goto_6

    :cond_d
    return-void

    :cond_e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lo3/i;->e:Z

    iget-object v0, p0, Lo3/i;->a:LQ4/r;

    invoke-virtual {v0}, LQ4/r;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
