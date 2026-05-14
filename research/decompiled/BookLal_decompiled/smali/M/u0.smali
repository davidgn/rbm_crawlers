.class public LM/u0;
.super LM/t0;
.source "SourceFile"


# instance fields
.field public n:LE/c;

.field public o:LE/c;

.field public p:LE/c;


# direct methods
.method public constructor <init>(LM/z0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LM/t0;-><init>(LM/z0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, LM/u0;->n:LE/c;

    iput-object p1, p0, LM/u0;->o:LE/c;

    iput-object p1, p0, LM/u0;->p:LE/c;

    return-void
.end method


# virtual methods
.method public g()LE/c;
    .locals 1

    iget-object v0, p0, LM/u0;->o:LE/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LM/r0;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, LA2/o;->v(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, LE/c;->b(Landroid/graphics/Insets;)LE/c;

    move-result-object v0

    iput-object v0, p0, LM/u0;->o:LE/c;

    :cond_0
    iget-object v0, p0, LM/u0;->o:LE/c;

    return-object v0
.end method

.method public i()LE/c;
    .locals 1

    iget-object v0, p0, LM/u0;->n:LE/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LM/r0;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, LA2/o;->A(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, LE/c;->b(Landroid/graphics/Insets;)LE/c;

    move-result-object v0

    iput-object v0, p0, LM/u0;->n:LE/c;

    :cond_0
    iget-object v0, p0, LM/u0;->n:LE/c;

    return-object v0
.end method

.method public k()LE/c;
    .locals 1

    iget-object v0, p0, LM/u0;->p:LE/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LM/r0;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, LA2/o;->d(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, LE/c;->b(Landroid/graphics/Insets;)LE/c;

    move-result-object v0

    iput-object v0, p0, LM/u0;->p:LE/c;

    :cond_0
    iget-object v0, p0, LM/u0;->p:LE/c;

    return-object v0
.end method

.method public l(IIII)LM/z0;
    .locals 1

    iget-object v0, p0, LM/r0;->c:Landroid/view/WindowInsets;

    invoke-static {v0, p1, p2, p3, p4}, LA2/o;->h(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, LM/z0;->h(Landroid/view/WindowInsets;Landroid/view/View;)LM/z0;

    move-result-object p1

    return-object p1
.end method

.method public q(LE/c;)V
    .locals 0

    return-void
.end method
