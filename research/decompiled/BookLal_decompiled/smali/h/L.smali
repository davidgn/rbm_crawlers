.class public final Lh/L;
.super Lj/a;
.source "SourceFile"

# interfaces
.implements Lk/k;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lk/m;

.field public e:LD2/e;

.field public f:Ljava/lang/ref/WeakReference;

.field public final synthetic l:Lh/M;


# direct methods
.method public constructor <init>(Lh/M;Landroid/content/Context;LD2/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/L;->l:Lh/M;

    iput-object p2, p0, Lh/L;->c:Landroid/content/Context;

    iput-object p3, p0, Lh/L;->e:LD2/e;

    new-instance p1, Lk/m;

    invoke-direct {p1, p2}, Lk/m;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    iput p2, p1, Lk/m;->q:I

    iput-object p1, p0, Lh/L;->d:Lk/m;

    iput-object p0, p1, Lk/m;->e:Lk/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lh/L;->l:Lh/M;

    iget-object v1, v0, Lh/M;->j:Lh/L;

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lh/M;->q:Z

    if-eqz v1, :cond_1

    iput-object p0, v0, Lh/M;->k:Lh/L;

    iget-object v1, p0, Lh/L;->e:LD2/e;

    iput-object v1, v0, Lh/M;->l:LD2/e;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lh/L;->e:LD2/e;

    invoke-virtual {v1, p0}, LD2/e;->p(Lj/a;)V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lh/L;->e:LD2/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lh/M;->Y(Z)V

    iget-object v2, v0, Lh/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v3, v2, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/view/View;

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    :cond_2
    iget-object v2, v0, Lh/M;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, v0, Lh/M;->v:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iput-object v1, v0, Lh/M;->j:Lh/L;

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lh/L;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final c()Lk/m;
    .locals 1

    iget-object v0, p0, Lh/L;->d:Lk/m;

    return-object v0
.end method

.method public final d()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Lj/i;

    iget-object v1, p0, Lh/L;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lj/i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lh/L;->l:Lh/M;

    iget-object v0, v0, Lh/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lk/m;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lh/L;->e:LD2/e;

    if-eqz p1, :cond_0

    iget-object p1, p1, LD2/e;->b:Ljava/lang/Object;

    check-cast p1, LR0/i;

    invoke-virtual {p1, p0, p2}, LR0/i;->m(Lj/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lh/L;->l:Lh/M;

    iget-object v0, v0, Lh/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lh/L;->l:Lh/M;

    iget-object v0, v0, Lh/M;->j:Lh/L;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh/L;->d:Lk/m;

    invoke-virtual {v0}, Lk/m;->y()V

    :try_start_0
    iget-object v1, p0, Lh/L;->e:LD2/e;

    invoke-virtual {v1, p0, v0}, LD2/e;->q(Lj/a;Lk/m;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lk/m;->x()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lk/m;->x()V

    throw v1
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lh/L;->l:Lh/M;

    iget-object v0, v0, Lh/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->x:Z

    return v0
.end method

.method public final j(Lk/m;)V
    .locals 0

    iget-object p1, p0, Lh/L;->e:LD2/e;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lh/L;->h()V

    iget-object p1, p0, Lh/L;->l:Lh/M;

    iget-object p1, p1, Lh/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarContextView;->d:Ll/k;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ll/k;->n()Z

    :cond_1
    return-void
.end method

.method public final k(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lh/L;->l:Lh/M;

    iget-object v0, v0, Lh/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lh/L;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Lh/L;->l:Lh/M;

    iget-object v0, v0, Lh/M;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh/L;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lh/L;->l:Lh/M;

    iget-object v0, v0, Lh/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(I)V
    .locals 1

    iget-object v0, p0, Lh/L;->l:Lh/M;

    iget-object v0, v0, Lh/M;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh/L;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lh/L;->l:Lh/M;

    iget-object v0, v0, Lh/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final p(Z)V
    .locals 1

    iput-boolean p1, p0, Lj/a;->b:Z

    iget-object v0, p0, Lh/L;->l:Lh/M;

    iget-object v0, v0, Lh/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method
