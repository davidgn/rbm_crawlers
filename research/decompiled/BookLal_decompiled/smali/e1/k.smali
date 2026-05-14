.class public final Le1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/util/List;

.field public final c:Lq1/a;

.field public final d:LJ2/e;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lq1/a;LJ2/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/k;->a:Ljava/lang/Class;

    iput-object p4, p0, Le1/k;->b:Ljava/util/List;

    iput-object p5, p0, Le1/k;->c:Lq1/a;

    iput-object p6, p0, Le1/k;->d:LJ2/e;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Failed DecodePath{"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le1/k;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(IILD2/e;Lb1/h;Lc1/g;)Le1/A;
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p3

    iget-object v8, v7, Le1/k;->d:LJ2/e;

    invoke-virtual {v8}, LJ2/e;->g()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/List;

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p4

    move-object v6, v9

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Le1/k;->b(Lc1/g;IILb1/h;Ljava/util/List;)Le1/A;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8, v9}, LJ2/e;->N(Ljava/lang/Object;)Z

    iget-object v2, v0, LD2/e;->c:Ljava/lang/Object;

    check-cast v2, Le1/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Le1/A;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    sget-object v3, Lb1/a;->d:Lb1/a;

    iget-object v0, v0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lb1/a;

    iget-object v4, v2, Le1/j;->a:Le1/g;

    const/4 v5, 0x0

    if-eq v0, v3, :cond_0

    invoke-virtual {v4, v15}, Le1/g;->e(Ljava/lang/Class;)Lb1/l;

    move-result-object v3

    iget-object v6, v2, Le1/j;->m:Lcom/bumptech/glide/c;

    iget v8, v2, Le1/j;->q:I

    iget v9, v2, Le1/j;->r:I

    invoke-interface {v3, v6, v1, v8, v9}, Lb1/l;->b(Landroid/content/Context;Le1/A;II)Le1/A;

    move-result-object v6

    move-object v14, v3

    goto :goto_0

    :cond_0
    move-object v6, v1

    move-object v14, v5

    :goto_0
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Le1/A;->a()V

    :cond_1
    iget-object v1, v4, Le1/g;->c:Lcom/bumptech/glide/c;

    iget-object v1, v1, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/f;

    iget-object v1, v1, Lcom/bumptech/glide/f;->d:LC4/v;

    invoke-interface {v6}, Le1/A;->c()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, LC4/v;->f(Ljava/lang/Class;)Lb1/k;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v4, Le1/g;->c:Lcom/bumptech/glide/c;

    iget-object v1, v1, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6}, Le1/A;->c()Ljava/lang/Class;

    move-result-object v3

    iget-object v1, v1, Lcom/bumptech/glide/f;->d:LC4/v;

    invoke-virtual {v1, v3}, LC4/v;->f(Ljava/lang/Class;)Lb1/k;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v1, v2, Le1/j;->t:Lb1/h;

    invoke-interface {v5, v1}, Lb1/k;->n(Lb1/h;)I

    move-result v1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/bumptech/glide/e;

    invoke-interface {v6}, Le1/A;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/e;-><init>(Ljava/lang/Class;)V

    throw v0

    :cond_3
    const/4 v1, 0x3

    :goto_1
    iget-object v3, v2, Le1/j;->z:Lb1/e;

    invoke-virtual {v4}, Le1/g;->b()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v13, 0x0

    move v10, v13

    :goto_2
    const/4 v12, 0x1

    if-ge v10, v9, :cond_5

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Li1/p;

    iget-object v11, v11, Li1/p;->a:Lb1/e;

    invoke-interface {v11, v3}, Lb1/e;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v3, v12

    goto :goto_3

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    move v3, v13

    :goto_3
    iget-object v8, v2, Le1/j;->s:Le1/l;

    iget v8, v8, Le1/l;->a:I

    packed-switch v8, :pswitch_data_0

    if-nez v3, :cond_6

    sget-object v3, Lb1/a;->c:Lb1/a;

    if-eq v0, v3, :cond_7

    :cond_6
    sget-object v3, Lb1/a;->a:Lb1/a;

    if-ne v0, v3, :cond_8

    :cond_7
    const/4 v0, 0x2

    if-ne v1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    :pswitch_0
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_f

    if-eqz v5, :cond_e

    invoke-static {v1}, Ls/e;->d(I)I

    move-result v0

    if-eqz v0, :cond_d

    if-ne v0, v12, :cond_9

    new-instance v0, Le1/C;

    iget-object v1, v4, Le1/g;->c:Lcom/bumptech/glide/c;

    iget-object v9, v1, Lcom/bumptech/glide/c;->a:Lf1/f;

    iget-object v10, v2, Le1/j;->z:Lb1/e;

    iget-object v11, v2, Le1/j;->n:Lb1/e;

    iget v1, v2, Le1/j;->q:I

    iget v3, v2, Le1/j;->r:I

    iget-object v4, v2, Le1/j;->t:Lb1/h;

    move-object v8, v0

    move-object/from16 p1, v0

    move v0, v12

    move v12, v1

    move v1, v13

    move v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v8 .. v16}, Le1/C;-><init>(Lf1/f;Lb1/e;Lb1/e;IILb1/l;Ljava/lang/Class;Lb1/h;)V

    move v3, v1

    move-object/from16 v1, p1

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    const/4 v2, 0x3

    if-eq v1, v2, :cond_a

    const-string v1, "null"

    goto :goto_5

    :cond_a
    const-string v1, "NONE"

    goto :goto_5

    :cond_b
    const-string v1, "TRANSFORMED"

    goto :goto_5

    :cond_c
    const-string v1, "SOURCE"

    :goto_5
    const-string v2, "Unknown strategy: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move v0, v12

    move v3, v13

    new-instance v1, Le1/d;

    iget-object v4, v2, Le1/j;->z:Lb1/e;

    iget-object v8, v2, Le1/j;->n:Lb1/e;

    invoke-direct {v1, v4, v8}, Le1/d;-><init>(Lb1/e;Lb1/e;)V

    :goto_6
    sget-object v4, Le1/z;->e:LJ2/e;

    invoke-virtual {v4}, LJ2/e;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le1/z;

    iput-boolean v3, v4, Le1/z;->d:Z

    iput-boolean v0, v4, Le1/z;->c:Z

    iput-object v6, v4, Le1/z;->b:Le1/A;

    iget-object v0, v2, Le1/j;->f:LJ2/e;

    iput-object v1, v0, LJ2/e;->b:Ljava/lang/Object;

    iput-object v5, v0, LJ2/e;->c:Ljava/lang/Object;

    iput-object v4, v0, LJ2/e;->d:Ljava/lang/Object;

    move-object v6, v4

    goto :goto_7

    :cond_e
    new-instance v0, Lcom/bumptech/glide/e;

    invoke-interface {v6}, Le1/A;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/e;-><init>(Ljava/lang/Class;)V

    throw v0

    :cond_f
    :goto_7
    iget-object v0, v7, Le1/k;->c:Lq1/a;

    move-object/from16 v1, p4

    invoke-interface {v0, v6, v1}, Lq1/a;->e(Le1/A;Lb1/h;)Le1/A;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v8, v9}, LJ2/e;->N(Ljava/lang/Object;)Z

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lc1/g;IILb1/h;Ljava/util/List;)Le1/A;
    .locals 9

    iget-object v0, p0, Le1/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb1/j;

    :try_start_0
    invoke-interface {p1}, Lc1/g;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, p4}, Lb1/j;->a(Ljava/lang/Object;Lb1/h;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Lc1/g;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, p2, p3, p4}, Lb1/j;->b(Ljava/lang/Object;IILb1/h;)Le1/A;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    :catch_2
    move-exception v5

    :goto_1
    const-string v6, "DecodePath"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to decode data for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p5, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    new-instance p1, Le1/v;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p3, p0, Le1/k;->e:Ljava/lang/String;

    invoke-direct {p1, p3, p2}, Le1/v;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DecodePath{ dataClass="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Le1/k;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", decoders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le1/k;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le1/k;->c:Lq1/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
