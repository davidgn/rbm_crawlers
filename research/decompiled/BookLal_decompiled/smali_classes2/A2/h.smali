.class public final LA2/h;
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

    iput p2, p0, LA2/h;->a:I

    iput-object p1, p0, LA2/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, v1, LA2/h;->a:I

    packed-switch v8, :pswitch_data_0

    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, LI4/a;

    iget-wide v2, v0, LI4/a;->b:J

    const-wide/16 v4, 0x2

    mul-long/2addr v4, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object v0, v0, LI4/a;->c:Ljava/lang/Object;

    check-cast v0, Ll3/d;

    iget-object v6, v0, Ll3/d;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ll3/d;->c:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, v0, Ll3/d;->a:Ljava/lang/String;

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "Increased {0} to {1}"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lm3/c;

    :try_start_0
    iget-object v0, v2, Lm3/c;->n:LQ4/b;

    if-eqz v0, :cond_1

    iget-object v3, v2, Lm3/c;->b:LQ4/g;

    iget-wide v6, v3, LQ4/g;->b:J

    cmp-long v4, v6, v4

    if-lez v4, :cond_1

    invoke-virtual {v0, v3, v6, v7}, LQ4/b;->o(LQ4/g;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, v2, Lm3/c;->d:Lm3/n;

    invoke-virtual {v3, v0}, Lm3/n;->o(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    iget-object v0, v2, Lm3/c;->b:LQ4/g;

    iget-object v3, v2, Lm3/c;->d:Lm3/n;

    :try_start_1
    iget-object v0, v2, Lm3/c;->n:LQ4/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LQ4/b;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v3, v0}, Lm3/n;->o(Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, v2, Lm3/c;->o:Ljava/net/Socket;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v3, v0}, Lm3/n;->o(Ljava/lang/Exception;)V

    :cond_3
    :goto_2
    return-void

    :pswitch_1
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Ll3/R1;

    iget-object v0, v0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-boolean v2, v0, Ll3/B0;->z:Z

    if-nez v2, :cond_4

    iget-object v0, v0, Ll3/B0;->u:Ll3/u;

    invoke-interface {v0}, Ll3/u;->c()V

    :cond_4
    return-void

    :pswitch_2
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Ll3/y1;

    iget-object v2, v0, Ll3/y1;->c:Ll3/R1;

    iget-object v2, v2, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v2, Ll3/B0;

    iget-object v0, v0, Ll3/y1;->b:Ll3/z1;

    sget-object v3, Ll3/B0;->E:Lj3/a0;

    invoke-virtual {v2, v0}, Ll3/B0;->u(Ll3/z1;)V

    return-void

    :pswitch_3
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-boolean v2, v0, Ll3/B0;->z:Z

    if-nez v2, :cond_5

    iget-object v0, v0, Ll3/B0;->u:Ll3/u;

    invoke-interface {v0}, Ll3/u;->c()V

    :cond_5
    return-void

    :pswitch_4
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Ll3/c1;

    iget-object v0, v0, Ll3/c1;->a:Lj3/P;

    invoke-virtual {v0}, Lj3/P;->e()V

    return-void

    :pswitch_5
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Ll3/K0;

    iget-object v0, v0, Ll3/K0;->f:Ll3/o0;

    sget-object v2, Ll3/L0;->h0:Lj3/r0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ll3/j0;

    invoke-direct {v3, v0, v2, v7}, Ll3/j0;-><init>(Ll3/o0;Lj3/r0;I)V

    iget-object v0, v0, Ll3/o0;->j:Lj3/w0;

    invoke-virtual {v0, v3}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_6
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Ll3/E0;

    iget-object v0, v0, Ll3/E0;->e:Ll3/L0;

    iget-object v2, v0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {v2}, Lj3/w0;->d()V

    iget-object v2, v0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {v2}, Lj3/w0;->d()V

    iget-object v3, v0, Ll3/L0;->Y:Lj3/G;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lj3/G;->d()V

    iput-object v6, v0, Ll3/L0;->Y:Lj3/G;

    iput-object v6, v0, Ll3/L0;->Z:Ll3/T;

    :cond_6
    invoke-virtual {v2}, Lj3/w0;->d()V

    iget-boolean v2, v0, Ll3/L0;->v:Z

    if-eqz v2, :cond_7

    iget-object v0, v0, Ll3/L0;->u:Lj3/B;

    invoke-virtual {v0}, Lj3/B;->d()V

    :cond_7
    return-void

    :pswitch_7
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Lj1/a;

    iget-object v0, v0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v0, Ll3/L0;

    invoke-virtual {v0}, Ll3/L0;->r()V

    return-void

    :pswitch_8
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B;

    iget-object v0, v0, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    iget-object v2, v0, Ll3/o0;->q:Ll3/T0;

    iput-object v6, v0, Ll3/o0;->p:Lj3/G;

    iput-object v6, v0, Ll3/o0;->q:Ll3/T0;

    sget-object v0, Lj3/r0;->m:Lj3/r0;

    const-string v3, "InternalSubchannel closed transport due to address change"

    invoke-virtual {v0, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    invoke-interface {v2, v0}, Ll3/T0;->c(Lj3/r0;)V

    return-void

    :pswitch_9
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Ll3/M;

    iget-object v0, v0, Ll3/M;->a:Ll3/u;

    invoke-interface {v0}, Ll3/u;->c()V

    return-void

    :pswitch_a
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Ll3/G;

    iget-object v0, v0, Ll3/G;->a:Lj3/j;

    invoke-virtual {v0}, Lj3/j;->onReady()V

    return-void

    :pswitch_b
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->v()Z

    return-void

    :pswitch_c
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Ll/q0;

    iput-object v6, v0, Ll/q0;->q:LA2/h;

    invoke-virtual {v0}, Ll/q0;->drawableStateChanged()V

    return-void

    :pswitch_d
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v2, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_e
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Lh/I;

    iget-object v2, v0, Lh/I;->c:Lh/u;

    invoke-virtual {v0}, Lh/I;->Y()Landroid/view/Menu;

    move-result-object v0

    instance-of v3, v0, Lk/m;

    if-eqz v3, :cond_8

    move-object v3, v0

    check-cast v3, Lk/m;

    goto :goto_3

    :cond_8
    move-object v3, v6

    :goto_3
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lk/m;->y()V

    :cond_9
    :try_start_3
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    invoke-virtual {v2, v7, v0}, Lh/u;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2, v7, v6, v0}, Lh/u;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_a
    :goto_4
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lk/m;->x()V

    :cond_c
    return-void

    :goto_5
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lk/m;->x()V

    :cond_d
    throw v0

    :pswitch_f
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, LR0/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_6
    :try_start_4
    iget-object v2, v0, LR0/i;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v2

    check-cast v2, Le1/a;

    invoke-virtual {v0, v2}, LR0/i;->c(Le1/a;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_6

    :pswitch_10
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/i;

    iget-object v2, v0, Lcom/bumptech/glide/i;->c:Lr1/d;

    invoke-interface {v2, v0}, Lr1/d;->h(Lr1/e;)V

    return-void

    :pswitch_11
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/A;

    iget-object v2, v0, Landroidx/lifecycle/A;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/A;

    iget-object v0, v0, Landroidx/lifecycle/A;->f:Ljava/lang/Object;

    iget-object v3, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/A;

    sget-object v4, Landroidx/lifecycle/A;->k:Ljava/lang/Object;

    iput-object v4, v3, Landroidx/lifecycle/A;->f:Ljava/lang/Object;

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v2, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/A;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/A;->i(Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :pswitch_12
    iget-object v2, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v2, La0/f;

    iget-object v3, v2, La0/f;->c:LW/d;

    iget v3, v3, LW/d;->o:I

    const/4 v4, 0x3

    iget v5, v2, La0/f;->b:I

    if-ne v5, v4, :cond_e

    move v6, v0

    goto :goto_7

    :cond_e
    move v6, v7

    :goto_7
    const/4 v8, 0x5

    iget-object v9, v2, La0/f;->e:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v6, :cond_10

    invoke-virtual {v9, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_f

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v11

    neg-int v11, v11

    goto :goto_8

    :cond_f
    move v11, v7

    :goto_8
    add-int/2addr v11, v3

    goto :goto_9

    :cond_10
    invoke-virtual {v9, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v11, v3

    :goto_9
    if-eqz v10, :cond_16

    if-eqz v6, :cond_11

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v3, v11, :cond_12

    :cond_11
    if-nez v6, :cond_16

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v3

    if-le v3, v11, :cond_16

    :cond_12
    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->h(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, La0/d;

    iget-object v2, v2, La0/f;->c:LW/d;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2, v10, v11, v6}, LW/d;->s(Landroid/view/View;II)Z

    iput-boolean v0, v3, La0/d;->c:Z

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    if-ne v5, v4, :cond_13

    move v4, v8

    :cond_13
    invoke-virtual {v9, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v9, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;)V

    :cond_14
    iget-boolean v2, v9, Landroidx/drawerlayout/widget/DrawerLayout;->w:Z

    if-nez v2, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide v10, v12

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_a
    if-ge v7, v3, :cond_15

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/2addr v7, v0

    goto :goto_a

    :cond_15
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v0, v9, Landroidx/drawerlayout/widget/DrawerLayout;->w:Z

    :cond_16
    return-void

    :pswitch_13
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v2, LY0/S;

    iget-object v3, v2, LY0/S;->d:Lh/i;

    check-cast v3, Lcom/booklal/booklal/Dashboard;

    const-class v4, Lcom/booklal/booklal/MainActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v3, 0x10008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, v2, LY0/S;->d:Lh/i;

    check-cast v3, Lcom/booklal/booklal/Dashboard;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, v2, LY0/S;->d:Lh/i;

    check-cast v0, Lcom/booklal/booklal/Dashboard;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_14
    sget v0, Lcom/booklal/booklal/Dashboard;->G0:I

    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/Dashboard;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c005a

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f090168

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f01001c

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const v3, 0x7f090166

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f090165

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v5, LY0/k;

    const/4 v6, 0x2

    invoke-direct {v5, v0, v2, v6}, LY0/k;-><init>(Lh/i;Landroid/app/Dialog;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, LY0/K;

    invoke-direct {v3, v2, v7}, LY0/K;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    :cond_17
    return-void

    :pswitch_15
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_16
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/g;

    move-result-object v0

    const-string v3, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v0, v3}, Landroidx/work/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Ljava/lang/String;

    const-string v4, "No worker to delegate to."

    new-array v5, v7, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, v5}, Landroidx/work/n;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    new-instance v0, Landroidx/work/j;

    invoke-direct {v0}, Landroidx/work/j;-><init>()V

    iget-object v2, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:LV0/j;

    invoke-virtual {v2, v0}, LV0/j;->i(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_18
    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->getWorkerFactory()Landroidx/work/v;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a:Landroidx/work/WorkerParameters;

    invoke-virtual {v0, v4, v3, v5}, Landroidx/work/v;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v0

    iput-object v0, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->e:Landroidx/work/ListenableWorker;

    if-nez v0, :cond_19

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Ljava/lang/String;

    const-string v4, "No worker to delegate to."

    new-array v5, v7, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, v5}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    new-instance v0, Landroidx/work/j;

    invoke-direct {v0}, Landroidx/work/j;-><init>()V

    iget-object v2, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:LV0/j;

    invoke-virtual {v2, v0}, LV0/j;->i(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_19
    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LL0/l;->I(Landroid/content/Context;)LL0/l;

    move-result-object v0

    iget-object v0, v0, LL0/l;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()LT0/j;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, LT0/j;->h(Ljava/lang/String;)LT0/i;

    move-result-object v0

    if-nez v0, :cond_1a

    new-instance v0, Landroidx/work/j;

    invoke-direct {v0}, Landroidx/work/j;-><init>()V

    iget-object v2, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:LV0/j;

    invoke-virtual {v2, v0}, LV0/j;->i(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_1a
    new-instance v4, LP0/c;

    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getTaskExecutor()LW0/a;

    move-result-object v6

    invoke-direct {v4, v5, v6, v2}, LP0/c;-><init>(Landroid/content/Context;LW0/a;LP0/b;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, LP0/c;->b(Ljava/util/Collection;)V

    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->getId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, LP0/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    sget-object v4, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Ljava/lang/String;

    const-string v5, "Constraints met for delegate "

    invoke-static {v5, v3}, Le1/i;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Throwable;

    invoke-virtual {v0, v4, v5, v6}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :try_start_7
    iget-object v0, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->e:Landroidx/work/ListenableWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->startWork()LN2/o;

    move-result-object v0

    new-instance v4, LB/h;

    const/16 v5, 0xd

    invoke-direct {v4, v5, v2, v0, v7}, LB/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-interface {v0, v4, v5}, LN2/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception v0

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Ljava/lang/String;

    const-string v6, "Delegated worker "

    const-string v8, " threw exception in startWork."

    invoke-static {v6, v3, v8}, LC/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v4, v5, v3, v0}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v4, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_8
    iget-boolean v0, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->c:Z

    if-eqz v0, :cond_1b

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    const-string v3, "Constraints were unmet, Retrying."

    new-array v6, v7, [Ljava/lang/Throwable;

    invoke-virtual {v0, v5, v3, v6}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    new-instance v0, Landroidx/work/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v2, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:LV0/j;

    invoke-virtual {v2, v0}, LV0/j;->i(Ljava/lang/Object;)Z

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_c

    :cond_1b
    new-instance v0, Landroidx/work/j;

    invoke-direct {v0}, Landroidx/work/j;-><init>()V

    iget-object v2, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:LV0/j;

    invoke-virtual {v2, v0}, LV0/j;->i(Ljava/lang/Object;)Z

    :goto_b
    monitor-exit v4

    goto :goto_d

    :goto_c
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :cond_1c
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    sget-object v4, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Ljava/lang/String;

    const-string v5, "Constraints not met for delegate "

    const-string v6, ". Requesting retry."

    invoke-static {v5, v3, v6}, LC/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/Throwable;

    invoke-virtual {v0, v4, v3, v5}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    new-instance v0, Landroidx/work/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v2, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:LV0/j;

    invoke-virtual {v2, v0}, LV0/j;->i(Ljava/lang/Object;)Z

    :goto_d
    return-void

    :pswitch_17
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, LW/d;

    invoke-virtual {v0, v7}, LW/d;->p(I)V

    return-void

    :pswitch_18
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, LS/g;

    iget-boolean v6, v0, LS/g;->t:Z

    if-nez v6, :cond_1d

    goto/16 :goto_f

    :cond_1d
    iget-boolean v6, v0, LS/g;->r:Z

    iget-object v8, v0, LS/g;->a:LS/a;

    if-eqz v6, :cond_1e

    iput-boolean v7, v0, LS/g;->r:Z

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v9

    iput-wide v9, v8, LS/a;->e:J

    iput-wide v2, v8, LS/a;->g:J

    iput-wide v9, v8, LS/a;->f:J

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v8, LS/a;->h:F

    :cond_1e
    iget-wide v2, v8, LS/a;->g:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1f

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v9, v8, LS/a;->g:J

    iget v6, v8, LS/a;->i:I

    int-to-long v11, v6

    add-long/2addr v9, v11

    cmp-long v2, v2, v9

    if-lez v2, :cond_1f

    goto :goto_e

    :cond_1f
    invoke-virtual {v0}, LS/g;->e()Z

    move-result v2

    if-nez v2, :cond_20

    :goto_e
    iput-boolean v7, v0, LS/g;->t:Z

    goto :goto_f

    :cond_20
    iget-boolean v2, v0, LS/g;->s:Z

    iget-object v3, v0, LS/g;->c:Landroid/widget/ListView;

    if-eqz v2, :cond_21

    iput-boolean v7, v0, LS/g;->s:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-wide v9, v11

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_21
    iget-wide v6, v8, LS/a;->f:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_22

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, LS/a;->a(J)F

    move-result v2

    const/high16 v6, -0x3f800000    # -4.0f

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v2, v7

    add-float/2addr v2, v6

    iget-wide v6, v8, LS/a;->f:J

    sub-long v6, v4, v6

    iput-wide v4, v8, LS/a;->f:J

    long-to-float v4, v6

    mul-float/2addr v4, v2

    iget v2, v8, LS/a;->d:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    iget-object v0, v0, LS/g;->v:Ll/q0;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    sget-object v0, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_f
    return-void

    :cond_22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_19
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v7}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->p()V

    return-void

    :cond_23
    :goto_10
    :pswitch_1a
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, LF4/c;

    monitor-enter v4

    :try_start_9
    invoke-virtual {v4}, LF4/c;->c()LF4/a;

    move-result-object v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    monitor-exit v4

    if-nez v5, :cond_24

    return-void

    :cond_24
    iget-object v4, v5, LF4/a;->c:LF4/b;

    invoke-static {v4}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, LF4/c;

    sget-object v0, LF4/c;->i:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_25

    iget-object v0, v4, LF4/b;->a:LF4/c;

    iget-object v0, v0, LF4/c;->a:LC4/o;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-string v0, "starting"

    invoke-static {v5, v4, v0}, LL4/d;->a(LF4/a;LF4/b;Ljava/lang/String;)V

    goto :goto_11

    :cond_25
    move-wide v8, v2

    :goto_11
    :try_start_a
    invoke-static {v6, v5}, LF4/c;->a(LF4/c;LF4/a;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v7, :cond_23

    iget-object v0, v4, LF4/b;->a:LF4/c;

    iget-object v0, v0, LF4/c;->a:LC4/o;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, LL4/d;->p(J)Ljava/lang/String;

    move-result-object v0

    const-string v6, "finished run in "

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, LL4/d;->a(LF4/a;LF4/b;Ljava/lang/String;)V

    goto :goto_10

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_b
    iget-object v0, v6, LF4/c;->a:LC4/o;

    iget-object v0, v0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    if-eqz v7, :cond_26

    iget-object v2, v4, LF4/b;->a:LF4/c;

    iget-object v2, v2, LF4/c;->a:LC4/o;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-static {v2, v3}, LL4/d;->p(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed a run in "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v4, v2}, LL4/d;->a(LF4/a;LF4/b;Ljava/lang/String;)V

    :cond_26
    throw v0

    :catchall_6
    move-exception v0

    move-object v2, v0

    monitor-exit v4

    throw v2

    :pswitch_1b
    iget-object v2, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v2, Lcom/denzcoskun/imageslider/ImageSlider;

    iget v3, v2, Lcom/denzcoskun/imageslider/ImageSlider;->e:I

    iget v4, v2, Lcom/denzcoskun/imageslider/ImageSlider;->f:I

    if-ne v3, v4, :cond_27

    iput v7, v2, Lcom/denzcoskun/imageslider/ImageSlider;->e:I

    :cond_27
    iget-object v3, v2, Lcom/denzcoskun/imageslider/ImageSlider;->a:Landroidx/viewpager/widget/ViewPager;

    if-eqz v3, :cond_28

    iget v4, v2, Lcom/denzcoskun/imageslider/ImageSlider;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Lcom/denzcoskun/imageslider/ImageSlider;->e:I

    iput-boolean v7, v3, Landroidx/viewpager/widget/ViewPager;->z:Z

    invoke-virtual {v3, v4, v7, v0, v7}, Landroidx/viewpager/widget/ViewPager;->u(IIZZ)V

    return-void

    :cond_28
    invoke-static {}, Lkotlin/jvm/internal/i;->k()V

    throw v6

    :pswitch_1c
    iget-object v0, v1, LA2/h;->b:Ljava/lang/Object;

    check-cast v0, LA2/i;

    iget-object v0, v0, LA2/i;->a:LA2/n;

    invoke-virtual {v0}, LA2/n;->b()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
