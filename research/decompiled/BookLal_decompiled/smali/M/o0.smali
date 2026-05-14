.class public LM/o0;
.super LM/q0;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LM/q0;-><init>()V

    .line 2
    invoke-static {}, LA2/o;->e()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, LM/o0;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(LM/z0;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LM/q0;-><init>(LM/z0;)V

    .line 4
    invoke-virtual {p1}, LM/z0;->g()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, LA2/o;->f(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, LA2/o;->e()Landroid/view/WindowInsets$Builder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LM/o0;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()LM/z0;
    .locals 3

    invoke-virtual {p0}, LM/q0;->a()V

    iget-object v0, p0, LM/o0;->a:Landroid/view/WindowInsets$Builder;

    invoke-static {v0}, LA2/o;->g(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LM/z0;->h(Landroid/view/WindowInsets;Landroid/view/View;)LM/z0;

    move-result-object v0

    iget-object v2, v0, LM/z0;->a:LM/x0;

    invoke-virtual {v2, v1}, LM/x0;->o([LE/c;)V

    return-object v0
.end method

.method public c(LE/c;)V
    .locals 1

    iget-object v0, p0, LM/o0;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LE/c;->c()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, LA2/o;->y(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method

.method public d(LE/c;)V
    .locals 1

    iget-object v0, p0, LM/o0;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LE/c;->c()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, LA2/o;->p(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method
