.class public final LE4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC4/z;


# instance fields
.field public final a:LC4/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(LC4/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE4/b;->a:LC4/h;

    return-void
.end method


# virtual methods
.method public final a(LH4/g;)LC4/I;
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v3, v0, LH4/g;->a:LG4/i;

    iget-object v4, v1, LE4/b;->a:LC4/h;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    iget-object v7, v0, LH4/g;->e:LC4/F;

    iget-object v8, v7, LC4/F;->c:Ljava/lang/Object;

    check-cast v8, LC4/y;

    invoke-static {v8}, LW2/B;->r(LC4/y;)Ljava/lang/String;

    move-result-object v9

    :try_start_0
    iget-object v4, v4, LC4/h;->a:LE4/i;

    invoke-virtual {v4, v9}, LE4/i;->f(Ljava/lang/String;)LE4/g;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_0

    move-object v2, v6

    goto/16 :goto_1

    :cond_0
    :try_start_1
    new-instance v9, LC4/e;

    iget-object v10, v4, LE4/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LQ4/y;

    invoke-direct {v9, v10}, LC4/e;-><init>(LQ4/y;)V

    iget-object v10, v9, LC4/e;->b:LC4/w;

    iget-object v11, v9, LC4/e;->c:Ljava/lang/String;

    iget-object v12, v9, LC4/e;->a:LC4/y;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v13, v9, LC4/e;->g:LC4/w;

    const-string v14, "Content-Type"

    invoke-virtual {v13, v14}, LC4/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Content-Length"

    invoke-virtual {v13, v15}, LC4/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v5, LC4/E;

    invoke-direct {v5}, LC4/E;-><init>()V

    const-string v2, "url"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v5, LC4/E;->c:Ljava/lang/Object;

    invoke-virtual {v5, v11, v6}, LC4/E;->j(Ljava/lang/String;LC4/G;)V

    const-string v2, "headers"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, LC4/w;->h()LC4/v;

    move-result-object v2

    iput-object v2, v5, LC4/E;->d:Ljava/lang/Object;

    invoke-virtual {v5}, LC4/E;->b()LC4/F;

    move-result-object v2

    new-instance v5, LC4/H;

    invoke-direct {v5}, LC4/H;-><init>()V

    iput-object v2, v5, LC4/H;->a:LC4/F;

    iget-object v2, v9, LC4/e;->d:LC4/D;

    const-string v6, "protocol"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v5, LC4/H;->b:LC4/D;

    iget v2, v9, LC4/e;->e:I

    iput v2, v5, LC4/H;->c:I

    iget-object v2, v9, LC4/e;->f:Ljava/lang/String;

    const-string v6, "message"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v5, LC4/H;->d:Ljava/lang/String;

    invoke-virtual {v5, v13}, LC4/H;->c(LC4/w;)V

    new-instance v2, LC4/d;

    invoke-direct {v2, v4, v14, v15}, LC4/d;-><init>(LE4/g;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v5, LC4/H;->g:LC4/K;

    iget-object v2, v9, LC4/e;->h:LC4/u;

    iput-object v2, v5, LC4/H;->e:LC4/u;

    iget-wide v13, v9, LC4/e;->i:J

    iput-wide v13, v5, LC4/H;->k:J

    iget-wide v13, v9, LC4/e;->j:J

    iput-wide v13, v5, LC4/H;->l:J

    invoke-virtual {v5}, LC4/H;->a()LC4/I;

    move-result-object v2

    invoke-virtual {v12, v8}, LC4/y;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v7, LC4/F;->b:Ljava/io/Serializable;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v2, LC4/I;->f:LC4/w;

    invoke-static {v4}, LW2/B;->B(LC4/w;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, LC4/w;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iget-object v8, v7, LC4/F;->d:Ljava/lang/Object;

    check-cast v8, LC4/w;

    invoke-virtual {v8, v5}, LC4/w;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_3
    iget-object v2, v2, LC4/I;->l:LC4/K;

    if-eqz v2, :cond_4

    invoke-static {v2}, LD4/c;->d(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    invoke-static {v4}, LD4/c;->d(Ljava/io/Closeable;)V

    :catch_1
    :cond_4
    :goto_0
    const/4 v2, 0x0

    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v0, LH4/g;->e:LC4/F;

    if-eqz v2, :cond_c

    iget-wide v10, v2, LC4/I;->p:J

    iget-wide v12, v2, LC4/I;->q:J

    iget-object v14, v2, LC4/I;->f:LC4/w;

    invoke-virtual {v14}, LC4/w;->size()I

    move-result v15

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    :goto_2
    if-ge v8, v15, :cond_b

    invoke-virtual {v14, v8}, LC4/w;->d(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v27, v9

    invoke-virtual {v14, v8}, LC4/w;->i(I)Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v28, v10

    const-string v10, "Date"

    invoke-static {v7, v10}, Ls4/m;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v9}, LH4/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    move-object/from16 v24, v9

    move-object v9, v7

    :goto_3
    const/4 v7, 0x1

    goto :goto_5

    :cond_6
    const-string v10, "Expires"

    invoke-static {v7, v10}, Ls4/m;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v9}, LH4/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    move-object/from16 v21, v7

    :cond_7
    :goto_4
    move-object/from16 v9, v27

    goto :goto_3

    :cond_8
    const-string v10, "Last-Modified"

    invoke-static {v7, v10}, Ls4/m;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v9}, LH4/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    move-object/from16 v20, v7

    move-object/from16 v23, v9

    goto :goto_4

    :cond_9
    const-string v10, "ETag"

    invoke-static {v7, v10}, Ls4/m;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    move-object/from16 v22, v9

    goto :goto_4

    :cond_a
    const-string v10, "Age"

    invoke-static {v7, v10}, Ls4/m;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, -0x1

    invoke-static {v7, v9}, LD4/c;->y(ILjava/lang/String;)I

    move-result v25

    goto :goto_4

    :goto_5
    add-int/2addr v8, v7

    move-wide/from16 v10, v28

    goto :goto_2

    :cond_b
    move-object/from16 v27, v9

    move-wide/from16 v28, v10

    const/4 v7, 0x1

    move/from16 v8, v25

    goto :goto_6

    :cond_c
    const/4 v7, 0x1

    const/4 v8, -0x1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    :goto_6
    if-nez v2, :cond_d

    new-instance v4, LD2/e;

    const/4 v9, 0x0

    invoke-direct {v4, v7, v6, v9}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_d
    const/4 v9, 0x0

    iget-object v14, v6, LC4/F;->c:Ljava/lang/Object;

    check-cast v14, LC4/y;

    iget-boolean v14, v14, LC4/y;->i:Z

    if-eqz v14, :cond_e

    iget-object v14, v2, LC4/I;->e:LC4/u;

    if-nez v14, :cond_e

    new-instance v4, LD2/e;

    invoke-direct {v4, v7, v6, v9}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_e
    invoke-static {v2, v6}, LW2/B;->q(LC4/I;LC4/F;)Z

    move-result v14

    if-nez v14, :cond_f

    new-instance v4, LD2/e;

    invoke-direct {v4, v7, v6, v9}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_f
    iget-object v7, v6, LC4/F;->g:Ljava/lang/Object;

    check-cast v7, LC4/i;

    if-nez v7, :cond_10

    sget-object v7, LC4/i;->n:LC4/i;

    iget-object v7, v6, LC4/F;->d:Ljava/lang/Object;

    check-cast v7, LC4/w;

    invoke-static {v7}, LZ2/l;->O(LC4/w;)LC4/i;

    move-result-object v7

    iput-object v7, v6, LC4/F;->g:Ljava/lang/Object;

    :cond_10
    iget-boolean v9, v7, LC4/i;->a:Z

    if-nez v9, :cond_25

    const-string v9, "If-Modified-Since"

    iget-object v14, v6, LC4/F;->d:Ljava/lang/Object;

    check-cast v14, LC4/w;

    invoke-virtual {v14, v9}, LC4/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_25

    const-string v14, "If-None-Match"

    iget-object v15, v6, LC4/F;->d:Ljava/lang/Object;

    check-cast v15, LC4/w;

    invoke-virtual {v15, v14}, LC4/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_11

    goto/16 :goto_11

    :cond_11
    invoke-virtual {v2}, LC4/I;->b()LC4/i;

    move-result-object v15

    if-eqz v27, :cond_12

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    sub-long v0, v12, v28

    move-object/from16 v25, v14

    move-object/from16 v28, v15

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_7
    const/4 v14, -0x1

    goto :goto_8

    :cond_12
    move-object/from16 v25, v14

    move-object/from16 v28, v15

    const-wide/16 v0, 0x0

    goto :goto_7

    :goto_8
    if-eq v8, v14, :cond_13

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v15, v9

    int-to-long v8, v8

    invoke-virtual {v14, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_9

    :cond_13
    move-object v15, v9

    :goto_9
    sub-long v8, v12, v10

    sub-long/2addr v4, v12

    add-long/2addr v0, v8

    add-long/2addr v0, v4

    invoke-virtual {v2}, LC4/I;->b()LC4/i;

    move-result-object v4

    iget v4, v4, LC4/i;->c:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_14

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v4

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    :goto_a
    move-wide v8, v4

    const-wide/16 v4, 0x0

    goto :goto_c

    :cond_14
    if-eqz v21, :cond_17

    if-eqz v27, :cond_15

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    :cond_15
    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v12

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-lez v10, :cond_16

    goto :goto_a

    :cond_16
    const-wide/16 v4, 0x0

    goto :goto_a

    :cond_17
    if-eqz v20, :cond_1a

    iget-object v4, v2, LC4/I;->a:LC4/F;

    iget-object v4, v4, LC4/F;->c:Ljava/lang/Object;

    check-cast v4, LC4/y;

    iget-object v4, v4, LC4/y;->f:Ljava/util/ArrayList;

    if-nez v4, :cond_18

    const/4 v4, 0x0

    goto :goto_b

    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, LC4/b;->g(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_b
    if-nez v4, :cond_1a

    if-eqz v27, :cond_19

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    :cond_19
    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v10, v4

    const-wide/16 v4, 0x0

    cmp-long v8, v10, v4

    if-lez v8, :cond_1b

    const/16 v8, 0xa

    int-to-long v8, v8

    div-long v8, v10, v8

    goto :goto_c

    :cond_1a
    const-wide/16 v4, 0x0

    :cond_1b
    move-wide v8, v4

    :goto_c
    iget v10, v7, LC4/i;->c:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1c

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v13, v10

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    :cond_1c
    iget v10, v7, LC4/i;->i:I

    if-eq v10, v11, :cond_1d

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v13, v10

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    :goto_d
    move-object/from16 v10, v28

    goto :goto_e

    :cond_1d
    move-wide v12, v4

    goto :goto_d

    :goto_e
    iget-boolean v14, v10, LC4/i;->g:Z

    if-nez v14, :cond_1e

    iget v7, v7, LC4/i;->h:I

    if-eq v7, v11, :cond_1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v11, v15

    int-to-long v14, v7

    invoke-virtual {v4, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    goto :goto_f

    :cond_1e
    move-object v11, v15

    :goto_f
    iget-boolean v7, v10, LC4/i;->a:Z

    if-nez v7, :cond_21

    add-long/2addr v12, v0

    add-long/2addr v4, v8

    cmp-long v4, v12, v4

    if-gez v4, :cond_21

    invoke-virtual {v2}, LC4/I;->e()LC4/H;

    move-result-object v4

    cmp-long v5, v12, v8

    if-ltz v5, :cond_1f

    const-string v5, "110 HttpURLConnection \"Response is stale\""

    const-string v7, "Warning"

    iget-object v8, v4, LC4/H;->f:LC4/v;

    invoke-virtual {v8, v7, v5}, LC4/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const-wide/32 v7, 0x5265c00

    cmp-long v0, v0, v7

    if-lez v0, :cond_20

    invoke-virtual {v2}, LC4/I;->b()LC4/i;

    move-result-object v0

    iget v0, v0, LC4/i;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    if-nez v21, :cond_20

    const-string v0, "113 HttpURLConnection \"Heuristic expiration\""

    const-string v1, "Warning"

    iget-object v5, v4, LC4/H;->f:LC4/v;

    invoke-virtual {v5, v1, v0}, LC4/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    new-instance v0, LD2/e;

    invoke-virtual {v4}, LC4/H;->a()LC4/I;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v0, v5, v4, v1}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v0

    goto :goto_12

    :cond_21
    if-eqz v22, :cond_22

    move-object/from16 v0, v22

    move-object/from16 v9, v25

    goto :goto_10

    :cond_22
    if-eqz v20, :cond_23

    move-object v9, v11

    move-object/from16 v0, v23

    goto :goto_10

    :cond_23
    if-eqz v27, :cond_24

    move-object v9, v11

    move-object/from16 v0, v24

    :goto_10
    iget-object v1, v6, LC4/F;->d:Ljava/lang/Object;

    check-cast v1, LC4/w;

    invoke-virtual {v1}, LC4/w;->h()LC4/v;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v9, v0}, LC4/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, LC4/F;->g()LC4/E;

    move-result-object v0

    invoke-virtual {v1}, LC4/v;->e()LC4/w;

    move-result-object v1

    invoke-virtual {v1}, LC4/w;->h()LC4/v;

    move-result-object v1

    iput-object v1, v0, LC4/E;->d:Ljava/lang/Object;

    invoke-virtual {v0}, LC4/E;->b()LC4/F;

    move-result-object v0

    new-instance v4, LD2/e;

    const/4 v1, 0x1

    invoke-direct {v4, v1, v0, v2}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    :cond_24
    const/4 v1, 0x1

    new-instance v4, LD2/e;

    const/4 v0, 0x0

    invoke-direct {v4, v1, v6, v0}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    :cond_25
    :goto_11
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v4, LD2/e;

    invoke-direct {v4, v1, v6, v0}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_12
    iget-object v0, v4, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, LC4/F;

    if-eqz v0, :cond_27

    iget-object v0, v6, LC4/F;->g:Ljava/lang/Object;

    check-cast v0, LC4/i;

    if-nez v0, :cond_26

    sget-object v0, LC4/i;->n:LC4/i;

    iget-object v0, v6, LC4/F;->d:Ljava/lang/Object;

    check-cast v0, LC4/w;

    invoke-static {v0}, LZ2/l;->O(LC4/w;)LC4/i;

    move-result-object v0

    iput-object v0, v6, LC4/F;->g:Ljava/lang/Object;

    :cond_26
    iget-boolean v0, v0, LC4/i;->j:Z

    if-eqz v0, :cond_27

    new-instance v4, LD2/e;

    const/4 v0, 0x1

    const/4 v9, 0x0

    invoke-direct {v4, v0, v9, v9}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_27
    const/4 v9, 0x0

    :goto_13
    iget-object v0, v4, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, LC4/F;

    iget-object v1, v4, LD2/e;->c:Ljava/lang/Object;

    check-cast v1, LC4/I;

    move-object/from16 v4, p0

    iget-object v5, v4, LE4/b;->a:LC4/h;

    if-eqz v5, :cond_28

    monitor-enter v5

    monitor-exit v5

    :cond_28
    if-eqz v2, :cond_29

    if-nez v1, :cond_29

    iget-object v5, v2, LC4/I;->l:LC4/K;

    if-eqz v5, :cond_29

    invoke-static {v5}, LD4/c;->d(Ljava/io/Closeable;)V

    :cond_29
    const/16 v5, 0x14

    if-nez v0, :cond_2a

    if-nez v1, :cond_2a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v6, p1

    iget-object v1, v6, LH4/g;->e:LC4/F;

    sget-object v18, LC4/D;->c:LC4/D;

    const-string v19, "Unsatisfiable Request (only-if-cached)"

    sget-object v23, LD4/c;->c:LC4/J;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    new-instance v2, LC4/w;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v2, v0}, LC4/w;-><init>([Ljava/lang/String;)V

    new-instance v0, LC4/I;

    const-wide/16 v27, -0x1

    const/16 v31, 0x0

    const/16 v20, 0x1f8

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v31}, LC4/I;-><init>(LC4/F;LC4/D;Ljava/lang/String;ILC4/u;LC4/w;LC4/K;LC4/I;LC4/I;LC4/I;JJLC4/g;)V

    const-string v1, "call"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_2a
    move-object/from16 v6, p1

    if-nez v0, :cond_2b

    invoke-static {v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, LC4/I;->e()LC4/H;

    move-result-object v0

    invoke-static {v1}, Ly3/c;->n(LC4/I;)LC4/I;

    move-result-object v1

    const-string v2, "cacheResponse"

    invoke-static {v1, v2}, LC4/H;->b(LC4/I;Ljava/lang/String;)V

    iput-object v1, v0, LC4/H;->i:LC4/I;

    invoke-virtual {v0}, LC4/H;->a()LC4/I;

    move-result-object v0

    const-string v1, "call"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_2b
    if-eqz v1, :cond_2c

    const-string v7, "call"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14

    :cond_2c
    iget-object v7, v4, LE4/b;->a:LC4/h;

    if-eqz v7, :cond_2d

    const-string v7, "call"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2d
    :goto_14
    :try_start_2
    invoke-virtual {v6, v0}, LH4/g;->b(LC4/F;)LC4/I;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_39

    iget v6, v2, LC4/I;->d:I

    const/16 v7, 0x130

    if-ne v6, v7, :cond_38

    invoke-virtual {v1}, LC4/I;->e()LC4/H;

    move-result-object v0

    iget-object v6, v1, LC4/I;->f:LC4/w;

    iget-object v7, v2, LC4/I;->f:LC4/w;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, LC4/w;->size()I

    move-result v5

    const/4 v10, 0x0

    :goto_15
    if-ge v10, v5, :cond_32

    invoke-virtual {v6, v10}, LC4/w;->d(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10}, LC4/w;->i(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Warning"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2f

    const-string v13, "1"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Ls4/m;->M(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_2f

    :cond_2e
    :goto_16
    const/4 v11, 0x1

    goto :goto_18

    :cond_2f
    const-string v13, "Content-Length"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_31

    const-string v13, "Content-Encoding"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_31

    const-string v13, "Content-Type"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_30

    goto :goto_17

    :cond_30
    invoke-static {v11}, Ly3/c;->p(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_31

    invoke-virtual {v7, v11}, LC4/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_2e

    :cond_31
    :goto_17
    const-string v13, "name"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "value"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ls4/e;->e0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :goto_18
    add-int/2addr v10, v11

    goto :goto_15

    :cond_32
    invoke-virtual {v7}, LC4/w;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v5, :cond_35

    invoke-virtual {v7, v6}, LC4/w;->d(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Content-Length"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_34

    const-string v11, "Content-Encoding"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_34

    const-string v11, "Content-Type"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_33

    goto :goto_1a

    :cond_33
    invoke-static {v10}, Ly3/c;->p(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_34

    invoke-virtual {v7, v6}, LC4/w;->i(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "name"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "value"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ls4/e;->e0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    :goto_1a
    const/4 v10, 0x1

    add-int/2addr v6, v10

    goto :goto_19

    :cond_35
    new-instance v5, LC4/w;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-direct {v5, v6}, LC4/w;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v5}, LC4/H;->c(LC4/w;)V

    iget-wide v5, v2, LC4/I;->p:J

    iput-wide v5, v0, LC4/H;->k:J

    iget-wide v5, v2, LC4/I;->q:J

    iput-wide v5, v0, LC4/H;->l:J

    invoke-static {v1}, Ly3/c;->n(LC4/I;)LC4/I;

    move-result-object v5

    const-string v6, "cacheResponse"

    invoke-static {v5, v6}, LC4/H;->b(LC4/I;Ljava/lang/String;)V

    iput-object v5, v0, LC4/H;->i:LC4/I;

    invoke-static {v2}, Ly3/c;->n(LC4/I;)LC4/I;

    move-result-object v5

    const-string v6, "networkResponse"

    invoke-static {v5, v6}, LC4/H;->b(LC4/I;Ljava/lang/String;)V

    iput-object v5, v0, LC4/H;->h:LC4/I;

    invoke-virtual {v0}, LC4/H;->a()LC4/I;

    move-result-object v0

    iget-object v2, v2, LC4/I;->l:LC4/K;

    invoke-static {v2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, LC4/K;->close()V

    iget-object v2, v4, LE4/b;->a:LC4/h;

    invoke-static {v2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    monitor-enter v2

    monitor-exit v2

    iget-object v2, v4, LE4/b;->a:LC4/h;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LC4/e;

    invoke-direct {v2, v0}, LC4/e;-><init>(LC4/I;)V

    const-string v5, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody"

    iget-object v1, v1, LC4/I;->l:LC4/K;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, LC4/d;

    iget-object v1, v1, LC4/d;->a:LE4/g;

    :try_start_3
    iget-object v5, v1, LE4/g;->a:Ljava/lang/String;

    iget-wide v6, v1, LE4/g;->b:J

    iget-object v1, v1, LE4/g;->d:LE4/i;

    invoke-virtual {v1, v6, v7, v5}, LE4/i;->e(JLjava/lang/String;)LE4/d;

    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v6, :cond_36

    goto :goto_1b

    :cond_36
    :try_start_4
    invoke-virtual {v2, v6}, LC4/e;->c(LE4/d;)V

    invoke-virtual {v6}, LE4/d;->g()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1b

    :catch_2
    move-object v6, v9

    :catch_3
    if-eqz v6, :cond_37

    :try_start_5
    invoke-virtual {v6}, LE4/d;->b()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_37
    :goto_1b
    const-string v1, "call"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_38
    iget-object v5, v1, LC4/I;->l:LC4/K;

    if-eqz v5, :cond_39

    invoke-static {v5}, LD4/c;->d(Ljava/io/Closeable;)V

    :cond_39
    invoke-virtual {v2}, LC4/I;->e()LC4/H;

    move-result-object v5

    invoke-static {v1}, Ly3/c;->n(LC4/I;)LC4/I;

    move-result-object v6

    const-string v7, "cacheResponse"

    invoke-static {v6, v7}, LC4/H;->b(LC4/I;Ljava/lang/String;)V

    iput-object v6, v5, LC4/H;->i:LC4/I;

    invoke-static {v2}, Ly3/c;->n(LC4/I;)LC4/I;

    move-result-object v2

    const-string v6, "networkResponse"

    invoke-static {v2, v6}, LC4/H;->b(LC4/I;Ljava/lang/String;)V

    iput-object v2, v5, LC4/H;->h:LC4/I;

    invoke-virtual {v5}, LC4/H;->a()LC4/I;

    move-result-object v2

    iget-object v5, v4, LE4/b;->a:LC4/h;

    if-eqz v5, :cond_44

    invoke-static {v2}, LH4/f;->a(LC4/I;)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-static {v2, v0}, LW2/B;->q(LC4/I;LC4/F;)Z

    move-result v5

    if-eqz v5, :cond_42

    iget-object v0, v4, LE4/b;->a:LC4/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, LC4/I;->a:LC4/F;

    iget-object v6, v5, LC4/F;->b:Ljava/io/Serializable;

    check-cast v6, Ljava/lang/String;

    const-string v7, "method"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3f

    const-string v7, "PATCH"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3f

    const-string v7, "PUT"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3f

    const-string v7, "DELETE"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3f

    const-string v7, "MOVE"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    goto :goto_1d

    :cond_3a
    const-string v7, "GET"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    :catch_5
    :cond_3b
    :goto_1c
    move-object v6, v9

    goto :goto_1e

    :cond_3c
    iget-object v6, v2, LC4/I;->f:LC4/w;

    invoke-static {v6}, LW2/B;->B(LC4/w;)Ljava/util/Set;

    move-result-object v6

    const-string v7, "*"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    goto :goto_1c

    :cond_3d
    new-instance v6, LC4/e;

    invoke-direct {v6, v2}, LC4/e;-><init>(LC4/I;)V

    :try_start_6
    iget-object v7, v0, LC4/h;->a:LE4/i;

    iget-object v5, v5, LC4/F;->c:Ljava/lang/Object;

    check-cast v5, LC4/y;

    invoke-static {v5}, LW2/B;->r(LC4/y;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, LE4/i;->x:Ls4/d;

    const-wide/16 v10, -0x1

    invoke-virtual {v7, v10, v11, v5}, LE4/i;->e(JLjava/lang/String;)LE4/d;

    move-result-object v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    if-nez v5, :cond_3e

    goto :goto_1c

    :cond_3e
    :try_start_7
    invoke-virtual {v6, v5}, LC4/e;->c(LE4/d;)V

    new-instance v6, LC4/g;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v0, v6, LC4/g;->e:Ljava/lang/Object;

    iput-object v5, v6, LC4/g;->b:Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, LE4/d;->j(I)LQ4/w;

    move-result-object v7

    iput-object v7, v6, LC4/g;->c:Ljava/lang/Object;

    new-instance v8, LC4/f;

    invoke-direct {v8, v0, v6, v7}, LC4/f;-><init>(LC4/h;LC4/g;LQ4/w;)V

    iput-object v8, v6, LC4/g;->d:Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_1e

    :catch_6
    move-object v5, v9

    :catch_7
    if-eqz v5, :cond_3b

    :try_start_8
    invoke-virtual {v5}, LE4/d;->b()V

    goto :goto_1c

    :cond_3f
    :goto_1d
    invoke-virtual {v0, v5}, LC4/h;->b(LC4/F;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1c

    :goto_1e
    if-nez v6, :cond_40

    goto :goto_1f

    :cond_40
    iget-object v0, v6, LC4/g;->d:Ljava/lang/Object;

    check-cast v0, LC4/f;

    iget-object v5, v2, LC4/I;->l:LC4/K;

    invoke-static {v5}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    invoke-virtual {v5}, LC4/K;->e()LQ4/i;

    move-result-object v5

    invoke-static {v0}, LL4/l;->f(LQ4/w;)LQ4/r;

    move-result-object v0

    new-instance v7, LE4/a;

    invoke-direct {v7, v5, v6, v0}, LE4/a;-><init>(LQ4/i;LC4/g;LQ4/r;)V

    const-string v0, "Content-Type"

    invoke-static {v2, v0}, LC4/I;->c(LC4/I;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v2, LC4/I;->l:LC4/K;

    invoke-virtual {v0}, LC4/K;->b()J

    move-result-wide v10

    invoke-virtual {v2}, LC4/I;->e()LC4/H;

    move-result-object v0

    new-instance v2, LC4/J;

    invoke-static {v7}, LL4/l;->g(LQ4/y;)LQ4/s;

    move-result-object v12

    const/4 v13, 0x1

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, LC4/J;-><init>(Ljava/lang/Object;JLQ4/i;I)V

    iput-object v2, v0, LC4/H;->g:LC4/K;

    invoke-virtual {v0}, LC4/H;->a()LC4/I;

    move-result-object v2

    :goto_1f
    if-eqz v1, :cond_41

    const-string v0, "call"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_41
    return-object v2

    :cond_42
    iget-object v1, v0, LC4/F;->b:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    const-string v3, "method"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "POST"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    const-string v3, "PATCH"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    const-string v3, "PUT"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    const-string v3, "DELETE"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    const-string v3, "MOVE"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    :cond_43
    :try_start_9
    iget-object v1, v4, LE4/b;->a:LC4/h;

    invoke-virtual {v1, v0}, LC4/h;->b(LC4/F;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :cond_44
    return-object v2

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_45

    iget-object v0, v2, LC4/I;->l:LC4/K;

    if-eqz v0, :cond_45

    invoke-static {v0}, LD4/c;->d(Ljava/io/Closeable;)V

    :cond_45
    throw v1
.end method
