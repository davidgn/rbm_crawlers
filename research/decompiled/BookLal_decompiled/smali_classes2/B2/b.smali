.class public final LB2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LB2/b;->a:I

    iput-object p1, p0, LB2/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget p1, p0, LB2/b;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LB2/b;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    iget-object v0, p1, Landroidx/appcompat/widget/SearchView;->Q:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, LB2/b;->b:Ljava/lang/Object;

    check-cast p1, LB2/q;

    iget-object v0, p1, LB2/r;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconActivated(Z)V

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, LB2/q;->g(Z)V

    iput-boolean p2, p1, LB2/q;->j:Z

    :cond_1
    return-void

    :pswitch_1
    iget-object p1, p0, LB2/b;->b:Ljava/lang/Object;

    check-cast p1, LB2/h;

    invoke-static {p1}, LB2/h;->d(LB2/h;)Z

    move-result p2

    invoke-virtual {p1, p2}, LB2/h;->e(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
