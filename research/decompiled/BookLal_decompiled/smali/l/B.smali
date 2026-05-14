.class public Ll/B;
.super Landroid/widget/RadioButton;
.source "SourceFile"


# instance fields
.field public final a:Ll/s;

.field public final b:Ll/p;

.field public final c:Ll/Y;

.field public d:Ll/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-static {p1}, Ll/W0;->a(Landroid/content/Context;)V

    const v0, 0x7f040370

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Ll/V0;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Ll/s;

    invoke-direct {p1, p0}, Ll/s;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Ll/B;->a:Ll/s;

    invoke-virtual {p1, p2, v0}, Ll/s;->c(Landroid/util/AttributeSet;I)V

    new-instance p1, Ll/p;

    invoke-direct {p1, p0}, Ll/p;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Ll/B;->b:Ll/p;

    invoke-virtual {p1, p2, v0}, Ll/p;->d(Landroid/util/AttributeSet;I)V

    new-instance p1, Ll/Y;

    invoke-direct {p1, p0}, Ll/Y;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Ll/B;->c:Ll/Y;

    invoke-virtual {p1, p2, v0}, Ll/Y;->f(Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Ll/B;->getEmojiTextViewHelper()Ll/v;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Ll/v;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getEmojiTextViewHelper()Ll/v;
    .locals 1

    iget-object v0, p0, Ll/B;->d:Ll/v;

    if-nez v0, :cond_0

    new-instance v0, Ll/v;

    invoke-direct {v0, p0}, Ll/v;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Ll/B;->d:Ll/v;

    :cond_0
    iget-object v0, p0, Ll/B;->d:Ll/v;

    return-object v0
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Ll/B;->b:Ll/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll/p;->a()V

    :cond_0
    iget-object v0, p0, Ll/B;->c:Ll/Y;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ll/Y;->b()V

    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget-object v1, p0, Ll/B;->a:Ll/s;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Ll/B;->b:Ll/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll/p;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Ll/B;->b:Ll/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll/p;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Ll/B;->a:Ll/s;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ll/s;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Ll/B;->a:Ll/s;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ll/s;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Ll/B;->c:Ll/Y;

    invoke-virtual {v0}, Ll/Y;->d()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Ll/B;->c:Ll/Y;

    invoke-virtual {v0}, Ll/Y;->e()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-direct {p0}, Ll/B;->getEmojiTextViewHelper()Ll/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Ll/v;->b(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Ll/B;->b:Ll/p;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ll/p;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Ll/B;->b:Ll/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ll/p;->f(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LL4/d;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll/B;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Ll/B;->a:Ll/s;

    if-eqz p1, :cond_1

    .line 3
    iget-boolean v0, p1, Ll/s;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Ll/s;->e:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Ll/s;->e:Z

    .line 6
    invoke-virtual {p1}, Ll/s;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Ll/B;->c:Ll/Y;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ll/Y;->b()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Ll/B;->c:Ll/Y;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ll/Y;->b()V

    :cond_0
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Ll/B;->getEmojiTextViewHelper()Ll/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Ll/v;->c(Z)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    invoke-direct {p0}, Ll/B;->getEmojiTextViewHelper()Ll/v;

    move-result-object v0

    iget-object v0, v0, Ll/v;->b:LK0/j;

    iget-object v0, v0, LK0/j;->b:Ljava/lang/Object;

    check-cast v0, La/a;

    invoke-virtual {v0, p1}, La/a;->g([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Ll/B;->b:Ll/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ll/p;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Ll/B;->b:Ll/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ll/p;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Ll/B;->a:Ll/s;

    if-eqz v0, :cond_0

    iput-object p1, v0, Ll/s;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Ll/s;->c:Z

    invoke-virtual {v0}, Ll/s;->a()V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Ll/B;->a:Ll/s;

    if-eqz v0, :cond_0

    iput-object p1, v0, Ll/s;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Ll/s;->d:Z

    invoke-virtual {v0}, Ll/s;->a()V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Ll/B;->c:Ll/Y;

    invoke-virtual {v0, p1}, Ll/Y;->i(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Ll/Y;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Ll/B;->c:Ll/Y;

    invoke-virtual {v0, p1}, Ll/Y;->j(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Ll/Y;->b()V

    return-void
.end method
