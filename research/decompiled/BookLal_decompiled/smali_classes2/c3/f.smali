.class public final Lc3/f;
.super Lu0/y;
.source "SourceFile"


# instance fields
.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/List;

.field public f:Landroid/widget/TextView;

.field public l:Lcom/hbb20/CountryCodePicker;

.field public m:Landroid/view/LayoutInflater;

.field public n:Landroid/widget/EditText;

.field public o:Landroid/app/Dialog;

.field public p:Landroid/content/Context;

.field public q:Landroid/widget/ImageView;

.field public r:I


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lc3/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final e(Lu0/W;I)V
    .locals 10

    check-cast p1, Lc3/e;

    iget-object v0, p0, Lc3/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc3/a;

    iget-object v1, p1, Lc3/e;->E:Landroid/view/View;

    iget-object v2, p1, Lc3/e;->D:Landroid/widget/LinearLayout;

    iget-object v3, p1, Lc3/e;->A:Landroid/widget/TextView;

    iget-object v4, p1, Lc3/e;->B:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v0, :cond_5

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lc3/e;->F:Lc3/f;

    iget-object v7, v1, Lc3/f;->l:Lcom/hbb20/CountryCodePicker;

    iget-boolean v7, v7, Lcom/hbb20/CountryCodePicker;->E:Z

    if-eqz v7, :cond_0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v1, v1, Lc3/f;->l:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v1}, Lcom/hbb20/CountryCodePicker;->getCcpDialogShowFlag()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, v1, Lcom/hbb20/CountryCodePicker;->R:Z

    if-eqz v7, :cond_1

    invoke-static {v0}, Lc3/a;->g(Lc3/a;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    const-string v7, ""

    :goto_1
    invoke-static {v7}, Ls/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lc3/a;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/hbb20/CountryCodePicker;->getCcpDialogShowNameCode()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, " ("

    invoke-static {v7, v8}, Ls/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lc3/a;->a:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "+"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lc3/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/hbb20/CountryCodePicker;->getCcpDialogShowFlag()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v1, v1, Lcom/hbb20/CountryCodePicker;->R:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lc3/e;->C:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lc3/a;->h()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lc3/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p1, p1, Lc3/e;->z:Landroid/widget/RelativeLayout;

    if-le v0, p2, :cond_6

    iget-object v0, p0, Lc3/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v0, LC1/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, LC1/a;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    return-void
.end method

.method public final f(Landroid/view/ViewGroup;I)Lu0/W;
    .locals 2

    iget-object p2, p0, Lc3/f;->m:Landroid/view/LayoutInflater;

    const v0, 0x7f0c006a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lc3/e;

    invoke-direct {p2, p0, p1}, Lc3/e;-><init>(Lc3/f;Landroid/view/View;)V

    return-object p2
.end method

.method public final h(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lc3/f;->r:I

    iget-object v1, p0, Lc3/f;->l:Lcom/hbb20/CountryCodePicker;

    iget-object v2, v1, Lcom/hbb20/CountryCodePicker;->d0:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v1, v1, Lcom/hbb20/CountryCodePicker;->d0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc3/a;

    invoke-virtual {v2, p1}, Lc3/a;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lc3/f;->r:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc3/f;->r:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lc3/f;->r:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc3/f;->r:I

    :cond_2
    iget-object v1, p0, Lc3/f;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc3/a;

    invoke-virtual {v2, p1}, Lc3/a;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method
