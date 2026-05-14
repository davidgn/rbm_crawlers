.class public final Lm3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lm3/l;->a:I

    iput-object p1, p0, Lm3/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashSet;
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lm3/l;->b:Ljava/lang/Object;

    check-cast v1, Lv0/d;

    iget-object v1, v1, Lv0/d;->c:Landroidx/work/impl/WorkDatabase_Impl;

    new-instance v2, LG3/b;

    const-string v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, LG3/b;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lm3/l;->b:Ljava/lang/Object;

    check-cast v1, Lv0/d;

    iget-object v1, v1, Lv0/d;->f:LA0/f;

    invoke-virtual {v1}, LA0/f;->t()V

    :cond_1
    return-object v0

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, v1, Lm3/l;->a:I

    packed-switch v6, :pswitch_data_0

    iget-object v0, v1, Lm3/l;->b:Ljava/lang/Object;

    check-cast v0, Lv0/d;

    iget-object v0, v0, Lv0/d;->c:Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v0, v0, Lv0/h;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, v1, Lm3/l;->b:Ljava/lang/Object;

    check-cast v0, Lv0/d;

    invoke-virtual {v0}, Lv0/d;->a()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_7

    :cond_0
    :try_start_1
    iget-object v0, v1, Lm3/l;->b:Ljava/lang/Object;

    check-cast v0, Lv0/d;

    iget-object v0, v0, Lv0/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lm3/l;->b:Ljava/lang/Object;

    check-cast v0, Lv0/d;

    iget-object v0, v0, Lv0/d;->c:Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v0, v0, Lv0/h;->c:Lz0/b;

    invoke-interface {v0}, Lz0/b;->i()LA0/b;

    move-result-object v0

    iget-object v0, v0, LA0/b;->b:Landroid/database/sqlite/SQLiteClosable;

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lm3/l;->b:Ljava/lang/Object;

    check-cast v0, Lv0/d;

    iget-object v0, v0, Lv0/d;->c:Landroidx/work/impl/WorkDatabase_Impl;

    iget-boolean v4, v0, Lv0/h;->f:Z

    if-eqz v4, :cond_3

    iget-object v0, v0, Lv0/h;->c:Lz0/b;

    invoke-interface {v0}, Lz0/b;->i()LA0/b;

    move-result-object v4

    invoke-virtual {v4}, LA0/b;->b()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lm3/l;->a()Ljava/util/HashSet;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v4}, LA0/b;->s()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v4}, LA0/b;->m()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v5, v2

    :goto_1
    invoke-virtual {v4}, LA0/b;->m()V

    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    move-object v5, v2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :cond_3
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lm3/l;->a()Ljava/util/HashSet;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_5

    :goto_4
    :try_start_6
    const-string v4, "ROOM"

    const-string v6, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :goto_5
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lm3/l;->b:Ljava/lang/Object;

    check-cast v0, Lv0/d;

    iget-object v3, v0, Lv0/d;->h:Ln/f;

    monitor-enter v3

    :try_start_7
    iget-object v0, v1, Lm3/l;->b:Ljava/lang/Object;

    check-cast v0, Lv0/d;

    iget-object v0, v0, Lv0/d;->h:Ln/f;

    invoke-virtual {v0}, Ln/f;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ln/b;

    invoke-virtual {v0}, Ln/b;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    monitor-exit v3

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_4
    invoke-virtual {v0}, Ln/b;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv0/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v2

    :goto_6
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_5
    :goto_7
    return-void

    :goto_8
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :pswitch_0
    iget-object v0, v1, Lm3/l;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z0()Z

    return-void

    :pswitch_1
    iget-object v2, v1, Lm3/l;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->O:Lu0/C;

    if-eqz v6, :cond_12

    check-cast v6, Lu0/h;

    iget-object v7, v6, Lu0/h;->h:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    iget-object v9, v6, Lu0/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    iget-object v11, v6, Lu0/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    iget-object v13, v6, Lu0/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v8, :cond_6

    if-eqz v10, :cond_6

    if-eqz v14, :cond_6

    if-eqz v12, :cond_6

    goto/16 :goto_f

    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    iget-wide v3, v6, Lu0/C;->d:J

    if-eqz v16, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lu0/W;

    iget-object v0, v5, Lu0/W;->a:Landroid/view/View;

    move-object/from16 v17, v15

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    iget-object v1, v6, Lu0/h;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Lu0/c;

    invoke-direct {v3, v6, v5, v15, v0}, Lu0/c;-><init>(Lu0/h;Lu0/W;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    move-object/from16 v1, p0

    move-object/from16 v15, v17

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_9

    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    if-nez v10, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v6, Lu0/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lu0/b;

    const/4 v5, 0x0

    invoke-direct {v1, v6, v0, v5}, Lu0/b;-><init>(Lu0/h;Ljava/util/ArrayList;I)V

    if-nez v8, :cond_8

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu0/g;

    iget-object v0, v0, Lu0/g;->a:Lu0/W;

    iget-object v0, v0, Lu0/W;->a:Landroid/view/View;

    sget-object v5, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_a

    :cond_8
    invoke-virtual {v1}, Lu0/b;->run()V

    :cond_9
    :goto_a
    if-nez v12, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v6, Lu0/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lu0/b;

    const/4 v5, 0x1

    invoke-direct {v1, v6, v0, v5}, Lu0/b;-><init>(Lu0/h;Ljava/util/ArrayList;I)V

    if-nez v8, :cond_a

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu0/f;

    iget-object v0, v0, Lu0/f;->a:Lu0/W;

    iget-object v0, v0, Lu0/W;->a:Landroid/view/View;

    sget-object v5, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_b

    :cond_a
    invoke-virtual {v1}, Lu0/b;->run()V

    :cond_b
    :goto_b
    if-nez v14, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v6, Lu0/h;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lu0/b;

    const/4 v5, 0x2

    invoke-direct {v1, v6, v0, v5}, Lu0/b;-><init>(Lu0/h;Ljava/util/ArrayList;I)V

    if-eqz v8, :cond_d

    if-eqz v10, :cond_d

    if-nez v12, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Lu0/b;->run()V

    goto :goto_f

    :cond_d
    :goto_c
    const-wide/16 v13, 0x0

    if-nez v8, :cond_e

    goto :goto_d

    :cond_e
    move-wide v3, v13

    :goto_d
    if-nez v10, :cond_f

    iget-wide v7, v6, Lu0/C;->e:J

    goto :goto_e

    :cond_f
    move-wide v7, v13

    :goto_e
    if-nez v12, :cond_10

    iget-wide v13, v6, Lu0/C;->f:J

    :cond_10
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    add-long/2addr v5, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu0/W;

    iget-object v0, v0, Lu0/W;->a:Landroid/view/View;

    sget-object v3, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1, v5, v6}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_11
    :goto_f
    const/4 v0, 0x0

    goto :goto_10

    :cond_12
    move v0, v4

    :goto_10
    iput-boolean v0, v2, Landroidx/recyclerview/widget/RecyclerView;->p0:Z

    return-void

    :pswitch_2
    iget-object v0, v1, Lm3/l;->b:Ljava/lang/Object;

    check-cast v0, Lu0/i;

    iget v2, v0, Lu0/i;->A:I

    iget-object v3, v0, Lu0/i;->z:Landroid/animation/ValueAnimator;

    const/4 v4, 0x1

    if-eq v2, v4, :cond_13

    const/4 v4, 0x2

    if-eq v2, v4, :cond_14

    goto :goto_11

    :cond_13
    const/4 v4, 0x2

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_14
    const/4 v2, 0x3

    iput v2, v0, Lu0/i;->A:I

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-array v2, v4, [F

    const/4 v4, 0x0

    aput v0, v2, v4

    const/4 v0, 0x1

    const/4 v4, 0x0

    aput v4, v2, v0

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/16 v0, 0x1f4

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    :goto_11
    return-void

    :pswitch_3
    iget-object v0, v1, Lm3/l;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :pswitch_4
    iget-object v0, v1, Lm3/l;->b:Ljava/lang/Object;

    check-cast v0, Lm3/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lm3/l;->b:Ljava/lang/Object;

    check-cast v0, Lm3/n;

    iget-object v2, v0, Lm3/n;->o:Ljava/util/concurrent/Executor;

    iget-object v0, v0, Lm3/n;->t:Lm3/m;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lm3/l;->b:Ljava/lang/Object;

    check-cast v0, Lm3/n;

    iget-object v2, v0, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v0, v1, Lm3/l;->b:Ljava/lang/Object;

    check-cast v0, Lm3/n;

    const v3, 0x7fffffff

    iput v3, v0, Lm3/n;->C:I

    invoke-virtual {v0}, Lm3/n;->s()Z

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    iget-object v0, v1, Lm3/l;->b:Ljava/lang/Object;

    check-cast v0, Lm3/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
