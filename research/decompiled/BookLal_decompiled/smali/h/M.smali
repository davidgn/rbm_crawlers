.class public final Lh/M;
.super LZ2/l;
.source "SourceFile"

# interfaces
.implements Ll/d;


# static fields
.field public static final A:Landroid/view/animation/DecelerateInterpolator;

.field public static final z:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/content/Context;

.field public d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public e:Landroidx/appcompat/widget/ActionBarContainer;

.field public f:Ll/j0;

.field public g:Landroidx/appcompat/widget/ActionBarContextView;

.field public final h:Landroid/view/View;

.field public i:Z

.field public j:Lh/L;

.field public k:Lh/L;

.field public l:LD2/e;

.field public m:Z

.field public final n:Ljava/util/ArrayList;

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Lj/k;

.field public u:Z

.field public v:Z

.field public final w:Lh/K;

.field public final x:Lh/K;

.field public final y:LK0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lh/M;->z:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lh/M;->A:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/M;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lh/M;->o:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lh/M;->p:Z

    .line 6
    iput-boolean v0, p0, Lh/M;->s:Z

    .line 7
    new-instance v0, Lh/K;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lh/K;-><init>(Lh/M;I)V

    iput-object v0, p0, Lh/M;->w:Lh/K;

    .line 8
    new-instance v0, Lh/K;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lh/K;-><init>(Lh/M;I)V

    iput-object v0, p0, Lh/M;->x:Lh/K;

    .line 9
    new-instance v0, LK0/j;

    const/16 v1, 0x1c

    invoke-direct {v0, p0, v1}, LK0/j;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lh/M;->y:LK0/j;

    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh/M;->Z(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(ZLandroid/app/Activity;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/M;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lh/M;->o:I

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lh/M;->p:Z

    .line 16
    iput-boolean v0, p0, Lh/M;->s:Z

    .line 17
    new-instance v0, Lh/K;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lh/K;-><init>(Lh/M;I)V

    iput-object v0, p0, Lh/M;->w:Lh/K;

    .line 18
    new-instance v0, Lh/K;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lh/K;-><init>(Lh/M;I)V

    iput-object v0, p0, Lh/M;->x:Lh/K;

    .line 19
    new-instance v0, LK0/j;

    const/16 v1, 0x1c

    invoke-direct {v0, p0, v1}, LK0/j;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lh/M;->y:LK0/j;

    .line 20
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    .line 22
    invoke-virtual {p0, p2}, Lh/M;->Z(Landroid/view/View;)V

    if-nez p1, :cond_0

    const p1, 0x1020002

    .line 23
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lh/M;->h:Landroid/view/View;

    :cond_0
    return-void
.end method


# virtual methods
.method public final A()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Lh/M;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lh/M;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f04000c

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lh/M;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lh/M;->c:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh/M;->b:Landroid/content/Context;

    iput-object v0, p0, Lh/M;->c:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object v0, p0, Lh/M;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final I()V
    .locals 2

    iget-object v0, p0, Lh/M;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lh/M;->a0(Z)V

    return-void
.end method

.method public final K(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lh/M;->j:Lh/L;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lh/L;->d:Lk/m;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lk/m;->setQwertyMode(Z)V

    invoke-virtual {v0, p1, p2, v1}, Lk/m;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public final R(Z)V
    .locals 4

    iget-boolean v0, p0, Lh/M;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lh/M;->f:Ll/j0;

    check-cast v1, Ll/f1;

    iget v2, v1, Ll/f1;->b:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lh/M;->i:Z

    and-int/2addr p1, v0

    and-int/lit8 v0, v2, -0x5

    or-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ll/f1;->a(I)V

    :cond_1
    return-void
.end method

.method public final S()V
    .locals 2

    iget-object v0, p0, Lh/M;->f:Ll/j0;

    check-cast v0, Ll/f1;

    iget v1, v0, Ll/f1;->b:I

    and-int/lit8 v1, v1, -0x9

    invoke-virtual {v0, v1}, Ll/f1;->a(I)V

    return-void
.end method

.method public final T(Z)V
    .locals 0

    iput-boolean p1, p0, Lh/M;->u:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lh/M;->t:Lj/k;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lj/k;->a()V

    :cond_0
    return-void
.end method

.method public final U(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lh/M;->f:Ll/j0;

    check-cast v0, Ll/f1;

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

.method public final W(LD2/e;)Lj/a;
    .locals 2

    iget-object v0, p0, Lh/M;->j:Lh/L;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/L;->a()V

    :cond_0
    iget-object v0, p0, Lh/M;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, Lh/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    new-instance v0, Lh/L;

    iget-object v1, p0, Lh/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lh/L;-><init>(Lh/M;Landroid/content/Context;LD2/e;)V

    iget-object p1, v0, Lh/L;->d:Lk/m;

    invoke-virtual {p1}, Lk/m;->y()V

    :try_start_0
    iget-object v1, v0, Lh/L;->e:LD2/e;

    iget-object v1, v1, LD2/e;->b:Ljava/lang/Object;

    check-cast v1, LR0/i;

    invoke-virtual {v1, v0, p1}, LR0/i;->n(Lj/a;Lk/m;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lk/m;->x()V

    if-eqz v1, :cond_1

    iput-object v0, p0, Lh/M;->j:Lh/L;

    invoke-virtual {v0}, Lh/L;->h()V

    iget-object p1, p0, Lh/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lj/a;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lh/M;->Y(Z)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lk/m;->x()V

    throw v0
.end method

.method public final Y(Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lh/M;->r:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lh/M;->r:Z

    iget-object v2, p0, Lh/M;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Lh/M;->b0(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lh/M;->r:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lh/M;->r:Z

    iget-object v1, p0, Lh/M;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_2
    invoke-virtual {p0, v0}, Lh/M;->b0(Z)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    sget-object v2, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-eqz v1, :cond_7

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x64

    if-eqz p1, :cond_4

    iget-object p1, p0, Lh/M;->f:Ll/j0;

    check-cast p1, Ll/f1;

    iget-object v1, p1, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1}, LM/a0;->a(Landroid/view/View;)LM/j0;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LM/j0;->a(F)V

    invoke-virtual {v1, v6, v7}, LM/j0;->c(J)V

    new-instance v2, Lj/j;

    invoke-direct {v2, p1, v3}, Lj/j;-><init>(Ll/f1;I)V

    invoke-virtual {v1, v2}, LM/j0;->d(LM/k0;)V

    iget-object p1, p0, Lh/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->i(IJ)LM/j0;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lh/M;->f:Ll/j0;

    check-cast p1, Ll/f1;

    iget-object v1, p1, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1}, LM/a0;->a(Landroid/view/View;)LM/j0;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, LM/j0;->a(F)V

    invoke-virtual {v1, v4, v5}, LM/j0;->c(J)V

    new-instance v3, Lj/j;

    invoke-direct {v3, p1, v0}, Lj/j;-><init>(Ll/f1;I)V

    invoke-virtual {v1, v3}, LM/j0;->d(LM/k0;)V

    iget-object p1, p0, Lh/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->i(IJ)LM/j0;

    move-result-object p1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    :goto_1
    new-instance v0, Lj/k;

    invoke-direct {v0}, Lj/k;-><init>()V

    iget-object v2, v0, Lj/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, LM/j0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v3

    goto :goto_2

    :cond_5
    const-wide/16 v3, 0x0

    :goto_2
    iget-object v1, p1, LM/j0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_6
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lj/k;->b()V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    iget-object p1, p0, Lh/M;->f:Ll/j0;

    check-cast p1, Ll/f1;

    iget-object p1, p1, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lh/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lh/M;->f:Ll/j0;

    check-cast p1, Ll/f1;

    iget-object p1, p1, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lh/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final Z(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f090154

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lh/M;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Ll/d;)V

    :cond_0
    const v0, 0x7f090081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Ll/j0;

    if-eqz v1, :cond_1

    check-cast v0, Ll/j0;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_8

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Ll/j0;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lh/M;->f:Ll/j0;

    const v0, 0x7f090089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Lh/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    const v0, 0x7f090083

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Lh/M;->f:Ll/j0;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lh/M;->g:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    check-cast v0, Ll/f1;

    iget-object p1, v0, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lh/M;->b:Landroid/content/Context;

    iget-object v0, p0, Lh/M;->f:Ll/j0;

    check-cast v0, Ll/f1;

    iget v0, v0, Ll/f1;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lh/M;->i:Z

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    iget-object v0, p0, Lh/M;->f:Ll/j0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f050000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lh/M;->a0(Z)V

    iget-object p1, p0, Lh/M;->b:Landroid/content/Context;

    sget-object v0, Lg/a;->a:[I

    const v3, 0x7f040007

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lh/M;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Z

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Lh/M;->v:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_6

    int-to-float v0, v0

    iget-object v1, p0, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    sget-object v2, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1, v0}, LM/N;->s(Landroid/view/View;F)V

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-class v0, Lh/M;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    const-string v0, "null"

    :goto_3
    const-string v1, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a0(Z)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lh/M;->f:Ll/j0;

    check-cast p1, Ll/f1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Ll/M0;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Ll/M0;)V

    iget-object p1, p0, Lh/M;->f:Ll/j0;

    check-cast p1, Ll/f1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object p1, p0, Lh/M;->f:Ll/j0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lh/M;->f:Ll/j0;

    check-cast p1, Ll/f1;

    iget-object p1, p1, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    iget-object p1, p0, Lh/M;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public final b0(Z)V
    .locals 11

    iget-boolean v0, p0, Lh/M;->q:Z

    iget-boolean v1, p0, Lh/M;->r:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    iget-object v1, p0, Lh/M;->h:Landroid/view/View;

    const-wide/16 v4, 0xfa

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Lh/M;->y:LK0/j;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lh/M;->s:Z

    if-nez v0, :cond_1a

    iput-boolean v2, p0, Lh/M;->s:Z

    iget-object v0, p0, Lh/M;->t:Lj/k;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lj/k;->a()V

    :cond_2
    iget-object v0, p0, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Lh/M;->o:I

    iget-object v9, p0, Lh/M;->x:Lh/K;

    const/4 v10, 0x0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lh/M;->u:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_c

    :cond_3
    iget-object v0, p0, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_4

    filled-new-array {v3, v3}, [I

    move-result-object p1

    iget-object v3, p0, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_4
    iget-object p1, p0, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance p1, Lj/k;

    invoke-direct {p1}, Lj/k;-><init>()V

    iget-object v2, p0, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, LM/a0;->a(Landroid/view/View;)LM/j0;

    move-result-object v2

    invoke-virtual {v2, v10}, LM/j0;->e(F)V

    iget-object v3, v2, LM/j0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_6

    if-eqz v8, :cond_5

    new-instance v6, LM/i0;

    invoke-direct {v6, v8, v3}, LM/i0;-><init>(LK0/j;Landroid/view/View;)V

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_6
    iget-boolean v3, p1, Lj/k;->e:Z

    iget-object v6, p1, Lj/k;->a:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-boolean v2, p0, Lh/M;->p:Z

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {v1}, LM/a0;->a(Landroid/view/View;)LM/j0;

    move-result-object v0

    invoke-virtual {v0, v10}, LM/j0;->e(F)V

    iget-boolean v1, p1, Lj/k;->e:Z

    if-nez v1, :cond_8

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-object v0, Lh/M;->A:Landroid/view/animation/DecelerateInterpolator;

    iget-boolean v1, p1, Lj/k;->e:Z

    if-nez v1, :cond_9

    iput-object v0, p1, Lj/k;->c:Landroid/view/animation/BaseInterpolator;

    :cond_9
    if-nez v1, :cond_a

    iput-wide v4, p1, Lj/k;->b:J

    :cond_a
    if-nez v1, :cond_b

    iput-object v9, p1, Lj/k;->d:LW2/B;

    :cond_b
    iput-object p1, p0, Lh/M;->t:Lj/k;

    invoke-virtual {p1}, Lj/k;->b()V

    goto :goto_1

    :cond_c
    iget-object p1, p0, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean p1, p0, Lh/M;->p:Z

    if-eqz p1, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual {v1, v10}, Landroid/view/View;->setTranslationY(F)V

    :cond_d
    invoke-virtual {v9}, Lh/K;->c()V

    :goto_1
    iget-object p1, p0, Lh/M;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_1a

    sget-object v0, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, LM/L;->c(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_e
    iget-boolean v0, p0, Lh/M;->s:Z

    if-eqz v0, :cond_1a

    iput-boolean v3, p0, Lh/M;->s:Z

    iget-object v0, p0, Lh/M;->t:Lj/k;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lj/k;->a()V

    :cond_f
    iget v0, p0, Lh/M;->o:I

    iget-object v9, p0, Lh/M;->w:Lh/K;

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lh/M;->u:Z

    if-nez v0, :cond_10

    if-eqz p1, :cond_19

    :cond_10
    iget-object v0, p0, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, Lj/k;

    invoke-direct {v0}, Lj/k;-><init>()V

    iget-object v7, p0, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    if-eqz p1, :cond_11

    filled-new-array {v3, v3}, [I

    move-result-object p1

    iget-object v3, p0, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v7, p1

    :cond_11
    iget-object p1, p0, Lh/M;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, LM/a0;->a(Landroid/view/View;)LM/j0;

    move-result-object p1

    invoke-virtual {p1, v7}, LM/j0;->e(F)V

    iget-object v2, p1, LM/j0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_13

    if-eqz v8, :cond_12

    new-instance v6, LM/i0;

    invoke-direct {v6, v8, v2}, LM/i0;-><init>(LK0/j;Landroid/view/View;)V

    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_13
    iget-boolean v2, v0, Lj/k;->e:Z

    iget-object v3, v0, Lj/k;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_14

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-boolean p1, p0, Lh/M;->p:Z

    if-eqz p1, :cond_15

    if-eqz v1, :cond_15

    invoke-static {v1}, LM/a0;->a(Landroid/view/View;)LM/j0;

    move-result-object p1

    invoke-virtual {p1, v7}, LM/j0;->e(F)V

    iget-boolean v1, v0, Lj/k;->e:Z

    if-nez v1, :cond_15

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    sget-object p1, Lh/M;->z:Landroid/view/animation/AccelerateInterpolator;

    iget-boolean v1, v0, Lj/k;->e:Z

    if-nez v1, :cond_16

    iput-object p1, v0, Lj/k;->c:Landroid/view/animation/BaseInterpolator;

    :cond_16
    if-nez v1, :cond_17

    iput-wide v4, v0, Lj/k;->b:J

    :cond_17
    if-nez v1, :cond_18

    iput-object v9, v0, Lj/k;->d:LW2/B;

    :cond_18
    iput-object v0, p0, Lh/M;->t:Lj/k;

    invoke-virtual {v0}, Lj/k;->b()V

    goto :goto_2

    :cond_19
    invoke-virtual {v9}, Lh/K;->c()V

    :cond_1a
    :goto_2
    return-void
.end method

.method public final q()Z
    .locals 2

    iget-object v0, p0, Lh/M;->f:Ll/j0;

    if-eqz v0, :cond_2

    move-object v1, v0

    check-cast v1, Ll/f1;

    iget-object v1, v1, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->R:Ll/a1;

    if-eqz v1, :cond_2

    iget-object v1, v1, Ll/a1;->b:Lk/o;

    if-eqz v1, :cond_2

    check-cast v0, Ll/f1;

    iget-object v0, v0, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->R:Ll/a1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Ll/a1;->b:Lk/o;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lk/o;->collapseActionView()Z

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final u(Z)V
    .locals 1

    iget-boolean v0, p0, Lh/M;->m:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lh/M;->m:Z

    iget-object p1, p0, Lh/M;->n:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lh/M;->f:Ll/j0;

    check-cast v0, Ll/f1;

    iget v0, v0, Ll/f1;->b:I

    return v0
.end method
