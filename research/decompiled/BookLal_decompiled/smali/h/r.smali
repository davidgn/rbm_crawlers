.class public final Lh/r;
.super LW2/B;
.source "SourceFile"


# instance fields
.field public final synthetic f:I

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lh/r;->f:I

    iput-object p1, p0, Lh/r;->l:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lh/r;->l:Ljava/lang/Object;

    iget v2, p0, Lh/r;->f:I

    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast v1, Lh/z;

    iget-object v2, v1, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, v1, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v1, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, LM/L;->c(Landroid/view/View;)V

    :cond_0
    return-void

    :pswitch_1
    check-cast v1, Lh/o;

    iget-object v1, v1, Lh/o;->b:Lh/z;

    iget-object v1, v1, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v2, p0, Lh/r;->l:Ljava/lang/Object;

    iget v3, p0, Lh/r;->f:I

    packed-switch v3, :pswitch_data_0

    check-cast v2, LD2/e;

    iget-object v0, v2, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, Lh/z;

    iget-object v0, v0, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, v2, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, Lh/z;

    iget-object v2, v0, Lh/z;->B:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget-object v3, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-static {v2}, LM/L;->c(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object v2, v0, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    iget-object v2, v0, Lh/z;->D:LM/j0;

    invoke-virtual {v2, v1}, LM/j0;->d(LM/k0;)V

    iput-object v1, v0, Lh/z;->D:LM/j0;

    iget-object v0, v0, Lh/z;->F:Landroid/view/ViewGroup;

    sget-object v1, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, LM/L;->c(Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast v2, Lh/z;

    iget-object v3, v2, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v2, Lh/z;->D:LM/j0;

    invoke-virtual {v0, v1}, LM/j0;->d(LM/k0;)V

    iput-object v1, v2, Lh/z;->D:LM/j0;

    return-void

    :pswitch_1
    check-cast v2, Lh/o;

    iget-object v3, v2, Lh/o;->b:Lh/z;

    iget-object v3, v3, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v2, Lh/o;->b:Lh/z;

    iget-object v2, v0, Lh/z;->D:LM/j0;

    invoke-virtual {v2, v1}, LM/j0;->d(LM/k0;)V

    iput-object v1, v0, Lh/z;->D:LM/j0;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
