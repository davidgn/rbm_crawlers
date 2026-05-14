.class public final LC1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, LC1/a;->a:I

    iput-object p1, p0, LC1/a;->c:Ljava/lang/Object;

    iput p2, p0, LC1/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget v0, p0, LC1/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LC1/a;->c:Ljava/lang/Object;

    check-cast v0, Lc3/f;

    iget-object v1, v0, Lc3/f;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget v3, p0, LC1/a;->b:I

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    iget-object v1, v0, Lc3/f;->l:Lcom/hbb20/CountryCodePicker;

    iget-object v4, v0, Lc3/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc3/a;

    iget-object v5, v1, Lcom/hbb20/CountryCodePicker;->w:Lcom/hbb20/CountryCodePicker;

    iget-boolean v6, v5, Lcom/hbb20/CountryCodePicker;->N:Z

    if-eqz v6, :cond_0

    iget-object v6, v4, Lc3/a;->a:Ljava/lang/String;

    iget-object v7, v5, Lcom/hbb20/CountryCodePicker;->b:Ljava/lang/String;

    iget-object v8, v5, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-virtual {v8, v7, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iget-object v5, v5, Lcom/hbb20/CountryCodePicker;->V:Ljava/lang/String;

    invoke-interface {v7, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-virtual {v1, v4}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, v0, Lc3/f;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_2

    iget-object v1, v0, Lc3/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lc3/f;->p:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p1, v0, Lc3/f;->o:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void

    :pswitch_0
    iget-object p1, p0, LC1/a;->c:Ljava/lang/Object;

    check-cast p1, LC1/b;

    iget-wide v0, p1, LC1/b;->e:J

    iput-wide v0, p1, LC1/b;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, LC1/b;->e:J

    iget-wide v2, p1, LC1/b;->d:J

    sub-long/2addr v0, v2

    const/16 v2, 0xfa

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p1, LC1/b;->c:LF1/b;

    if-eqz p1, :cond_4

    iget v0, p0, LC1/a;->b:I

    invoke-interface {p1, v0}, LF1/b;->d(I)V

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
