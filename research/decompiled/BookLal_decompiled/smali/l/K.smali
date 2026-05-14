.class public final Ll/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/P;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public a:Lh/f;

.field public b:Ll/L;

.field public c:Ljava/lang/CharSequence;

.field public final synthetic d:Ll/Q;


# direct methods
.method public constructor <init>(Ll/Q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/K;->d:Ll/Q;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Ll/K;->a:Lh/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dismiss()V
    .locals 1

    iget-object v0, p0, Ll/K;->a:Lh/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/B;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Ll/K;->a:Lh/f;

    :cond_0
    return-void
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Ll/K;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final f()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Ll/K;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public final h(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final j(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final m(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final n(II)V
    .locals 4

    iget-object v0, p0, Ll/K;->b:Ll/L;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LG4/n;

    iget-object v1, p0, Ll/K;->d:Ll/Q;

    invoke-virtual {v1}, Ll/Q;->getPopupContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, LG4/n;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Ll/K;->c:Ljava/lang/CharSequence;

    iget-object v3, v0, LG4/n;->b:Ljava/lang/Object;

    check-cast v3, Lh/b;

    if-eqz v2, :cond_1

    iput-object v2, v3, Lh/b;->e:Ljava/lang/CharSequence;

    :cond_1
    iget-object v2, p0, Ll/K;->b:Ll/L;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    iput-object v2, v3, Lh/b;->m:Ljava/lang/Object;

    iput-object p0, v3, Lh/b;->n:Landroid/content/DialogInterface$OnClickListener;

    iput v1, v3, Lh/b;->p:I

    const/4 v1, 0x1

    iput-boolean v1, v3, Lh/b;->o:Z

    invoke-virtual {v0}, LG4/n;->a()Lh/f;

    move-result-object v0

    iput-object v0, p0, Ll/K;->a:Lh/f;

    iget-object v0, v0, Lh/f;->f:Lh/e;

    iget-object v0, v0, Lh/e;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-static {v0, p1}, Ll/I;->d(Landroid/view/View;I)V

    invoke-static {v0, p2}, Ll/I;->c(Landroid/view/View;I)V

    iget-object p1, p0, Ll/K;->a:Lh/f;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final o()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Ll/K;->d:Ll/Q;

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll/K;->b:Ll/L;

    invoke-virtual {v0, p2}, Ll/L;->getItemId(I)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    invoke-virtual {p0}, Ll/K;->dismiss()V

    return-void
.end method

.method public final p(Landroid/widget/ListAdapter;)V
    .locals 0

    check-cast p1, Ll/L;

    iput-object p1, p0, Ll/K;->b:Ll/L;

    return-void
.end method
