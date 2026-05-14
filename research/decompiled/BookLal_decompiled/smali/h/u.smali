.class public final Lh/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field public final a:Landroid/view/Window$Callback;

.field public b:Lh/H;

.field public c:Z

.field public d:Z

.field public e:Z

.field public final synthetic f:Lh/z;


# direct methods
.method public constructor <init>(Lh/z;Landroid/view/Window$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/u;->f:Lh/z;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lh/u;->a:Landroid/view/Window$Callback;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Window callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Landroid/view/Window$Callback;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lh/u;->c:Z

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lh/u;->c:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lh/u;->c:Z

    throw p1
.end method

.method public final b(ILandroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final c(ILandroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final d(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1

    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2, p3}, Lj/m;->a(Landroid/view/Window$Callback;Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lh/u;->d:Z

    iget-object v1, p0, Lh/u;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lh/u;->f:Lh/z;

    invoke-virtual {v0, p1}, Lh/z;->u(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v2, p0, Lh/u;->f:Lh/z;

    invoke-virtual {v2}, Lh/z;->A()V

    iget-object v3, v2, Lh/z;->t:LZ2/l;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0, p1}, LZ2/l;->K(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lh/z;->R:Lh/y;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v0, v3, p1}, Lh/z;->F(Lh/y;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, v2, Lh/z;->R:Lh/y;

    if-eqz p1, :cond_3

    iput-boolean v1, p1, Lh/y;->l:Z

    goto :goto_0

    :cond_1
    iget-object v0, v2, Lh/z;->R:Lh/y;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    invoke-virtual {v2, v3}, Lh/z;->z(I)Lh/y;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Lh/z;->G(Lh/y;Landroid/view/KeyEvent;)Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v2, v0, v4, p1}, Lh/z;->F(Lh/y;ILandroid/view/KeyEvent;)Z

    move-result p1

    iput-boolean v3, v0, Lh/y;->k:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :cond_3
    :goto_0
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    iget-boolean v0, p0, Lh/u;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    instance-of v0, p2, Lk/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lh/u;->b:Lh/H;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance v1, Landroid/view/View;

    iget-object v0, v0, Lh/H;->a:Lh/I;

    iget-object v0, v0, Lh/I;->b:Ll/f1;

    iget-object v0, v0, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lh/u;->b(ILandroid/view/Menu;)Z

    const/16 p2, 0x6c

    const/4 v0, 0x1

    iget-object v1, p0, Lh/u;->f:Lh/z;

    if-ne p1, p2, :cond_0

    invoke-virtual {v1}, Lh/z;->A()V

    iget-object p1, v1, Lh/z;->t:LZ2/l;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, LZ2/l;->u(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    iget-boolean v0, p0, Lh/u;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lh/u;->c(ILandroid/view/Menu;)V

    iget-object p2, p0, Lh/u;->f:Lh/z;

    const/16 v0, 0x6c

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Lh/z;->A()V

    iget-object p1, p2, Lh/z;->t:LZ2/l;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, LZ2/l;->u(Z)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p2, p1}, Lh/z;->z(I)Lh/y;

    move-result-object p1

    iget-boolean v0, p1, Lh/y;->m:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1, v1}, Lh/z;->s(Lh/y;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_0
    return-void
.end method

.method public final onPointerCaptureChanged(Z)V
    .locals 1

    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lj/n;->a(Landroid/view/Window$Callback;Z)V

    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 5

    instance-of v0, p3, Lk/m;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lk/m;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iput-boolean v2, v0, Lk/m;->C:Z

    :cond_2
    iget-object v3, p0, Lh/u;->b:Lh/H;

    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    iget-object v3, v3, Lh/H;->a:Lh/I;

    iget-boolean v4, v3, Lh/I;->e:Z

    if-nez v4, :cond_3

    iget-object v4, v3, Lh/I;->b:Ll/f1;

    iput-boolean v2, v4, Ll/f1;->l:Z

    iput-boolean v2, v3, Lh/I;->e:Z

    :cond_3
    iget-object v2, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_4

    iput-boolean v1, v0, Lk/m;->C:Z

    :cond_4
    return p1
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lh/u;->f:Lh/z;

    invoke-virtual {v1, v0}, Lh/z;->z(I)Lh/y;

    move-result-object v0

    iget-object v0, v0, Lh/y;->h:Lk/m;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0, p3}, Lh/u;->d(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lh/u;->d(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_0
    return-void
.end method

.method public final onSearchRequested()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public final onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lj/l;->a(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 88
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    iget-object v2, p0, Lh/u;->f:Lh/z;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lh/u;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2}, Lj/l;->b(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p2, LR0/i;

    iget-object v3, v2, Lh/z;->p:Landroid/content/Context;

    .line 4
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v3, p2, LR0/i;->b:Ljava/lang/Object;

    .line 6
    iput-object p1, p2, LR0/i;->a:Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p2, LR0/i;->c:Ljava/lang/Object;

    .line 8
    new-instance p1, Lr/k;

    invoke-direct {p1}, Lr/k;-><init>()V

    iput-object p1, p2, LR0/i;->d:Ljava/lang/Object;

    .line 9
    iget-object p1, v2, Lh/z;->z:Lj/a;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lj/a;->a()V

    .line 11
    :cond_1
    new-instance p1, LD2/e;

    const/16 v3, 0x1c

    invoke-direct {p1, v3, v2, p2, v0}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 12
    invoke-virtual {v2}, Lh/z;->A()V

    .line 13
    iget-object v3, v2, Lh/z;->t:LZ2/l;

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v3, p1}, LZ2/l;->W(LD2/e;)Lj/a;

    move-result-object v3

    iput-object v3, v2, Lh/z;->z:Lj/a;

    .line 15
    :cond_2
    iget-object v3, v2, Lh/z;->z:Lj/a;

    const/4 v4, 0x0

    if-nez v3, :cond_10

    .line 16
    iget-object v3, v2, Lh/z;->D:LM/j0;

    if-eqz v3, :cond_3

    .line 17
    invoke-virtual {v3}, LM/j0;->b()V

    .line 18
    :cond_3
    iget-object v3, v2, Lh/z;->z:Lj/a;

    if-eqz v3, :cond_4

    .line 19
    invoke-virtual {v3}, Lj/a;->a()V

    .line 20
    :cond_4
    iget-object v3, v2, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    if-nez v3, :cond_9

    .line 21
    iget-boolean v3, v2, Lh/z;->N:Z

    iget-object v5, v2, Lh/z;->p:Landroid/content/Context;

    if-eqz v3, :cond_6

    .line 22
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 23
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f04000b

    .line 24
    invoke-virtual {v6, v7, v3, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 25
    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_5

    .line 26
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 27
    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 28
    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v6, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 29
    new-instance v6, Lj/d;

    invoke-direct {v6, v5, v0}, Lj/d;-><init>(Landroid/content/Context;I)V

    .line 30
    invoke-virtual {v6}, Lj/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v6

    .line 31
    :cond_5
    new-instance v6, Landroidx/appcompat/widget/ActionBarContextView;

    .line 32
    invoke-direct {v6, v5, v4}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object v6, v2, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    .line 34
    new-instance v6, Landroid/widget/PopupWindow;

    const v7, 0x7f04001a

    invoke-direct {v6, v5, v4, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, v2, Lh/z;->B:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    .line 35
    invoke-static {v6, v7}, LS/l;->d(Landroid/widget/PopupWindow;I)V

    .line 36
    iget-object v6, v2, Lh/z;->B:Landroid/widget/PopupWindow;

    iget-object v7, v2, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 37
    iget-object v6, v2, Lh/z;->B:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 38
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f040005

    invoke-virtual {v6, v7, v3, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 39
    iget v3, v3, Landroid/util/TypedValue;->data:I

    .line 40
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 41
    invoke-static {v3, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    .line 42
    iget-object v5, v2, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 43
    iget-object v3, v2, Lh/z;->B:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 44
    new-instance v3, Lh/o;

    invoke-direct {v3, v2, v1}, Lh/o;-><init>(Lh/z;I)V

    iput-object v3, v2, Lh/z;->C:Lh/o;

    goto :goto_2

    .line 45
    :cond_6
    iget-object v3, v2, Lh/z;->F:Landroid/view/ViewGroup;

    const v6, 0x7f09008f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v3, :cond_9

    .line 46
    invoke-virtual {v2}, Lh/z;->A()V

    .line 47
    iget-object v6, v2, Lh/z;->t:LZ2/l;

    if-eqz v6, :cond_7

    .line 48
    invoke-virtual {v6}, LZ2/l;->A()Landroid/content/Context;

    move-result-object v6

    goto :goto_0

    :cond_7
    move-object v6, v4

    :goto_0
    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    move-object v5, v6

    .line 49
    :goto_1
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 50
    invoke-virtual {v3}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v3, v2, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    .line 51
    :cond_9
    :goto_2
    iget-object v3, v2, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v3, :cond_f

    .line 52
    iget-object v3, v2, Lh/z;->D:LM/j0;

    if-eqz v3, :cond_a

    .line 53
    invoke-virtual {v3}, LM/j0;->b()V

    .line 54
    :cond_a
    iget-object v3, v2, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 55
    new-instance v3, Lj/e;

    iget-object v5, v2, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v2, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    .line 56
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v5, v3, Lj/e;->c:Landroid/content/Context;

    .line 58
    iput-object v6, v3, Lj/e;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 59
    iput-object p1, v3, Lj/e;->e:LD2/e;

    .line 60
    new-instance v5, Lk/m;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lk/m;-><init>(Landroid/content/Context;)V

    .line 61
    iput v1, v5, Lk/m;->q:I

    .line 62
    iput-object v5, v3, Lj/e;->m:Lk/m;

    .line 63
    iput-object v3, v5, Lk/m;->e:Lk/k;

    .line 64
    iget-object p1, p1, LD2/e;->b:Ljava/lang/Object;

    check-cast p1, LR0/i;

    .line 65
    invoke-virtual {p1, v3, v5}, LR0/i;->n(Lj/a;Lk/m;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 66
    invoke-virtual {v3}, Lj/e;->h()V

    .line 67
    iget-object p1, v2, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lj/a;)V

    .line 68
    iput-object v3, v2, Lh/z;->z:Lj/a;

    .line 69
    iget-boolean p1, v2, Lh/z;->E:Z

    if-eqz p1, :cond_b

    iget-object p1, v2, Lh/z;->F:Landroid/view/ViewGroup;

    if-eqz p1, :cond_b

    sget-object v3, LM/a0;->a:Ljava/util/WeakHashMap;

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result p1

    if-eqz p1, :cond_b

    move p1, v1

    goto :goto_3

    :cond_b
    move p1, v0

    :goto_3
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_c

    .line 71
    iget-object p1, v2, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 72
    iget-object p1, v2, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, LM/a0;->a(Landroid/view/View;)LM/j0;

    move-result-object p1

    invoke-virtual {p1, v3}, LM/j0;->a(F)V

    iput-object p1, v2, Lh/z;->D:LM/j0;

    .line 73
    new-instance v0, Lh/r;

    invoke-direct {v0, v2, v1}, Lh/r;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, LM/j0;->d(LM/k0;)V

    goto :goto_4

    .line 74
    :cond_c
    iget-object p1, v2, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 75
    iget-object p1, v2, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 76
    iget-object p1, v2, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_d

    .line 77
    iget-object p1, v2, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v0, LM/a0;->a:Ljava/util/WeakHashMap;

    .line 78
    invoke-static {p1}, LM/L;->c(Landroid/view/View;)V

    .line 79
    :cond_d
    :goto_4
    iget-object p1, v2, Lh/z;->B:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_f

    .line 80
    iget-object p1, v2, Lh/z;->q:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, v2, Lh/z;->C:Lh/o;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 81
    :cond_e
    iput-object v4, v2, Lh/z;->z:Lj/a;

    .line 82
    :cond_f
    :goto_5
    invoke-virtual {v2}, Lh/z;->I()V

    .line 83
    iget-object p1, v2, Lh/z;->z:Lj/a;

    .line 84
    iput-object p1, v2, Lh/z;->z:Lj/a;

    .line 85
    :cond_10
    invoke-virtual {v2}, Lh/z;->I()V

    .line 86
    iget-object p1, v2, Lh/z;->z:Lj/a;

    if-eqz p1, :cond_11

    .line 87
    invoke-virtual {p2, p1}, LR0/i;->g(Lj/a;)Lj/f;

    move-result-object v4

    :cond_11
    return-object v4
.end method
