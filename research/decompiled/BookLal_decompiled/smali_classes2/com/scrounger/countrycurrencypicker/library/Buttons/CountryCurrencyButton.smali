.class public Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "SourceFile"

# interfaces
.implements Lg3/a;


# instance fields
.field public d:Lg3/a;

.field public e:Le3/b;

.field public f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->f:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSaveEnabled(Z)V

    sget-object v1, Le3/k;->a:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->setCountry(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->setShowCurrency(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public final d(Le3/i;)V
    .locals 1

    iget-object v0, p0, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->d:Lg3/a;

    invoke-interface {v0, p1}, Lg3/a;->d(Le3/i;)V

    return-void
.end method

.method public getCountry()Le3/b;
    .locals 1

    iget-object v0, p0, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->e:Le3/b;

    return-object v0
.end method

.method public final i(Le3/b;)V
    .locals 1

    iget-object v0, p0, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->d:Lg3/a;

    invoke-interface {v0, p1}, Lg3/a;->i(Le3/b;)V

    invoke-virtual {p0, p1}, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->setCountry(Le3/b;)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->e:Le3/b;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->e:Le3/b;

    iget-object v0, v0, Le3/b;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, LC/i;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->f:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->e:Le3/b;

    iget-object v0, p1, Le3/b;->d:Le3/i;

    if-eqz v0, :cond_0

    iget-object p1, p1, Le3/b;->b:Ljava/lang/String;

    iget-object v0, v0, Le3/i;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->e:Le3/b;

    iget-object p1, p1, Le3/b;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lf3/a;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lf3/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->setCountry(Ljava/lang/String;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lf3/a;

    invoke-direct {v1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->e:Le3/b;

    iget-object v0, v0, Le3/b;->a:Ljava/lang/String;

    iput-object v0, v1, Lf3/a;->a:Ljava/lang/String;

    return-object v1
.end method

.method public final performClick()Z
    .locals 4

    iget-object v0, p0, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Le3/j;->a:Le3/j;

    goto :goto_0

    :cond_0
    sget-object v0, Le3/j;->b:Le3/j;

    :goto_0
    new-instance v1, Le3/g;

    invoke-direct {v1}, Le3/g;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Le3/g;->q:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v0, Le3/g;->r:Ljava/lang/String;

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f11004a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Le3/g;->p:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lh/i;

    invoke-virtual {v0}, Landroidx/fragment/app/F;->getSupportFragmentManager()Landroidx/fragment/app/Y;

    move-result-object v0

    const-string v2, "e3.g"

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/r;->show(Landroidx/fragment/app/Y;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public setCountry(Le3/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->e:Le3/b;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->f:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le3/b;->a(Landroid/content/Context;Ljava/lang/String;)Le3/b;

    move-result-object p1

    iput-object p1, p0, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->e:Le3/b;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le3/b;->b(Landroid/content/Context;Ljava/lang/String;)Le3/b;

    move-result-object p1

    iput-object p1, p0, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->e:Le3/b;

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnClickListener(Lg3/a;)V
    .locals 0

    iput-object p1, p0, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->d:Lg3/a;

    return-void
.end method

.method public setShowCurrency(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->f:Ljava/lang/Boolean;

    return-void
.end method
