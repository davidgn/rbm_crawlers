.class public final LB2/w;
.super LB2/r;
.source "SourceFile"


# instance fields
.field public final e:LB2/l;

.field public final f:LB2/c;

.field public final g:LB2/d;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, LB2/r;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    new-instance p1, LB2/l;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, LB2/l;-><init>(LB2/r;I)V

    iput-object p1, p0, LB2/w;->e:LB2/l;

    new-instance p1, LB2/c;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, LB2/c;-><init>(LB2/r;I)V

    iput-object p1, p0, LB2/w;->f:LB2/c;

    new-instance p1, LB2/d;

    invoke-direct {p1, p0, p2}, LB2/d;-><init>(LB2/r;I)V

    iput-object p1, p0, LB2/w;->g:LB2/d;

    return-void
.end method

.method public static d(LB2/w;)Z
    .locals 0

    iget-object p0, p0, LB2/r;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, LB2/r;->d:I

    if-nez v0, :cond_0

    const v0, 0x7f0800a3

    :cond_0
    iget-object v1, p0, LB2/r;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(I)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1100c3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, LB2/e;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, LB2/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->k0:Ljava/util/LinkedHashSet;

    iget-object v2, p0, LB2/w;->f:LB2/c;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v2, v1}, LB2/c;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    :cond_1
    iget-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->o0:Ljava/util/LinkedHashSet;

    iget-object v2, p0, LB2/w;->g:LB2/d;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/16 v2, 0x80

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/16 v2, 0x90

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_3
    return-void
.end method
