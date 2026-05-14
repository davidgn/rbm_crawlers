.class public final Landroidx/fragment/app/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/n;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/n;->d:Z

    iput-boolean v0, p0, Landroidx/fragment/app/n;->e:Z

    iput-object p1, p0, Landroidx/fragment/app/n;->a:Landroid/view/ViewGroup;

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, LM/e0;->b(Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2, p1}, Landroidx/fragment/app/n;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public static e(Lr/b;Landroid/view/View;)V
    .locals 4

    sget-object v0, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, LM/N;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lr/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, v2}, Landroidx/fragment/app/n;->e(Lr/b;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static h(Landroid/view/ViewGroup;Landroidx/fragment/app/Y;)Landroidx/fragment/app/n;
    .locals 0

    invoke-virtual {p1}, Landroidx/fragment/app/Y;->F()Ld3/a;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/fragment/app/n;->i(Landroid/view/ViewGroup;Ld3/a;)Landroidx/fragment/app/n;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/view/ViewGroup;Ld3/a;)Landroidx/fragment/app/n;
    .locals 3

    const v0, 0x7f090371

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/fragment/app/n;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/fragment/app/n;

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/fragment/app/n;

    invoke-direct {p1, p0}, Landroidx/fragment/app/n;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method

.method public static k(Lr/b;Ljava/util/Collection;)V
    .locals 3

    invoke-virtual {p0}, Lr/b;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lr/h;

    invoke-virtual {p0}, Lr/h;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    move-object v0, p0

    check-cast v0, Lr/i;

    invoke-virtual {v0}, Lr/i;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lr/i;->next()Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v2, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, LM/N;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lr/i;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(IILandroidx/fragment/app/g0;)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, LI/f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p3, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/n;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/v0;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/v0;->c(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/fragment/app/v0;

    invoke-direct {v2, p1, p2, p3, v1}, Landroidx/fragment/app/v0;-><init>(IILandroidx/fragment/app/g0;LI/f;)V

    iget-object p1, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/fragment/app/u0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v2, p2}, Landroidx/fragment/app/u0;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/v0;I)V

    iget-object p2, v2, Landroidx/fragment/app/v0;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/fragment/app/u0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, v2, p2}, Landroidx/fragment/app/u0;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/v0;I)V

    iget-object p2, v2, Landroidx/fragment/app/v0;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Ljava/util/ArrayList;Z)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/v0;

    iget-object v12, v9, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/Fragment;

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v12}, LC/a;->c(Landroid/view/View;)I

    move-result v12

    iget v13, v9, Landroidx/fragment/app/v0;->a:I

    invoke-static {v13}, Ls/e;->d(I)I

    move-result v13

    if-eqz v13, :cond_2

    if-eq v13, v4, :cond_1

    if-eq v13, v11, :cond_2

    if-eq v13, v10, :cond_2

    goto :goto_0

    :cond_1
    if-eq v12, v11, :cond_0

    move-object v8, v9

    goto :goto_0

    :cond_2
    if-ne v12, v11, :cond_0

    if-nez v7, :cond_0

    move-object v7, v9

    goto :goto_0

    :cond_3
    const-string v5, "FragmentManager"

    invoke-static {v5, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    const-string v12, " to "

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "Executing operations from "

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v4

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/fragment/app/v0;

    iget-object v15, v15, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Landroidx/fragment/app/v0;

    iget-object v10, v10, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/Fragment;

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/y;

    iget-object v6, v15, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/y;

    iget v11, v6, Landroidx/fragment/app/y;->b:I

    iput v11, v10, Landroidx/fragment/app/y;->b:I

    iget v11, v6, Landroidx/fragment/app/y;->c:I

    iput v11, v10, Landroidx/fragment/app/y;->c:I

    iget v11, v6, Landroidx/fragment/app/y;->d:I

    iput v11, v10, Landroidx/fragment/app/y;->d:I

    iget v6, v6, Landroidx/fragment/app/y;->e:I

    iput v6, v10, Landroidx/fragment/app/y;->e:I

    const/4 v10, 0x3

    const/4 v11, 0x2

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v10, 0x0

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/v0;

    new-instance v11, LI/f;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6}, Landroidx/fragment/app/v0;->d()V

    iget-object v15, v6, Landroidx/fragment/app/v0;->e:Ljava/util/HashSet;

    invoke-virtual {v15, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroidx/fragment/app/k;

    invoke-direct {v4, v6, v11}, Landroidx/fragment/app/l;-><init>(Landroidx/fragment/app/v0;LI/f;)V

    iput-boolean v10, v4, Landroidx/fragment/app/k;->d:Z

    iput-boolean v2, v4, Landroidx/fragment/app/k;->c:Z

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, LI/f;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6}, Landroidx/fragment/app/v0;->d()V

    invoke-virtual {v15, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v11, Landroidx/fragment/app/m;

    if-eqz v2, :cond_6

    if-ne v6, v7, :cond_7

    :goto_3
    const/4 v10, 0x1

    goto :goto_4

    :cond_6
    if-ne v6, v8, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    invoke-direct {v11, v6, v4, v2, v10}, Landroidx/fragment/app/m;-><init>(Landroidx/fragment/app/v0;LI/f;ZZ)V

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroidx/fragment/app/d;

    invoke-direct {v4, v0, v14, v6}, Landroidx/fragment/app/d;-><init>(Landroidx/fragment/app/n;Ljava/util/ArrayList;Landroidx/fragment/app/v0;)V

    iget-object v6, v6, Landroidx/fragment/app/v0;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/m;

    invoke-virtual {v11}, Landroidx/fragment/app/l;->b()Z

    move-result v15

    if-eqz v15, :cond_9

    goto :goto_5

    :cond_9
    iget-object v15, v11, Landroidx/fragment/app/m;->c:Ljava/lang/Object;

    invoke-virtual {v11, v15}, Landroidx/fragment/app/m;->c(Ljava/lang/Object;)Landroidx/fragment/app/r0;

    move-result-object v10

    iget-object v3, v11, Landroidx/fragment/app/m;->e:Ljava/lang/Object;

    move-object/from16 v18, v4

    invoke-virtual {v11, v3}, Landroidx/fragment/app/m;->c(Ljava/lang/Object;)Landroidx/fragment/app/r0;

    move-result-object v4

    iget-object v11, v11, Landroidx/fragment/app/l;->a:Landroidx/fragment/app/v0;

    move-object/from16 v25, v12

    const-string v12, " returned Transition "

    move-object/from16 v26, v9

    const-string v9, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    iget-object v11, v11, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/Fragment;

    if-eqz v10, :cond_b

    if-eqz v4, :cond_b

    if-ne v10, v4, :cond_a

    goto :goto_6

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_6
    if-eqz v10, :cond_c

    goto :goto_7

    :cond_c
    move-object v10, v4

    :goto_7
    if-nez v6, :cond_d

    move-object v6, v10

    goto :goto_8

    :cond_d
    if-eqz v10, :cond_f

    if-ne v6, v10, :cond_e

    goto :goto_8

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :goto_8
    move-object/from16 v4, v18

    move-object/from16 v12, v25

    move-object/from16 v9, v26

    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_10
    move-object/from16 v26, v9

    move-object/from16 v25, v12

    iget-object v3, v0, Landroidx/fragment/app/n;->a:Landroid/view/ViewGroup;

    if-nez v6, :cond_12

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/m;

    iget-object v6, v4, Landroidx/fragment/app/l;->a:Landroidx/fragment/app/v0;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Landroidx/fragment/app/l;->a()V

    goto :goto_9

    :cond_11
    move-object v13, v1

    move-object/from16 v17, v7

    move-object/from16 v34, v8

    move-object/from16 v33, v14

    const/4 v0, 0x0

    move-object v14, v5

    goto/16 :goto_27

    :cond_12
    new-instance v4, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lr/b;

    invoke-direct {v12}, Lr/k;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v0, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_20

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v29, v15

    move-object/from16 v15, v18

    check-cast v15, Landroidx/fragment/app/m;

    iget-object v15, v15, Landroidx/fragment/app/m;->e:Ljava/lang/Object;

    if-eqz v15, :cond_1f

    if-eqz v7, :cond_1f

    if-eqz v8, :cond_1f

    invoke-virtual {v6, v15}, Landroidx/fragment/app/r0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/fragment/app/r0;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v15, v8, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/Fragment;

    move-object/from16 v33, v14

    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v30, v13

    iget-object v13, v7, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/Fragment;

    move-object/from16 v34, v1

    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v31, v4

    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v35, v0

    move-object/from16 v32, v9

    const/4 v9, 0x0

    :goto_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_14

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move-object/from16 v18, v4

    const/4 v4, -0x1

    if-eq v0, v4, :cond_13

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v14, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_13
    const/4 v0, 0x1

    add-int/2addr v9, v0

    move-object/from16 v4, v18

    goto :goto_b

    :cond_14
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v2, :cond_15

    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()LB/M;

    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()LB/M;

    goto :goto_c

    :cond_15
    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()LB/M;

    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()LB/M;

    :goto_c
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v1, :cond_16

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v1

    move-object/from16 v1, v18

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v12, v9, v1}, Lr/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    add-int/2addr v4, v1

    move/from16 v1, v19

    goto :goto_d

    :cond_16
    const/4 v1, 0x2

    invoke-static {v5, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v1, ">>> entering view names <<<"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v9, "Name: "

    if-eqz v4, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v18, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, v18

    goto :goto_e

    :cond_17
    const-string v1, ">>> exiting view names <<<"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v18, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, v18

    goto :goto_f

    :cond_18
    new-instance v1, Lr/b;

    invoke-direct {v1}, Lr/k;-><init>()V

    iget-object v4, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v4}, Landroidx/fragment/app/n;->e(Lr/b;Landroid/view/View;)V

    invoke-static {v1, v14}, Lr/a;->i(Ljava/util/Map;Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lr/b;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v12, v4}, Lr/a;->i(Ljava/util/Map;Ljava/util/Collection;)Z

    new-instance v4, Lr/b;

    invoke-direct {v4}, Lr/k;-><init>()V

    iget-object v9, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v4, v9}, Landroidx/fragment/app/n;->e(Lr/b;Landroid/view/View;)V

    invoke-static {v4, v0}, Lr/a;->i(Ljava/util/Map;Ljava/util/Collection;)Z

    invoke-virtual {v12}, Lr/b;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-static {v4, v9}, Lr/a;->i(Ljava/util/Map;Ljava/util/Collection;)Z

    sget-object v9, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/p0;

    iget v9, v12, Lr/k;->c:I

    const/16 v16, 0x1

    add-int/lit8 v9, v9, -0x1

    :goto_10
    if-ltz v9, :cond_1a

    invoke-virtual {v12, v9}, Lr/k;->l(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v36, v5

    move-object/from16 v5, v18

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lr/k;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {v12, v9}, Lr/k;->j(I)Ljava/lang/Object;

    :cond_19
    const/4 v5, -0x1

    add-int/2addr v9, v5

    move-object/from16 v5, v36

    goto :goto_10

    :cond_1a
    move-object/from16 v36, v5

    const/4 v5, -0x1

    invoke-virtual {v12}, Lr/b;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-static {v1, v9}, Landroidx/fragment/app/n;->k(Lr/b;Ljava/util/Collection;)V

    invoke-virtual {v12}, Lr/b;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-static {v4, v9}, Landroidx/fragment/app/n;->k(Lr/b;Ljava/util/Collection;)V

    invoke-virtual {v12}, Lr/k;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v1, v31

    move-object/from16 v4, v32

    move-object/from16 v13, v34

    const/4 v0, 0x0

    goto/16 :goto_14

    :cond_1b
    if-eqz v2, :cond_1c

    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()LB/M;

    goto :goto_11

    :cond_1c
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()LB/M;

    :goto_11
    new-instance v9, Landroidx/fragment/app/i;

    invoke-direct {v9, v8, v7, v2, v4}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/v0;Landroidx/fragment/app/v0;ZLr/b;)V

    invoke-static {v3, v9}, LM/A;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lr/b;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1d

    const/4 v9, 0x0

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v1, v13, v9}, Lr/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object/from16 v9, v35

    invoke-virtual {v6, v1, v9}, Landroidx/fragment/app/r0;->m(Landroid/view/View;Ljava/lang/Object;)V

    move-object/from16 v27, v1

    goto :goto_12

    :cond_1d
    move-object/from16 v9, v35

    :goto_12
    invoke-virtual {v4}, Lr/b;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lr/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1e

    new-instance v1, Landroidx/fragment/app/j;

    move-object/from16 v4, v32

    invoke-direct {v1, v6, v0, v4}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/r0;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v3, v1}, LM/A;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    move-object/from16 v1, v31

    const/16 v28, 0x1

    goto :goto_13

    :cond_1e
    move-object/from16 v4, v32

    move-object/from16 v1, v31

    :goto_13
    invoke-virtual {v6, v9, v1, v10}, Landroidx/fragment/app/r0;->p(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v6

    move-object/from16 v19, v9

    move-object/from16 v22, v9

    move-object/from16 v23, v11

    invoke-virtual/range {v18 .. v23}, Landroidx/fragment/app/r0;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v13, v34

    invoke-virtual {v13, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v9

    goto :goto_14

    :cond_1f
    move-object/from16 v36, v5

    move-object/from16 v30, v13

    move-object/from16 v33, v14

    const/4 v5, -0x1

    move-object v13, v1

    move-object v1, v4

    move-object v4, v9

    :goto_14
    move-object v9, v4

    move-object/from16 v15, v29

    move-object/from16 v14, v33

    move-object/from16 v5, v36

    move-object v4, v1

    move-object v1, v13

    move-object/from16 v13, v30

    goto/16 :goto_a

    :cond_20
    move-object/from16 v36, v5

    move-object/from16 v30, v13

    move-object/from16 v33, v14

    move-object v13, v1

    move-object v1, v4

    move-object v4, v9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/fragment/app/m;

    invoke-virtual {v15}, Landroidx/fragment/app/l;->b()Z

    move-result v18

    move-object/from16 p2, v5

    iget-object v5, v15, Landroidx/fragment/app/l;->a:Landroidx/fragment/app/v0;

    if-eqz v18, :cond_21

    move-object/from16 v24, v12

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v13, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Landroidx/fragment/app/l;->a()V

    move-object/from16 v5, p2

    move-object/from16 v12, v24

    goto :goto_15

    :cond_21
    move-object/from16 v24, v12

    iget-object v12, v15, Landroidx/fragment/app/m;->c:Ljava/lang/Object;

    invoke-virtual {v6, v12}, Landroidx/fragment/app/r0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v0, :cond_23

    if-eq v5, v7, :cond_22

    if-ne v5, v8, :cond_23

    :cond_22
    const/16 v18, 0x1

    goto :goto_16

    :cond_23
    const/16 v18, 0x0

    :goto_16
    if-nez v12, :cond_25

    if-nez v18, :cond_24

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v13, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Landroidx/fragment/app/l;->a()V

    :cond_24
    move-object/from16 v29, v0

    move-object/from16 v18, v1

    move-object/from16 v34, v8

    move-object/from16 v0, v27

    goto/16 :goto_1a

    :cond_25
    move-object/from16 v34, v8

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v0

    iget-object v0, v5, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/Fragment;

    move-object/from16 v31, v14

    iget-object v14, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v14, v8}, Landroidx/fragment/app/n;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    if-eqz v18, :cond_27

    if-ne v5, v7, :cond_26

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_17

    :cond_26
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_27
    :goto_17
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_28

    invoke-virtual {v6, v1, v12}, Landroidx/fragment/app/r0;->a(Landroid/view/View;Ljava/lang/Object;)V

    move-object/from16 v18, v1

    goto :goto_18

    :cond_28
    invoke-virtual {v6, v12, v8}, Landroidx/fragment/app/r0;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v6

    move-object/from16 v19, v12

    move-object/from16 v20, v12

    move-object/from16 v21, v8

    invoke-virtual/range {v18 .. v23}, Landroidx/fragment/app/r0;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget v14, v5, Landroidx/fragment/app/v0;->a:I

    move-object/from16 v18, v1

    const/4 v1, 0x3

    if-ne v14, v1, :cond_29

    move-object/from16 v1, v33

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v12, v0, v14}, Landroidx/fragment/app/r0;->k(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    new-instance v0, Landroidx/fragment/app/g;

    const/4 v1, 0x1

    invoke-direct {v0, v8, v1}, Landroidx/fragment/app/g;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3, v0}, LM/A;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_29
    :goto_18
    iget v0, v5, Landroidx/fragment/app/v0;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v28, :cond_2a

    invoke-virtual {v6, v12, v4}, Landroidx/fragment/app/r0;->n(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_2a
    move-object/from16 v0, v27

    goto :goto_19

    :cond_2b
    move-object/from16 v0, v27

    invoke-virtual {v6, v0, v12}, Landroidx/fragment/app/r0;->m(Landroid/view/View;Ljava/lang/Object;)V

    :goto_19
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v15, Landroidx/fragment/app/m;->d:Z

    if-eqz v1, :cond_2c

    invoke-virtual {v6, v9, v12}, Landroidx/fragment/app/r0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    move-object/from16 v14, v31

    goto :goto_1a

    :cond_2c
    move-object/from16 v14, v31

    invoke-virtual {v6, v14, v12}, Landroidx/fragment/app/r0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    :goto_1a
    move-object/from16 v5, p2

    move-object/from16 v27, v0

    move-object/from16 v1, v18

    move-object/from16 v12, v24

    move-object/from16 v0, v29

    move-object/from16 v8, v34

    goto/16 :goto_15

    :cond_2d
    move-object v1, v0

    move-object/from16 v34, v8

    move-object/from16 v24, v12

    invoke-virtual {v6, v9, v14, v1}, Landroidx/fragment/app/r0;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2e

    move-object/from16 v17, v7

    move-object/from16 v14, v36

    :goto_1b
    const/4 v0, 0x0

    goto/16 :goto_27

    :cond_2e
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/m;

    invoke-virtual {v5}, Landroidx/fragment/app/l;->b()Z

    move-result v8

    if-eqz v8, :cond_2f

    goto :goto_1c

    :cond_2f
    iget-object v8, v5, Landroidx/fragment/app/l;->a:Landroidx/fragment/app/v0;

    move-object/from16 v9, v34

    if-eqz v1, :cond_31

    if-eq v8, v7, :cond_30

    if-ne v8, v9, :cond_31

    :cond_30
    const/4 v12, 0x1

    goto :goto_1d

    :cond_31
    const/4 v12, 0x0

    :goto_1d
    iget-object v14, v5, Landroidx/fragment/app/m;->c:Ljava/lang/Object;

    if-nez v14, :cond_33

    if-eqz v12, :cond_32

    goto :goto_1e

    :cond_32
    move-object/from16 v14, v36

    goto :goto_1f

    :cond_33
    :goto_1e
    sget-object v12, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Landroid/view/View;->isLaidOut()Z

    move-result v12

    if-nez v12, :cond_35

    move-object/from16 v14, v36

    const/4 v12, 0x2

    invoke-static {v14, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_34

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "SpecialEffectsController: Container "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " has not been laid out. Completing operation "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    invoke-virtual {v5}, Landroidx/fragment/app/l;->a()V

    goto :goto_1f

    :cond_35
    move-object/from16 v14, v36

    new-instance v12, Landroidx/fragment/app/j;

    invoke-direct {v12, v5, v8}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/m;Landroidx/fragment/app/v0;)V

    invoke-virtual {v6, v0, v12}, Landroidx/fragment/app/r0;->o(Ljava/lang/Object;Landroidx/fragment/app/j;)V

    :goto_1f
    move-object/from16 v34, v9

    move-object/from16 v36, v14

    goto :goto_1c

    :cond_36
    move-object/from16 v9, v34

    move-object/from16 v14, v36

    sget-object v4, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Landroid/view/View;->isLaidOut()Z

    move-result v4

    if-nez v4, :cond_37

    move-object/from16 v17, v7

    move-object/from16 v34, v9

    goto :goto_1b

    :cond_37
    const/4 v4, 0x4

    invoke-static {v2, v4}, Landroidx/fragment/app/k0;->a(Ljava/util/ArrayList;I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_20
    if-ge v8, v5, :cond_38

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    sget-object v15, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-static {v12}, LM/N;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x0

    invoke-static {v12, v15}, LM/N;->v(Landroid/view/View;Ljava/lang/String;)V

    const/4 v12, 0x1

    add-int/2addr v8, v12

    goto :goto_20

    :cond_38
    const/4 v8, 0x2

    invoke-static {v14, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3a

    const-string v5, ">>>>> Beginning transition <<<<<"

    invoke-static {v14, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ">>>>> SharedElementFirstOutViews <<<<<"

    invoke-static {v14, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v12, " Name: "

    const-string v15, "View: "

    if-eqz v8, :cond_39

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object/from16 p2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, LM/N;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p2

    goto :goto_21

    :cond_39
    const-string v5, ">>>>> SharedElementLastInViews <<<<<"

    invoke-static {v14, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object/from16 p2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, LM/N;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p2

    goto :goto_22

    :cond_3a
    invoke-virtual {v6, v3, v0}, Landroidx/fragment/app/r0;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_23
    if-ge v8, v0, :cond_3e

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    sget-object v15, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-static {v12}, LM/N;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v15, :cond_3c

    move-object/from16 v17, v7

    move-object/from16 v34, v9

    :cond_3b
    :goto_24
    const/4 v7, 0x1

    goto :goto_26

    :cond_3c
    move-object/from16 v34, v9

    const/4 v9, 0x0

    invoke-static {v12, v9}, LM/N;->v(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v12, v24

    invoke-virtual {v12, v15, v9}, Lr/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Ljava/lang/String;

    move-object/from16 v24, v12

    const/4 v12, 0x0

    :goto_25
    move-object/from16 v17, v7

    if-ge v12, v0, :cond_3b

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-static {v7, v15}, LM/N;->v(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_24

    :cond_3d
    const/4 v7, 0x1

    add-int/2addr v12, v7

    move-object/from16 v7, v17

    goto :goto_25

    :goto_26
    add-int/2addr v8, v7

    move-object/from16 v7, v17

    move-object/from16 v9, v34

    goto :goto_23

    :cond_3e
    move-object/from16 v17, v7

    move-object/from16 v34, v9

    new-instance v7, Landroidx/fragment/app/q0;

    move-object/from16 v18, v7

    move/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v21, v4

    move-object/from16 v22, v10

    move-object/from16 v23, v5

    invoke-direct/range {v18 .. v23}, Landroidx/fragment/app/q0;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v3, v7}, LM/A;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroidx/fragment/app/k0;->a(Ljava/util/ArrayList;I)V

    invoke-virtual {v6, v1, v10, v11}, Landroidx/fragment/app/r0;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_27
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v0

    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, " has started."

    if-eqz v7, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/k;

    invoke-virtual {v7}, Landroidx/fragment/app/l;->b()Z

    move-result v9

    if-eqz v9, :cond_3f

    invoke-virtual {v7}, Landroidx/fragment/app/l;->a()V

    goto :goto_28

    :cond_3f
    invoke-virtual {v7, v2}, Landroidx/fragment/app/k;->c(Landroid/content/Context;)Landroidx/fragment/app/f;

    move-result-object v9

    if-nez v9, :cond_40

    invoke-virtual {v7}, Landroidx/fragment/app/l;->a()V

    goto :goto_28

    :cond_40
    iget-object v9, v9, Landroidx/fragment/app/f;->a:Ljava/lang/Cloneable;

    check-cast v9, Landroid/animation/Animator;

    if-nez v9, :cond_41

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_41
    iget-object v10, v7, Landroidx/fragment/app/l;->a:Landroidx/fragment/app/v0;

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    iget-object v12, v10, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/Fragment;

    if-eqz v11, :cond_43

    const/4 v11, 0x2

    invoke-static {v14, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_42

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Ignoring Animator set on "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " as this Fragment was involved in a Transition."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    invoke-virtual {v7}, Landroidx/fragment/app/l;->a()V

    goto :goto_28

    :cond_43
    iget v6, v10, Landroidx/fragment/app/v0;->a:I

    const/4 v11, 0x3

    if-ne v6, v11, :cond_44

    const/16 v30, 0x1

    goto :goto_29

    :cond_44
    move/from16 v30, v0

    :goto_29
    move-object/from16 v15, v33

    if-eqz v30, :cond_45

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_45
    iget-object v6, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v12, Landroidx/fragment/app/e;

    move-object/from16 v27, v12

    move-object/from16 v28, v3

    move-object/from16 v29, v6

    move-object/from16 v31, v10

    move-object/from16 v32, v7

    invoke-direct/range {v27 .. v32}, Landroidx/fragment/app/e;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/v0;Landroidx/fragment/app/k;)V

    invoke-virtual {v9, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v9, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    const/4 v6, 0x2

    invoke-static {v14, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_46

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Animator from operation "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    new-instance v6, Landroidx/fragment/app/f;

    invoke-direct {v6, v9, v10}, Landroidx/fragment/app/f;-><init>(Landroid/animation/Animator;Landroidx/fragment/app/v0;)V

    iget-object v7, v7, Landroidx/fragment/app/l;->b:LI/f;

    invoke-virtual {v7, v6}, LI/f;->a(LI/e;)V

    move-object/from16 v33, v15

    const/4 v6, 0x1

    goto/16 :goto_28

    :cond_47
    move-object/from16 v15, v33

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/k;

    iget-object v5, v4, Landroidx/fragment/app/l;->a:Landroidx/fragment/app/v0;

    iget-object v7, v5, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/Fragment;

    const-string v9, "Ignoring Animation set on "

    if-eqz v1, :cond_49

    const/4 v10, 0x2

    invoke-static {v14, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_48

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " as Animations cannot run alongside Transitions."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    invoke-virtual {v4}, Landroidx/fragment/app/l;->a()V

    goto :goto_2a

    :cond_49
    if-eqz v6, :cond_4b

    const/4 v10, 0x2

    invoke-static {v14, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " as Animations cannot run alongside Animators."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    invoke-virtual {v4}, Landroidx/fragment/app/l;->a()V

    goto :goto_2a

    :cond_4b
    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroidx/fragment/app/k;->c(Landroid/content/Context;)Landroidx/fragment/app/f;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v9, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v9, Landroid/view/animation/Animation;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v5, Landroidx/fragment/app/v0;->a:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4c

    invoke-virtual {v7, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v4}, Landroidx/fragment/app/l;->a()V

    goto :goto_2b

    :cond_4c
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v10, Landroidx/fragment/app/G;

    invoke-direct {v10, v9, v3, v7}, Landroidx/fragment/app/G;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v9, Landroidx/fragment/app/h;

    invoke-direct {v9, v7, v3, v4, v5}, Landroidx/fragment/app/h;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/k;Landroidx/fragment/app/v0;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v9, 0x2

    invoke-static {v14, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_4d

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Animation from operation "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    :goto_2b
    new-instance v9, Landroidx/fragment/app/h0;

    invoke-direct {v9, v7, v3, v4, v5}, Landroidx/fragment/app/h0;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/k;Landroidx/fragment/app/v0;)V

    iget-object v4, v4, Landroidx/fragment/app/l;->b:LI/f;

    invoke-virtual {v4, v9}, LI/f;->a(LI/e;)V

    goto/16 :goto_2a

    :cond_4e
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/v0;

    iget-object v2, v1, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v1, v1, Landroidx/fragment/app/v0;->a:I

    invoke-static {v2, v1}, LC/a;->a(Landroid/view/View;I)V

    goto :goto_2c

    :cond_4f
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x2

    invoke-static {v14, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Completed executing operations from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return-void
.end method

.method public final d()V
    .locals 7

    iget-boolean v0, p0, Landroidx/fragment/app/n;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroid/view/ViewGroup;

    sget-object v1, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/n;->g()V

    iput-boolean v1, p0, Landroidx/fragment/app/n;->d:Z

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/n;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Landroidx/fragment/app/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/v0;

    const-string v5, "FragmentManager"

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_3
    :goto_1
    invoke-virtual {v3}, Landroidx/fragment/app/v0;->a()V

    iget-boolean v4, v3, Landroidx/fragment/app/v0;->g:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/fragment/app/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/n;->l()V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Landroidx/fragment/app/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v3, "FragmentManager"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "FragmentManager"

    const-string v5, "SpecialEffectsController: Executing pending operations"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/v0;

    invoke-virtual {v5}, Landroidx/fragment/app/v0;->d()V

    goto :goto_2

    :cond_6
    iget-boolean v3, p0, Landroidx/fragment/app/n;->d:Z

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/n;->c(Ljava/util/ArrayList;Z)V

    iput-boolean v1, p0, Landroidx/fragment/app/n;->d:Z

    const-string v1, "FragmentManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "FragmentManager"

    const-string v2, "SpecialEffectsController: Finished executing pending operations"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/v0;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/v0;

    iget-object v2, v1, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Landroidx/fragment/app/v0;->f:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g()V
    .locals 9

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    const-string v2, "SpecialEffectsController: Forcing all operations to complete"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroid/view/ViewGroup;

    sget-object v2, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/n;->l()V

    iget-object v3, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/v0;

    invoke-virtual {v4}, Landroidx/fragment/app/v0;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/n;->c:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/v0;

    const-string v5, "FragmentManager"

    invoke-static {v5, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const-string v7, ""

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroidx/fragment/app/n;->a:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not attached to window. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Cancelling running operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v4}, Landroidx/fragment/app/v0;->a()V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/v0;

    const-string v5, "FragmentManager"

    invoke-static {v5, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    const-string v7, ""

    goto :goto_4

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroidx/fragment/app/n;->a:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not attached to window. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Cancelling pending operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v4}, Landroidx/fragment/app/v0;->a()V

    goto :goto_3

    :cond_7
    monitor-exit v2

    return-void

    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j()V
    .locals 6

    iget-object v0, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/n;->l()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/n;->e:Z

    iget-object v1, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/v0;

    iget-object v3, v2, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3}, LC/a;->c(Landroid/view/View;)I

    move-result v3

    iget v4, v2, Landroidx/fragment/app/v0;->a:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    if-eq v3, v5, :cond_0

    iget-object v1, v2, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/fragment/app/n;->e:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/v0;

    iget v2, v1, Landroidx/fragment/app/v0;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, LC/a;->b(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/v0;->c(II)V

    goto :goto_0

    :cond_1
    return-void
.end method
