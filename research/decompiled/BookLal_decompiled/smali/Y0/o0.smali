.class public final LY0/o0;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/booklal/booklal/ManageOTP;


# direct methods
.method public constructor <init>(Lcom/booklal/booklal/ManageOTP;)V
    .locals 4

    iput-object p1, p0, LY0/o0;->a:Lcom/booklal/booklal/ManageOTP;

    const-wide/32 v0, 0x186a0

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    iget-object v0, p0, LY0/o0;->a:Lcom/booklal/booklal/ManageOTP;

    iget-object v1, v0, Lcom/booklal/booklal/ManageOTP;->o:Landroid/widget/TextView;

    const-string v2, "time up!"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/booklal/booklal/ManageOTP;->d:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, v0, Lcom/booklal/booklal/ManageOTP;->d:Landroid/widget/Button;

    const-string v2, "#C8E6C9"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v0, Lcom/booklal/booklal/ManageOTP;->p:Landroid/widget/TextView;

    const-string v1, "Please go back and try again."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 5

    iget-object v0, p0, LY0/o0;->a:Lcom/booklal/booklal/ManageOTP;

    iget-object v1, v0, Lcom/booklal/booklal/ManageOTP;->o:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "time left: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v1, 0x55

    cmp-long p1, v1, p1

    if-gez p1, :cond_0

    iget-object p1, v0, Lcom/booklal/booklal/ManageOTP;->d:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, v0, Lcom/booklal/booklal/ManageOTP;->d:Landroid/widget/Button;

    const-string p2, "#9575CD"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/booklal/booklal/ManageOTP;->d:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, v0, Lcom/booklal/booklal/ManageOTP;->d:Landroid/widget/Button;

    const-string p2, "#dddddd"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
