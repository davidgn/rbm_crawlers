.class public final LY0/N0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/booklal/booklal/ShowBookDetailsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/booklal/booklal/ShowBookDetailsActivity;I)V
    .locals 0

    iput p2, p0, LY0/N0;->a:I

    iput-object p1, p0, LY0/N0;->b:Lcom/booklal/booklal/ShowBookDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, LY0/N0;->a:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LY0/N0;->b:Lcom/booklal/booklal/ShowBookDetailsActivity;

    iget-object v2, v1, Lcom/booklal/booklal/ShowBookDetailsActivity;->J:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Book Name: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, LY0/N0;->b:Lcom/booklal/booklal/ShowBookDetailsActivity;

    iget-object v1, v0, Lcom/booklal/booklal/ShowBookDetailsActivity;->y:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nPrinted Price: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/booklal/booklal/ShowBookDetailsActivity;->F:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nSelling Price: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/booklal/booklal/ShowBookDetailsActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/booklal/booklal/ShowBookDetailsActivity;->E:Ljava/lang/String;

    const-string v2, "\n\n"

    invoke-static {p1, v1, v2}, LC/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/booklal/booklal/ShowBookDetailsActivity;->L:Ljava/lang/String;

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/booklal/booklal/ChatActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/booklal/booklal/ShowBookDetailsActivity;->D:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/booklal/booklal/ShowBookDetailsActivity;->l:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/booklal/booklal/ShowBookDetailsActivity;->L:Ljava/lang/String;

    const-string v2, "bookinfo"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/PublicProfileActivity;

    iget-object v1, p0, LY0/N0;->b:Lcom/booklal/booklal/ShowBookDetailsActivity;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v1, Lcom/booklal/booklal/ShowBookDetailsActivity;->l:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_2
    iget-object p1, p0, LY0/N0;->b:Lcom/booklal/booklal/ShowBookDetailsActivity;

    invoke-virtual {p1}, Lcom/booklal/booklal/ShowBookDetailsActivity;->onBackPressed()V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_3
    iget-object p1, p0, LY0/N0;->b:Lcom/booklal/booklal/ShowBookDetailsActivity;

    iget-object v0, p1, Lcom/booklal/booklal/ShowBookDetailsActivity;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/booklal/booklal/ShowBookDetailsActivity;->j(Lcom/booklal/booklal/ShowBookDetailsActivity;Ljava/lang/String;)Lh/f;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_4
    iget-object p1, p0, LY0/N0;->b:Lcom/booklal/booklal/ShowBookDetailsActivity;

    iget-object v0, p1, Lcom/booklal/booklal/ShowBookDetailsActivity;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/booklal/booklal/ShowBookDetailsActivity;->j(Lcom/booklal/booklal/ShowBookDetailsActivity;Ljava/lang/String;)Lh/f;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
