.class public final LY0/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lh/i;


# direct methods
.method public synthetic constructor <init>(Lh/i;I)V
    .locals 0

    iput p2, p0, LY0/T;->a:I

    iput-object p1, p0, LY0/T;->b:Lh/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Le3/i;)V
    .locals 0

    return-void
.end method

.method private final b(Le3/i;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final d(Le3/i;)V
    .locals 0

    iget p1, p0, LY0/T;->a:I

    return-void
.end method

.method public final i(Le3/b;)V
    .locals 3

    iget v0, p0, LY0/T;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Le3/b;->d:Le3/i;

    iget-object v1, p0, LY0/T;->b:Lh/i;

    check-cast v1, Lcom/booklal/booklal/Take_Book_Information;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "name: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Le3/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ncode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Le3/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, v0, Le3/i;->c:Ljava/lang/String;

    iput-object p1, v1, Lcom/booklal/booklal/Take_Book_Information;->n:Ljava/lang/String;

    iget-object v0, v0, Le3/i;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/booklal/booklal/Take_Book_Information;->b:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, v1, Lcom/booklal/booklal/Take_Book_Information;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v1, Lcom/booklal/booklal/Take_Book_Information;->B:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/booklal/booklal/Take_Book_Information;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, v1, Lcom/booklal/booklal/Take_Book_Information;->A:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v1, Lcom/booklal/booklal/Take_Book_Information;->B:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/booklal/booklal/Take_Book_Information;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Le3/b;->d:Le3/i;

    iget-object v1, p0, LY0/T;->b:Lh/i;

    check-cast v1, Lcom/booklal/booklal/EditBookDetailsActivity;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "name: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Le3/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ncode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Le3/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    iget-object p1, v0, Le3/i;->c:Ljava/lang/String;

    iput-object p1, v1, Lcom/booklal/booklal/EditBookDetailsActivity;->P:Ljava/lang/String;

    iget-object v0, v0, Le3/i;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/booklal/booklal/EditBookDetailsActivity;->O:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object v0, v1, Lcom/booklal/booklal/EditBookDetailsActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v1, Lcom/booklal/booklal/EditBookDetailsActivity;->I:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/booklal/booklal/EditBookDetailsActivity;->P:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iput-object v0, v1, Lcom/booklal/booklal/EditBookDetailsActivity;->P:Ljava/lang/String;

    iget-object p1, v1, Lcom/booklal/booklal/EditBookDetailsActivity;->H:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v1, Lcom/booklal/booklal/EditBookDetailsActivity;->I:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/booklal/booklal/EditBookDetailsActivity;->O:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
