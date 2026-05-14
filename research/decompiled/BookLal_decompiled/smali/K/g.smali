.class public final LK/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/y;
.implements Ls2/C;


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, LA2/c;

    const/4 v3, 0x1

    .line 5
    invoke-direct {v2, v3}, LA2/c;-><init>(I)V

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, LK/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LK/f;Z)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, LK/g;-><init>(Ljava/lang/Object;)V

    .line 8
    iput-boolean p2, p0, LK/g;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK/g;->b:Ljava/lang/Object;

    iput-boolean p2, p0, LK/g;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, LK/g;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, LK/g;->a:Z

    .line 11
    iput-object p2, p0, LK/g;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, LK/g;->a:Z

    return v0
.end method

.method public b(Ljava/lang/CharSequence;I)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-ltz p2, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p2

    if-ltz v1, :cond_6

    iget-object v1, p0, LK/g;->b:Ljava/lang/Object;

    check-cast v1, LK/f;

    if-nez v1, :cond_0

    invoke-virtual {p0}, LK/g;->a()Z

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    move v3, v1

    move v4, v2

    :goto_0
    if-ge v3, p2, :cond_3

    if-ne v4, v2, :cond_3

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v4

    sget-object v5, LK/h;->a:LK/g;

    if-eqz v4, :cond_2

    if-eq v4, v0, :cond_1

    if-eq v4, v2, :cond_1

    packed-switch v4, :pswitch_data_0

    move v4, v2

    goto :goto_1

    :cond_1
    :pswitch_0
    move v4, v1

    goto :goto_1

    :cond_2
    :pswitch_1
    move v4, v0

    :goto_1
    add-int/2addr v3, v0

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_5

    if-eq v4, v0, :cond_4

    invoke-virtual {p0}, LK/g;->a()Z

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    return v0

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lk/m;Z)V
    .locals 2

    iget-boolean p2, p0, LK/g;->a:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, LK/g;->a:Z

    iget-object p2, p0, LK/g;->b:Ljava/lang/Object;

    check-cast p2, Lh/I;

    iget-object v0, p2, Lh/I;->b:Ll/f1;

    iget-object v0, v0, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->y:Ll/k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ll/k;->i()Z

    iget-object v0, v0, Ll/k;->z:Ll/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lk/x;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lk/x;->i:Lk/u;

    invoke-interface {v0}, Lk/D;->dismiss()V

    :cond_1
    iget-object p2, p2, Lh/I;->c:Lh/u;

    const/16 v0, 0x6c

    invoke-virtual {p2, v0, p1}, Lh/u;->onPanelClosed(ILandroid/view/Menu;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LK/g;->a:Z

    return-void
.end method

.method public declared-synchronized d(Le1/A;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LK/g;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, LK/g;->a:Z

    invoke-interface {p1}, Le1/A;->a()V

    const/4 p1, 0x0

    iput-boolean p1, p0, LK/g;->a:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p2, p0, LK/g;->b:Ljava/lang/Object;

    check-cast p2, Landroid/os/Handler;

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e(Lk/m;)Z
    .locals 2

    iget-object v0, p0, LK/g;->b:Ljava/lang/Object;

    check-cast v0, Lh/I;

    iget-object v0, v0, Lh/I;->c:Lh/u;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Lh/u;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public g(Landroid/view/View;LM/z0;Ls2/D;)LM/z0;
    .locals 6

    invoke-virtual {p2}, LM/z0;->d()I

    move-result v0

    iget-object v1, p0, LK/g;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput v0, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    sget-object v0, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-boolean v5, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:Z

    if-eqz v5, :cond_1

    invoke-virtual {p2}, LM/z0;->a()I

    move-result v0

    iput v0, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:I

    iget v5, p3, Ls2/D;->d:I

    add-int/2addr v0, v5

    :cond_1
    iget-boolean v5, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z

    if-eqz v5, :cond_3

    if-eqz v2, :cond_2

    iget v3, p3, Ls2/D;->c:I

    goto :goto_1

    :cond_2
    iget v3, p3, Ls2/D;->a:I

    :goto_1
    invoke-virtual {p2}, LM/z0;->b()I

    move-result v5

    add-int/2addr v3, v5

    :cond_3
    iget-boolean v5, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:Z

    if-eqz v5, :cond_5

    if-eqz v2, :cond_4

    iget p3, p3, Ls2/D;->a:I

    goto :goto_2

    :cond_4
    iget p3, p3, Ls2/D;->c:I

    :goto_2
    invoke-virtual {p2}, LM/z0;->c()I

    move-result v2

    add-int v4, v2, p3

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p1, v3, p3, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-boolean p1, p0, LK/g;->a:Z

    if-eqz p1, :cond_6

    iget-object p3, p2, LM/z0;->a:LM/x0;

    invoke-virtual {p3}, LM/x0;->g()LE/c;

    move-result-object p3

    iget p3, p3, LE/c;->d:I

    iput p3, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:I

    :cond_6
    iget-boolean p3, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:Z

    if-nez p3, :cond_7

    if-eqz p1, :cond_8

    :cond_7
    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K()V

    :cond_8
    return-object p2
.end method
