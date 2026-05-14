.class public final LB2/l;
.super Ls2/z;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LB2/r;


# direct methods
.method public synthetic constructor <init>(LB2/r;I)V
    .locals 0

    iput p2, p0, LB2/l;->a:I

    iput-object p1, p0, LB2/l;->b:LB2/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget p1, p0, LB2/l;->a:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, LB2/l;->b:LB2/r;

    check-cast p1, LB2/q;

    iget-object v0, p1, LB2/r;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iget-object v1, p1, LB2/q;->o:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, LB2/q;->f(Landroid/widget/EditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, LB2/r;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_0
    new-instance p1, LB/h;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p1, v1, p0, v0, v2}, LB/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget p1, p0, LB2/l;->a:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, LB2/l;->b:LB2/r;

    check-cast p1, LB2/w;

    iget-object p2, p1, LB2/r;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, LB2/w;->d(LB2/w;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
