.class public final LY0/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;I)V
    .locals 0

    iput p2, p0, LY0/e0;->a:I

    iput-object p1, p0, LY0/e0;->b:Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, LY0/e0;->b:Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;

    iget v0, p0, LY0/e0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroidx/activity/p;->onBackPressed()V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    sget v0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->I:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LG4/n;

    invoke-direct {v0, p1}, LG4/n;-><init>(Landroid/content/Context;)V

    const-string v1, "Delete Book"

    iget-object v2, v0, LG4/n;->b:Ljava/lang/Object;

    check-cast v2, Lh/b;

    iput-object v1, v2, Lh/b;->e:Ljava/lang/CharSequence;

    const-string v1, "Do you want to Delete?"

    iput-object v1, v2, Lh/b;->g:Ljava/lang/String;

    const v1, 0x7f08009e

    iput v1, v2, Lh/b;->c:I

    new-instance v1, LY0/h0;

    invoke-direct {v1, p1}, LY0/h0;-><init>(Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;)V

    const-string p1, "Delete"

    iput-object p1, v2, Lh/b;->h:Ljava/lang/String;

    iput-object v1, v2, Lh/b;->i:Landroid/content/DialogInterface$OnClickListener;

    new-instance p1, LY0/f0;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, LY0/f0;-><init>(I)V

    const-string v1, "Cancel"

    iput-object v1, v2, Lh/b;->j:Ljava/lang/String;

    iput-object p1, v2, Lh/b;->k:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0}, LG4/n;->a()Lh/f;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/booklal/booklal/EditBookDetailsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p1, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->d:Ljava/lang/String;

    const-string v2, "bookKey"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->v:Ljava/lang/String;

    const-string v2, "bName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->w:Ljava/lang/String;

    const-string v2, "bDesc"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->y:Ljava/lang/String;

    const-string v2, "bPub"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->z:Ljava/lang/String;

    const-string v2, "bAuthor"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->e:Ljava/lang/String;

    const-string v2, "bURL1"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->f:Ljava/lang/String;

    const-string v2, "bURL2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->C:Ljava/lang/String;

    const-string v2, "bCC"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->A:Ljava/lang/String;

    const-string v2, "bSP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->D:Ljava/lang/String;

    const-string v2, "bPP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->G:Ljava/lang/Boolean;

    const-string v2, "bPhone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->x:Ljava/lang/String;

    const-string v2, "bSymbol"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
