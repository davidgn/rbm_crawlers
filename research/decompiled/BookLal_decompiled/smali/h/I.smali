.class public final Lh/I;
.super LZ2/l;
.source "SourceFile"


# instance fields
.field public final b:Ll/f1;

.field public final c:Lh/u;

.field public final d:Lh/H;

.field public e:Z

.field public f:Z

.field public g:Z

.field public final h:Ljava/util/ArrayList;

.field public final i:LA2/h;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Lh/u;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/I;->h:Ljava/util/ArrayList;

    new-instance v0, LA2/h;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, LA2/h;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lh/I;->i:LA2/h;

    new-instance v0, Lh/H;

    invoke-direct {v0, p0}, Lh/H;-><init>(Lh/I;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ll/f1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ll/f1;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v1, p0, Lh/I;->b:Ll/f1;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lh/I;->c:Lh/u;

    iput-object p3, v1, Ll/f1;->k:Landroid/view/Window$Callback;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Ll/c1;)V

    iget-boolean p1, v1, Ll/f1;->g:Z

    if-nez p1, :cond_0

    iput-object p2, v1, Ll/f1;->h:Ljava/lang/CharSequence;

    iget p1, v1, Ll/f1;->b:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, v1, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean p3, v1, Ll/f1;->g:Z

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, LM/a0;->n(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    new-instance p1, Lh/H;

    invoke-direct {p1, p0}, Lh/H;-><init>(Lh/I;)V

    iput-object p1, p0, Lh/I;->d:Lh/H;

    return-void
.end method


# virtual methods
.method public final A()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lh/I;->b:Ll/f1;

    iget-object v0, v0, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final B()Z
    .locals 3

    iget-object v0, p0, Lh/I;->b:Ll/f1;

    iget-object v1, v0, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Lh/I;->i:LA2/h;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    sget-object v1, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final I()V
    .locals 0

    return-void
.end method

.method public final J()V
    .locals 2

    iget-object v0, p0, Lh/I;->b:Ll/f1;

    iget-object v0, v0, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lh/I;->i:LA2/h;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final K(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lh/I;->Y()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public final L(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lh/I;->N()Z

    :cond_0
    return v0
.end method

.method public final N()Z
    .locals 1

    iget-object v0, p0, Lh/I;->b:Ll/f1;

    iget-object v0, v0, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->v()Z

    move-result v0

    return v0
.end method

.method public final R(Z)V
    .locals 0

    return-void
.end method

.method public final S()V
    .locals 2

    iget-object v0, p0, Lh/I;->b:Ll/f1;

    iget v1, v0, Ll/f1;->b:I

    and-int/lit8 v1, v1, -0x9

    invoke-virtual {v0, v1}, Ll/f1;->a(I)V

    return-void
.end method

.method public final T(Z)V
    .locals 0

    return-void
.end method

.method public final U(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lh/I;->b:Ll/f1;

    iget-boolean v1, v0, Ll/f1;->g:Z

    if-nez v1, :cond_0

    iput-object p1, v0, Ll/f1;->h:Ljava/lang/CharSequence;

    iget v1, v0, Ll/f1;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    iget-object v1, v0, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, v0, Ll/f1;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, LM/a0;->n(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final Y()Landroid/view/Menu;
    .locals 4

    iget-boolean v0, p0, Lh/I;->f:Z

    iget-object v1, p0, Lh/I;->b:Ll/f1;

    if-nez v0, :cond_1

    new-instance v0, LK/g;

    invoke-direct {v0, p0}, LK/g;-><init>(Ljava/lang/Object;)V

    new-instance v2, LK0/j;

    const/16 v3, 0x1b

    invoke-direct {v2, p0, v3}, LK0/j;-><init>(Ljava/lang/Object;I)V

    iget-object v3, v1, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    iput-object v0, v3, Landroidx/appcompat/widget/Toolbar;->S:LK/g;

    iput-object v2, v3, Landroidx/appcompat/widget/Toolbar;->T:LK0/j;

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_0

    iput-object v0, v3, Landroidx/appcompat/widget/ActionMenuView;->z:LK/g;

    iput-object v2, v3, Landroidx/appcompat/widget/ActionMenuView;->A:Lk/k;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/I;->f:Z

    :cond_1
    iget-object v0, v1, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Lh/I;->b:Ll/f1;

    iget-object v0, v0, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->y:Ll/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final q()Z
    .locals 2

    iget-object v0, p0, Lh/I;->b:Ll/f1;

    iget-object v0, v0, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->R:Ll/a1;

    if-eqz v0, :cond_2

    iget-object v1, v0, Ll/a1;->b:Lk/o;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lk/o;->collapseActionView()Z

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final u(Z)V
    .locals 1

    iget-boolean v0, p0, Lh/I;->g:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lh/I;->g:Z

    iget-object p1, p0, Lh/I;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final y()I
    .locals 1

    iget-object v0, p0, Lh/I;->b:Ll/f1;

    iget v0, v0, Ll/f1;->b:I

    return v0
.end method
