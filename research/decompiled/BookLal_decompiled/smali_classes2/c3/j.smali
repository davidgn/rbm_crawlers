.class public final Lc3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:Lcom/hbb20/CountryCodePicker;


# direct methods
.method public constructor <init>(Lcom/hbb20/CountryCodePicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/j;->b:Lcom/hbb20/CountryCodePicker;

    const/4 p1, 0x0

    iput-object p1, p0, Lc3/j;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-object p2, p0, Lc3/j;->b:Lcom/hbb20/CountryCodePicker;

    invoke-static {p2}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/CountryCodePicker;)Lc3/a;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p4, p0, Lc3/j;->a:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    :cond_0
    iget-boolean p4, p2, Lcom/hbb20/CountryCodePicker;->w0:Z

    if-eqz p4, :cond_3

    iget-object p4, p2, Lcom/hbb20/CountryCodePicker;->H0:Lc3/b;

    if-eqz p4, :cond_2

    invoke-virtual {p2}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p2, Lcom/hbb20/CountryCodePicker;->H0:Lc3/b;

    iget v1, v1, Lc3/b;->b:I

    if-lt v0, v1, :cond_2

    invoke-static {p4}, Lt3/e;->r(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p2, Lcom/hbb20/CountryCodePicker;->H0:Lc3/b;

    iget v1, v1, Lc3/b;->b:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    iget-object v0, p2, Lcom/hbb20/CountryCodePicker;->x0:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/hbb20/CountryCodePicker;->H0:Lc3/b;

    iget-object v1, p2, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p4}, Lc3/b;->a(Landroid/content/Context;Lc3/o;Ljava/lang/String;)Lc3/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/hbb20/CountryCodePicker;->z0:Z

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p3

    iput p3, p2, Lcom/hbb20/CountryCodePicker;->y0:I

    invoke-virtual {p2, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    :cond_1
    iput-object p4, p2, Lcom/hbb20/CountryCodePicker;->x0:Ljava/lang/String;

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc3/j;->a:Ljava/lang/String;

    :cond_3
    return-void
.end method
