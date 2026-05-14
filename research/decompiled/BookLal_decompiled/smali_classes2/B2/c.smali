.class public final LB2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LB2/r;


# direct methods
.method public synthetic constructor <init>(LB2/r;I)V
    .locals 0

    iput p2, p0, LB2/c;->a:I

    iput-object p1, p0, LB2/c;->b:LB2/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x0

    iget-object v2, p0, LB2/c;->b:LB2/r;

    const/4 v3, 0x1

    iget v4, p0, LB2/c;->a:I

    packed-switch v4, :pswitch_data_0

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    check-cast v2, LB2/w;

    iget-object p1, v2, LB2/r;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v2}, LB2/w;->d(LB2/w;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p1, v2, LB2/w;->e:LB2/l;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/AutoCompleteTextView;

    if-eqz v5, :cond_6

    check-cast v4, Landroid/widget/AutoCompleteTextView;

    check-cast v2, LB2/q;

    iget-object v5, v2, LB2/r;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v5

    if-ne v5, v0, :cond_0

    iget-object v5, v2, LB2/q;->n:Lz2/g;

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-ne v5, v3, :cond_1

    iget-object v5, v2, LB2/q;->m:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    invoke-static {v4}, LB2/q;->f(Landroid/widget/EditText;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v5, v2, LB2/r;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v6

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Lz2/g;

    move-result-object v7

    const v8, 0x7f040118

    invoke-static {v4, v8}, LS4/b;->q(Landroid/view/View;I)I

    move-result v8

    const v9, 0x10100a7

    filled-new-array {v9}, [I

    move-result-object v9

    new-array v10, v1, [I

    filled-new-array {v9, v10}, [[I

    move-result-object v9

    const v10, 0x3dcccccd    # 0.1f

    if-ne v6, v0, :cond_3

    const v5, 0x7f040135

    invoke-static {v4, v5}, LS4/b;->q(Landroid/view/View;I)I

    move-result v5

    new-instance v6, Lz2/g;

    iget-object v11, v7, Lz2/g;->a:Lz2/f;

    iget-object v11, v11, Lz2/f;->a:Lz2/k;

    invoke-direct {v6, v11}, Lz2/g;-><init>(Lz2/k;)V

    invoke-static {v8, v5, v10}, LS4/b;->w(IIF)I

    move-result v8

    filled-new-array {v8, v1}, [I

    move-result-object v10

    new-instance v11, Landroid/content/res/ColorStateList;

    invoke-direct {v11, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v6, v11}, Lz2/g;->k(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v6, v5}, Lz2/g;->setTint(I)V

    filled-new-array {v8, v5}, [I

    move-result-object v5

    new-instance v8, Landroid/content/res/ColorStateList;

    invoke-direct {v8, v9, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v5, Lz2/g;

    iget-object v9, v7, Lz2/g;->a:Lz2/f;

    iget-object v9, v9, Lz2/f;->a:Lz2/k;

    invoke-direct {v5, v9}, Lz2/g;-><init>(Lz2/k;)V

    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lz2/g;->setTint(I)V

    new-instance v9, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v9, v8, v6, v5}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-array v5, v0, [Landroid/graphics/drawable/Drawable;

    aput-object v9, v5, v1

    aput-object v7, v5, v3

    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    sget-object v5, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    if-ne v6, v3, :cond_4

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    move-result v5

    invoke-static {v8, v5, v10}, LS4/b;->w(IIF)I

    move-result v6

    filled-new-array {v6, v5}, [I

    move-result-object v5

    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v9, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v5, v6, v7, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget-object v6, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    new-instance v5, LB2/n;

    invoke-direct {v5, v2, v4}, LB2/n;-><init>(LB2/q;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, v2, LB2/q;->f:LB2/b;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v5, LB2/o;

    invoke-direct {v5, v2}, LB2/o;-><init>(LB2/q;)V

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    invoke-virtual {v4, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v1, v2, LB2/q;->e:LB2/l;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, v2, LB2/r;->c:Lcom/google/android/material/internal/CheckableImageButton;

    sget-object v4, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_2
    iget-object v0, v2, LB2/q;->g:LB2/m;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(LB2/y;)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v2, LB2/h;

    invoke-static {v2}, LB2/h;->d(LB2/h;)Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    iget-object p1, v2, LB2/h;->f:LB2/b;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, v2, LB2/r;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, v2, LB2/h;->e:LB2/a;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
