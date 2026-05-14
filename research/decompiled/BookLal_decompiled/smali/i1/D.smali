.class public final Li1/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/r;
.implements Li1/E;
.implements LN/r;
.implements Lk/k;
.implements Ll/n;
.implements Ll1/k;
.implements Ll3/a1;
.implements Ll3/S0;
.implements Lr1/i;
.implements Ls0/c;
.implements Lu0/f0;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Li1/D;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li1/D;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    const/16 v0, 0x11

    iput v0, p0, Li1/D;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, LG4/n;

    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, v0, LG4/n;->a:I

    .line 10
    new-instance v1, Lu3/a;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/util/client/a;->b(IIII)I

    move-result p1

    invoke-direct {v1, p1, v0}, Lu3/a;-><init>(ILG4/n;)V

    iput-object v1, v0, LG4/n;->b:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Li1/D;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LC4/v;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Li1/D;->a:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iget-object p1, p1, LC4/v;->b:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Li1/D;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Li1/D;->a:I

    iput-object p1, p0, Li1/D;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Li1/D;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "object"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Li1/D;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(ILjava/io/Serializable;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    goto :goto_0

    :pswitch_1
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_3
    const-string v0, "RESULT_PARSE_EXCEPTION"

    goto :goto_0

    :pswitch_4
    const-string v0, "RESULT_IO_EXCEPTION"

    goto :goto_0

    :pswitch_5
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    goto :goto_0

    :pswitch_6
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    goto :goto_0

    :pswitch_7
    const-string v0, "RESULT_NOT_WRITABLE"

    goto :goto_0

    :pswitch_8
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

    goto :goto_0

    :pswitch_9
    const-string v0, "RESULT_ALREADY_INSTALLED"

    goto :goto_0

    :pswitch_a
    const-string v0, "RESULT_INSTALL_SUCCESS"

    :goto_0
    const/4 v1, 0x6

    const-string v2, "ProfileInstaller"

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p2, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast p2, Landroidx/profileinstaller/ProfileInstallReceiver;

    invoke-virtual {p2, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lu0/G;

    iget-object v1, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v1, Lu0/F;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lu0/G;

    iget-object p1, p1, Lu0/G;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, p1

    return v1
.end method

.method public c(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->s(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    sget-object v1, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    iget v1, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:I

    if-nez v1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    if-ne v1, v3, :cond_3

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:LA2/i;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, LA2/i;->a(Landroid/view/View;)V

    :cond_4
    return v3

    :cond_5
    return v2
.end method

.method public d()I
    .locals 2

    invoke-virtual {p0}, Li1/D;->n()S

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Li1/D;->n()S

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public e(J)J
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    move-wide v2, p1

    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    iget-object v4, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v4, Ljava/io/InputStream;

    invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-lez v7, :cond_1

    sub-long/2addr v2, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_3
    :goto_1
    sub-long/2addr p1, v2

    return-wide p1
.end method

.method public f(Lk/m;Landroid/view/MenuItem;)Z
    .locals 3

    iget-object p1, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->F:Ll/n;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    check-cast p1, Li1/D;

    iget-object p1, p1, Li1/D;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p1, Landroidx/appcompat/widget/Toolbar;->L:LM/p;

    invoke-virtual {v1, p2}, LM/p;->a(Landroid/view/MenuItem;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->N:Ll/c1;

    if-eqz p1, :cond_1

    check-cast p1, Lh/H;

    iget-object p1, p1, Lh/H;->a:Lh/I;

    iget-object p1, p1, Lh/I;->c:Lh/u;

    iget-object p1, p1, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {p1, v0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method public g()V
    .locals 2

    const-string v0, "ProfileInstaller"

    const-string v1, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public h(Li1/w;)Li1/q;
    .locals 0

    new-instance p1, Li1/F;

    invoke-direct {p1, p0}, Li1/F;-><init>(Li1/E;)V

    return-object p1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v0, Lu0/F;

    invoke-virtual {v0}, Lu0/F;->D()I

    move-result v0

    return v0
.end method

.method public j(Lk/m;)V
    .locals 1

    iget-object v0, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->A:Lk/k;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lk/k;->j(Lk/m;)V

    :cond_0
    return-void
.end method

.method public k(Landroid/net/Uri;)Lc1/e;
    .locals 3

    new-instance v0, Lc1/a;

    iget-object v1, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/ContentResolver;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lc1/a;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public l()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public m()I
    .locals 2

    iget-object v0, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v0, Lu0/F;

    iget v1, v0, Lu0/F;->o:I

    invoke-virtual {v0}, Lu0/F;->A()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public n()S
    .locals 2

    iget-object v0, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    int-to-short v0, v0

    return v0

    :cond_0
    new-instance v0, Ll1/j;

    invoke-direct {v0}, Ll1/j;-><init>()V

    throw v0
.end method

.method public o(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v0, Lu0/F;

    invoke-virtual {v0, p1}, Lu0/F;->u(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public p(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lu0/G;

    iget-object v1, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v1, Lu0/F;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lu0/G;

    iget-object p1, p1, Lu0/G;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p1

    return v1
.end method

.method public q(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public r(Lw4/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lw4/a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lw4/a;

    iget v1, v0, Lw4/a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lw4/a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lw4/a;

    check-cast p2, Ld4/c;

    invoke-direct {v0, p0, p2}, Lw4/a;-><init>(Li1/D;Ld4/c;)V

    :goto_0
    iget-object p2, v0, Lw4/a;->b:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, Lw4/a;->d:I

    sget-object v3, LY3/j;->a:LY3/j;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lw4/a;->a:Lx4/h;

    :try_start_0
    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    new-instance p2, Lx4/h;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object v2

    invoke-direct {p2, p1, v2}, Lx4/h;-><init>(Lw4/b;Lb4/h;)V

    :try_start_1
    iput-object p2, v0, Lw4/a;->a:Lx4/h;

    iput v4, v0, Lw4/a;->d:I

    iget-object p1, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast p1, LX/t;

    invoke-virtual {p1, p2, v0}, LX/t;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v3

    :goto_1
    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p2

    :goto_2
    invoke-virtual {p1}, Ld4/c;->releaseIntercepted()V

    return-object v3

    :goto_3
    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_4
    invoke-virtual {p1}, Ld4/c;->releaseIntercepted()V

    throw p2
.end method

.method public s(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 3

    iget-object v0, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v0, LG4/n;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, LG4/n;->b:Ljava/lang/Object;

    check-cast v1, Lu3/a;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    check-cast v1, Ljava/util/regex/Pattern;

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v0, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v0, LG4/n;

    monitor-enter v0

    :try_start_1
    iget-object v2, v0, LG4/n;->b:Ljava/lang/Object;

    check-cast v2, Lu3/a;

    invoke-virtual {v2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-object v1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public t(Z)V
    .locals 2

    iget-object v0, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v0, Ll3/L0;

    iget-object v1, v0, Ll3/L0;->X:Ll3/h0;

    iget-object v0, v0, Ll3/L0;->D:Ll3/J;

    invoke-virtual {v1, v0, p1}, LB/y;->f(Ljava/lang/Object;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Li1/D;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v1, Lr1/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    mul-int/lit8 v4, v3, 0x2

    const/4 v5, 0x0

    if-ltz v4, :cond_1

    array-length v6, v1

    if-lt v4, v6, :cond_0

    goto :goto_1

    :cond_0
    aget-object v6, v1, v4

    goto :goto_2

    :cond_1
    :goto_1
    move-object v6, v5

    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    if-ltz v4, :cond_3

    array-length v6, v1

    if-lt v4, v6, :cond_2

    goto :goto_3

    :cond_2
    aget-object v5, v1, v4

    :cond_3
    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public u(Lj3/f0;[B)V
    .locals 3

    invoke-static {}, Ly3/b;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v1, Lm3/j;

    iget-object v1, v1, Lm3/j;->j:Lj3/h0;

    iget-object v1, v1, Lj3/h0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object v1, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v1, Lm3/j;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lm3/j;->q:Z

    const-string v1, "?"

    invoke-static {v0, v1}, Ls/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, LL2/e;->d:LL2/c;

    invoke-virtual {v1, p2}, LL2/e;->c([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    iget-object p2, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast p2, Lm3/j;

    iget-object p2, p2, Lm3/j;->n:Lm3/i;

    iget-object p2, p2, Lm3/i;->w:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Li1/D;->b:Ljava/lang/Object;

    check-cast v1, Lm3/j;

    iget-object v1, v1, Lm3/j;->n:Lm3/i;

    invoke-static {v1, p1, v0}, Lm3/i;->j(Lm3/i;Lj3/f0;Ljava/lang/String;)V

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Ly3/b;->e()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {}, Ly3/b;->e()V

    throw p1
.end method
