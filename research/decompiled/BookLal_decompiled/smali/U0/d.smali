.class public final LU0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public final a:LL0/e;

.field public final b:LD2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, Landroidx/work/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LU0/d;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LL0/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU0/d;->a:LL0/e;

    new-instance p1, LD2/e;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, LD2/e;-><init>(I)V

    iput-object p1, p0, LU0/d;->b:LD2/e;

    return-void
.end method

.method public static a(LL0/e;)Z
    .locals 20

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, LL0/e;->D(LL0/e;)Ljava/util/HashSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v0, LL0/e;->d:LL0/l;

    iget-object v6, v5, LL0/l;->d:Landroidx/work/impl/WorkDatabase;

    if-eqz v1, :cond_0

    array-length v8, v1

    if-lez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    const/4 v10, 0x4

    if-eqz v8, :cond_5

    array-length v11, v1

    move v12, v2

    move v14, v12

    move v15, v14

    const/4 v13, 0x1

    :goto_1
    if-ge v12, v11, :cond_6

    aget-object v7, v1, v12

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->n()LT0/j;

    move-result-object v9

    invoke-virtual {v9, v7}, LT0/j;->h(Ljava/lang/String;)LT0/i;

    move-result-object v9

    if-nez v9, :cond_1

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v1

    const-string v3, "Prerequisite "

    const-string v4, " doesn\'t exist; not enqueuing"

    invoke-static {v3, v7, v4}, LC/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    sget-object v5, LU0/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v5, v3, v4}, Landroidx/work/n;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_10

    :cond_1
    iget v7, v9, LT0/i;->b:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_2

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    move v9, v2

    :goto_3
    and-int/2addr v13, v9

    if-ne v7, v10, :cond_3

    const/4 v15, 0x1

    goto :goto_4

    :cond_3
    const/4 v9, 0x6

    if-ne v7, v9, :cond_4

    const/4 v14, 0x1

    :cond_4
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    move v14, v2

    move v15, v14

    const/4 v13, 0x1

    :cond_6
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    if-nez v8, :cond_d

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->n()LT0/j;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v12, 0x1

    invoke-static {v12, v11}, Lv0/i;->e(ILjava/lang/String;)Lv0/i;

    move-result-object v11

    invoke-virtual {v11, v12}, Lv0/i;->g(I)V

    iget-object v9, v9, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v9}, Lv0/h;->b()V

    invoke-virtual {v9, v11}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object v9

    :try_start_0
    const-string v12, "id"

    invoke-static {v12, v9}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v12

    const-string v2, "state"

    invoke-static {v2, v9}, LL4/l;->s(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    new-instance v10, Ljava/util/ArrayList;

    move/from16 v16, v7

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(I)V

    :goto_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, LT0/h;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object/from16 v17, v1

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, LT0/h;->a:Ljava/lang/String;

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, LL4/d;->y(I)I

    move-result v1

    iput v1, v7, LT0/h;->b:I

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, v17

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_7
    move-object/from16 v17, v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-virtual {v11}, Lv0/i;->release()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LT0/h;

    iget v2, v2, LT0/h;->b:I

    const/4 v7, 0x1

    if-eq v2, v7, :cond_9

    const/4 v7, 0x2

    if-ne v2, v7, :cond_8

    :cond_9
    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_a
    new-instance v1, LU0/b;

    const/4 v2, 0x1

    invoke-direct {v1, v5, v2}, LU0/b;-><init>(LL0/l;I)V

    invoke-virtual {v1}, LU0/c;->run()V

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->n()LT0/j;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LT0/h;

    iget-object v5, v5, LT0/h;->a:Ljava/lang/String;

    iget-object v7, v1, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v7}, Lv0/h;->b()V

    iget-object v9, v1, LT0/j;->c:LT0/e;

    invoke-virtual {v9}, Lv0/k;->a()LA0/f;

    move-result-object v10

    if-nez v5, :cond_b

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, LA0/b;->f(I)V

    goto :goto_7

    :cond_b
    const/4 v11, 0x1

    invoke-virtual {v10, v11, v5}, LA0/b;->g(ILjava/lang/String;)V

    :goto_7
    invoke-virtual {v7}, Lv0/h;->c()V

    :try_start_1
    invoke-virtual {v10}, LA0/f;->t()V

    invoke-virtual {v7}, Lv0/h;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v7}, Lv0/h;->f()V

    invoke-virtual {v9, v10}, Lv0/k;->c(LA0/f;)V

    goto :goto_6

    :catchall_1
    move-exception v0

    invoke-virtual {v7}, Lv0/h;->f()V

    invoke-virtual {v9, v10}, Lv0/k;->c(LA0/f;)V

    throw v0

    :cond_c
    const/4 v1, 0x1

    goto :goto_9

    :goto_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-virtual {v11}, Lv0/i;->release()V

    throw v0

    :cond_d
    move-object/from16 v17, v1

    move/from16 v16, v7

    :cond_e
    const/4 v1, 0x0

    :goto_9
    iget-object v2, v0, LL0/e;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v12, v1

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/o;

    iget-object v5, v1, Landroidx/work/o;->b:LT0/i;

    if-eqz v8, :cond_11

    if-nez v13, :cond_11

    if-eqz v15, :cond_f

    const/4 v7, 0x4

    iput v7, v5, LT0/i;->b:I

    const/4 v9, 0x6

    goto :goto_b

    :cond_f
    const/4 v7, 0x4

    if-eqz v14, :cond_10

    const/4 v9, 0x6

    iput v9, v5, LT0/i;->b:I

    goto :goto_b

    :cond_10
    const/4 v9, 0x6

    const/4 v10, 0x5

    iput v10, v5, LT0/i;->b:I

    goto :goto_b

    :cond_11
    const/4 v7, 0x4

    const/4 v9, 0x6

    invoke-virtual {v5}, LT0/i;->c()Z

    move-result v10

    if-nez v10, :cond_12

    iput-wide v3, v5, LT0/i;->n:J

    goto :goto_b

    :cond_12
    const-wide/16 v10, 0x0

    iput-wide v10, v5, LT0/i;->n:J

    :goto_b
    iget v10, v5, LT0/i;->b:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_13

    const/4 v12, 0x1

    :cond_13
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->n()LT0/j;

    move-result-object v10

    iget-object v11, v10, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v11}, Lv0/h;->b()V

    invoke-virtual {v11}, Lv0/h;->c()V

    :try_start_2
    iget-object v10, v10, LT0/j;->b:LT0/b;

    invoke-virtual {v10, v5}, LT0/b;->e(Ljava/lang/Object;)V

    invoke-virtual {v11}, Lv0/h;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    invoke-virtual {v11}, Lv0/h;->f()V

    iget-object v5, v1, Landroidx/work/o;->a:Ljava/util/UUID;

    if-eqz v8, :cond_15

    move-object/from16 v10, v17

    array-length v11, v10

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v11, :cond_14

    aget-object v9, v10, v7

    move-object/from16 v17, v2

    new-instance v2, LT0/a;

    move-wide/from16 v18, v3

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v9}, LT0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->i()LD2/e;

    move-result-object v3

    iget-object v4, v3, LD2/e;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v4}, Lv0/h;->b()V

    invoke-virtual {v4}, Lv0/h;->c()V

    :try_start_3
    iget-object v3, v3, LD2/e;->c:Ljava/lang/Object;

    check-cast v3, LT0/b;

    invoke-virtual {v3, v2}, LT0/b;->e(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lv0/h;->h()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v4}, Lv0/h;->f()V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    const/4 v9, 0x6

    goto :goto_c

    :catchall_2
    move-exception v0

    invoke-virtual {v4}, Lv0/h;->f()V

    throw v0

    :cond_14
    move-object/from16 v17, v2

    move-wide/from16 v18, v3

    goto :goto_d

    :cond_15
    move-wide/from16 v18, v3

    move-object/from16 v10, v17

    move-object/from16 v17, v2

    :goto_d
    iget-object v1, v1, Landroidx/work/o;->c:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->o()LD2/e;

    move-result-object v3

    new-instance v4, LT0/k;

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v2, v7}, LT0/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v3, LD2/e;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v2}, Lv0/h;->b()V

    invoke-virtual {v2}, Lv0/h;->c()V

    :try_start_4
    iget-object v3, v3, LD2/e;->c:Ljava/lang/Object;

    check-cast v3, LT0/b;

    invoke-virtual {v3, v4}, LT0/b;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lv0/h;->h()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-virtual {v2}, Lv0/h;->f()V

    goto :goto_e

    :catchall_3
    move-exception v0

    invoke-virtual {v2}, Lv0/h;->f()V

    throw v0

    :cond_16
    if-nez v16, :cond_17

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->l()LD2/e;

    move-result-object v1

    new-instance v2, LT0/f;

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, LT0/f;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, LD2/e;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v3}, Lv0/h;->b()V

    invoke-virtual {v3}, Lv0/h;->c()V

    :try_start_5
    iget-object v1, v1, LD2/e;->c:Ljava/lang/Object;

    check-cast v1, LT0/b;

    invoke-virtual {v1, v2}, LT0/b;->e(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lv0/h;->h()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-virtual {v3}, Lv0/h;->f()V

    goto :goto_f

    :catchall_4
    move-exception v0

    invoke-virtual {v3}, Lv0/h;->f()V

    throw v0

    :cond_17
    :goto_f
    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    move-object/from16 v17, v10

    goto/16 :goto_a

    :catchall_5
    move-exception v0

    invoke-virtual {v11}, Lv0/h;->f()V

    throw v0

    :cond_18
    move v2, v12

    goto/16 :goto_2

    :goto_10
    iput-boolean v1, v0, LL0/e;->h:Z

    return v2
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, LU0/d;->b:LD2/e;

    iget-object v1, p0, LU0/d;->a:LL0/e;

    const-string v2, "WorkContinuation has cycles ("

    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1, v3}, LL0/e;->C(LL0/e;Ljava/util/HashSet;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    iget-object v2, v1, LL0/e;->d:LL0/l;

    :try_start_1
    iget-object v3, v2, LL0/l;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Lv0/h;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, LU0/d;->a(LL0/e;)Z

    move-result v1

    invoke-virtual {v3}, Lv0/h;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3}, Lv0/h;->f()V

    if-eqz v1, :cond_0

    iget-object v1, v2, LL0/l;->b:Landroid/content/Context;

    const-class v3, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, LU0/g;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    iget-object v1, v2, LL0/l;->c:Landroidx/work/b;

    iget-object v3, v2, LL0/l;->d:Landroidx/work/impl/WorkDatabase;

    iget-object v2, v2, LL0/l;->f:Ljava/util/List;

    invoke-static {v1, v3, v2}, LL0/d;->a(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Landroidx/work/s;->g:Landroidx/work/r;

    invoke-virtual {v0, v1}, LD2/e;->w(La/a;)V

    goto :goto_2

    :catchall_1
    move-exception v1

    invoke-virtual {v3}, Lv0/h;->f()V

    throw v1

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    new-instance v2, Landroidx/work/p;

    invoke-direct {v2, v1}, Landroidx/work/p;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, LD2/e;->w(La/a;)V

    :goto_2
    return-void
.end method
